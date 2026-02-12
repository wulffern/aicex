#!/usr/bin/env python3
"""

Thanks to ChatGPT 5.2. I, Carsten Wulff, did not write this file :-D

patch_legacy_c.py

Heuristic fixer for common "old C code meets modern GCC/glibc" build breaks:
  - va_list undeclared  -> add #include <stdarg.h>
  - random/srandom      -> add #include <stdlib.h>
  - isascii             -> add #include <ctype.h> (or optionally replace usage)
  - termio/TCGETA/TCSETAF/ioctl -> migrate to termios + tcgetattr/tcsetattr
  - C23 bool keyword conflicts:
      * typedef unsigned char bool;  -> replace with #include <stdbool.h> (C) or remove
      * local var named 'bool'       -> rename to 'bool_'

This is NOT a full C parser; it uses conservative regex edits and writes a
.backup copy beside each modified file.

Usage:
  python3 patch_legacy_c.py /path/to/src --apply
  python3 patch_legacy_c.py /path/to/src --apply --replace-isascii
  python3 patch_legacy_c.py /path/to/src --apply --no-bool-var-rename

Default is dry-run (no changes).
"""

from __future__ import annotations
import argparse
import os
import re
import shutil
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, List, Tuple


INCLUDE_RE = re.compile(r'^\s*#\s*include\s*[<"][^>"]+[>"]\s*$', re.M)
IFNDEF_GUARD_RE = re.compile(r'^\s*#\s*ifndef\b', re.M)

# --- Simple helpers ---------------------------------------------------------

def iter_sources(root: Path, exts=(".c", ".h")) -> Iterable[Path]:
    for p in root.rglob("*"):
        if p.is_file() and p.suffix in exts:
            yield p

def has_include(text: str, header: str) -> bool:
    return re.search(r'^\s*#\s*include\s*[<"]' + re.escape(header) + r'[>"]\s*$', text, re.M) is not None

def insert_includes(text: str, headers: List[str]) -> Tuple[str, bool]:
    """
    Insert missing headers near the top of the file after existing includes,
    or after initial comment/shebang-ish block if no includes exist yet.
    """
    missing = [h for h in headers if not has_include(text, h)]
    if not missing:
        return text, False

    lines = text.splitlines(True)

    # Find insertion point:
    # 1) after the last consecutive include near the top,
    # 2) else after initial comment block / blank lines.
    idx = 0

    # Skip leading BOM if present in first line
    if lines and lines[0].startswith("\ufeff"):
        lines[0] = lines[0].lstrip("\ufeff")

    # Skip leading blank lines
    while idx < len(lines) and lines[idx].strip() == "":
        idx += 1

    # Skip leading comment block (/* ... */) and // lines
    if idx < len(lines) and lines[idx].lstrip().startswith("/*"):
        # advance until end of comment block
        while idx < len(lines) and "*/" not in lines[idx]:
            idx += 1
        if idx < len(lines):
            idx += 1  # include line with */
        while idx < len(lines) and lines[idx].strip() == "":
            idx += 1

    # If we now have includes, insert after last include in the initial include run
    include_run_end = idx
    while include_run_end < len(lines) and re.match(r'^\s*#\s*include\b', lines[include_run_end]):
        include_run_end += 1

    insert_at = include_run_end if include_run_end > idx else idx

    insertion = "".join([f'#include <{h}>\n' for h in missing])
    # Keep a blank line after inserted includes if not already there
    if insert_at < len(lines) and lines[insert_at].strip() != "":
        insertion += "\n"

    new_lines = lines[:insert_at] + [insertion] + lines[insert_at:]
    return "".join(new_lines), True

def backup_file(path: Path) -> Path:
    bak = path.with_suffix(path.suffix + ".backup")
    shutil.copy2(path, bak)
    return bak

# --- Transformations --------------------------------------------------------

@dataclass
class Change:
    description: str

def fix_va_list(text: str) -> Tuple[str, List[Change]]:
    changes: List[Change] = []
    # If file mentions va_list and lacks stdarg.h, include it
    if "va_list" in text and not has_include(text, "stdarg.h"):
        text2, changed = insert_includes(text, ["stdarg.h"])
        if changed:
            changes.append(Change("Added #include <stdarg.h> for va_list"))
            text = text2
    return text, changes

def fix_random_srandom(text: str) -> Tuple[str, List[Change]]:
    changes: List[Change] = []
    if (re.search(r'\brandom\s*\(', text) or re.search(r'\bsrandom\s*\(', text)) and not has_include(text, "stdlib.h"):
        text2, changed = insert_includes(text, ["stdlib.h"])
        if changed:
            changes.append(Change("Added #include <stdlib.h> for random/srandom"))
            text = text2
    return text, changes

