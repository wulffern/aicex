v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -110 -100 -70 -100 {
lab=VSS}
N -110 -100 -110 -50 {
lab=VSS}
N -110 -50 -30 -50 {
lab=VSS}
N -30 -70 -30 -50 {
lab=VSS}
N 230 -100 280 -100 {
lab=VSS}
N 230 -100 230 -50 {
lab=VSS}
N 230 -50 320 -50 {
lab=VSS}
N 320 -70 320 -50 {
lab=VSS}
N -30 -50 230 -50 {
lab=VSS}
N -30 -690 -30 -130 {
lab=VD1}
N -130 -720 -30 -720 {
lab=VDD_1V8}
N -130 -750 -130 -720 {
lab=VDD_1V8}
N -130 -830 -130 -750 {
lab=VDD_1V8}
N -130 -830 -30 -830 {
lab=VDD_1V8}
N -30 -830 -30 -750 {
lab=VDD_1V8}
N -30 -830 320 -830 {
lab=VDD_1V8}
N 320 -830 320 -750 {
lab=VDD_1V8}
N 10 -720 280 -720 {
lab=LPI}
N 320 -690 320 -240 {
lab=#net1}
N 320 -160 320 -130 {
lab=VD2}
N 230 -200 300 -200 {
lab=VSS}
N 230 -200 230 -100 {
lab=VSS}
N -210 -830 -130 -830 {
lab=VDD_1V8}
N -170 -50 -110 -50 {
lab=VSS}
N 140 -830 140 -810 {
lab=VDD_1V8}
N 140 -740 140 -720 {
lab=LPI}
N 130 -390 130 -310 {
lab=VD1}
N -30 -240 130 -240 {
lab=VD1}
N 150 -360 150 -240 {
lab=#net1}
N 150 -240 320 -240 {
lab=#net1}
N 110 -390 110 -370 {
lab=VDD_1V8}
N 130 -310 130 -240 {
lab=VD1}
N 170 -390 170 -370 {
lab=PWRUP_1V8}
N 190 -390 190 -370 {
lab=VSS}
N 150 -390 150 -360 {
lab=#net1}
N 140 -630 140 -610 {
lab=LPO}
N 170 -720 170 -690 {
lab=LPI}
N 320 -720 370 -720 {
lab=VDD_1V8}
N 370 -830 370 -720 {
lab=VDD_1V8}
N 320 -830 370 -830 {
lab=VDD_1V8}
N 750 -830 750 -750 {
lab=VDD_1V8}
N 370 -830 750 -830 {
lab=VDD_1V8}
N 750 -720 790 -720 {
lab=VDD_1V8}
N 790 -830 790 -720 {
lab=VDD_1V8}
N 750 -830 790 -830 {
lab=VDD_1V8}
N 750 -690 750 -630 {
lab=IBP_1U[3:0]}
N 750 -630 830 -630 {
lab=IBP_1U[3:0]}
N 680 -720 710 -720 {
lab=LPI}
N 680 -720 680 -650 {
lab=LPI}
N 260 -650 680 -650 {
lab=LPI}
N 260 -720 260 -650 {
lab=LPI}
N 520 -720 570 -720 {
lab=VDD_1V8}
N 570 -830 570 -720 {
lab=VDD_1V8}
N 520 -830 520 -750 {
lab=VDD_1V8}
N 440 -720 480 -720 {
lab=LPI}
N 440 -720 440 -650 {
lab=LPI}
N 520 -690 520 -560 {
lab=IBP_2U}
N 220 -560 520 -560 {
lab=IBP_2U}
C {cborder/border_s.sym} 520 0 0 0 {
user="Carsten Wulff"
company="Carsten Wulff Software"}
C {devices/ipin.sym} -200 -830 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -160 -50 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 170 -380 3 0 {name=p3 lab=PWRUP_1V8}
C {devices/opin.sym} 170 -700 1 0 {name=p6 lab=LPI}
C {devices/opin.sym} 140 -620 3 0 {name=p7 lab=LPO}
C {devices/opin.sym} 820 -630 0 0 {name=p8 lab=IBP_1U[3:0]}
C {SUN_TR_SKY130NM/SUNTR_PCHLCM.sym} 280 -720 0 0 {name=x1 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_PCHLCM.sym} 10 -720 0 1 {name=x2[7:0] xoffset=0 yoffset=0 angle=0 M=1}
C {sky130_fd_pr/pnp_05v5.sym} -50 -100 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 300 -100 0 0 {name=Q2[7:0]
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 320 -240 1 0 {name=x20 xoffset=0 yoffset=0 angle=0 M=1}
C {SUN_TR_SKY130NM/SUNTR_CAP_20.sym} 140 -750 0 0 {name=x3[5:0] xoffset=0 yoffset=0 angle=0 M=1}
C {RPLY_BIAS_SKY130A/RPLYBS_OTA.sym} 150 -540 3 0 {name=xota}
C {devices/lab_pin.sym} 110 -370 3 0 {name=l1 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_pin.sym} 190 -370 3 0 {name=l3 sig_type=std_logic lab=VSS}
C {SUN_TR_SKY130NM/SUNTR_PCHLCM.sym} 710 -720 0 0 {name=x4[3:0] xoffset=0 yoffset=0 angle=0 M=1}
C {devices/lab_pin.sym} -30 -300 0 1 {name=l2 sig_type=std_logic lab=VD1}
C {devices/lab_pin.sym} 320 -150 0 1 {name=l4 sig_type=std_logic lab=VD2}
C {devices/lab_pin.sym} 320 -300 0 1 {name=l5 sig_type=std_logic lab=VR1}
C {SUN_TR_SKY130NM/SUNTR_PCHLCM.sym} 480 -720 0 0 {name=x1[1:0] xoffset=0 yoffset=0 angle=0 M=1}
C {devices/lab_wire.sym} 420 -560 0 0 {name=l6 sig_type=std_logic lab=IBP_2U}
