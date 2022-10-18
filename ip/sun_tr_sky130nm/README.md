
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

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| nchdla_gmid10_gmrds     | 19      | 26      | 34      |
| nchdla_gmid10_gmrds_db  | 26      | 28      | 31      |
| nchdla_gmid10_id        | 2.1e-05 | 4.1e-05 | 6.4e-05 |
| nchdla_gmid10_rds       | 3e+04   | 7.3e+04 | 1.5e+05 |
| nchdla_gmid10_vgs       | 0.7     | 0.83    | 0.97    |
| nchdla_gmid20_gmrds     | 16      | 24      | 31      |
| nchdla_gmid20_gmrds_db  | 24      | 27      | 30      |
| nchdla_gmid20_id        | 1.3e-07 | 1.8e-06 | 4.1e-06 |
| nchdla_gmid20_rds       | 2.4e+05 | 2.4e+06 | 6.3e+06 |
| nchdla_gmid20_vgs       | 0.37    | 0.6     | 0.8     |

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| nchdlcm_gmid10_gmrds    | 1.5e+02 | 1.9e+02 | 2.2e+02 |
| nchdlcm_gmid10_gmrds_db | 43      | 45      | 47      |
| nchdlcm_gmid10_id       | 9.7e-07 | 2.2e-06 | 3.9e-06 |
| nchdlcm_gmid10_rds      | 4.7e+06 | 1e+07   | 2.1e+07 |
| nchdlcm_gmid10_vgs      | 0.73    | 0.86    | 0.99    |
| nchdlcm_gmid20_gmrds    | 1.7e+02 | 3.2e+02 | 4.2e+02 |
| nchdlcm_gmid20_gmrds_db | 45      | 50      | 52      |
| nchdlcm_gmid20_id       | 1.2e-08 | 1.1e-07 | 2.6e-07 |
| nchdlcm_gmid20_rds      | 7.3e+07 | 3.6e+08 | 8.9e+08 |
| nchdlcm_gmid20_vgs      | 0.41    | 0.63    | 0.81    |

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| nchl_gmid10_gmrds       | 51      | 62      | 73      |
| nchl_gmid10_gmrds_db    | 34      | 36      | 37      |
| nchl_gmid10_id          | 6.1e-06 | 1.2e-05 | 1.9e-05 |
| nchl_gmid10_rds         | 2.9e+05 | 5.9e+05 | 1.1e+06 |
| nchl_gmid10_vgs         | 0.71    | 0.81    | 0.91    |
| nchl_gmid20_gmrds       | 58      | 69      | 80      |
| nchl_gmid20_gmrds_db    | 35      | 37      | 38      |
| nchl_gmid20_id          | 5e-07   | 1.2e-06 | 2.2e-06 |
| nchl_gmid20_rds         | 1.4e+06 | 3.7e+06 | 7.5e+06 |
| nchl_gmid20_vgs         | 0.6     | 0.68    | 0.75    |

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| nchla_gmid10_gmrds      | 51      | 62      | 73      |
| nchla_gmid10_gmrds_db   | 34      | 36      | 37      |
| nchla_gmid10_id         | 1.2e-05 | 2.4e-05 | 3.8e-05 |
| nchla_gmid10_rds        | 1.5e+05 | 2.9e+05 | 5.5e+05 |
| nchla_gmid10_vgs        | 0.71    | 0.81    | 0.91    |
| nchla_gmid20_gmrds      | 58      | 69      | 80      |
| nchla_gmid20_gmrds_db   | 35      | 37      | 38      |
| nchla_gmid20_id         | 1e-06   | 2.5e-06 | 4.5e-06 |
| nchla_gmid20_rds        | 6.9e+05 | 1.8e+06 | 3.7e+06 |
| nchla_gmid20_vgs        | 0.6     | 0.68    | 0.75    |

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| nchlcm_gmid10_gmrds     | 2.6e+02 | 3e+02   | 3.4e+02 |
| nchlcm_gmid10_gmrds_db  | 48      | 49      | 51      |
| nchlcm_gmid10_id        | 6.1e-07 | 1.4e-06 | 2.5e-06 |
| nchlcm_gmid10_rds       | 1.1e+07 | 2.6e+07 | 5.3e+07 |
| nchlcm_gmid10_vgs       | 0.7     | 0.81    | 0.91    |
| nchlcm_gmid20_gmrds     | 3.6e+02 | 4.1e+02 | 4.5e+02 |
| nchlcm_gmid20_gmrds_db  | 51      | 52      | 53      |
| nchlcm_gmid20_id        | 5e-08   | 1.2e-07 | 2.2e-07 |
| nchlcm_gmid20_rds       | 8.6e+07 | 2.3e+08 | 4.5e+08 |
| nchlcm_gmid20_vgs       | 0.58    | 0.66    | 0.74    |

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| pchdla_gmid10_gmrds     | 12      | 16      | 21      |
| pchdla_gmid10_gmrds_db  | 22      | 24      | 26      |
| pchdla_gmid10_id        | 1.5e-05 | 3.4e-05 | 6.1e-05 |
| pchdla_gmid10_rds       | 2.2e+04 | 6e+04   | 1.2e+05 |
| pchdla_gmid10_vgs       | 0.52    | 0.85    | 1.1     |
| pchdla_gmid20_gmrds     | 15      | 18      | 21      |
| pchdla_gmid20_gmrds_db  | 24      | 25      | 27      |
| pchdla_gmid20_id        | 7.8e-10 | 6.4e-07 | 3.2e-06 |
| pchdla_gmid20_rds       | 3.4e+05 | 3.3e+08 | 1.1e+09 |
| pchdla_gmid20_vgs       | 0.26    | 0.5     | 0.94    |

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| pchdlcm_gmid10_gmrds    | 23      | 33      | 42      |
| pchdlcm_gmid10_gmrds_db | 27      | 30      | 33      |
| pchdlcm_gmid10_id       | 5e-07   | 1.9e-06 | 3.7e-06 |
| pchdlcm_gmid10_rds      | 8.2e+05 | 2.5e+06 | 4.6e+06 |
| pchdlcm_gmid10_vgs      | 0.48    | 0.86    | 1.1     |
| pchdlcm_gmid20_gmrds    | 39      | 54      | 71      |
| pchdlcm_gmid20_gmrds_db | 32      | 34      | 37      |
| pchdlcm_gmid20_id       | 1.1e-09 | 4.3e-08 | 1.2e-07 |
| pchdlcm_gmid20_rds      | 2.8e+07 | 8.2e+08 | 1.8e+09 |
| pchdlcm_gmid20_vgs      | 0.28    | 0.61    | 0.94    |

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| pchl_gmid10_gmrds       | 65      | 80      | 93      |
| pchl_gmid10_gmrds_db    | 36      | 38      | 39      |
| pchl_gmid10_id          | 1.6e-06 | 2.9e-06 | 4.7e-06 |
| pchl_gmid10_rds         | 1.7e+06 | 3.1e+06 | 4.9e+06 |
| pchl_gmid10_vgs         | 0.79    | 1       | 1.2     |
| pchl_gmid20_gmrds       | 60      | 73      | 93      |
| pchl_gmid20_gmrds_db    | 36      | 37      | 39      |
| pchl_gmid20_id          | 6e-10   | 2.8e-08 | 1.7e-07 |
| pchl_gmid20_rds         | 2.8e+07 | 1.7e+09 | 5.4e+09 |
| pchl_gmid20_vgs         | 0.35    | 0.64    | 1       |

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| pchla_gmid10_gmrds      | 65      | 80      | 93      |
| pchla_gmid10_gmrds_db   | 36      | 38      | 39      |
| pchla_gmid10_id         | 1.3e-05 | 2.3e-05 | 3.7e-05 |
| pchla_gmid10_rds        | 2.1e+05 | 3.9e+05 | 6.1e+05 |
| pchla_gmid10_vgs        | 0.79    | 1       | 1.2     |
| pchla_gmid20_gmrds      | 41      | 68      | 93      |
| pchla_gmid20_gmrds_db   | 32      | 36      | 39      |
| pchla_gmid20_id         | 1.9e-09 | 1.8e-07 | 1.3e-06 |
| pchla_gmid20_rds        | 3.5e+06 | 4.1e+08 | 1.1e+09 |
| pchla_gmid20_vgs        | 0.16    | 0.58    | 1       |

| Parameter               | Min     | Typ     | Max     |
|:------------------------|:-------:|:-------:|:-------:|
| pchlcm_gmid10_gmrds     | 1.1e+02 | 1.4e+02 | 1.7e+02 |
| pchlcm_gmid10_gmrds_db  | 41      | 43      | 44      |
| pchlcm_gmid10_id        | 6.4e-07 | 1.2e-06 | 2e-06   |
| pchlcm_gmid10_rds       | 7e+06   | 1.3e+07 | 2.1e+07 |
| pchlcm_gmid10_vgs       | 0.76    | 1       | 1.2     |
| pchlcm_gmid20_gmrds     | 1.3e+02 | 1.5e+02 | 1.6e+02 |
| pchlcm_gmid20_gmrds_db  | 42      | 43      | 44      |
| pchlcm_gmid20_id        | 8.9e-10 | 8.4e-09 | 3.2e-08 |
| pchlcm_gmid20_rds       | 2.6e+08 | 3.2e+09 | 7.9e+09 |
| pchlcm_gmid20_vgs       | 0.37    | 0.67    | 0.97    |


 
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
