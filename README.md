
[![aicex ci](https://github.com/wulffern/aicex/actions/workflows/tests.yaml/badge.svg)](https://github.com/wulffern/aicex/actions/workflows/tests.yaml)

# aicex
This repository is a collection of IPs in Skywater 130nm technology. 

| Directory                               | Notes                                                                                               |
|---------------------------------------|-----------------------------------------------------------------------------------------------------|
| [ip](ip)                                      | IP directory                                                                                        |
| [ip/sun_sar9b_sky130nm](ip/sun_sar9b_sky130nm)                   | 9-bit successive approximation analog-to-digital converter                                          |
| [ip/sun_pll_sky130nm](ip/sun_pll_sky130nm)                   | General purpose PLL                                        |
| [ip/sun_tr_sky130nm](ip/sun_tr_sky130nm)                       | Standard cell libraries for analog schematics                                                       |
| [ip/sun_trb_sky130nm](ip/sun_trb_sky130nm)                       | Standard cell libraries for analog schematics with separate bulk connections                                                    |
| models/skywater-pdk-libs-sky130_fd_pr | Skywater spice models. Git submodule                                                                |
| [tech](tech)                                    | Technology files                                                                                    |
| [tech/cic](tech/cic)                                | [ciccreator](https://github.com/wulffern/ciccreator) and [cicpy](https://github.com/wulffern/cicpy) |
| [tech/cicsim](tech/cicsim)                             | [cicsim](https://github.com/wulffern/cicsim)                                                        |
| [tech/magic](tech/magic)                             | Magic VLSI color and tcl scripts                                                                    |
| [tech/make](tech/make)                               | Makefiles to run netlist, gds, lvs, drc, lpe and ip compile                                         |
| [tech/ngspice](tech/ngspice)                            | files for corner setup                                                                              |


## Requirements

- [Skywater 130nm PDK](https://github.com/google/skywater-pdk). I use [open_pdks](https://github.com/RTimothyEdwards/open_pdks) to install the PDK
- [Magic VLSI](https://github.com/RTimothyEdwards/magic) for layout
- [ngspice](https://git.code.sf.net/p/ngspice/ngspice) for simulation 
- [netgen](https://github.com/RTimothyEdwards/netgen.git) for LVS
- python > 3.8
    
## Getting Started with simulation

Quick install 

``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/wulffern/aicex/main/install.sh)"
```
    
Check that test runs

``` sh
cd aicex
make test
```

## Introduction

[https://www.youtube.com/watch?v=yvUW2gA42bM](https://www.youtube.com/watch?v=yvUW2gA42bM)



# Notes

## xschem
- netlisting seems to be done not by pin number, but by order of B's in .sym.
  Also, I've experienced different ordering for subckts, and for top cell
