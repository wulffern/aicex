#!/usr/bin/env python3
"""Create student group IPs (<project>_grNN_<technology>) and their GitHub repos.

Project, technology and IP template are read from options: in config.yaml.
For each group it:

\b
  1. runs `cicconf newip grNN` (skipped if the directory exists)
  2. checks DRC and LVS for every cell in work/Makefile CELLS, and the
     TinyTapeout pins of the top level (`make ttpins`)
  3. creates github.com/<org>/<name> (skipped if it exists), adds the remote
     and pushes main
  4. adds the IP to config.yaml (skipped if it is there, or with --no-push)

Safe to rerun: finished steps are skipped. Run from the workspace root.

Examples:

\b
  ./makegroups.py --groups 1-7 --dry-run
  ./makegroups.py --groups 8
  ./makegroups.py --groups 1,3,5 --no-push
"""

import os
import re
import subprocess
import sys

import click
import yaml


def parse_groups(text):
    """'1-3,5' -> [1, 2, 3, 5]"""
    groups = []
    for part in text.split(","):
        part = part.strip()
        if "-" in part:
            a, b = part.split("-")
            groups.extend(range(int(a), int(b) + 1))
        elif part:
            groups.append(int(part))
    return groups


class Runner:
    def __init__(self, dry_run):
        self.dry_run = dry_run

    def run(self, cmd, cwd=None, capture=False):
        """Run a shell command. In dry-run it is only printed."""
        where = f"(cd {cwd}) " if cwd else ""
        click.echo(f"  $ {where}{cmd}")
        if self.dry_run:
            return 0, ""
        p = subprocess.run(cmd, shell=True, cwd=cwd, text=True,
                           stdout=subprocess.PIPE if capture else None,
                           stderr=subprocess.STDOUT if capture else None)
        return p.returncode, p.stdout or ""


def quiet(cmd, cwd=None):
    """Read-only query, run even in dry-run. Returns True on exit 0."""
    return subprocess.run(cmd, shell=True, cwd=cwd, stdout=subprocess.DEVNULL,
                          stderr=subprocess.DEVNULL).returncode == 0


def make_vars(makefile):
    """Return {VAR: value} for simple VAR=value lines in a Makefile."""
    out = {}
    for line in open(makefile):
        m = re.match(r"^\s*([A-Z]+)\s*=\s*(.*?)\s*$", line)
        if m:
            out[m.group(1)] = m.group(2)
    return out


def verify(r, name):
    """DRC + LVS on every cell in CELLS, then ttpins on CELL. True if clean."""
    work = os.path.join(name, "work")
    if r.dry_run:
        r.run("make drc cdl lvs CELL=<each of CELLS> OPT=--short", cwd=work)
        r.run("make ttpins", cwd=work)
        return True
    v = make_vars(os.path.join(work, "Makefile"))
    ok = True
    for cell in v.get("CELLS", v.get("CELL", "")).split():
        _, out = r.run(f"make drc cdl lvs CELL={cell} OPT=--short", cwd=work,
                       capture=True)
        drc, lvs = "DRC OK" in out, "LVS OK" in out
        click.echo(f"    {cell:<36} DRC {'OK' if drc else 'FAIL'}  "
                   f"LVS {'OK' if lvs else 'FAIL'}")
        ok &= drc and lvs
    if v.get("CELL", "").startswith("tt_um_"):
        rc, out = r.run("make ttpins", cwd=work, capture=True)
        lines = [x for x in out.splitlines() if "PINS" in x] or out.splitlines()[-1:]
        click.echo("    " + (lines[-1] if lines else "ttpins: no output"))
        ok &= rc == 0
    return ok


def add_to_config(r, config, name, org, description):
    entry = (f"\n{name}:\n"
             f"  remote: git@github.com:{org}/{name}.git\n"
             f"  revision: main\n"
             f"  description: {description}\n")
    click.echo(f"  + {config}: {name}")
    if r.dry_run:
        return
    with open(config) as fi:
        text = fi.read()
    with open(config, "a") as fo:
        if not text.endswith("\n"):
            fo.write("\n")
        fo.write(entry)


@click.command(help=__doc__)
@click.option("--groups", default="1-7", show_default=True,
              help="Group numbers, e.g. '1-7' or '1,3,5'")
@click.option("--org", default="analogicus", show_default=True,
              help="GitHub organisation for the repos")
@click.option("--config", default="config.yaml", show_default=True,
              type=click.Path(exists=True), help="Workspace config")
@click.option("--dry-run", is_flag=True, help="Print what would be done")
@click.option("--verify/--no-verify", "verify_", default=True, show_default=True,
              help="Run DRC/LVS/ttpins before pushing")
@click.option("--push/--no-push", default=True, show_default=True,
              help="Create the GitHub repo and push")
@click.option("--public/--private", default=True, show_default=True,
              help="Visibility of new GitHub repos")
def main(groups, org, config, dry_run, verify_, push, public):
    with open(config) as fi:
        obj = yaml.safe_load(fi)
    opts = obj["options"]
    template = opts["template"]["ip"]
    project = opts["project"]
    technology = opts["technology"]

    r = Runner(dry_run)
    failed = []
    for i in parse_groups(groups):
        short = f"gr{i:02d}"
        name = f"{project}_{short}_{technology.lower()}"
        click.secho(f"== {name}", bold=True)

        # 1. Create the IP
        if os.path.isdir(name):
            click.echo(f"  {name} exists, not running newip")
        else:
            rc, _ = r.run(f"cicconf newip --project {project} "
                          f"--technology {technology} --ip {template} {short}")
            if rc != 0:
                failed.append((name, "newip"))
                continue

        # 2. Verify before anything leaves the machine
        if verify_ and not verify(r, name):
            click.secho(f"  {name}: verification failed, not pushing", fg="red")
            failed.append((name, "verify"))
            continue

        # 3. GitHub
        if push:
            repo = f"{org}/{name}"
            if quiet(f"gh repo view {repo}"):
                click.echo(f"  github.com/{repo} exists")
            else:
                vis = "--public" if public else "--private"
                desc = f"{project.upper()} Group {i} ({technology})"
                rc, _ = r.run(f"gh repo create {repo} {vis} "
                              f"--description \"{desc}\"")
                if rc != 0:
                    failed.append((name, "gh repo create"))
                    continue
            if quiet("git remote get-url origin", cwd=name):
                click.echo("  remote origin already set")
            else:
                r.run(f"git remote add origin git@github.com:{repo}.git",
                      cwd=name)
            rc, _ = r.run("git push -u origin main", cwd=name)
            if rc != 0:
                failed.append((name, "push"))
                continue

        # 4. Workspace config (only for repos that exist on GitHub)
        if not push:
            continue
        if name in obj:
            click.echo(f"  {name} already in {config}")
        else:
            add_to_config(r, config, name, org,
                          f"{project.upper()} Group {i}")

    if failed:
        click.secho("Failed: " + ", ".join(f"{n} ({s})" for n, s in failed),
                    fg="red")
        sys.exit(1)


if __name__ == "__main__":
    main()
