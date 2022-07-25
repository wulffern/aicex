
[![aicex ci](https://github.com/wulffern/aicex/actions/workflows/tests.yaml/badge.svg)](https://github.com/wulffern/aicex/actions/workflows/tests.yaml)

# aicex
Files for Advanced Integrated Circuits

This repository is a collection of IPs in Skywater 130nm technology. 

| Directory                               | Notes                                                                                               |
|---------------------------------------|-----------------------------------------------------------------------------------------------------|
| ip                                      | IP directory                                                                                        |
| ip/sun_sar9b_sky130nm                   | 9-bit successive approximation analog-to-digital converter                                          |
| ip/sun_tr_sky130nm                       | Standard cell libraries for analog schematics                                                       |
| /models/skywater-pdk-libs-sky130_fd_pr | Skywater spice models. Git submodule                                                                |
| sim/CHAR_GMID                           | Example of simulation                                                                               |
| tech                                    | Technology files                                                                                    |
| tech/cic                                | [ciccreator](https://github.com/wulffern/ciccreator) and [cicpy](https://github.com/wulffern/cicpy) |
| tech/cicsim                             | [cicsim](https://github.com/wulffern/cicsim)                                                        |
| tech/ magic                             | Magic VLSI color and tcl scripts                                                                    |
| tech/make                               | Makefiles to run netlist, gds, lvs, drc, lpe and ip compile                                         |
| tech/ngspice                            | files for corner setup                                                                              |


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



