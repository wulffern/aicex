v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Bootstrapped switch} 420 -50 0 0 1 1 {}
T {Floating cap, and switch to VI} 1030 385 0 0 0.4 0.4 {}
T {Main switch} 475 245 0 0 0.4 0.4 {}
T {Dummy switch. Main purpose is to provide a differential path of similar parasitic capacitance
to the CDAC top plates such that a dV/dt on VI does not lead to a voltage change across the 
differential CDAC} 200 765 0 0 0.4 0.4 {}
N 210 400 210 420 {lab=VI}
N 240 340 240 360 {lab=GN}
N 270 400 270 420 {lab=VO1}
N 240 400 240 420 {lab=AVSS}
N 380 400 380 420 {lab=VI}
N 410 340 410 360 {lab=GN}
N 440 400 440 420 {lab=VO1}
N 410 400 410 420 {lab=AVSS}
N 550 400 550 420 {lab=VI}
N 580 340 580 360 {lab=GN}
N 610 400 610 420 {lab=VO1}
N 580 400 580 420 {lab=AVSS}
N 720 400 720 420 {lab=VI}
N 750 340 750 360 {lab=GN}
N 780 400 780 420 {lab=VO1}
N 750 400 750 420 {lab=AVSS}
N 210 620 210 640 {lab=VI}
N 240 560 240 580 {lab=TIE_L}
N 270 620 270 640 {lab=VO2}
N 240 620 240 640 {lab=AVSS}
N 380 620 380 640 {lab=VI}
N 410 560 410 580 {lab=TIE_L}
N 440 620 440 640 {lab=VO2}
N 410 620 410 640 {lab=AVSS}
N 550 610 550 630 {lab=VI}
N 580 550 580 570 {lab=TIE_L}
N 610 610 610 630 {lab=VO2}
N 580 610 580 630 {lab=AVSS}
N 720 610 720 630 {lab=VI}
N 750 550 750 570 {lab=TIE_L}
N 780 610 780 630 {lab=VO2}
N 750 610 750 630 {lab=AVSS}
N 1110 100 1130 100 {lab=AVDD}
N 1110 140 1130 140 {lab=AVSS}
N 320 110 340 110 {lab=CK}
N 420 110 440 110 {lab=CKN}
N 390 70 410 70 {lab=AVDD}
N 390 150 410 150 {lab=AVSS}
N 350 70 370 70 {lab=AVDD}
N 350 150 370 150 {lab=AVSS}
N 990 240 1010 240 {lab=CKN}
N 990 260 1010 260 {lab=VI}
N 990 280 1010 280 {lab=VS}
N 990 300 1010 300 {lab=AVDD}
N 990 320 1010 320 {lab=AVSS}
N 990 340 1010 340 {lab=AVDD}
N 990 360 1010 360 {lab=AVSS}
N 990 480 1010 480 {lab=CKN}
N 990 500 1010 500 {lab=GN}
N 990 520 1010 520 {lab=GNG}
N 990 540 1010 540 {lab=TIE_H}
N 990 560 1010 560 {lab=AVDD}
N 990 580 1010 580 {lab=AVSS}
N 990 600 1010 600 {lab=AVDD}
N 990 620 1010 620 {lab=AVSS}
N 640 110 660 110 {lab=TIE_H}
N 620 70 640 70 {lab=AVDD}
N 620 150 640 150 {lab=AVSS}
N 580 70 600 70 {lab=AVDD}
N 580 150 600 150 {lab=AVSS}
N 970 100 990 100 {lab=AVDD}
N 970 140 990 140 {lab=AVSS}
N 830 100 850 100 {lab=TIE_L}
N 810 60 830 60 {lab=AVDD}
N 810 140 830 140 {lab=AVSS}
N 770 60 790 60 {lab=AVDD}
N 770 140 790 140 {lab=AVSS}
N 1260 90 1280 90 {lab=AVDD}
N 1260 130 1280 130 {lab=AVSS}
N 1275 265 1295 265 {lab=GNG}
N 1275 335 1295 335 {lab=VS}
C {devices/iopin.sym} 0 0 0 0 {name=p0 lab=VI}
C {devices/iopin.sym} 0 20 0 0 {name=p1 lab=CK}
C {devices/iopin.sym} 0 40 0 0 {name=p2 lab=CKN}
C {devices/iopin.sym} 0 60 0 0 {name=p3 lab=TIE_L}
C {devices/iopin.sym} 0 80 0 0 {name=p4 lab=VO1}
C {devices/iopin.sym} 0 100 0 0 {name=p5 lab=VO2}
C {devices/iopin.sym} 0 120 0 0 {name=p6 lab=AVDD}
C {devices/iopin.sym} 0 140 0 0 {name=p7 lab=AVSS}
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDLR.sym} 240 360 3 1 {name=XM1}
C {devices/lab_pin.sym} 210 420 1 1 {name=l0 sig_type=std_logic lab=VI }
C {devices/lab_pin.sym} 240 340 3 1 {name=l1 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 270 420 1 1 {name=l2 sig_type=std_logic lab=VO1 }
C {devices/lab_pin.sym} 240 420 1 1 {name=l3 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDLR.sym} 410 360 3 1 {name=XM2}
C {devices/lab_pin.sym} 380 420 1 1 {name=l4 sig_type=std_logic lab=VI }
C {devices/lab_pin.sym} 410 340 3 1 {name=l5 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 440 420 1 1 {name=l6 sig_type=std_logic lab=VO1 }
C {devices/lab_pin.sym} 410 420 1 1 {name=l7 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDLR.sym} 580 360 3 1 {name=XM3}
C {devices/lab_pin.sym} 550 420 1 1 {name=l8 sig_type=std_logic lab=VI }
C {devices/lab_pin.sym} 580 340 3 1 {name=l9 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 610 420 1 1 {name=l10 sig_type=std_logic lab=VO1 }
C {devices/lab_pin.sym} 580 420 1 1 {name=l11 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDLR.sym} 750 360 3 1 {name=XM4}
C {devices/lab_pin.sym} 720 420 1 1 {name=l12 sig_type=std_logic lab=VI }
C {devices/lab_pin.sym} 750 340 3 1 {name=l13 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 780 420 1 1 {name=l14 sig_type=std_logic lab=VO1 }
C {devices/lab_pin.sym} 750 420 1 1 {name=l15 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDLR.sym} 240 580 3 1 {name=XM5}
C {devices/lab_pin.sym} 210 640 1 1 {name=l16 sig_type=std_logic lab=VI }
C {devices/lab_pin.sym} 240 560 3 1 {name=l17 sig_type=std_logic lab=TIE_L }
C {devices/lab_pin.sym} 270 640 1 1 {name=l18 sig_type=std_logic lab=VO2 }
C {devices/lab_pin.sym} 240 640 1 1 {name=l19 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDLR.sym} 410 580 3 1 {name=XM6}
C {devices/lab_pin.sym} 380 640 1 1 {name=l20 sig_type=std_logic lab=VI }
C {devices/lab_pin.sym} 410 560 3 1 {name=l21 sig_type=std_logic lab=TIE_L }
C {devices/lab_pin.sym} 440 640 1 1 {name=l22 sig_type=std_logic lab=VO2 }
C {devices/lab_pin.sym} 410 640 1 1 {name=l23 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDLR.sym} 580 570 3 1 {name=XM7}
C {devices/lab_pin.sym} 550 630 1 1 {name=l24 sig_type=std_logic lab=VI }
C {devices/lab_pin.sym} 580 550 3 1 {name=l25 sig_type=std_logic lab=TIE_L }
C {devices/lab_pin.sym} 610 630 1 1 {name=l26 sig_type=std_logic lab=VO2 }
C {devices/lab_pin.sym} 580 630 1 1 {name=l27 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDLR.sym} 750 570 3 1 {name=XM8}
C {devices/lab_pin.sym} 720 630 1 1 {name=l28 sig_type=std_logic lab=VI }
C {devices/lab_pin.sym} 750 550 3 1 {name=l29 sig_type=std_logic lab=TIE_L }
C {devices/lab_pin.sym} 780 630 1 1 {name=l30 sig_type=std_logic lab=VO2 }
C {devices/lab_pin.sym} 750 630 1 1 {name=l31 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_TAPCELLB_CV.sym} 1110 120 0 0 {name=XXA5b}
C {devices/lab_pin.sym} 1130 100 2 0 {name=l32 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1130 140 2 0 {name=l33 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX1_CV.sym} 340 110 0 0 {name=XXA0}
C {devices/lab_pin.sym} 320 110 0 0 {name=l34 sig_type=std_logic lab=CK }
C {devices/lab_pin.sym} 440 110 2 0 {name=l35 sig_type=std_logic lab=CKN }
C {devices/lab_pin.sym} 410 70 2 0 {name=l36 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 410 150 2 0 {name=l37 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 350 70 0 0 {name=l38 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 350 150 0 0 {name=l39 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_TGPD_CV.sym} 1030 240 0 0 {name=XXA3}
C {devices/lab_pin.sym} 990 240 0 0 {name=l40 sig_type=std_logic lab=CKN }
C {devices/lab_pin.sym} 990 260 0 0 {name=l41 sig_type=std_logic lab=VI }
C {devices/lab_pin.sym} 990 280 0 0 {name=l42 sig_type=std_logic lab=VS }
C {devices/lab_pin.sym} 990 300 0 0 {name=l43 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 990 320 0 0 {name=l44 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 990 340 0 0 {name=l45 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 990 360 0 0 {name=l46 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SARBSSWCTRL_CV.sym} 1030 480 0 0 {name=XXA4}
C {devices/lab_pin.sym} 990 480 0 0 {name=l47 sig_type=std_logic lab=CKN }
C {devices/lab_pin.sym} 990 500 0 0 {name=l48 sig_type=std_logic lab=GN }
C {devices/lab_pin.sym} 990 520 0 0 {name=l49 sig_type=std_logic lab=GNG }
C {devices/lab_pin.sym} 990 540 0 0 {name=l50 sig_type=std_logic lab=TIE_H }
C {devices/lab_pin.sym} 990 560 0 0 {name=l51 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 990 580 0 0 {name=l52 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 990 600 0 0 {name=l53 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 990 620 0 0 {name=l54 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_TIEH_CV.sym} 600 110 0 0 {name=XXA1}
C {devices/lab_pin.sym} 660 110 2 0 {name=l55 sig_type=std_logic lab=TIE_H }
C {devices/lab_pin.sym} 640 70 2 0 {name=l56 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 640 150 2 0 {name=l57 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 580 70 0 0 {name=l58 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 580 150 0 0 {name=l59 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_TAPCELLB_CV.sym} 970 120 0 0 {name=XXA7}
C {devices/lab_pin.sym} 990 100 2 0 {name=l60 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 990 140 2 0 {name=l61 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_TIEL_CV.sym} 790 100 0 0 {name=XXA2}
C {devices/lab_pin.sym} 850 100 2 0 {name=l62 sig_type=std_logic lab=TIE_L }
C {devices/lab_pin.sym} 830 60 2 0 {name=l63 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 830 140 2 0 {name=l64 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 770 60 0 0 {name=l65 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 770 140 0 0 {name=l66 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_TAPCELLB_CV.sym} 1260 110 0 0 {name=XXA5}
C {devices/lab_pin.sym} 1280 90 2 0 {name=l67 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1280 130 2 0 {name=l68 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_CAP_BSSW5_CV.sym} 1295 305 0 0 {name=XXCAPB1}
C {devices/lab_pin.sym} 1275 265 0 0 {name=l69 sig_type=std_logic lab=GNG }
C {devices/lab_pin.sym} 1275 335 0 0 {name=l70 sig_type=std_logic lab=VS }
C {cborder/border_s.sym} 1140 800 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
