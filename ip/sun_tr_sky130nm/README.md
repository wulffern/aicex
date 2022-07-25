
# SUN_TR_SKY130NM

# Who
Carsten Wulff carsten@wulff.no

# Why
Library with digital cells, and standard transistors

# How
 Made with [ciccreator](https://github.com/wulffern/ciccreator). Source files in
 `cic/`
 

# What

| What               | Path                   | Comment          |
|:-------------------|:----------------------------|:----------------|
| Schematic          | build/SUN_TR_SKY130NM/xschem | Not fully tested |
| Verilog            | build/SUN_TR_SKY130NM/xschem | Not tested       |
| Simulation netlist | build/SUN_TR_SKY130NM.spice  |                  |
| LVS netlist        | build/SUN_TR_SKY130NM.spi    |                  |
| Layout             | build/SUN_TR_SKY130NM/mag    |                  |



# Changelog/Plan
| Version | Status | Comment                        |
|:--------|:-------|:-------------------------------|
| 0.1.0   | :white_check_mark:    | Initial version of the library |


# Transistors
| Cell      | Description            |
|:----------|:-----------------------|
| SUNTR_NCHDL     | Unit NMOS              |
| SUNTR_NCHDLA    | Analog NMOS, 2 fingers |
| SUNTR_NCHDLCM   | Series NMOS            |
| SUNTR_NCHDLCM2  | Series NMOS, 2 fingers |
| SUNTR_CNCHDLCM2 | Cascode NMOS           |
| SUNTR_PCHDL     | Unit PMOS              |
| SUNTR_PCHDLA    | Analog PMOS, 2 fingers |
| SUNTR_PCHDLCM   | Series PMOS            |
| SUNTR_PCHDLCM2  | Series PMOS, 2 fingers |
| SUNTR_CPCHDLCM2 | Cascode PMOS           |


# Digital cells

Some cells may come in multiple drive strengths.

| Cell        | Description                                         |
|:------------|:----------------------------------------------------|
| SUNTR_ANX1_CV     | AND                                                 |
| SUNTR_BFX1_CV     | Buffer                                              |
| SUNTR_DFRNQNX1_CV | D Flip-flop with inverted output and inverted reset |
| SUNTR_IVTRIX1_CV  | Tristate inverter, enable                           |
| SUNTR_IVX1_CV     | Inverter                                            |
| SUNTR_NDTRIX1_CV  | Tristate NAND                                       |
| SUNTR_NDX1_CV     | NAND                                                |
| SUNTR_NRX1_CV     | NOR                                                 |
| SUNTR_ORX1_CV     | OR                                                  |
| SUNTR_SCX1_CV     | Schmitt-trigger                                     |
| SUNTR_TAPCELLB_CV | Bulk connection                                     |
| SUNTR_TIEH_CV     | Tie high                                            |
| SUNTR_TIEL_CV     | Tie low                                             |
|             |                                                     |



# Key parameters
| Parameter           | Min     | Typ           | Max     | Unit  |
| :---                | :-:     | :-:           | :-:     | :---: |
| Technology          |         | SKY130NM  |         |       |
| AVDD                | 1.7    | 1.8           | 1.9    | V     |
| Temperature         | -40     | 27            | 125     | C     |



# Status

| Stage                       | TYPE | Status             | Comment |
|:----------------------------|:----:|:------------------:|:-------:|
| Specification               | DOC  | :white_check_mark: |         |
| Verilog model               | VIEW | :x:                |         |
| Schematic                   | VIEW | :x:                |         |
| Schematic simulation        | VER  | :x:                |         |
| Spice simulation            | VER  | :white_check_mark: |         |
| Layout                      | VIEW | :white_check_mark: |         |
| LVS                         | VER  | :white_check_mark: |         |
| DRC                         | VER  | :white_check_mark: |         |
| ERC                         | VER  | :x:                |         |
| ANT                         | VER  | :x:                |         |




# TODO
- Reset issue with DFRNQNX1_CV. If reset enabled, and disabled, it is equivalent
  to toggling the clock. Works OK for registers, and shift registers. Fails as
  PDF in PLL. 
