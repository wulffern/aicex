v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Strongarm half circuits} 370 170 0 0 0.5 0.5 {}
T {Charge kickback compensation} 780 260 0 0 0.5 0.5 {}
T {Comparator with kickback compensation} 290 -10 0 0 1 1 {}
N 1020 870 1040 870 {lab=AVDD}
N 1020 910 1040 910 {lab=AVSS}
N 850 330 870 330 {lab=CPI}
N 850 350 870 350 {lab=CK_B}
N 850 370 870 370 {lab=CK_N}
N 850 390 870 390 {lab=AVDD}
N 850 410 870 410 {lab=AVSS}
N 850 430 870 430 {lab=AVDD}
N 850 450 870 450 {lab=AVSS}
N 410 470 430 470 {lab=CPI}
N 410 490 430 490 {lab=CK_B}
N 410 510 430 510 {lab=CNO_I}
N 410 530 430 530 {lab=CPO_I}
N 410 550 430 550 {lab=N1}
N 410 570 430 570 {lab=NC1}
N 410 590 430 590 {lab=AVDD}
N 410 610 430 610 {lab=AVSS}
N 410 630 430 630 {lab=AVDD}
N 410 650 430 650 {lab=AVSS}
N 1320 370 1340 370 {lab=CPO_I}
N 1420 370 1440 370 {lab=CPO}
N 1390 330 1410 330 {lab=AVDD}
N 1390 410 1410 410 {lab=AVSS}
N 1350 330 1370 330 {lab=AVDD}
N 1350 410 1370 410 {lab=AVSS}
N 1320 560 1340 560 {lab=CNO_I}
N 1420 560 1440 560 {lab=CNO}
N 1390 520 1410 520 {lab=AVDD}
N 1390 600 1410 600 {lab=AVSS}
N 1350 520 1370 520 {lab=AVDD}
N 1350 600 1370 600 {lab=AVSS}
N 410 230 430 230 {lab=CNI}
N 410 250 430 250 {lab=CK_B}
N 410 270 430 270 {lab=CPO_I}
N 410 290 430 290 {lab=CNO_I}
N 410 310 430 310 {lab=N1}
N 410 330 430 330 {lab=NC2}
N 410 350 430 350 {lab=AVDD}
N 410 370 430 370 {lab=AVSS}
N 410 390 430 390 {lab=AVDD}
N 410 410 430 410 {lab=AVSS}
N 850 520 870 520 {lab=CNI}
N 850 540 870 540 {lab=CK_B}
N 850 560 870 560 {lab=CK_N}
N 850 580 870 580 {lab=AVDD}
N 850 600 870 600 {lab=AVSS}
N 850 620 870 620 {lab=AVDD}
N 850 640 870 640 {lab=AVSS}
N 710 840 730 840 {lab=CK_N}
N 810 840 830 840 {lab=CK_B}
N 780 800 800 800 {lab=AVDD}
N 780 880 800 880 {lab=AVSS}
N 740 800 760 800 {lab=AVDD}
N 740 880 760 880 {lab=AVSS}
N 470 830 490 830 {lab=DONE_N}
N 470 850 490 850 {lab=CK_A}
N 580 840 600 840 {lab=CK_N}
N 550 800 570 800 {lab=AVDD}
N 550 880 570 880 {lab=AVSS}
N 510 800 530 800 {lab=AVDD}
N 510 880 530 880 {lab=AVSS}
N 190 780 210 780 {lab=CK_SAMPLE}
N 190 800 210 800 {lab=DONE}
N 300 790 320 790 {lab=DONE_N}
N 270 750 290 750 {lab=AVDD}
N 270 830 290 830 {lab=AVSS}
N 230 750 250 750 {lab=AVDD}
N 230 830 250 830 {lab=AVSS}
N 200 910 220 910 {lab=CK_CMP}
N 300 910 320 910 {lab=CK_A}
N 270 870 290 870 {lab=AVDD}
N 270 950 290 950 {lab=AVSS}
N 230 870 250 870 {lab=AVDD}
N 230 950 250 950 {lab=AVSS}
N 1210 870 1230 870 {lab=AVDD}
N 1210 910 1230 910 {lab=AVSS}
C {devices/iopin.sym} 340 470 2 0 {name=p0 lab=CPI}
C {devices/iopin.sym} 340 230 2 0 {name=p1 lab=CNI}
C {devices/iopin.sym} 1560 370 0 0 {name=p2 lab=CPO}
C {devices/iopin.sym} 1560 560 0 0 {name=p3 lab=CNO}
C {devices/iopin.sym} 110 910 2 0 {name=p4 lab=CK_CMP}
C {devices/iopin.sym} 110 760 2 0 {name=p5 lab=CK_SAMPLE}
C {devices/iopin.sym} 100 810 2 0 {name=p6 lab=DONE}
C {devices/iopin.sym} 130 90 2 0 {name=p7 lab=AVDD}
C {devices/iopin.sym} 110 950 2 0 {name=p8 lab=AVSS}
C {SUN_SAR9B_SKY130NM/SUNSAR_TAPCELLB_CV.sym} 1020 890 0 0 {name=XXA0}
C {devices/lab_pin.sym} 1040 870 2 0 {name=l0 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1040 910 2 0 {name=l1 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SARKICKHX1_CV.sym} 890 330 0 0 {name=XXA1}
C {devices/lab_pin.sym} 850 330 0 0 {name=l2 sig_type=std_logic lab=CPI }
C {devices/lab_pin.sym} 850 350 0 0 {name=l3 sig_type=std_logic lab=CK_B }
C {devices/lab_pin.sym} 850 370 0 0 {name=l4 sig_type=std_logic lab=CK_N }
C {devices/lab_pin.sym} 850 390 0 0 {name=l5 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 850 410 0 0 {name=l6 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 850 430 0 0 {name=l7 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 850 450 0 0 {name=l8 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SARCMPHX1_CV.sym} 450 470 0 0 {name=XXA2}
C {devices/lab_pin.sym} 410 470 0 0 {name=l9 sig_type=std_logic lab=CPI }
C {devices/lab_pin.sym} 410 490 0 0 {name=l10 sig_type=std_logic lab=CK_B }
C {devices/lab_pin.sym} 410 510 0 0 {name=l11 sig_type=std_logic lab=CNO_I }
C {devices/lab_pin.sym} 410 530 0 0 {name=l12 sig_type=std_logic lab=CPO_I }
C {devices/lab_pin.sym} 410 550 0 0 {name=l13 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 410 570 0 0 {name=l14 sig_type=std_logic lab=NC1 }
C {devices/lab_pin.sym} 410 590 0 0 {name=l15 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 410 610 0 0 {name=l16 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 410 630 0 0 {name=l17 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 410 650 0 0 {name=l18 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX4_CV.sym} 1340 370 0 0 {name=XXA2a}
C {devices/lab_pin.sym} 1320 370 0 0 {name=l19 sig_type=std_logic lab=CPO_I }
C {devices/lab_pin.sym} 1440 370 2 0 {name=l20 sig_type=std_logic lab=CPO }
C {devices/lab_pin.sym} 1410 330 2 0 {name=l21 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1410 410 2 0 {name=l22 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 1350 330 0 0 {name=l23 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1350 410 0 0 {name=l24 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX4_CV.sym} 1340 560 0 0 {name=XXA3a}
C {devices/lab_pin.sym} 1320 560 0 0 {name=l25 sig_type=std_logic lab=CNO_I }
C {devices/lab_pin.sym} 1440 560 2 0 {name=l26 sig_type=std_logic lab=CNO }
C {devices/lab_pin.sym} 1410 520 2 0 {name=l27 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1410 600 2 0 {name=l28 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 1350 520 0 0 {name=l29 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1350 600 0 0 {name=l30 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SARCMPHX1_CV.sym} 450 230 0 0 {name=XXA3}
C {devices/lab_pin.sym} 410 230 0 0 {name=l31 sig_type=std_logic lab=CNI }
C {devices/lab_pin.sym} 410 250 0 0 {name=l32 sig_type=std_logic lab=CK_B }
C {devices/lab_pin.sym} 410 270 0 0 {name=l33 sig_type=std_logic lab=CPO_I }
C {devices/lab_pin.sym} 410 290 0 0 {name=l34 sig_type=std_logic lab=CNO_I }
C {devices/lab_pin.sym} 410 310 0 0 {name=l35 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 410 330 0 0 {name=l36 sig_type=std_logic lab=NC2 }
C {devices/lab_pin.sym} 410 350 0 0 {name=l37 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 410 370 0 0 {name=l38 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 410 390 0 0 {name=l39 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 410 410 0 0 {name=l40 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SARKICKHX1_CV.sym} 890 520 0 0 {name=XXA4}
C {devices/lab_pin.sym} 850 520 0 0 {name=l41 sig_type=std_logic lab=CNI }
C {devices/lab_pin.sym} 850 540 0 0 {name=l42 sig_type=std_logic lab=CK_B }
C {devices/lab_pin.sym} 850 560 0 0 {name=l43 sig_type=std_logic lab=CK_N }
C {devices/lab_pin.sym} 850 580 0 0 {name=l44 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 850 600 0 0 {name=l45 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 850 620 0 0 {name=l46 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 850 640 0 0 {name=l47 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX1_CV.sym} 730 840 0 0 {name=XXA9}
C {devices/lab_pin.sym} 710 840 0 0 {name=l48 sig_type=std_logic lab=CK_N }
C {devices/lab_pin.sym} 830 840 2 0 {name=l49 sig_type=std_logic lab=CK_B }
C {devices/lab_pin.sym} 800 800 2 0 {name=l50 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 800 880 2 0 {name=l51 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 740 800 0 0 {name=l52 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 740 880 0 0 {name=l53 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NDX1_CV.sym} 490 850 0 0 {name=XXA10}
C {devices/lab_pin.sym} 470 830 0 0 {name=l54 sig_type=std_logic lab=DONE_N }
C {devices/lab_pin.sym} 470 850 0 0 {name=l55 sig_type=std_logic lab=CK_A }
C {devices/lab_pin.sym} 600 840 2 0 {name=l56 sig_type=std_logic lab=CK_N }
C {devices/lab_pin.sym} 570 800 2 0 {name=l57 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 570 880 2 0 {name=l58 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 510 800 0 0 {name=l59 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 510 880 0 0 {name=l60 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NRX1_CV.sym} 210 800 0 0 {name=XXA11}
C {devices/lab_pin.sym} 190 780 0 0 {name=l61 sig_type=std_logic lab=CK_SAMPLE }
C {devices/lab_pin.sym} 190 800 0 0 {name=l62 sig_type=std_logic lab=DONE }
C {devices/lab_pin.sym} 320 790 2 0 {name=l63 sig_type=std_logic lab=DONE_N }
C {devices/lab_pin.sym} 290 750 2 0 {name=l64 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 290 830 2 0 {name=l65 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 230 750 0 0 {name=l66 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 230 830 0 0 {name=l67 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX1_CV.sym} 220 910 0 0 {name=XXA12}
C {devices/lab_pin.sym} 200 910 0 0 {name=l68 sig_type=std_logic lab=CK_CMP }
C {devices/lab_pin.sym} 320 910 2 0 {name=l69 sig_type=std_logic lab=CK_A }
C {devices/lab_pin.sym} 290 870 2 0 {name=l70 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 290 950 2 0 {name=l71 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 230 870 0 0 {name=l72 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 230 950 0 0 {name=l73 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_TAPCELLB_CV.sym} 1210 890 0 0 {name=XXA13}
C {devices/lab_pin.sym} 1230 870 2 0 {name=l74 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1230 910 2 0 {name=l75 sig_type=std_logic lab=AVSS }
C {cborder/border_s.sym} 1210 830 0 0 {}
