
# SUN_TR_SKY130N

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
| NCHDL     | Unit NMOS              |
| NCHDLA    | Analog NMOS, 2 fingers |
| NCHDLCM   | Series NMOS            |
| NCHDLCM2  | Series NMOS, 2 fingers |
| CNCHDLCM2 | Cascode NMOS           |
| PCHDL     | Unit PMOS              |
| PCHDLA    | Analog PMOS, 2 fingers |
| PCHDLCM   | Series PMOS            |
| PCHDLCM2  | Series PMOS, 2 fingers |
| CPCHDLCM2 | Cascode PMOS           |


# Digital cells

Some cells may come in multiple drive strengths.

| Cell        | Description                                         |
|:------------|:----------------------------------------------------|
| ANX1_CV     | AND                                                 |
| BFX1_CV     | Buffer                                              |
| DFRNQNX1_CV | D Flip-flop with inverted output and inverted reset |
| IVTRIX1_CV  | Tristate inverter, enable                           |
| IVX1_CV     | Inverter                                            |
| NDTRIX1_CV  | Tristate NAND                                       |
| NDX1_CV     | NAND                                                |
| NRX1_CV     | NOR                                                 |
| ORX1_CV     | OR                                                  |
| SCX1_CV     | Schmitt-trigger                                     |
| TAPCELLB_CV | Bulk connection                                     |
| TIEH_CV     | Tie high                                            |
| TIEL_CV     | Tie low                                             |
|             |                                                     |



# Key parameters
| Parameter           | Min     | Typ           | Max     | Unit  |
| :---                | :-:     | :-:           | :-:     | :---: |
| Technology          |         | SKY130NM  |         |       |
| AVDD                | 1.35    | 1.5           | 1.65    | V     |
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




