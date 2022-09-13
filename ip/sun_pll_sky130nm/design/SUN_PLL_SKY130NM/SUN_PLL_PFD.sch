v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Phase-Frequency Detector (PFD)} 430 -980 0 0 1 1 {}
N 700 -680 980 -680 {
lab=CP_DUP_N}
N 700 -410 970 -410 {
lab=CP_DOWN_N}
N 660 -470 660 -440 {
lab=AVDD}
N 1010 -480 1010 -450 {
lab=AVDD}
N 1020 -750 1020 -720 {
lab=AVDD}
N 660 -740 660 -710 {
lab=AVDD}
N 840 -590 840 -560 {
lab=AVDD}
N 840 -480 840 -450 {
lab=AVSS}
N 1010 -370 1010 -340 {
lab=AVSS}
N 660 -320 660 -290 {
lab=AVSS}
N 560 -520 790 -520 {
lab=CFB}
N 560 -680 600 -680 {
lab=CFB}
N 560 -520 560 -410 {
lab=CFB}
N 560 -410 600 -410 {
lab=CFB}
N 470 -350 600 -350 {
lab=CK_FB}
N 470 -620 600 -620 {
lab=CK_REF}
N 880 -530 910 -530 {
lab=CP_DUP_N}
N 910 -680 910 -530 {
lab=CP_DUP_N}
N 880 -510 910 -510 {
lab=CP_DOWN_N}
N 910 -510 910 -410 {
lab=CP_DOWN_N}
N 1060 -680 1120 -680 {
lab=CP_UP}
N 1050 -410 1130 -410 {
lab=CP_DOWN}
N 1020 -640 1020 -610 {
lab=AVSS}
N 660 -590 660 -560 {
lab=AVSS}
N 560 -680 560 -520 {
lab=CFB}
N 1470 -780 1470 -750 {
lab=AVDD}
N 1470 -710 1470 -680 {
lab=AVSS}
N 1160 -750 1160 -720 {
lab=AVDD}
N 1200 -680 1260 -680 {
lab=CP_UP_N}
N 1160 -640 1160 -610 {
lab=AVSS}
C {SUN_TR_SKY130NM/SUNTR_NRX1_CV.sym} 880 -510 0 1 {name=xa3}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 980 -680 0 0 {name=xa2}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 970 -410 0 0 {name=xa6}
C {devices/lab_pin.sym} 660 -470 0 0 {name=l1 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 1010 -480 0 0 {name=l2 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 1020 -750 0 0 {name=l3 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 660 -740 0 0 {name=l4 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 840 -590 0 0 {name=l5 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 840 -450 2 0 {name=l6 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 1010 -340 2 0 {name=l7 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 660 -290 2 0 {name=l8 sig_type=std_logic lab=AVSS}
C {devices/ipin.sym} 480 -350 0 0 {name=p1 lab=CK_FB}
C {devices/ipin.sym} 480 -620 0 0 {name=p2 lab=CK_REF}
C {devices/lab_pin.sym} 1020 -610 2 0 {name=l9 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 660 -560 2 0 {name=l10 sig_type=std_logic lab=AVSS}
C {devices/opin.sym} 1250 -680 0 0 {name=p3 lab=CP_UP_N}
C {devices/opin.sym} 1130 -410 0 0 {name=p4 lab=CP_DOWN}
C {devices/ipin.sym} 470 -760 0 0 {name=p5 lab=AVDD}
C {devices/ipin.sym} 480 -220 0 0 {name=p6 lab=AVSS}
C {cborder/border_s.sym} 1250 -170 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
C {SUN_TR_SKY130NM/SUNTR_DFTSPCX1_CV.sym} 600 -620 0 0 {name=xa1}
C {SUN_TR_SKY130NM/SUNTR_DFTSPCX1_CV.sym} 600 -350 0 0 {name=xa5}
C {devices/lab_pin.sym} 820 -680 1 0 {name=l11 sig_type=std_logic lab=CP_DUP_N}
C {devices/lab_pin.sym} 860 -410 3 0 {name=l12 sig_type=std_logic lab=CP_DOWN_N}
C {devices/lab_pin.sym} 560 -550 2 0 {name=l13 sig_type=std_logic lab=CFB}
C {SUN_TR_SKY130NM/SUNTR_TAPCELLB_CV.sym} 1470 -730 0 0 {name=xa0}
C {devices/lab_pin.sym} 1470 -780 0 0 {name=l14 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 1470 -680 2 0 {name=l15 sig_type=std_logic lab=AVSS}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 1120 -680 0 0 {name=xa2a}
C {devices/lab_pin.sym} 1160 -750 0 0 {name=l16 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 1160 -610 2 0 {name=l17 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 1080 -680 1 0 {name=l18 sig_type=std_logic lab=CP_UP}
