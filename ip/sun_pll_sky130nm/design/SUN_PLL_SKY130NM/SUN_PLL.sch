v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {16 MHz x 32 = 512 MHz PLL} -520 -550 0 0 1 1 {}
N 470 -70 470 140 {
lab=CK}
N 390 -70 470 -70 {
lab=CK}
N -10 320 260 320 {
lab=PWRUP_1V8}
N 260 10 260 320 {
lab=PWRUP_1V8}
N 230 20 230 270 {
lab=AVSS}
N 230 270 230 390 {
lab=AVSS}
N -750 390 20 390 {
lab=AVSS}
N -780 150 -110 150 {
lab=CK_FB}
N -780 30 -780 150 {
lab=CK_FB}
N -780 -70 -760 -70 {
lab=CK_FB}
N -780 -70 -780 30 {
lab=CK_FB}
N -720 -420 -720 -170 {
lab=AVDD}
N -720 -420 20 -420 {
lab=AVDD}
N 230 -420 230 -180 {
lab=AVDD}
N -850 390 -760 390 {
lab=AVSS}
N -760 390 -750 390 {
lab=AVSS}
N -840 320 -10 320 {
lab=PWRUP_1V8}
N -880 -420 -710 -420 {
lab=AVDD}
N -870 -90 -760 -90 {
lab=CK_REF}
N -720 10 -720 390 {
lab=AVSS}
N 470 -70 620 -70 {
lab=CK}
N 20 -420 230 -420 {
lab=AVDD}
N 20 390 230 390 {
lab=AVSS}
N -550 -90 -500 -90 {
lab=CP_UP_N}
N -550 -70 -500 -70 {
lab=CP_DOWN}
N -110 150 270 150 {
lab=CK_FB}
N 410 240 410 320 {
lab=PWRUP_1V8}
N 260 320 410 320 {
lab=PWRUP_1V8}
N 100 -90 190 -90 {
lab=VDD_ROSC}
N 100 -60 120 -60 {
lab=VDD_ROSC}
N 120 -90 120 -60 {
lab=VDD_ROSC}
N 410 230 410 240 {
lab=PWRUP_1V8}
N 430 230 430 390 {
lab=AVSS}
N 230 390 430 390 {
lab=AVSS}
N 430 -420 430 60 {
lab=AVDD}
N 230 -420 430 -420 {
lab=AVDD}
N -460 -420 -460 -180 {
lab=AVDD}
N -50 -420 -50 -150 {
lab=AVDD}
N -440 10 -440 110 {
lab=IBPSR_1U}
N -30 10 -30 110 {
lab=IBPSR_1U}
N -850 110 -30 110 {
lab=IBPSR_1U}
N -320 110 -320 180 {
lab=IBPSR_1U}
N -180 -70 -100 -70 {
lab=VLPF}
N -330 -70 -180 -70 {
lab=VLPF}
N -180 100 -180 390 {
lab=AVSS}
N -60 10 -60 390 {
lab=AVSS}
N -330 -40 -230 -40 {
lab=VLPFZ}
N -230 -40 -230 20 {
lab=VLPFZ}
N -410 10 -410 170 {
lab=PWRUP_1V8}
N -690 170 -410 170 {
lab=PWRUP_1V8}
N -690 170 -690 320 {
lab=PWRUP_1V8}
N -790 220 -680 220 {
lab=AVDD}
N -790 -420 -790 220 {
lab=AVDD}
N -680 260 -680 390 {
lab=AVSS}
N -690 240 -680 240 {
lab=PWRUP_1V8}
N -480 220 -470 220 {
lab=KICK}
N -470 180 -470 220 {
lab=KICK}
N -470 180 -390 180 {
lab=KICK}
N -390 10 -390 180 {
lab=KICK}
N -460 10 -460 40 {
lab=AVSS}
N -720 40 -460 40 {
lab=AVSS}
N -260 300 -260 390 {
lab=AVSS}
N -480 260 -470 260 {
lab=PWRUP_1V8_N}
N -480 240 -470 240 {
lab=#net1}
C {cborder/border_s.sym} 250 290 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
C {devices/ipin.sym} -870 -420 0 0 {name=p1 lab=AVDD}
C {devices/ipin.sym} -850 390 0 0 {name=p2 lab=AVSS}
C {devices/ipin.sym} -840 320 0 0 {name=p3 lab=PWRUP_1V8}
C {devices/ipin.sym} -860 -90 0 0 {name=p4 lab=CK_REF}
C {devices/opin.sym} 620 -70 0 0 {name=p5 lab=CK}
C {devices/lab_pin.sym} -520 -90 1 0 {name=l1 sig_type=std_logic lab=CP_UP_N}
C {devices/lab_pin.sym} -520 -70 3 0 {name=l2 sig_type=std_logic lab=CP_DOWN}
C {devices/lab_pin.sym} 140 -90 1 0 {name=l3 sig_type=std_logic lab=VDD_ROSC}
C {devices/ipin.sym} -850 110 0 0 {name=p6 lab=IBPSR_1U}
C {SUN_PLL_SKY130NM/SUN_PLL_ROSC.sym} 340 -60 0 0 {name=xaa5 xoffset=5 yoffset=0 angle=0 }
C {SUN_PLL_SKY130NM/SUN_PLL_DIVN.sym} 320 150 0 1 {name=xaa6 xoffset=-310 yoffset=0 angle=0 }
C {SUN_PLL_SKY130NM/SUN_PLL_BIAS.sym} -360 240 0 1 {name=xbb1 xoffset=5 yoffset=0 angle=0 }
C {SUN_PLL_SKY130NM/SUN_PLL_BUF.sym} -100 -70 0 0 {name=xaa4 xoffset=0 yoffset=0 angle=0 }
C {SUN_PLL_SKY130NM/SUN_PLL_LPF.sym} -60 60 0 0 {name=xbb0 xoffset=0 yoffset=5 angle=0 }
C {SUN_PLL_SKY130NM/SUN_PLL_CP.sym} -500 -60 0 0 {name=xaa1 xoffset=0 yoffset=5 angle=0 }
C {SUN_PLL_SKY130NM/SUN_PLL_PFD.sym} -610 -70 0 0 {name=xaa0 xoffset=0 yoffset=5 angle=0 }
C {devices/lab_pin.sym} -230 -70 1 0 {name=l4 sig_type=std_logic lab=VLPF}
C {devices/lab_pin.sym} 80 150 1 0 {name=l5 sig_type=std_logic lab=CK_FB}
C {SUN_PLL_SKY130NM/SUN_PLL_KICK.sym} -530 240 0 0 {name=xaa3 xoffset=20 yoffset=0 angle=0}
C {devices/lab_pin.sym} -250 -40 3 0 {name=l6 sig_type=std_logic lab=VLPFZ}
C {devices/lab_pin.sym} -390 50 2 0 {name=l7 sig_type=std_logic lab=KICK}
C {devices/lab_pin.sym} -480 260 3 0 {name=l8 sig_type=std_logic lab=PWRUP_1V8_N}
