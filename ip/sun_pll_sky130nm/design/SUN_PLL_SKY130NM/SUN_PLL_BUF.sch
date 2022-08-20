v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -40 -360 120 -360 {
lab=VS}
N 40 -360 40 -290 {
lab=VS}
N 40 -260 80 -260 {
lab=AVSS}
N 40 -230 80 -230 {
lab=AVSS}
N 80 -260 80 -230 {
lab=AVSS}
N -80 -260 0 -260 {
lab=VBN}
N 120 -520 120 -420 {
lab=VDP}
N -40 -520 -40 -420 {
lab=VGP}
N -80 -550 -40 -550 {
lab=AVDD}
N -80 -580 -80 -550 {
lab=AVDD}
N -80 -580 -40 -580 {
lab=AVDD}
N -40 -580 120 -580 {
lab=AVDD}
N 120 -580 160 -580 {
lab=AVDD}
N 160 -580 160 -550 {
lab=AVDD}
N 120 -550 160 -550 {
lab=AVDD}
N 0 -550 80 -550 {
lab=VDP}
N 40 -550 40 -520 {
lab=VDP}
N 40 -520 40 -500 {
lab=VDP}
N -40 -490 290 -490 {
lab=VGP}
N 330 -580 330 -520 {
lab=AVDD}
N 160 -580 330 -580 {
lab=AVDD}
N 330 -490 360 -490 {
lab=AVDD}
N 360 -580 360 -490 {
lab=AVDD}
N 330 -580 360 -580 {
lab=AVDD}
N -40 -390 120 -390 {
lab=AVSS}
N -80 -230 40 -230 {
lab=AVSS}
N -180 -580 -80 -580 {
lab=AVDD}
N -180 -260 -80 -260 {
lab=VBN}
N -180 -230 -80 -230 {
lab=AVSS}
N 330 -460 330 -390 {
lab=VO}
N 330 -390 330 -340 {
lab=VO}
N 330 -270 330 -230 {
lab=AVSS}
N 80 -230 330 -230 {
lab=AVSS}
N -180 -390 -80 -390 {
lab=VI}
N 330 -390 400 -390 {
lab=VO}
N 160 -390 210 -390 {
lab=VFB}
N 80 -390 80 -260 {
lab=AVSS}
N 630 -360 630 -330 {
lab=VO}
N 340 -360 630 -360 {
lab=VO}
N 330 -360 340 -360 {
lab=VO}
N 630 -260 630 -230 {
lab=AVSS}
N 330 -230 630 -230 {
lab=AVSS}
N 40 -500 120 -500 {
lab=VDP}
C {devices/ipin.sym} -170 -580 0 0 {name=p1 lab=AVDD}
C {devices/ipin.sym} -170 -260 0 0 {name=p2 lab=VBN}
C {devices/ipin.sym} -170 -230 0 0 {name=p3 lab=AVSS}
C {cborder/border_s.sym} 530 0 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
C {devices/ipin.sym} -170 -390 0 0 {name=p4 lab=VI}
C {devices/opin.sym} 390 -390 0 0 {name=p5 lab=VO}
C {SUN_TR_SKY130NM/SUNTR_NCHDLA.sym} -80 -390 0 0 {name=xa4 xoffset=0 yoffset=0 angle=0}
C {SUN_TR_SKY130NM/SUNTR_NCHDLA.sym} 160 -390 0 1 {name=xa2 xoffset=0 yoffset=0 angle=0}
C {SUN_TR_SKY130NM/SUNTR_NCHDLCM.sym} 0 -260 0 0 {name=xa1 xoffset=0 yoffset=0 angle=0}
C {SUN_TR_SKY130NM/SUNTR_PCHDLA.sym} 0 -550 0 1 {name=xc1 xoffset=5 yoffset=0 angle=0}
C {SUN_TR_SKY130NM/SUNTR_PCHDLA.sym} 80 -550 0 0 {name=xc2 xoffset=0 yoffset=0 angle=0}
C {SUN_TR_SKY130NM/SUNTR_PCHDLA.sym} 290 -490 0 0 {name=xc3[2:0] xoffset=0 yoffset=0 angle=0}
C {devices/ipin.sym} 200 -390 2 0 {name=p6 lab=VFB}
C {devices/lab_pin.sym} 40 -330 0 0 {name=l1 sig_type=std_logic lab=VS}
C {devices/lab_pin.sym} -40 -460 0 0 {name=l2 sig_type=std_logic lab=VGP}
C {devices/lab_pin.sym} 120 -460 0 0 {name=l3 sig_type=std_logic lab=VDP}
C {SUN_SAR9B_SKY130NM/SUNSAR_CAP_BSSW_CV.sym} 330 -280 0 0 {name=xd2 xoffset=2 yoffset=0 angle=0 M=1}
C {SUN_SAR9B_SKY130NM/SUNSAR_CAP_BSSW_CV.sym} 630 -270 0 0 {name=xd3 xoffset=0 yoffset=0 angle=0 M=8}
