v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -120 140 260 140 {
lab=CK}
N 260 -70 260 140 {
lab=CK}
N 180 -70 260 -70 {
lab=CK}
N -220 230 -220 320 {
lab=PWRUP_1V8}
N -220 320 50 320 {
lab=PWRUP_1V8}
N 50 10 50 320 {
lab=PWRUP_1V8}
N 20 20 20 270 {
lab=AVSS}
N 20 270 20 390 {
lab=AVSS}
N -750 390 20 390 {
lab=AVSS}
N -160 230 -160 390 {
lab=AVSS}
N -780 150 -320 150 {
lab=#net1}
N -780 30 -780 150 {
lab=#net1}
N -780 -70 -760 -70 {
lab=#net1}
N -780 -70 -780 30 {
lab=#net1}
N -720 -420 -720 -170 {
lab=AVDD}
N -720 -420 20 -420 {
lab=AVDD}
N 20 -420 20 -180 {
lab=AVDD}
N -160 -420 -160 60 {
lab=AVDD}
N -850 390 -760 390 {
lab=AVSS}
N -760 390 -750 390 {
lab=AVSS}
N -850 330 -220 330 {
lab=PWRUP_1V8}
N -220 320 -220 330 {
lab=PWRUP_1V8}
N -880 -420 -710 -420 {
lab=AVDD}
N -870 -90 -760 -90 {
lab=CK_REF}
N -720 10 -720 390 {
lab=AVSS}
N 260 -70 410 -70 {
lab=CK}
C {SUN_PLL_SKY130NM/SUN_PLL_ROSC.sym} 130 -60 0 0 {name=x1}
C {cborder/border_s.sym} 250 290 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
C {SUN_PLL_SKY130NM/SUN_PLL_PFD.sym} -610 -70 0 0 {name=x2}
C {SUN_PLL_SKY130NM/SUN_PLL_DIVN.sym} -270 150 0 1 {name=x3}
C {devices/ipin.sym} -870 -420 0 0 {name=p1 lab=AVDD}
C {devices/ipin.sym} -850 390 0 0 {name=p2 lab=AVSS}
C {devices/ipin.sym} -850 330 0 0 {name=p3 lab=PWRUP_1V8}
C {devices/ipin.sym} -860 -90 0 0 {name=p4 lab=CK_REF}
C {devices/opin.sym} 410 -70 0 0 {name=p5 lab=CK}
