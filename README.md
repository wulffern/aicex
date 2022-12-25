---
layout: page
title: Readme
permalink: /readme/
---


[![aicex ci](https://github.com/wulffern/aicex/actions/workflows/tests.yaml/badge.svg)](https://github.com/wulffern/aicex/actions/workflows/tests.yaml)[![docs](https://github.com/wulffern/aicex/actions/workflows/jekyll-gh-pages.yml/badge.svg)](https://wulffern.github.io/aicex)

This repository is a collection of IPs in Skywater 130nm technology. The available IPs can be seen in [ip/config.yaml](ip/config.yaml). 

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
| [ip/tech_sky130B](https://github.com/wulffern/tech_sky130B)             | Technology files for SKY130B                                                                    |
| [ip/rply_bias_sky130nm](https://github.com/wulffern/rply_bias_sky130nm) | PTAT current source                                                                             |
| [ip/rply_ex0_sky130nm](https://github.com/wulffern/rply_ex0_sky130nm)   | Tutorial on sky130nm analog flow                                                                |


# Documentation

Head over to [wulffern.github.io/aicex](https://wulffern.github.io/aicex) for
information on how to use this repository.

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
