---
layout: page
title: Getting started
permalink: /started/
---

## Setup tools on linux or mac (or WSL on Windows)


<iframe width="400" height="315" src="https://www.youtube.com/embed/DRppsdjo2Rc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

For the analog toolchain we need some tools, and a process design kit (PDK).

- [Skywater 130nm PDK](https://github.com/google/skywater-pdk). I use [open_pdks](https://github.com/RTimothyEdwards/open_pdks) to install the PDK
- [Magic VLSI](https://github.com/RTimothyEdwards/magic) for layout
- [ngspice](https://git.code.sf.net/p/ngspice/ngspice) for simulation 
- [netgen](https://github.com/RTimothyEdwards/netgen.git) for LVS
- [xschem](https://github.com/StefanSchippers/xschem)
- python > 3.10

The tools are not that big, but the PDK is huge, so you need to have about 50 GB
disk space available. 

### Setup WSL (Applicable for Windows users)
Install a Linux distribution such as Ubuntu 22.04 LTS by running the following command in PowerShell on Windows and follow the instructions.
```bash
wsl --install -d Ubuntu-22.04
```

When you have installed the Linux distribution and  signed into it, install make

```bash
sudo apt install make
```

## Setup public key towards github

Do 

```bash
ssh-keygen -t rsa
```

And press "enter" on most things, or if you're paranoid, add a passphrase

Then 
```bash 
cat ~/.ssh/id_rsa.pub 
```

And add the public key to your github account. Settings - SSH and GPG keys 

## Clone the github repo, install, and set up tools

```bash
git clone --recursive git@github.com:wulffern/aicex.git
```

You need to add the following to your ~/.bashrc (note that `~` refers to your
home directory `$HOME/.bashrc` also works, or `$HOME/.bash_profile` on some
newer macs)


```bash
export PDK_ROOT=/opt/pdk/share/pdk
export LD_LIBRARY_PATH=/opt/eda/lib
export PATH=/opt/eda/bin:$HOME/.local/bin:$PATH
```


## Ubuntu 24.04 or new system

On newer systems it's not trivial to install python packages because python is
externally managed. As such, we need to install a python environment.

```bash 
#- Find a package similar to name below
sudo apt install python3.12-venv
sudo mkdir /opt/eda/python3
sudo chown -R $USER:$USER /opt/eda/python3/
python3 -m venv /opt/eda/python3
```

Modify the `~/.bashrc` to include the python environment

```bash
export PATH=/opt/eda/bin:/opt/eda/python3/bin:$HOME/.local/bin:$PATH
```


## Install 


Make sure you load the settings before you proceed

```bash
source ~/.bashrc
```



```bash
cd aicex/tests/
make requirements
make tt
make eda_compile
sudo make eda_install
python3 -m pip install matplotlib numpy click svgwrite pyyaml pandas tabulate wheel setuptools tikzplotlib
source install_open_pdk.sh
cd ../..
```



## Install cicconf 

``` bash
cd aicex/ip/cicconf
git checkout main 
git pull
python3 -m pip install -e .
cd ../
```

```sh

cicconf update 
cd ..
```


## Install cicsim

``` bash
cd aicex/ip/cicsim
python3 -m pip install -e .
cd ../..
```

---


## Check that magic and xschem works

To check that magic and xschem works

``` sh
cd ip/sun_sar9b_sky130nm/work 
magic ../design/SUN_SAR9B_SKY130NM/SUNSAR_SAR9B_CV.mag &
xschem -b ../design/SUN_SAR9B_SKY130NM/SUNSAR_SAR9B_CV.sch &
```

