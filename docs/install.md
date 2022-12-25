---
layout: page
title: Getting started
permalink: /started/
---

## Getting started on native linux or mac

For the analog toolchain we need some tools, and a process design kit (PDK).
These must be installed first. If you have no idea how to install from source,
skip this section, and look how to use aicex with docker

### Requirements

- [Skywater 130nm PDK](https://github.com/google/skywater-pdk). I use [open_pdks](https://github.com/RTimothyEdwards/open_pdks) to install the PDK
- [Magic VLSI](https://github.com/RTimothyEdwards/magic) for layout
- [ngspice](https://git.code.sf.net/p/ngspice/ngspice) for simulation 
- [netgen](https://github.com/RTimothyEdwards/netgen.git) for LVS
- [xschem](https://github.com/StefanSchippers/xschem)
- python > 3.8

I install the tools manually on MacOS, however, on Ubuntu 20.4 I've made a
[makefile](https://github.com/wulffern/eda) to install all the tools.


## Getting Started with aicex on Docker

### SSH keys 
Check that you have a SSH public key 

``` bash
ls -l ./ssh/id_rsa.pub
```

If you don't have an SSH key, make one 

``` bash
ssh-keygen -t rsa
```

### Setup aicex 

``` bash
cd <where you want aicex>
git clone --single-branch --branch=main --depth 1 https://github.com/wulffern/aicex.git
cd aicex
mkdir .ssh
cat $HOME/.ssh/id_rsa.pub > .ssh/authorized_keys

```

### Start the docker container

Install [docker](https://www.docker.com) if you don't have it.


``` bash
docker run --rm --name aicex -p 2022:22 -v `pwd`:/home/aicex/ -i wulffern/aicex:0.1.1 &
```

Wait a few seconds until you see "Restarting OpenBSD Secure Shell server".Then

``` sh
ssh -Y -p 2022 aicex@localhost
```

You are now in the docker image, and the home directory will be set to the aicex
cloned git repository.

### Bootstrap cicconf 

Aicex uses [cicconf](https://github.com/wulffern/cicconf) and if you don't have
that installed, we need to
boostrap cicconf before we can use it. If you already have cicconf, then skip
this step

``` bash
cd ip 
git clone  https://github.com/wulffern/cicconf.git
cd cicconf
python3 -m pip install --user -e .
cd ../..
```

## Clone repositories

The cicconf script reads the config.yaml, and clones all repositories. 
It will also run the "on_clone" events in config.yaml, but you can skip those
with "--no-onclone" if you know what your doing.

To clone all repositories do.

``` bash
cd ip
cicconf clone --https
cd ..
```

## Check that magic and xschem works

To check that magic and xschem works

``` sh
cd ip/sun_sar9b_sky130nm/work 
magic ../design/SUN_SAR9B_SKY130NM/SUNSAR_SAR9B_CV.mag &
xschem -b ../design/SUN_SAR9B_SKY130NM/SUNSAR_SAR9B_CV.sch &
```

