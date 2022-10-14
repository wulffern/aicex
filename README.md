
[![aicex ci](https://github.com/wulffern/aicex/actions/workflows/tests.yaml/badge.svg)](https://github.com/wulffern/aicex/actions/workflows/tests.yaml)

# aicex
This repository is a collection of IPs in Skywater 130nm technology. 

| Directory                                      | Notes                                                                                           |
|------------------------------------------------|-------------------------------------------------------------------------------------------------|
| [ip](ip)                                       | IP directory                                                                                    |
| [ip/sun_sar9b_sky130nm](ip/sun_sar9b_sky130nm) | 9-bit successive approximation analog-to-digital converter                                      |
| [ip/sun_pll_sky130nm](ip/sun_pll_sky130nm)     | *General purpose PLL. Should not be used for real designs. Development platform for ciccreator* |
| [ip/sun_tr_sky130nm](ip/sun_tr_sky130nm)       | Standard cell libraries for analog schematics                                                   |
| [ip/sun_trb_sky130nm](ip/sun_trb_sky130nm)     | Standard cell libraries for analog schematics with separate bulk connections                    |
| [ip/tech_sky130A](ip/tech_sky130A)             | Technology files for SKY130A                                                                    |


## Requirements

- [Skywater 130nm PDK](https://github.com/google/skywater-pdk). I use [open_pdks](https://github.com/RTimothyEdwards/open_pdks) to install the PDK
- [Magic VLSI](https://github.com/RTimothyEdwards/magic) for layout
- [ngspice](https://git.code.sf.net/p/ngspice/ngspice) for simulation 
- [netgen](https://github.com/RTimothyEdwards/netgen.git) for LVS
- [xschem]()
- python > 3.8

I install the tools manually on MacOS, however, on Ubuntu 20.4 I've made a
[makefile](https://github.com/wulffern/eda) to install everything.

## Getting Started with simulation

Quick install 

``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/wulffern/aicex/main/tests/install.sh)"
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
