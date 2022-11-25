
[![aicex ci](https://github.com/wulffern/aicex/actions/workflows/tests.yaml/badge.svg)](https://github.com/wulffern/aicex/actions/workflows/tests.yaml)

# aicex
This repository is a collection of IPs in Skywater 130nm technology. 

The available IPs can be seen in [ip/config.yaml](ip/config.yaml). I use
[cicconf](https://github.com/wulffern/cicconf) to clone the repositories.

| IPs                                                                     | Notes                                                                                           |
|-------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|
| [ip/cicconf](https://github.com/wulffern/cicconf)                       | Custom IC Creator Configuration tool                                                            |
| [ip/cicpy](https://github.com/wulffern/cicconf)                         | Custom IC Creator Python Transpiler                                                             |
| [ip/cicsim](https://github.com/wulffern/cicsim)                         | Custom IC Creator Simulation Toolbox                                                            |
| [ip/ciccreator](https://github.com/wulffern/ciccreator)                 | Custom IC Creator                                                                               |
| [ip/sun_sar9b_sky130nm](https://github.com/wulffern/sun_sar9b_sky130nm) | 9-bit successive approximation analog-to-digital converter                                      |
| [ip/sun_pll_sky130nm](https://github.com/wulffern/sun_pll_sky130nm)     | *General purpose PLL. Should not be used for real designs. Development platform for ciccreator* |
| [ip/sun_tr_sky130nm](https://github.com/wulffern/sun_tr_sky130nm)       | Standard cell libraries for analog schematics                                                   |
| [ip/sun_trb_sky130nm](https://github.com/wulffern/sun_trb_sky130nm)     | Standard cell libraries for analog schematics with separate bulk connections                    |
| [ip/cpdk](https://github.com/wulffern/cpdk)                             | Carsten's design kit                                                                            |
| [ip/tech_sky130A](https://github.com/wulffern/tech_sky130A)             | Technology files for SKY130A                                                                    |
| [ip/tech_sky130B](https://github.com/wulffern/tech_sky130B)             | Technology files for SKY130B                                                                    |
| [ip/rply_bias_sky130nm](https://github.com/wulffern/rply_bias_sky130nm) | PTAT current source                                                                             |


## Getting Started with aicex on Docker

On Linux or Mac

``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/wulffern/aicex/main/install.sh)"
```

Wait a few seconds until you see "Restarting OpenBSD Secure Shell server".Then

``` sh
ssh -Y -p 2022 aicex@localhost
```

You are now in the docker image, and the home directory will be set to the aicex cloned git repository.

Aicex relies on python scripts, the command below will install them, and clone the ip's defined in [ip/config.yaml](ip/config.yaml). Once everything is installed, the script will build from scratch the ADC, transistors etc, and run DRC/LVS, and a small simulation to verify the environment is OK.
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

## Getting started on native linux or mac

For the analog toolchain we need some tools, and a process design kit (PDK). These must be installed first.

### Requirements

- [Skywater 130nm PDK](https://github.com/google/skywater-pdk). I use [open_pdks](https://github.com/RTimothyEdwards/open_pdks) to install the PDK
- [Magic VLSI](https://github.com/RTimothyEdwards/magic) for layout
- [ngspice](https://git.code.sf.net/p/ngspice/ngspice) for simulation 
- [netgen](https://github.com/RTimothyEdwards/netgen.git) for LVS
- [xschem]()
- python > 3.8

I install the tools manually on MacOS, however, on Ubuntu 20.4 I've made a
[makefile](https://github.com/wulffern/eda) to install all the tools.

### Install aicex

I'd recommend that you look in the [install.sh](install.sh) script, and understand what it does. Same for the [tests/run_docker_test.sh](tests/run_docker_test.sh)

But if you want the short version 

``` sh
git clone git@github.com:wulffern/aicex.git
cd aicex
/bin/bash tests/install_cicconf.sh 
cd ip
cicconf clone 
```

# Make your own design

The technology setup, and the python scripts expects IPs to follow a certain directory structure. Do the following:

Navigate to the IP folder

```sh
cd ip
```
I use `cicconf ip` to create a new IP. cicconf will search for a `config.yaml` file that contains information on default template for IPs, project name, and technology name. Do

```sh
cicconf newip myip
```

On docker this will probably fail to commit to the git repository it makes, since you may not have setup your name etc, but if you have installed native on linux on mac it should work

You need to setup the github (or other remote) yourself for the newly created git repository. At the time of writing, the cicconf will create the following structure.

```sh
rply_myip_sky130nm                                        # Main directory
├── README.md                                             # Generated readme
├── design
│   └── RPLY_MYIP_SKY130NM                                # Where all scripts expect the schematics, symbols and layout of the IP to be
│       └── RPLY_MYIP.sch                                 # Top level schematic
├── documents                                     
├── sim
│   ├── Makefile                                          # Sim Makefile, links to the default simulation makefile in the technology
│   └── cicsim.yaml -> ../tech/cicsim/cicsim.yaml
├── tech -> ../tech_sky130B                               # Link to the PDK setup
└── work                                                  # Where you should start xschem, and magic from
    ├── Makefile                                                  # Layout makefile, usually has gds, cdl, lvs, drc make commands
    ├── mos.24bit.dstyle -> ../tech/magic/mos.24bit.dstyle        # Change the default colors of Magic
    ├── mos.24bit.std.cmap -> ../tech/magic/mos.24bit.std.cmap    # Same as above
    └── xschemrc                                                  # Xschem setup file
    └── .magicrc                                                  # Magic setup file
```

To start designing your new IP

```sh
cd work; xschem ../design/RPLY_MYIP_SKY130NM/RPLY_MYIP.sch
```

For example, you could insert a SUN_TR_SKY130NM/SUNTR_NCHDLCM with gate to PWRUP_1V8, drain to VDD_1V8 and source/bulk to VSS

Once you want to simulate, navigate to the sim/ directory, and create a simulation folder. I use `cicsim` for that

```sh
cicsim simcell RPLY_MYIP_SKY130NM RPLY_MYIP ../tech/cicsim/simcell_template.yaml

```


The files at generated at the time of writing are
| File         | Description                                                                                                                                                                 |
|:-------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| RPLY_MYIP/   | simulation folder                                                                                                                                                           |
|  Makefile     | Makefile with corners, try `make typical`                                                                                                                                   |
|  cicsim.yaml  | Setup for cicsim                                                                                                                                                            |
|  summary.yaml | Setup for cicsim summary, generating a markdown summary of simulations, for example [RPLY_BIAS](https://github.com/wulffern/rply_bias_sky130nm/tree/main/sim/RPLY_BIAS)     |
|  tran.meas    | Measurements. It's good to separate the measurement from the simulation, so you can do `make typical OPT="--no-run"` to only do measurements, and not the actual simulation |
|  tran.py      | Python script that runs after measurement are extracted                                                                                                                     |
|  tran.spi     | Transient testbench                                                                                                                                                         |
|  tran.yaml    | Defines the parameters that should be summarized by cicsim results and cicsim summary                                                                                       |

By default, there is no measurements included, that you need to do your self,
but have a look at
[RPLY_BIAS](https://github.com/wulffern/rply_bias_sky130nm/tree/main/sim/RPLY_BIAS)
for hints.


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
