# Repository of analog integrated circuit design IPs

see config.yaml for a list of IPs

There might be AGENTS.md files in the sub-repos

# Rules

- Never add the folders in this directory to git. All of them are updated using
  the cicconf script
- Always use click to parse arguments
- Document your work
- Never modify symlinked files under an IP's `design/` — those symlinks point at
  shared library sources that live in another IP/repo.

# Structure

- IPs will have a directory name of <project tag>_<name>_<technology>
- Anything with "cic" as a prefix are tools that are used to simulate/manage/or
  compile circuits

# Layout / verification flow

Per-IP work happens in `<ip>/work/`. The IP `Makefile` is minimal and just does
`include tech/make/main.make`; the real targets live in
`tech_sky130A/make/core.make` (symlinked as `<ip>/tech`). Common targets, all
take `CELL=<cellname>` (the top cell, prefixed to `PRCELL` internally):

- `make gds CELL=<cell>`   — Magic → GDS (writes `gds/<PRCELL>.gds`)
- `make cdl CELL=<cell>`   — extract schematic CDL netlist (`cdl/<PRCELL>.spice`)
- `make lvs CELL=<cell>`   — Netgen LVS; define `VERILOG_FILE=...` to include RTL
- `make drc CELL=<cell>`   — Magic DRC (summarized via `tech/script/checklvs`-style output)
- `make kdrc PRCELL=<cell>`— KLayout sign-off DRC. Writes `drc/<cell>_drc.xml`
  (absolute path) and prints a colored one-line summary via `tech/script/checkkdrc`.
- `make matchports MPOPT=--apply` — renumber layout `port N` indices so the
  extracted pin order matches the schematic `.subckt` (cdl). Dry-run by default.
- `make fixbbox BBOPT=--apply` — set each `design/<LIB>/*.mag` cell's
  `FIXED_BBOX` to its true geometric extent (via Magic). Dry-run by default;
  skips the top tile cell and any symlinked mags; edits only the single
  `FIXED_BBOX` line (no format churn).
- `make precheck` / `make preflight` — TT submission checks.

Report-summary scripts live in `tech_sky130A/script/` (e.g. `checklvs`,
`checkkdrc`); Python layout helpers live in `tech_sky130A/py/` (e.g.
`matchports.py`). They print a colored one-line PASS/FAIL summary and exit
non-zero on failure so they can gate `make`.

# Magic .mag gotchas

- `FIXED_BBOX` is a cell property that overrides the reported cell extent. A
  stale/oversized value (e.g. a copy-pasted `0 0 19150 102616`) makes the cell
  overhang its parent and blows up the TT tile bbox. Use `make fixbbox` to fix.
- Magic's `save` re-serializes the **whole** file: it upgrades old formats,
  renames layers (`m3` -> `metal3`), and regenerates the `checkpaint` layer.
  Prefer surgical text edits of just the line you need instead of a full save.
- `box values` is in Magic internal units. Cells with `magscale 1 2` store at
  the same scale, but `magscale 1 1` (or no magscale) cells store at **half** —
  so don't write `box values` straight into a mag file; let Magic compute the
  file-unit value (as `fixbbox` does).

# Environment

- `PDK_ROOT` must point at the PDK (SkyWater sky130A). Magic uses the local
  `<ip>/work/.magicrc`; run magic batch jobs from `work/` so it is picked up.
- CI container: `wulffern/aicex:26.04_latest` (ngspice, Magic, Xschem, KLayout,
  Netgen, Python env).
