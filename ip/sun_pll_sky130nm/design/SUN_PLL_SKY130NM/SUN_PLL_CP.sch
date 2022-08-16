v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Charge pump} -140 -400 0 0 1 1 {}
N 20 320 90 320 {
lab=VBN}
N 10 250 20 320 {
lab=VBN}
N -210 250 10 250 {
lab=VBN}
N -110 250 -100 320 {
lab=VBN}
N -60 -140 -60 290 {
lab=VBP}
N -120 -170 -60 -170 {
lab=AVDD}
N -120 -200 -120 -170 {
lab=AVDD}
N -120 -200 -60 -200 {
lab=AVDD}
N -60 -200 130 -200 {
lab=AVDD}
N 130 -200 160 -200 {
lab=AVDD}
N 160 -200 160 -170 {
lab=AVDD}
N 130 -170 160 -170 {
lab=AVDD}
N 130 -140 130 0 {
lab=VPS}
N 130 30 160 30 {
lab=AVDD}
N 160 -170 160 30 {
lab=AVDD}
N -20 -170 90 -170 {
lab=VBP}
N 10 -170 10 -120 {
lab=VBP}
N -60 -120 10 -120 {
lab=VBP}
N 130 210 130 290 {
lab=VNS}
N 130 320 160 320 {
lab=AVSS}
N 160 320 160 350 {
lab=AVSS}
N 130 350 160 350 {
lab=AVSS}
N -60 350 130 350 {
lab=AVSS}
N -60 320 -40 320 {
lab=AVSS}
N -40 320 -40 350 {
lab=AVSS}
N -210 350 -70 350 {
lab=AVSS}
N 130 60 130 150 {
lab=LPF}
N 130 180 160 180 {
lab=AVSS}
N 160 180 160 320 {
lab=AVSS}
N -210 30 90 30 {
lab=CP_UP_N}
N -210 180 90 180 {
lab=CP_DOWN}
N -210 -200 -120 -200 {
lab=AVDD}
N 130 100 320 100 {
lab=LPF}
N -70 350 -60 350 {
lab=AVSS}
N 290 -200 290 -130 {
lab=AVDD}
N 160 -200 290 -200 {
lab=AVDD}
N 290 -70 290 100 {
lab=LPF}
N 290 -100 350 -100 {
lab=AVDD}
N 350 -200 350 -100 {
lab=AVDD}
N 290 -200 350 -200 {
lab=AVDD}
N -210 -60 250 -60 {
lab=PWRUP_1V8}
N 250 -100 250 -60 {
lab=PWRUP_1V8}
N 280 260 280 350 {
lab=AVSS}
N 160 350 280 350 {
lab=AVSS}
N 280 230 310 230 {
lab=AVSS}
N 310 230 310 350 {
lab=AVSS}
N 280 350 310 350 {
lab=AVSS}
N 280 170 280 200 {
lab=LPFZ}
N 280 170 330 170 {
lab=LPFZ}
N -210 230 240 230 {
lab=KICK}
C {SUN_TR_SKY130NM/SUNTR_PCHDLCM.sym} 90 -170 0 0 {name=xb2 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_PCHDLCM.sym} -20 -170 0 1 {name=xb1 xoffset=5 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_PCHDL.sym} 90 30 0 0 {name=xb3 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_NCHDL.sym} 90 180 0 0 {name=xa3 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM.sym} 90 320 0 0 {name=xa2 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM.sym} -100 320 0 0 {name=xa1 xoffset=0 yoffset=0 angle=0 M=1}
C {devices/ipin.sym} -200 -200 0 0 {name=p1 lab=AVDD}
C {devices/ipin.sym} -200 30 0 0 {name=p2 lab=CP_UP_N}
C {devices/ipin.sym} -200 180 0 0 {name=p3 lab=CP_DOWN}
C {devices/ipin.sym} -200 250 0 0 {name=p4 lab=VBN}
C {devices/ipin.sym} -200 350 0 0 {name=p5 lab=AVSS}
C {devices/opin.sym} 320 100 0 0 {name=p6 lab=LPF}
C {cborder/border_s.sym} 420 340 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
C {devices/lab_pin.sym} -60 -80 0 0 {name=l1 sig_type=std_logic lab=VBP}
C {devices/lab_pin.sym} 130 -90 0 0 {name=l2 sig_type=std_logic lab=VPS}
C {devices/lab_pin.sym} 130 250 0 0 {name=l3 sig_type=std_logic lab=VNS}
C {SUN_TR_SKY130NM/SUNTR_PCHDL.sym} 250 -100 0 0 {name=xb4 xoffset=0 yoffset=0 angle=0 M=1}
C {devices/ipin.sym} -200 -60 0 0 {name=p7 lab=PWRUP_1V8}
C {devices/opin.sym} 320 170 0 0 {name=p8 lab=LPFZ}
C {SUN_TR_SKY130NM/SUNTR_NCHDLA.sym} 240 230 0 0 {name=xa4 xoffset=0 yoffset=0 angle=0 M=10}
C {devices/ipin.sym} -200 230 0 0 {name=p9 lab=KICK}
