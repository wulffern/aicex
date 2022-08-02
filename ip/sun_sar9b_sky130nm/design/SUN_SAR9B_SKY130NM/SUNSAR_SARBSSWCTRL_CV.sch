v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 290 200 310 200 {lab=N1}
N 230 230 250 230 {lab=C}
N 290 260 310 260 {lab=AVSS}
N 290 230 310 230 {lab=BULKN}
N 290 100 310 100 {lab=GN}
N 230 130 250 130 {lab=TIE_H}
N 290 160 310 160 {lab=N1}
N 290 130 310 130 {lab=BULKN}
N 290 -10 310 -10 {lab=GNG}
N 230 20 250 20 {lab=C}
N 290 50 310 50 {lab=GN}
N 290 20 310 20 {lab=BULKP}
N 290 -100 310 -100 {lab=AVDD}
N 230 -70 250 -70 {lab=GN}
N 290 -40 310 -40 {lab=GNG}
N 290 -70 310 -70 {lab=BULKP}
C {devices/iopin.sym} 0 0 0 0 {name=p0 lab=C}
C {devices/iopin.sym} 0 20 0 0 {name=p1 lab=GN}
C {devices/iopin.sym} 0 40 0 0 {name=p2 lab=GNG}
C {devices/iopin.sym} 0 60 0 0 {name=p3 lab=TIE_H}
C {devices/iopin.sym} 0 80 0 0 {name=p4 lab=BULKP}
C {devices/iopin.sym} 0 100 0 0 {name=p5 lab=BULKN}
C {devices/iopin.sym} 0 120 0 0 {name=p6 lab=AVDD}
C {devices/iopin.sym} 0 140 0 0 {name=p7 lab=AVSS}
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 250 230 0 0 {name=XMN0}
C {devices/lab_pin.sym} 310 200 2 0 {name=l0 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 230 230 0 0 {name=l1 sig_type=std_logic lab=C }
C {devices/lab_pin.sym} 310 260 2 0 {name=l2 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 310 230 2 0 {name=l3 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 250 130 0 0 {name=XMN1}
C {devices/lab_pin.sym} 310 100 2 0 {name=l4 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 230 130 0 0 {name=l5 sig_type=std_logic lab=TIE_H }
C {devices/lab_pin.sym} 310 160 2 0 {name=l6 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 310 130 2 0 {name=l7 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 250 20 2 1 {name=XMP0}
C {devices/lab_pin.sym} 310 -10 0 1 {name=l8 sig_type=std_logic lab=GNG }
C {devices/lab_pin.sym} 230 20 2 1 {name=l9 sig_type=std_logic lab=C }
C {devices/lab_pin.sym} 310 50 0 1 {name=l10 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 310 20 0 1 {name=l11 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 250 -70 2 1 {name=XMP1}
C {devices/lab_pin.sym} 310 -100 0 1 {name=l12 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 230 -70 2 1 {name=l13 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 310 -40 0 1 {name=l14 sig_type=std_logic lab=GNG }
C {devices/lab_pin.sym} 310 -70 0 1 {name=l15 sig_type=std_logic lab=BULKP }
