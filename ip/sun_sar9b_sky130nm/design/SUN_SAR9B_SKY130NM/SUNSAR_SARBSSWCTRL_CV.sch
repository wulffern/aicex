v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Bootstrapped switch control} -295 -515 0 0 1 1 {}
T {Protect towards too high Vds } 145 -50 0 0 0.4 0.4 {}
N 65 25 85 25 {lab=N1}
N 5 55 25 55 {lab=C}
N 65 85 85 85 {lab=AVSS}
N 65 55 85 55 {lab=BULKN}
N 65 -75 85 -75 {lab=GN}
N 5 -45 25 -45 {lab=TIE_H}
N 65 -15 85 -15 {lab=N1}
N 65 -45 85 -45 {lab=BULKN}
N 65 -185 85 -185 {lab=GNG}
N 5 -155 25 -155 {lab=C}
N 65 -125 85 -125 {lab=GN}
N 65 -155 85 -155 {lab=BULKP}
N 65 -275 85 -275 {lab=AVDD}
N 5 -245 25 -245 {lab=GN}
N 65 -215 85 -215 {lab=GNG}
N 65 -245 85 -245 {lab=BULKP}
C {devices/iopin.sym} -225 -175 0 0 {name=p0 lab=C}
C {devices/iopin.sym} -225 -155 0 0 {name=p1 lab=GN}
C {devices/iopin.sym} -225 -135 0 0 {name=p2 lab=GNG}
C {devices/iopin.sym} -225 -115 0 0 {name=p3 lab=TIE_H}
C {devices/iopin.sym} -225 -95 0 0 {name=p4 lab=BULKP}
C {devices/iopin.sym} -225 -75 0 0 {name=p5 lab=BULKN}
C {devices/iopin.sym} -225 -55 0 0 {name=p6 lab=AVDD}
C {devices/iopin.sym} -225 -35 0 0 {name=p7 lab=AVSS}
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 25 55 0 0 {name=XMN0}
C {devices/lab_pin.sym} 85 25 2 0 {name=l0 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 5 55 0 0 {name=l1 sig_type=std_logic lab=C }
C {devices/lab_pin.sym} 85 85 2 0 {name=l2 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 85 55 2 0 {name=l3 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 25 -45 0 0 {name=XMN1}
C {devices/lab_pin.sym} 85 -75 2 0 {name=l4 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 5 -45 0 0 {name=l5 sig_type=std_logic lab=TIE_H }
C {devices/lab_pin.sym} 85 -15 2 0 {name=l6 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 85 -45 2 0 {name=l7 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 25 -155 2 1 {name=XMP0}
C {devices/lab_pin.sym} 85 -185 0 1 {name=l8 sig_type=std_logic lab=GNG }
C {devices/lab_pin.sym} 5 -155 2 1 {name=l9 sig_type=std_logic lab=C }
C {devices/lab_pin.sym} 85 -125 0 1 {name=l10 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 85 -155 0 1 {name=l11 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 25 -245 2 1 {name=XMP1}
C {devices/lab_pin.sym} 85 -275 0 1 {name=l12 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 5 -245 2 1 {name=l13 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 85 -215 0 1 {name=l14 sig_type=std_logic lab=GNG }
C {devices/lab_pin.sym} 85 -245 0 1 {name=l15 sig_type=std_logic lab=BULKP }
C {cborder/border_s.sym} 490 265 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
