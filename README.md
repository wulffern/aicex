
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
[makefile](https://github.com/wulffern/eda) to install all the tools.

## Getting Started

I've made a docker image that you can run the tools in if you don't have them 

``` sh
git clone https://github.com/wulffern/aicex.git
cd aicex
docker run --rm  -it -p 2022:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:latest bash --login
```

The first time you start a new aicex clone, then you need to install cicpy and cicsim.
In the docker shell, do 

``` sh
/bin/bash tests/run_docker_test.sh
```
## SSH into the docker image
To ssh into the docker image you need to add a key to the `authorized_keys`
file. 

The commands below needs to be done in another terminal.

If don't have a ssh key, then you can do 

``` sh
ssh-keygen -t rsa
```

Once you have an ssh key, do

``` sh
cd <where you cloned aicex>
mkdir .ssh
cat $HOME/.ssh/id_rsa.pub > .ssh/authorized_keys 
```

You should no be able to connect to the docker image

For example

``` sh
ssh -Y -p 2022 aicex@localhost
cd ip/sun_sar9b_sky130nm/work 
magic ../design/SUN_SAR9B_SKY130NM/SUNSAR_SAR9B_CV.mag &
xschem -b ../design/SUN_SAR9B_SKY130NM/SUNSAR_SAR9B_CV.sch &

```

## Introduction

The video is old, which means things have changed on how to install and also the
directory structure.

[https://www.youtube.com/watch?v=yvUW2gA42bM](https://www.youtube.com/watch?v=yvUW2gA42bM)



# Notes

## xschem
- netlisting seems to be done not by pin number, but by order of B's in .sym.
  Also, I've experienced different ordering for subckts, and for top cell
