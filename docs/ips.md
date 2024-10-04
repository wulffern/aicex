---
layout: page 
title: IP 
permalink: /ip/
---

This repository is a collection of IPs in Skywater 130nm technology. The
available IPs can be seen in
[ip/config.yaml](https://github.com/wulffern/aicex/blob/main/ip/config.yaml). 

## Tools 

### [cicconf](https://github.com/wulffern/cicconf)  

A configuration tool. An alternative to submodules. Takes a yaml file, and
allows you to get the right version of dependencies

### [ciccreator](https://github.com/wulffern/ciccreator) 

[Documentation](https://wulffern.github.io/ciccreator) 

Carsten's  IC creator. Takes json, spice, and a rule file as input, and generate
DRC/LVS clean layout in the form of a .cic file. 

### [cicpy](https://github.com/wulffern/cicconf) 

Transpiler for *.cic files. Convert the output from ciccreator into skill,
xschem, magic and other formats

### [cicsim](https://github.com/wulffern/cicsim)  

Simulation orchestration. Run multiple spice simulations over corners. Also a
waveform viewer for spice raw files 

## Libraries 

- [cpdk](https://github.com/wulffern/cpdk) : Carsten's design kit
- [tech_sky130B](https://github.com/wulffern/tech_sky130B) : Technology files for SKY130B
- [tech_sky130A](https://github.com/wulffern/tech_sky130A)  : Technology files
  for SKY130A
- [sun_tr_sky130nm](https://github.com/wulffern/sun_tr_sky130nm) : Standard cell libraries for analog schematics
- [sun_trb_sky130nm](https://github.com/wulffern/sun_trb_sky130nm) : Standard cell libraries for analog schematics with separate bulk connections


## Examples 

###  [rply_ex0_sky130nm](https://github.com/wulffern/rply_ex0_sky130nm) 

[Documentation](https://wulffern.github.io/rply_ex0_sky130nm) 

Tutorial on sky130nm analog flow

## IPs 

## [sun_pll_sky130nm](https://github.com/wulffern/sun_pll_sky130nm)

[![GDS](https://github.com/wulffern/sun_pll_sky130nm/actions/workflows/gds.yaml/badge.svg)](https://github.com/wulffern/sun_pll_sky130nm/actions/workflows/gds.yaml)
[![DRC](https://github.com/wulffern/sun_pll_sky130nm/actions/workflows/drc.yaml/badge.svg)](https://github.com/wulffern/sun_pll_sky130nm/actions/workflows/drc.yaml)
[![LVS](https://github.com/wulffern/sun_pll_sky130nm/actions/workflows/lvslpe.yaml/badge.svg)](https://github.com/wulffern/sun_pll_sky130nm/actions/workflows/lvslpe.yaml) 

*General purpose PLL. Should not be used for real designs. Development platform for ciccreator* 

## [sun_sar9b_sky130nm](https://github.com/wulffern/sun_sar9b_sky130nm) |

[![GDS](https://github.com/wulffern/sun_sar9b_sky130nm/actions/workflows/gds.yaml/badge.svg)](https://github.com/wulffern/sun_sar9b_sky130nm/actions/workflows/gds.yaml)
[![DRC](https://github.com/wulffern/sun_sar9b_sky130nm/actions/workflows/drc.yaml/badge.svg)](https://github.com/wulffern/sun_sar9b_sky130nm/actions/workflows/drc.yaml)
[![LVS](https://github.com/wulffern/sun_sar9b_sky130nm/actions/workflows/lvslpe.yaml/badge.svg)](https://github.com/wulffern/sun_sar9b_sky130nm/actions/workflows/lvslpe.yaml) 

9-bit successive approximation analog-to-digital converter 
8-bit successive approximation analog-to-digital converter 


##  [rply_bias_sky130nm](https://github.com/wulffern/rply_bias_sky130nm)
[docs](https://wulffern.github.io/rply_bias_sky130nm) 

PTAT current source

