v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Current bias} -480 -590 0 0 1 1 {}
N -90 -240 -50 -240 {
lab=AVSS}
N -50 -240 -50 -180 {
lab=AVSS}
N -90 -180 -50 -180 {
lab=AVSS}
N -90 -210 -90 -180 {
lab=AVSS}
N -130 -270 -130 -240 {
lab=IBPSR_1U}
N -130 -270 -90 -270 {
lab=IBPSR_1U}
N -200 -270 -130 -270 {
lab=IBPSR_1U}
N -220 -180 -90 -180 {
lab=AVSS}
N -220 -270 -220 -250 {
lab=IBPSR_1U}
N -220 -270 -200 -270 {
lab=IBPSR_1U}
N -220 -220 -190 -220 {
lab=AVSS}
N -190 -220 -190 -180 {
lab=AVSS}
N -340 -270 -220 -270 {
lab=IBPSR_1U}
N -380 -220 -260 -220 {
lab=PWRUP_1V8_N}
N -420 -180 -220 -180 {
lab=AVSS}
N -220 -190 -220 -180 {
lab=AVSS}
N -500 -220 -460 -220 {
lab=PWRUP_1V8_N}
N -500 -180 -420 -180 {
lab=AVSS}
N -340 -370 -340 -270 {
lab=IBPSR_1U}
N -500 -370 -340 -370 {
lab=IBPSR_1U}
N -460 -220 -380 -220 {
lab=PWRUP_1V8_N}
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM.sym} -130 -240 0 0 {name=xa3 xoffset=0 yoffset=0 angle=0 M=10}
C {SUN_TR_SKY130NM/SUNTR_NCHDL.sym} -260 -220 0 0 {name=xa2 xoffset=0 yoffset=0 angle=0 M=1}
C {devices/ipin.sym} -490 -370 0 0 {name=p1 lab=IBPSR_1U}
C {devices/ipin.sym} -490 -220 0 0 {name=p3 lab=PWRUP_1V8_N}
C {devices/ipin.sym} -490 -180 0 0 {name=p4 lab=AVSS}
C {cborder/border_s.sym} 70 100 0 0 {user="Carsten Wulff" copmpany="Carsten Wulff Software"}
