v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Transmission gate with pull down} 365 -150 0 0 0.4 0.4 {}
N 330 270 350 270 {lab=AVSS}
N 270 240 290 240 {lab=C}
N 330 210 350 210 {lab=CN}
N 330 240 350 240 {lab=BULKN}
N 700 250 720 250 {lab=B}
N 640 280 660 280 {lab=C}
N 700 310 720 310 {lab=AVSS}
N 700 280 720 280 {lab=BULKN}
N 550 260 550 280 {lab=A}
N 520 320 520 340 {lab=CN}
N 490 260 490 280 {lab=B}
N 520 260 520 280 {lab=BULKN}
N 330 120 350 120 {lab=AVDD}
N 270 150 290 150 {lab=C}
N 330 180 350 180 {lab=CN}
N 330 150 350 150 {lab=BULKP}
N 700 170 720 170 {lab=B}
N 640 140 660 140 {lab=AVDD}
N 700 110 720 110 {lab=AVDD}
N 700 140 720 140 {lab=BULKP}
N 490 90 490 110 {lab=A}
N 520 30 520 50 {lab=C}
N 550 90 550 110 {lab=B}
N 520 90 520 110 {lab=BULKP}
C {devices/iopin.sym} 0 0 0 0 {name=p0 lab=C}
C {devices/iopin.sym} 0 20 0 0 {name=p1 lab=A}
C {devices/iopin.sym} 0 40 0 0 {name=p2 lab=B}
C {devices/iopin.sym} 0 60 0 0 {name=p3 lab=BULKP}
C {devices/iopin.sym} 0 80 0 0 {name=p4 lab=BULKN}
C {devices/iopin.sym} 0 100 0 0 {name=p5 lab=AVDD}
C {devices/iopin.sym} 0 120 0 0 {name=p6 lab=AVSS}
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 290 240 2 1 {name=XMN0}
C {devices/lab_pin.sym} 350 270 0 1 {name=l0 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 270 240 2 1 {name=l1 sig_type=std_logic lab=C }
C {devices/lab_pin.sym} 350 210 0 1 {name=l2 sig_type=std_logic lab=CN }
C {devices/lab_pin.sym} 350 240 0 1 {name=l3 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 660 280 0 0 {name=XMN1}
C {devices/lab_pin.sym} 720 250 2 0 {name=l4 sig_type=std_logic lab=B }
C {devices/lab_pin.sym} 640 280 0 0 {name=l5 sig_type=std_logic lab=C }
C {devices/lab_pin.sym} 720 310 2 0 {name=l6 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 720 280 2 0 {name=l7 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 520 320 1 1 {name=XMN2}
C {devices/lab_pin.sym} 550 260 3 1 {name=l8 sig_type=std_logic lab=A }
C {devices/lab_pin.sym} 520 340 1 1 {name=l9 sig_type=std_logic lab=CN }
C {devices/lab_pin.sym} 490 260 3 1 {name=l10 sig_type=std_logic lab=B }
C {devices/lab_pin.sym} 520 260 3 1 {name=l11 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 290 150 2 1 {name=XMP0}
C {devices/lab_pin.sym} 350 120 0 1 {name=l12 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 270 150 2 1 {name=l13 sig_type=std_logic lab=C }
C {devices/lab_pin.sym} 350 180 0 1 {name=l14 sig_type=std_logic lab=CN }
C {devices/lab_pin.sym} 350 150 0 1 {name=l15 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 660 140 0 0 {name=XMP1_DMY}
C {devices/lab_pin.sym} 720 170 2 0 {name=l16 sig_type=std_logic lab=B }
C {devices/lab_pin.sym} 640 140 0 0 {name=l17 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 720 110 2 0 {name=l18 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 720 140 2 0 {name=l19 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 520 50 1 0 {name=XMP2}
C {devices/lab_pin.sym} 490 110 3 0 {name=l20 sig_type=std_logic lab=A }
C {devices/lab_pin.sym} 520 30 1 0 {name=l21 sig_type=std_logic lab=C }
C {devices/lab_pin.sym} 550 110 3 0 {name=l22 sig_type=std_logic lab=B }
C {devices/lab_pin.sym} 520 110 3 0 {name=l23 sig_type=std_logic lab=BULKP }
C {cborder/border_s.sym} 790 430 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