def fix_isascii(text: str, replace_calls: bool) -> Tuple[str, List[Change]]:
    changes: List[Change] = []
    if re.search(r'\bisascii\s*\(', text):
        if replace_calls:
            # Replace isascii(x) with ((unsigned char)(x) <= 0x7F)
            # Keep it simple: isascii(ARG) -> (((unsigned char)(ARG)) <= 0x7F)
            def repl(m: re.Match) -> str:
                arg = m.group(1)
                return f"(((unsigned char)({arg})) <= 0x7F)"
            new_text, n = re.subn(r'\bisascii\s*\(\s*([^)]+?)\s*\)', repl, text)
            if n:
                changes.append(Change(f"Replaced {n} isascii(...) call(s) with byte-range check"))
                text = new_text
        else:
            if not has_include(text, "ctype.h"):
                text2, changed = insert_includes(text, ["ctype.h"])
                if changed:
                    changes.append(Change("Added #include <ctype.h> for isascii"))
                    text = text2
    return text, changes

def fix_termio_to_termios(text: str) -> Tuple[str, List[Change]]:
    """
    Convert common patterns:
      struct termio -> struct termios
      ioctl(fileno(stdin), TCGETA, X) -> tcgetattr(fileno(stdin), X)
      ioctl(fileno(stdin), TCSETAF, X) -> tcsetattr(fileno(stdin), TCSAFLUSH, X)
    Also ensures #include <termios.h> and <unistd.h>.
    """
    changes: List[Change] = []

    uses_termio = re.search(r'\bstruct\s+termio\b', text) is not None
    uses_tcgeta = "TCGETA" in text
    uses_tcsetaf = "TCSETAF" in text
    uses_ioctl = re.search(r'\bioctl\s*\(', text) is not None

    if not (uses_termio or uses_tcgeta or uses_tcsetaf):
        return text, changes

    # Add includes first
    headers = []
    if not has_include(text, "termios.h"):
        headers.append("termios.h")
    if ("fileno" in text or "stdin" in text) and not has_include(text, "unistd.h"):
        headers.append("unistd.h")
    if headers:
        text2, changed = insert_includes(text, headers)
        if changed:
            changes.append(Change(f"Added include(s): {', '.join(headers)}"))
            text = text2

    # Replace struct termio -> struct termios
    text2, n = re.subn(r'\bstruct\s+termio\b', 'struct termios', text)
    if n:
        changes.append(Change(f"Replaced {n} occurrence(s) of 'struct termio' with 'struct termios'"))
        text = text2

    # Replace ioctl TCGETA
    # Patterns: ioctl( fileno( stdin ), TCGETA, buf);
    def repl_tcgeta(m: re.Match) -> str:
        arg3 = m.group(1).strip()
        return f"tcgetattr(fileno(stdin), {arg3})"

    text2, n = re.subn(
        r'\bioctl\s*\(\s*fileno\s*\(\s*stdin\s*\)\s*,\s*TCGETA\s*,\s*([^)]+?)\s*\)',
        repl_tcgeta,
        text
    )
    if n:
        changes.append(Change(f"Converted {n} ioctl(..., TCGETA, ...) call(s) to tcgetattr"))
        text = text2

    # Replace ioctl TCSETAF
    def repl_tcsetaf(m: re.Match) -> str:
        arg3 = m.group(1).strip()
        return f"tcsetattr(fileno(stdin), TCSAFLUSH, {arg3})"

    text2, n2 = re.subn(
        r'\bioctl\s*\(\s*fileno\s*\(\s*stdin\s*\)\s*,\s*TCSETAF\s*,\s*([^)]+?)\s*\)',
        repl_tcsetaf,
        text
    )
    if n2:
        changes.append(Change(f"Converted {n2} ioctl(..., TCSETAF, ...) call(s) to tcsetattr(TCSAFLUSH, ...)"))
        text = text2

    # If it still uses ioctl (maybe other ioctls), ensure sys/ioctl.h
    if uses_ioctl and re.search(r'\bioctl\s*\(', text) and not has_include(text, "sys/ioctl.h"):
        text2, changed = insert_includes(text, ["sys/ioctl.h"])
        if changed:
            changes.append(Change("Added #include <sys/ioctl.h> for remaining ioctl uses"))
            text = text2

    return text, changes

