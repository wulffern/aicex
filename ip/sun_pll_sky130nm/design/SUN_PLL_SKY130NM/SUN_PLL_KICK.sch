v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -230 -340 -170 -340 {
lab=N1}
N -90 -340 -40 -340 {
lab=N2}
N 40 -340 110 -340 {
lab=N3}
N 190 -340 260 -340 {
lab=N4}
N 340 -340 390 -340 {
lab=N5}
N 470 -340 530 -340 {
lab=N6}
N -270 -410 -270 -380 {
lab=AVDD}
N -270 -300 -270 -270 {
lab=AVSS}
N -130 -300 -130 -270 {
lab=AVSS}
N 0 -300 0 -270 {
lab=AVSS}
N 150 -300 150 -270 {
lab=AVSS}
N 300 -300 300 -270 {
lab=AVSS}
N 430 -300 430 -270 {
lab=AVSS}
N 570 -300 570 -270 {
lab=AVSS}
N -130 -410 -130 -380 {
lab=AVDD}
N 0 -410 0 -380 {
lab=AVDD}
N 150 -410 150 -380 {
lab=AVDD}
N 300 -410 300 -380 {
lab=AVDD}
N 430 -410 430 -380 {
lab=AVDD}
N 570 -410 570 -380 {
lab=AVDD}
N 610 -530 650 -530 {
lab=N7}
N 610 -530 610 -340 {
lab=N7}
N -330 -550 650 -550 {
lab=PWRUP_1V8_N}
N 690 -610 690 -580 {
lab=AVDD}
N 690 -500 690 -470 {
lab=AVSS}
N 830 -500 830 -470 {
lab=AVSS}
N 830 -610 830 -580 {
lab=AVDD}
N 740 -540 790 -540 {
lab=KICK}
N 870 -540 930 -540 {
lab=KICK_N}
N 770 -700 920 -700 {
lab=KICK}
N 770 -700 770 -540 {
lab=KICK}
N 20 -750 20 -720 {
lab=AVDD}
N 20 -700 20 -670 {
lab=AVSS}
N -410 -410 -410 -380 {
lab=AVDD}
N -410 -300 -410 -270 {
lab=AVSS}
N -370 -340 -310 -340 {
lab=PWRUP_1V8_N}
N -530 -340 -450 -340 {
lab=PWRUP_1V8}
N -330 -550 -330 -340 {
lab=PWRUP_1V8_N}
N -130 -110 -130 -80 {
lab=AVSS}
N -210 -180 -170 -180 {
lab=N1}
N -210 -340 -210 -180 {
lab=N1}
N 180 -110 180 -80 {
lab=AVSS}
N 100 -180 140 -180 {
lab=N3}
N 100 -340 100 -180 {
lab=N3}
N 470 -100 470 -70 {
lab=AVSS}
N 390 -170 430 -170 {
lab=N5}
N 390 -340 390 -170 {
lab=N5}
N -330 -340 -330 -40 {
lab=PWRUP_1V8_N}
N -330 -40 -190 -40 {
lab=PWRUP_1V8_N}
N 430 -170 470 -170 {
lab=N5}
N 140 -180 180 -180 {
lab=N3}
N -170 -180 -130 -180 {
lab=N1}
C {cborder/border_s.sym} 570 -100 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} -310 -340 0 0 {name=xa1c xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} -170 -340 0 0 {name=xa2 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} -40 -340 0 0 {name=xa3a xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 110 -340 0 0 {name=xa4 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 260 -340 0 0 {name=xa5a xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 390 -340 0 0 {name=xa6 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 530 -340 0 0 {name=xa7 xoffset=0 yoffset=0 angle=0 M=1}
C {devices/lab_pin.sym} -270 -410 0 0 {name=l1 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -270 -270 2 0 {name=l2 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} -130 -270 2 0 {name=l3 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 0 -270 2 0 {name=l4 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 150 -270 2 0 {name=l5 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 300 -270 2 0 {name=l6 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 430 -270 2 0 {name=l7 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 570 -270 2 0 {name=l8 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} -130 -410 0 0 {name=l9 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 0 -410 0 0 {name=l10 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 150 -410 0 0 {name=l11 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 300 -410 0 0 {name=l12 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 430 -410 0 0 {name=l13 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 570 -410 0 0 {name=l14 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -210 -340 1 0 {name=l15 sig_type=std_logic lab=N1}
C {devices/lab_pin.sym} -70 -340 1 0 {name=l16 sig_type=std_logic lab=N2}
C {devices/lab_pin.sym} 70 -340 1 0 {name=l17 sig_type=std_logic lab=N3}
C {devices/lab_pin.sym} 230 -340 1 0 {name=l18 sig_type=std_logic lab=N4}
C {devices/lab_pin.sym} 370 -340 1 0 {name=l19 sig_type=std_logic lab=N5}
C {devices/lab_pin.sym} 500 -340 1 0 {name=l20 sig_type=std_logic lab=N6}
C {SUN_TR_SKY130NM/SUNTR_NRX1_CV.sym} 650 -530 0 0 {name=xa8 xoffset=0 yoffset=0 angle=0 M=1}
C {devices/lab_pin.sym} 690 -610 0 0 {name=l21 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 690 -470 2 0 {name=l22 sig_type=std_logic lab=AVSS}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 790 -540 0 0 {name=xa9 xoffset=0 yoffset=0 angle=0 M=1}
C {devices/lab_pin.sym} 830 -470 2 0 {name=l23 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 830 -610 0 0 {name=l24 sig_type=std_logic lab=AVDD}
C {devices/ipin.sym} -520 -340 0 0 {name=p1 lab=PWRUP_1V8}
C {devices/opin.sym} 920 -700 0 0 {name=p2 lab=KICK}
C {devices/opin.sym} 930 -540 0 0 {name=p3 lab=KICK_N}
C {devices/ipin.sym} -360 -720 0 0 {name=p4 lab=AVDD}
C {devices/ipin.sym} -360 -130 0 0 {name=p5 lab=AVSS}
C {devices/lab_pin.sym} 610 -460 2 0 {name=l25 sig_type=std_logic lab=N7}
C {SUN_TR_SKY130NM/SUNTR_TAPCELLB_CV.sym} 20 -700 0 0 {name=xa1a xoffset=0 yoffset=0 angle=0 M=1}
C {devices/lab_pin.sym} 20 -750 0 0 {name=l26 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 20 -670 2 0 {name=l27 sig_type=std_logic lab=AVSS}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} -450 -340 0 0 {name=xa1b xoffset=0 yoffset=0 angle=0 M=1}
C {devices/lab_pin.sym} -410 -410 0 0 {name=l28 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -410 -270 2 0 {name=l29 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} -350 -340 1 0 {name=l30 sig_type=std_logic lab=PWRUP_1V8_N}
C {devices/lab_pin.sym} -130 -80 2 0 {name=l31 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 180 -80 2 0 {name=l33 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 470 -70 2 0 {name=l35 sig_type=std_logic lab=AVSS}
C {devices/opin.sym} -200 -40 0 0 {name=p6 lab=PWRUP_1V8_N}
C {SUN_TR_SKY130NM/SUNTR_DCAPX1_CV.sym} -130 -170 2 0 {name=xa1capd xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_DCAPX1_CV.sym} 180 -170 2 0 {name=xa3capb xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_DCAPX1_CV.sym} 470 -160 2 0 {name=xa5capb xoffset=0 yoffset=0 angle=0 M=1}
