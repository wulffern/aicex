v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Divide by 128} -350 250 0 0 2 2 {}
N -400 -510 -400 -470 {
lab=AVDD}
N -400 -350 -400 -310 {
lab=AVSS}
N -430 -350 -430 -310 {
lab=PWRUP_1V8}
N -490 -440 -460 -440 {
lab=N6}
N -490 -380 -460 -380 {
lab=CK}
N -360 -440 -330 -440 {
lab=D5}
N -360 -380 -330 -380 {
lab=N6}
N -430 -310 -430 -270 {
lab=PWRUP_1V8}
N -80 -510 -80 -470 {
lab=AVDD}
N -80 -350 -80 -310 {
lab=AVSS}
N -110 -350 -110 -310 {
lab=PWRUP_1V8}
N -170 -440 -140 -440 {
lab=N5}
N -170 -380 -140 -380 {
lab=D5}
N -40 -440 -10 -440 {
lab=D4}
N -40 -380 -10 -380 {
lab=N5}
N -110 -310 -110 -270 {
lab=PWRUP_1V8}
N 230 -510 230 -470 {
lab=AVDD}
N 230 -350 230 -310 {
lab=AVSS}
N 200 -350 200 -310 {
lab=PWRUP_1V8}
N 140 -440 170 -440 {
lab=N4}
N 140 -380 170 -380 {
lab=D4}
N 270 -440 300 -440 {
lab=D3}
N 270 -380 300 -380 {
lab=N4}
N 200 -310 200 -270 {
lab=PWRUP_1V8}
N 540 -510 540 -470 {
lab=AVDD}
N 540 -350 540 -310 {
lab=AVSS}
N 510 -350 510 -310 {
lab=PWRUP_1V8}
N 450 -440 480 -440 {
lab=N3}
N 450 -380 480 -380 {
lab=D3}
N 580 -440 610 -440 {
lab=D2}
N 580 -380 610 -380 {
lab=N3}
N 510 -310 510 -270 {
lab=PWRUP_1V8}
N -410 -150 -410 -110 {
lab=AVDD}
N -410 10 -410 50 {
lab=AVSS}
N -440 10 -440 50 {
lab=PWRUP_1V8}
N -500 -80 -470 -80 {
lab=N2}
N -500 -20 -470 -20 {
lab=D2}
N -370 -80 -340 -80 {
lab=D1}
N -370 -20 -340 -20 {
lab=N2}
N -440 50 -440 90 {
lab=PWRUP_1V8}
N -70 -140 -70 -100 {
lab=AVDD}
N -70 20 -70 60 {
lab=AVSS}
N -100 20 -100 60 {
lab=PWRUP_1V8}
N -160 -70 -130 -70 {
lab=N1}
N -160 -10 -130 -10 {
lab=D1}
N -30 -70 0 -70 {
lab=D0}
N -30 -10 0 -10 {
lab=N1}
N -100 60 -100 100 {
lab=PWRUP_1V8}
N 220 -140 220 -100 {
lab=AVDD}
N 220 20 220 60 {
lab=AVSS}
N 190 20 190 60 {
lab=PWRUP_1V8}
N 130 -70 160 -70 {
lab=N0}
N 130 -10 160 -10 {
lab=D0}
N 260 -70 290 -70 {
lab=CK_FB}
N 260 -10 290 -10 {
lab=N0}
N 190 60 190 100 {
lab=PWRUP_1V8}
C {devices/lab_pin.sym} -400 -510 0 0 {name=l1 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -400 -310 2 0 {name=l2 sig_type=std_logic lab=AVSS}
C {devices/ipin.sym} -630 40 0 0 {name=p1 lab=PWRUP_1V8}
C {devices/ipin.sym} -630 -30 0 0 {name=p3 lab=CK}
C {devices/ipin.sym} -630 -160 0 0 {name=p4 lab=AVDD}
C {devices/ipin.sym} -630 100 0 0 {name=p5 lab=AVSS}
C {devices/opin.sym} 470 -70 0 0 {name=p6 lab=CK_FB}
C {devices/lab_pin.sym} -490 -380 0 0 {name=l3 sig_type=std_logic lab=CK}
C {devices/lab_pin.sym} -490 -440 0 0 {name=l4 sig_type=std_logic lab=N6}
C {devices/lab_pin.sym} -330 -440 2 0 {name=l5 sig_type=std_logic lab=D5}
C {devices/lab_pin.sym} -330 -380 2 0 {name=l6 sig_type=std_logic lab=N6}
C {cborder/border_s.sym} 490 330 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
C {SUN_TR_SKY130NM/SUNTR_DFRNQNX1_CV.sym} -460 -380 0 0 {name=xg}
C {devices/lab_pin.sym} -430 -270 2 0 {name=l7 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_pin.sym} -80 -510 0 0 {name=l8 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -80 -310 2 0 {name=l9 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} -170 -380 0 0 {name=l10 sig_type=std_logic lab=D5}
C {devices/lab_pin.sym} -170 -440 0 0 {name=l11 sig_type=std_logic lab=N5}
C {devices/lab_pin.sym} -10 -440 2 0 {name=l12 sig_type=std_logic lab=D4}
C {devices/lab_pin.sym} -10 -380 2 0 {name=l13 sig_type=std_logic lab=N5}
C {SUN_TR_SKY130NM/SUNTR_DFRNQNX1_CV.sym} -140 -380 0 0 {name=xf}
C {devices/lab_pin.sym} -110 -270 2 0 {name=l14 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_pin.sym} 230 -510 0 0 {name=l15 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 230 -310 2 0 {name=l16 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 140 -380 0 0 {name=l17 sig_type=std_logic lab=D4}
C {devices/lab_pin.sym} 140 -440 0 0 {name=l18 sig_type=std_logic lab=N4}
C {devices/lab_pin.sym} 300 -440 2 0 {name=l19 sig_type=std_logic lab=D3
}
C {devices/lab_pin.sym} 300 -380 2 0 {name=l20 sig_type=std_logic lab=N4}
C {SUN_TR_SKY130NM/SUNTR_DFRNQNX1_CV.sym} 170 -380 0 0 {name=xe}
C {devices/lab_pin.sym} 200 -270 2 0 {name=l21 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_pin.sym} 540 -510 0 0 {name=l22 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 540 -310 2 0 {name=l23 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 450 -380 0 0 {name=l24 sig_type=std_logic lab=D3}
C {devices/lab_pin.sym} 450 -440 0 0 {name=l25 sig_type=std_logic lab=N3}
C {devices/lab_pin.sym} 610 -440 2 0 {name=l26 sig_type=std_logic lab=D2
}
C {devices/lab_pin.sym} 610 -380 2 0 {name=l27 sig_type=std_logic lab=N3}
C {SUN_TR_SKY130NM/SUNTR_DFRNQNX1_CV.sym} 480 -380 0 0 {name=xd}
C {devices/lab_pin.sym} 510 -270 2 0 {name=l28 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_pin.sym} -410 -150 0 0 {name=l29 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -410 50 2 0 {name=l30 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} -500 -20 0 0 {name=l31 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} -500 -80 0 0 {name=l32 sig_type=std_logic lab=N2}
C {devices/lab_pin.sym} -340 -80 2 0 {name=l33 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} -340 -20 2 0 {name=l34 sig_type=std_logic lab=N2}
C {SUN_TR_SKY130NM/SUNTR_DFRNQNX1_CV.sym} -470 -20 0 0 {name=xc}
C {devices/lab_pin.sym} -440 90 2 0 {name=l35 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_pin.sym} -70 -140 0 0 {name=l36 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} -70 60 2 0 {name=l37 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} -160 -10 0 0 {name=l38 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} -160 -70 0 0 {name=l39 sig_type=std_logic lab=N1}
C {devices/lab_pin.sym} 0 -70 2 0 {name=l40 sig_type=std_logic lab=D0}
C {devices/lab_pin.sym} 0 -10 2 0 {name=l41 sig_type=std_logic lab=N1}
C {SUN_TR_SKY130NM/SUNTR_DFRNQNX1_CV.sym} -130 -10 0 0 {name=xb}
C {devices/lab_pin.sym} -100 100 2 0 {name=l42 sig_type=std_logic lab=PWRUP_1V8}
C {devices/lab_pin.sym} 220 -140 0 0 {name=l43 sig_type=std_logic lab=AVDD}
C {devices/lab_pin.sym} 220 60 2 0 {name=l44 sig_type=std_logic lab=AVSS}
C {devices/lab_pin.sym} 130 -10 0 0 {name=l45 sig_type=std_logic lab=D0}
C {devices/lab_pin.sym} 130 -70 0 0 {name=l46 sig_type=std_logic lab=N0}
C {devices/lab_pin.sym} 290 -70 2 0 {name=l47 sig_type=std_logic lab=CK_FB}
C {devices/lab_pin.sym} 290 -10 2 0 {name=l48 sig_type=std_logic lab=N0}
C {SUN_TR_SKY130NM/SUNTR_DFRNQNX1_CV.sym} 160 -10 0 0 {name=xa}
C {devices/lab_pin.sym} 190 100 2 0 {name=l49 sig_type=std_logic lab=PWRUP_1V8}
