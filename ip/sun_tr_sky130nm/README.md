
# SUN_TR_SKY130NM

# Who
Carsten Wulff carsten@wulff.no

# Why
Library with digital cells, and standard transistors

# How
 Made with [ciccreator](https://github.com/wulffern/ciccreator). Source files in
 `cic/`
 

# What

| What               | Path                                    | Comment          |
|:-------------------|:----------------------------------------|:-----------------|
| Schematic          | [design/SUN_TR_SKY130NM/SUNTR_SUN_TR.sch](design/SUN_TR_SKY130NM/SUNTR_SUN_TR.sch) | Not fully tested |
| Layout             | [design/SUN_TR_SKY130NM/SUNTR_SUN_TR.mag](design/SUN_TR_SKY130NM/SUNTR_SUN_TR.mag) |                  |
| Verilog            | [design/SUN_TR_SKY130NM.v](design/SUN_TR_SKY130NM.v)                | Not tested       |
| Simulation netlist | [design/SUN_TR_SKY130NM.spice](design/SUN_TR_SKY130NM.spice)            |                  |
| LVS netlist        | [design/SUN_TR_SKY130NM.spi](design/SUN_TR_SKY130NM.spi)              |                  |




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


## PCH
| Parameter          | Min     | Typ     | Max     |
|:-------------------|:-------:|:-------:|:-------:|
| pchdl_gmid10_id    | 1.8e-06 | 4.3e-06 | 7.6e-06 |
| pchdl_gmid10_vgs   | 0.52    | 0.85    | 1.1     |
| pchdl_gmid20_id    | 1.5e-09 | 1.3e-07 | 3.9e-07 |
| pchdl_gmid20_vgs   | 0.26    | 0.59    | 0.94    |
| pchdlcm_gmid10_id  | 7e-07   | 1.4e-06 | 2.5e-06 |
| pchdlcm_gmid10_vgs | 0.69    | 0.97    | 1.2     |
| pchdlcm_gmid20_id  | 7.8e-10 | 9e-09   | 3.4e-08 |
| pchdlcm_gmid20_vgs | 0.3     | 0.62    | 0.94    |
| pchdla_gmid10_id   | 1.5e-05 | 2.7e-05 | 4.7e-05 |
| pchdla_gmid10_vgs  | 0.73    | 0.98    | 1.2     |
| pchdla_gmid20_id   | 8.6e-10 | 9.8e-08 | 5.3e-07 |
| pchdla_gmid20_vgs  | 0.28    | 0.56    | 0.93    |

## NCH 
| Parameter          | Min     | Typ     | Max     |
|:-------------------|:-------:|:-------:|:-------:|
| nchdl_gmid10_id    | 1.1e-05 | 2.4e-05 | 4e-05   |
| nchdl_gmid10_vgs   | 0.68    | 0.81    | 0.97    |
| nchdl_gmid20_id    | 6.3e-08 | 2.4e-06 | 8.4e-06 |
| nchdl_gmid20_vgs   | 0.37    | 0.63    | 0.8     |
| nchdla_gmid10_id   | 1.4e-05 | 3e-05   | 4.7e-05 |
| nchdla_gmid10_vgs  | 0.72    | 0.83    | 0.94    |
| nchdla_gmid20_id   | 1.6e-08 | 1.9e-06 | 4.9e-06 |
| nchdla_gmid20_vgs  | 0.34    | 0.61    | 0.78    |
| nchdlcm_gmid10_id  | 5.6e-07 | 1.4e-06 | 2.5e-06 |
| nchdlcm_gmid10_vgs | 0.72    | 0.83    | 0.94    |
| nchdlcm_gmid20_id  | 4.7e-08 | 1e-07   | 2e-07   |
| nchdlcm_gmid20_vgs | 0.6     | 0.68    | 0.76    |

 
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
