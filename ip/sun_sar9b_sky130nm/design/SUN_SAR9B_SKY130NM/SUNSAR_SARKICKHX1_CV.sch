v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Dummies} 1500 -105 0 0 0.6 0.6 {}
T {Kick-back half circuit} 715 -240 0 0 1 1 {}
T {Transmission gate} 845 60 0 0 0.4 0.4 {}
T {The idea behind kick-back generator is to switch a similar transistor to the comparator input
differential pair, and when the comparator makes a decision, flip the other way to compensate
for some of the charge injected into the CDAC top node} 465 490 0 0 0.4 0.4 {}
N 845 320 865 320 {lab=N1}
N 785 350 805 350 {lab=CKN}
N 845 380 865 380 {lab=AVSS}
N 845 350 865 350 {lab=BULKN}
N 495 200 515 200 {lab=N1}
N 435 230 455 230 {lab=CI}
N 495 260 515 260 {lab=N1}
N 495 230 515 230 {lab=BULKN}
N 675 200 695 200 {lab=N1}
N 615 230 635 230 {lab=CI}
N 675 260 695 260 {lab=N1}
N 675 230 695 230 {lab=BULKN}
N 845 200 865 200 {lab=N1}
N 785 230 805 230 {lab=CI}
N 845 260 865 260 {lab=N1}
N 845 230 865 230 {lab=BULKN}
N 1005 200 1025 200 {lab=N1}
N 945 230 965 230 {lab=CI}
N 1005 260 1025 260 {lab=N1}
N 1005 230 1025 230 {lab=BULKN}
N 1185 200 1205 200 {lab=N1}
N 1125 230 1145 230 {lab=CI}
N 1185 260 1205 260 {lab=N1}
N 1185 230 1205 230 {lab=BULKN}
N 845 100 865 100 {lab=AVDD}
N 785 130 805 130 {lab=CK}
N 845 160 865 160 {lab=N1}
N 845 130 865 130 {lab=BULKN}
N 990 100 1010 100 {lab=AVDD}
N 1050 130 1070 130 {lab=CKN}
N 990 160 1010 160 {lab=N1}
N 990 130 1010 130 {lab=BULKP}
N 1650 30 1670 30 {lab=AVDD}
N 1590 0 1610 0 {lab=AVDD}
N 1650 -30 1670 -30 {lab=AVDD}
N 1650 0 1670 0 {lab=BULKP}
N 1650 200 1670 200 {lab=AVDD}
N 1590 170 1610 170 {lab=AVDD}
N 1650 140 1670 140 {lab=AVDD}
N 1650 170 1670 170 {lab=BULKP}
N 1650 370 1670 370 {lab=AVDD}
N 1590 340 1610 340 {lab=AVDD}
N 1650 310 1670 310 {lab=AVDD}
N 1650 340 1670 340 {lab=BULKP}
N 1440 360 1460 360 {lab=AVDD}
N 1380 330 1400 330 {lab=AVDD}
N 1440 300 1460 300 {lab=AVDD}
N 1440 330 1460 330 {lab=BULKP}
N 1440 30 1460 30 {lab=AVDD}
N 1380 0 1400 0 {lab=AVDD}
N 1440 -30 1460 -30 {lab=AVDD}
N 1440 0 1460 0 {lab=BULKP}
N 1440 200 1460 200 {lab=AVDD}
N 1380 170 1400 170 {lab=AVDD}
N 1440 140 1460 140 {lab=AVDD}
N 1440 170 1460 170 {lab=BULKP}
C {devices/iopin.sym} 395 225 0 1 {name=p0 lab=CI}
C {devices/iopin.sym} 270 -30 0 0 {name=p1 lab=CK}
C {devices/iopin.sym} 270 -10 0 0 {name=p2 lab=CKN}
C {devices/iopin.sym} 270 10 0 0 {name=p3 lab=BULKP}
C {devices/iopin.sym} 270 30 0 0 {name=p4 lab=BULKN}
C {devices/iopin.sym} 270 -130 0 0 {name=p5 lab=AVDD}
C {devices/iopin.sym} 325 630 0 1 {name=p6 lab=AVSS}
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 805 350 0 0 {name=XMN0}
C {devices/lab_pin.sym} 865 320 2 0 {name=l0 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 785 350 0 0 {name=l1 sig_type=std_logic lab=CKN }
C {devices/lab_pin.sym} 865 380 2 0 {name=l2 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 865 350 2 0 {name=l3 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 455 230 0 0 {name=XMN1}
C {devices/lab_pin.sym} 515 200 2 0 {name=l4 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 435 230 0 0 {name=l5 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 515 260 2 0 {name=l6 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 515 230 2 0 {name=l7 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 635 230 0 0 {name=XMN2}
C {devices/lab_pin.sym} 695 200 2 0 {name=l8 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 615 230 0 0 {name=l9 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 695 260 2 0 {name=l10 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 695 230 2 0 {name=l11 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 805 230 0 0 {name=XMN3}
C {devices/lab_pin.sym} 865 200 2 0 {name=l12 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 785 230 0 0 {name=l13 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 865 260 2 0 {name=l14 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 865 230 2 0 {name=l15 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 965 230 0 0 {name=XMN4}
C {devices/lab_pin.sym} 1025 200 2 0 {name=l16 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 945 230 0 0 {name=l17 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 1025 260 2 0 {name=l18 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 1025 230 2 0 {name=l19 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 1145 230 0 0 {name=XMN5}
C {devices/lab_pin.sym} 1205 200 2 0 {name=l20 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 1125 230 0 0 {name=l21 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 1205 260 2 0 {name=l22 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 1205 230 2 0 {name=l23 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 805 130 0 0 {name=XMN6}
C {devices/lab_pin.sym} 865 100 2 0 {name=l24 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 785 130 0 0 {name=l25 sig_type=std_logic lab=CK }
C {devices/lab_pin.sym} 865 160 2 0 {name=l26 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 865 130 2 0 {name=l27 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1050 130 2 0 {name=XMP0}
C {devices/lab_pin.sym} 990 100 0 0 {name=l28 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1070 130 2 0 {name=l29 sig_type=std_logic lab=CKN }
C {devices/lab_pin.sym} 990 160 0 0 {name=l30 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 990 130 0 0 {name=l31 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1610 0 0 0 {name=XMP1_DMY}
C {devices/lab_pin.sym} 1670 30 2 0 {name=l32 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1590 0 0 0 {name=l33 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1670 -30 2 0 {name=l34 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1670 0 2 0 {name=l35 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1610 170 0 0 {name=XMP2_DMY}
C {devices/lab_pin.sym} 1670 200 2 0 {name=l36 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1590 170 0 0 {name=l37 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1670 140 2 0 {name=l38 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1670 170 2 0 {name=l39 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1610 340 0 0 {name=XMP3_DMY}
C {devices/lab_pin.sym} 1670 370 2 0 {name=l40 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1590 340 0 0 {name=l41 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1670 310 2 0 {name=l42 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1670 340 2 0 {name=l43 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1400 330 0 0 {name=XMP4_DMY}
C {devices/lab_pin.sym} 1460 360 2 0 {name=l44 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1380 330 0 0 {name=l45 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1460 300 2 0 {name=l46 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1460 330 2 0 {name=l47 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1400 0 0 0 {name=XMP5_DMY}
C {devices/lab_pin.sym} 1460 30 2 0 {name=l48 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1380 0 0 0 {name=l49 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1460 -30 2 0 {name=l50 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1460 0 2 0 {name=l51 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1400 170 0 0 {name=XMP6_DMY}
C {devices/lab_pin.sym} 1460 200 2 0 {name=l52 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1380 170 0 0 {name=l53 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1460 140 2 0 {name=l54 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1460 170 2 0 {name=l55 sig_type=std_logic lab=BULKP }
C {cborder/border_s.sym} 1430 525 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
