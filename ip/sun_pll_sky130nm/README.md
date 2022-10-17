
# SUN_PLL_SKY130NM

# Who
wulff

# Why
 Example PLL with a VDD controlled ring oscillator. This is not a design you
 should use for a real circuit. It's a design made to further develop
 ciccreator.
 
 If you wanted to use the architecture I would start by replacing the
 ring-oscillator with something different, something with smaller Kvco, for
 example a current controlled ring-oscillator.

# How
 <explain short how you made this module>


# What

| What            | Lib/Folder       | Cell/Name |
| :-              | :-:              | :-:       |
| Schematic       | SUN_PLL_SKY130NM | SUN_PLL |
| Layout          | SUN_PLL_SKY130NM | SUN_PLL |
| LPE             | SUN_PLL_SKY130NM | SUN_PLL |


# Changelog/Plan
| Version | Status | Comment|
| :-| :-| :-|
|0.1.0 | :x: | Make something |


# Signal interface
| Signal       | Direction | Domain  | Description                               |
| :---         | :---:     | :---:   | :---                                      |
| AVDD         | Input     | VDD_1V8 | Main supply                               |
| AVSS         | Input     | Ground  |                                           |
| PWRUP_CV     | Input    | VDD_1V8 | Power up the circuit                       |


# Key parameters
| Parameter           | Min     | Typ           | Max     | Unit  |
| :---                | :-:     | :-:           | :-:     | :---: |
| Technology          |         | GF130NBCDLite |         |       |
| AVDD                | 1.7    | 1.8           | 1.9    | V     |
| Temperature         | -40     | 27            | 125     | C     |


# Status

| Stage                       | TYPE | Status | Comment                        |
| :---                        | :-:  | :---:  | :--:                           |
| Specification               | DOC  | :x:    |                                |
| Schematic                   | VIEW | :x:    |                                |
| Schematic simulation        | VER  | N/A    |                                |
| Layout                      | VIEW | :x:    |                                |
| Layout parasitic extraction | VIEW | :x:    |                                |
| LPE simulation              | VER  | :x:    |                                |
| LVS                         | VER  | :x:    |                                |
| DRC                         | VER  | :x:    |                                |
| ERC                         | VER  | :x:    |                                |
| ANT                         | VER  | :x:    |                                |
