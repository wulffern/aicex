---
layout: page 
title: Create an IP
permalink: /createip/
categories: AIC
---

For a full tutorial head over to [rply_ex0_sky130nm](https://wulffern.github.io/rply_ex0_sky130nm).

The technology setup, and the python scripts expects IPs to follow a certain
directory structure. 

Navigate to the IP folder

```sh
cd ip
```
I use `cicconf newip` to create a new IP. 
cicconf will search for a `config.yaml` file that contains information on default template for IPs, project name, and technology name. Do

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


