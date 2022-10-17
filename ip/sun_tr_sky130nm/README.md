
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


| Parameter          | Min     | Typ     | Max     |
|:-------------------|:-------:|:-------:|:-------:|
| nchdla_gmid10_id   | 2.1e-05 | 4.1e-05 | 6.4e-05 |
| nchdla_gmid10_vgs  | 0.7     | 0.83    | 0.97    |
| nchdla_gmid20_id   | 1.3e-07 | 1.7e-06 | 4.1e-06 |
| nchdla_gmid20_vgs  | 0.37    | 0.6     | 0.8     |
| nchdlcm_gmid10_id  | 9.7e-07 | 2.2e-06 | 3.9e-06 |
| nchdlcm_gmid10_vgs | 0.73    | 0.86    | 0.99    |
| nchdlcm_gmid20_id  | 1.2e-08 | 1.1e-07 | 2.6e-07 |
| nchdlcm_gmid20_vgs | 0.41    | 0.63    | 0.81    |
| nchl_gmid10_id     | 7e-06   | 1.3e-05 | 2.1e-05 |
| nchl_gmid10_vgs    | 0.63    | 0.71    | 0.79    |
| nchl_gmid20_id     | 2.5e-08 | 1.6e-06 | 3.2e-06 |
| nchl_gmid20_vgs    | 0.26    | 0.55    | 0.66    |
| nchla_gmid10_id    | 1.4e-05 | 2.7e-05 | 4.3e-05 |
| nchla_gmid10_vgs   | 0.63    | 0.71    | 0.79    |
| nchla_gmid20_id    | 1.8e-08 | 2.5e-06 | 6.4e-06 |
| nchla_gmid20_vgs   | 0.25    | 0.49    | 0.66    |
| nchlcm_gmid10_id   | 5.3e-07 | 1.2e-06 | 2.2e-06 |
| nchlcm_gmid10_vgs  | 0.62    | 0.72    | 0.8     |
| nchlcm_gmid20_id   | 6e-08   | 1.3e-07 | 2.4e-07 |
| nchlcm_gmid20_vgs  | 0.52    | 0.58    | 0.65    |
| pchdla_gmid10_id   | 1.5e-05 | 3.5e-05 | 6.1e-05 |
| pchdla_gmid10_vgs  | 0.52    | 0.85    | 1.1     |
| pchdla_gmid20_id   | 7.8e-10 | 5.4e-07 | 3.2e-06 |
| pchdla_gmid20_vgs  | 0.26    | 0.46    | 0.94    |
| pchdlcm_gmid10_id  | 5e-07   | 1.9e-06 | 3.7e-06 |
| pchdlcm_gmid10_vgs | 0.48    | 0.86    | 1.1     |
| pchdlcm_gmid20_id  | 1.1e-09 | 4.3e-08 | 1.2e-07 |
| pchdlcm_gmid20_vgs | 0.28    | 0.61    | 0.94    |
| pchl_gmid10_id     | 7.6e-07 | 1.7e-06 | 2.8e-06 |
| pchl_gmid10_vgs    | 0.21    | 0.44    | 0.71    |
| pchl_gmid20_id     | 1.8e-08 | 3.5e-08 | 5.9e-08 |
| pchl_gmid20_vgs    | 0.15    | 0.26    | 0.47    |
| pchla_gmid10_id    | 6.1e-06 | 1.4e-05 | 2.2e-05 |
| pchla_gmid10_vgs   | 0.21    | 0.44    | 0.71    |
| pchla_gmid20_id    | 1.4e-07 | 2.8e-07 | 4.7e-07 |
| pchla_gmid20_vgs   | 0.15    | 0.26    | 0.47    |
| pchlcm_gmid10_id   | 3.7e-07 | 8.2e-07 | 1.4e-06 |
| pchlcm_gmid10_vgs  | 0.22    | 0.46    | 0.74    |
| pchlcm_gmid20_id   | 1.1e-08 | 2.4e-08 | 4.2e-08 |
| pchlcm_gmid20_vgs  | 0.17    | 0.3     | 0.52    |

 
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
