
[![aicex ci](https://github.com/wulffern/aicex/actions/workflows/tests.yaml/badge.svg)](https://github.com/wulffern/aicex/actions/workflows/tests.yaml)

# aicex
This repository is a collection of IPs in Skywater 130nm technology. 

The available IPs can be seen in ip/config.yaml. I use
[cicconf](https://github.com/wulffern/cicconf) to clone the repositories.

| Directory                                      | Notes                                                                                           |
|------------------------------------------------|-------------------------------------------------------------------------------------------------|
| [ip](ip)                                       | IP directory                                                                                    |
| [ip/sun_sar9b_sky130nm](https://github.com/wulffern/sun_sar9b_sky130nm) | 9-bit successive approximation analog-to-digital converter                                      |
| [ip/sun_pll_sky130nm](https://github.com/wulffern/sun_pll_sky130nm)     | *General purpose PLL. Should not be used for real designs. Development platform for ciccreator* |
| [ip/sun_tr_sky130nm](https://github.com/wulffern/sun_tr_sky130nm)       | Standard cell libraries for analog schematics                                                   |
| [ip/sun_trb_sky130nm](https://github.com/wulffern/sun_trb_sky130nm)     | Standard cell libraries for analog schematics with separate bulk connections                    |
| [ip/tech_sky130A](https://github.com/wulffern/tech_sky130A)             | Technology files for SKY130A                                                                    |
| [ip/tech_sky130B](https://github.com/wulffern/tech_sky130B)             | Technology files for SKY130B                                                                    |
| [ip/rply_bias_sky130nm](https://github.com/wulffern/rply_bias_sky130nm)             | PTAT current source                                                                   |


## Getting Started with aicex on Docker

On Linux or Mac

``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/wulffern/aicex/main/install.sh)"
```

Then

``` sh
ssh -Y -p 2022 aicex@localhost
```

Aicex relies on python scripts, the command below will install them, and
run through the tests.
``` sh
/bin/bash tests/run_docker_test.sh
```

To check that magic and xschem works

``` sh
cd ip/sun_sar9b_sky130nm/work 
magic ../design/SUN_SAR9B_SKY130NM/SUNSAR_SAR9B_CV.mag &
xschem -b ../design/SUN_SAR9B_SKY130NM/SUNSAR_SAR9B_CV.sch &
```


## Introduction

The video is old, which means things have changed on how to install and also the
directory structure.

[https://www.youtube.com/watch?v=yvUW2gA42bM](https://www.youtube.com/watch?v=yvUW2gA42bM)

## Requirements

- [Skywater 130nm PDK](https://github.com/google/skywater-pdk). I use [open_pdks](https://github.com/RTimothyEdwards/open_pdks) to install the PDK
- [Magic VLSI](https://github.com/RTimothyEdwards/magic) for layout
- [ngspice](https://git.code.sf.net/p/ngspice/ngspice) for simulation 
- [netgen](https://github.com/RTimothyEdwards/netgen.git) for LVS
- [xschem]()
- python > 3.8

I install the tools manually on MacOS, however, on Ubuntu 20.4 I've made a
[makefile](https://github.com/wulffern/eda) to install all the tools.


# Known issues

## Xschem
* Netlisting seems to be done not by pin number, but by order of B's in .sym.
  Also, I've experienced different ordering for subckts, and for top cell
* Be careful of x1[5:0] notation. Xschem does not automatically discover if
  there is another same x<nr>. I would recommend always uniquely naming
  instances with bus notation 

## docker
* The aicex user has a uid of 1000, however, if you try and run it on a machine
  with a different uid for your user, then it does not seem to work. Don't know
  how to fix it yet.
