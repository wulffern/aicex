# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**AICEX** (Analog Integrated Circuit Ecosystem) is a monorepo managing multiple analog IC design IPs. It contains Python CLI tools (`cicsim`, `cicpy`, `cicconf`, `cicspi`) and ~70+ individual IC design projects targeting SkyWater 130nm PDK.

## Core Python Tools

### Install (development mode)
```bash
pip install -e cicconf/
pip install -e cicspi/
pip install -e cicpy/
pip install -e cicsim/
```

### Testing
```bash
# cicsim unit tests
cd cicsim && python3 -m unittest discover -s tests/unittests/ -p 'test_*.py' -v

# cicsim full test (requires ngspice)
cd cicsim && make test

# Single test file
cd cicsim && python3 -m unittest tests/unittests/test_<module>.py
```

### Linting
```bash
cd cicsim && ruff check cicsim/
cd cicpy  && ruff check src/
```

## IP Repository Management

IPs are cloned/versioned via `cicconf` using `config.yaml`:
```bash
cicconf clone          # Clone all IPs listed in config.yaml
cicconf update         # Update IPs to latest revisions
```

Each IP lives in a directory named `{project}_{name}_{technology}` (e.g., `lelo_temp_sky130a`).

## IC Design Workflow (per IP)

Each IP follows this directory structure:
- `design/` — Xschem schematics (`.sch`)
- `work/` — Makefile-driven layout/DRC/LVS/GDS
- `sim/` — ngspice testbenches, `cicsim.yaml` configs
- `simrtl/` — SystemVerilog testbenches
- `rtl/` — Verilog/SystemVerilog RTL
- `py/` — Python layout hooks (`<CELL>.py`) and post-processing models
- `docs/` — Jekyll markdown, auto-published to GitHub Pages

### Layout flow (Xschem → Magic → GDS)
```bash
cd <ip>/work/
make mag CELL=<CELLNAME>   # Schematic → Magic layout via cicpy
make drc CELL=<CELLNAME>   # DRC with Magic
make lvs CELL=<CELLNAME>   # LVS with netgen
make gds CELL=<CELLNAME>   # Export GDS
```

cicpy layout hooks live in `py/<CELL>.py`. M1 is reserved for power; M2/M3/M4 for signal routing.

### Simulation flow
```bash
cd <ip>/sim/
cicsim run tb_<name>/tb.ngspice          # Single run
cicsim run tb_<name>/tb.ngspice --threads 4  # Multi-threaded corner runs
```

`cicsim.yaml` in each testbench directory controls corners (temperature/voltage combos), spec checking, and result summaries (Markdown output).

## Architecture: How the Tools Interact

```
config.yaml
    └─ cicconf clone → individual IP git repos
                            ├─ Xschem .sch
                            │       ↓ cicpy transpile
                            ├─ Magic .mag → netgen LVS / Magic DRC → GDS
                            └─ ngspice testbenches
                                    ↓ cicsim run
                               .raw waveforms → pandas → Markdown spec report
```

## CI/CD

GitHub Actions (`.github/workflows/`) run GDS/DRC/LVS/DOCS pipelines using Docker image `wulffern/aicex:26.04_latest`. Workflows delegate to shared reusable workflows in the `jnw-actions` repo. The `PDK_ROOT` env var must point to the SkyWater PDK (typically `/opt/pdks/sky130A` in CI).