def fix_bool_typedef(text: str) -> Tuple[str, List[Change]]:
    """
    Replace legacy 'typedef unsigned char bool;' with stdbool.h.
    Conservative: only triggers on that exact typedef.
    """
    changes: List[Change] = []
    pat = re.compile(r'^\s*typedef\s+unsigned\s+char\s+bool\s*;\s*$', re.M)
    if pat.search(text):
        # Remove typedef and add stdbool.h if not present
        text2, n = pat.subn('', text)
        if n:
            changes.append(Change("Removed legacy 'typedef unsigned char bool;' (C23 keyword conflict)"))
            text = text2
        if not has_include(text, "stdbool.h"):
            text2, changed = insert_includes(text, ["stdbool.h"])
            if changed:
                changes.append(Change("Added #include <stdbool.h>"))
                text = text2
    return text, changes

def rename_bool_identifier(text: str, enabled: bool) -> Tuple[str, List[Change]]:
    """
    Rename local variables named 'bool' to 'bool_' in common declaration patterns.
    This is heuristic and intentionally narrow to reduce collateral damage.
    """
    changes: List[Change] = []
    if not enabled:
        return text, changes

    # 1) int code, bool;  -> int code, bool_;
    text2, n1 = re.subn(r'(\bint\b[^;]*\b),\s*\bbool\b(\s*;)', r'\1, bool_\2', text)
    # 2) &bool) -> &bool_)
    text3, n2 = re.subn(r'&\s*\bbool\b', '&bool_', text2)
    # 3) (bool ? A : B) -> (bool_ ? A : B)
    text4, n3 = re.subn(r'\(\s*\bbool\b\s*\?', '(bool_ ?', text3)
    # 4) standalone uses: return bool; / if (bool) / bool = ...
    # VERY conservative: only replace when it looks like an identifier token not in a type context.
    text5, n4 = re.subn(r'(?<![_A-Za-z0-9])bool(?![_A-Za-z0-9])', 'bool_', text4)

    # The last step is broad; it can be too aggressive if the file uses C++ bool or stdbool bool.
    # To reduce damage, only apply broad replacement if we already matched the declaration pattern.
    if n1 == 0 and n2 == 0 and n3 == 0:
        text5 = text4
        n4 = 0

    total = n1 + n2 + n3 + n4
    if total:
        changes.append(Change(f"Renamed identifier 'bool' -> 'bool_' in {total} place(s) (heuristic)"))
        text = text5
    return text, changes

# --- Main -------------------------------------------------------------------

def process_file(path: Path, apply: bool, replace_isascii: bool, rename_bool_var: bool) -> List[Change]:
    original = path.read_text(errors="replace")
    text = original
    all_changes: List[Change] = []

    for fixer in (
        fix_va_list,
        fix_random_srandom,
        lambda t: fix_isascii(t, replace_isascii),
        fix_termio_to_termios,
        fix_bool_typedef,
        lambda t: rename_bool_identifier(t, rename_bool_var),
    ):
        text, changes = fixer(text)
        all_changes.extend(changes)

    if text != original and apply:
        backup_file(path)
        path.write_text(text)
    return all_changes

def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("root", type=Path, help="Root directory to scan")
    ap.add_argument("--apply", action="store_true", help="Write changes (default: dry-run)")
    ap.add_argument("--replace-isascii", action="store_true",
                    help="Replace isascii(x) with ((unsigned char)(x) <= 0x7F) instead of adding <ctype.h>")
    ap.add_argument("--no-bool-var-rename", action="store_true",
                    help="Do NOT attempt to rename variables named 'bool' to 'bool_'")
    ap.add_argument("--ext", action="append", default=None,
                    help="Extra file extension to include (can repeat), e.g. --ext .cc")
    args = ap.parse_args()

    root: Path = args.root
    exts = [".c", ".h"]
    if args.ext:
        exts.extend(args.ext)

    apply = args.apply
    rename_bool_var = not args.no_bool_var_rename

    changed_files = 0
    total_fixes = 0

    for p in iter_sources(root, tuple(exts)):
        changes = process_file(p, apply=apply, replace_isascii=args.replace_isascii, rename_bool_var=rename_bool_var)
        if changes:
            changed_files += 1
            total_fixes += len(changes)
            rel = p.relative_to(root)
            print(f"\n{rel}:")
            for c in changes:
                print(f"  - {c.description}")
            if apply:
                print("  (wrote changes; backup: *.backup)")
            else:
                print("  (dry-run; re-run with --apply to write)")

    print(f"\nDone. Files with proposed changes: {changed_files}, total fix-actions: {total_fixes}.")
    if not apply:
        print("No files were modified (dry-run). Use --apply to write changes.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
