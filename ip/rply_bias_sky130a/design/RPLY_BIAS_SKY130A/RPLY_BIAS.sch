v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -370 10 -330 10 {
lab=VSS}
N -370 10 -370 60 {
lab=VSS}
N -370 60 -290 60 {
lab=VSS}
N -290 40 -290 60 {
lab=VSS}
N -30 10 20 10 {
lab=VSS}
N -30 10 -30 60 {
lab=VSS}
N -30 60 60 60 {
lab=VSS}
N 60 40 60 60 {
lab=VSS}
N -290 60 -30 60 {
lab=VSS}
N -290 -700 -290 -20 {
lab=VD1}
N -390 -730 -290 -730 {
lab=VDD_1V8}
N -390 -760 -390 -730 {
lab=VDD_1V8}
N -390 -840 -390 -760 {
lab=VDD_1V8}
N -390 -840 -290 -840 {
lab=VDD_1V8}
N -290 -840 -290 -760 {
lab=VDD_1V8}
N -290 -840 60 -840 {
lab=VDD_1V8}
N 60 -840 60 -760 {
lab=VDD_1V8}
N -250 -730 20 -730 {
lab=LPI}
N 60 -700 60 -250 {
lab=VR1}
N 60 -50 60 -20 {
lab=VD2}
N -30 -210 40 -210 {
lab=VSS}
N -30 -210 -30 10 {
lab=VSS}
N -470 -840 -390 -840 {
lab=VDD_1V8}
N -430 60 -370 60 {
lab=VSS}
N -120 -840 -120 -820 {
lab=VDD_1V8}
N -120 -750 -120 -730 {
lab=LPI}
N -130 -400 -130 -320 {
lab=VD1}
N -290 -250 -130 -250 {
lab=VD1}
N -110 -370 -110 -250 {
lab=VR1}
N -110 -250 60 -250 {
lab=VR1}
N -150 -400 -150 -380 {
lab=VDD_1V8}
N -130 -320 -130 -250 {
lab=VD1}‰
N -90 -400 -90 -380 {
lab=PWRUP_1V8}
N -70 -400 -70 -380 {
lab=VSS}
N -110 -400 -110 -370 {
lab=VR1}
N -120 -640 -120 -620 {
lab=LPO}
N -90 -730 -90 -700 {
lab=LPI}
N 60 -730 110 -730 {
lab=VDD_1V8}
N 110 -840 110 -730 {
lab=VDD_1V8}
N 60 -840 110 -840 {
lab=VDD_1V8}
N 740 -840 740 -760 {
lab=VDD_1V8}
N 110 -840 740 -840 {
lab=VDD_1V8}
N 740 -730 780 -730 {
lab=VDD_1V8}
N 780 -840 780 -730 {
lab=VDD_1V8}
N 740 -840 780 -840 {
lab=VDD_1V8}
N 740 -700 740 -640 {
lab=IBP_1U[3:0]}
N 740 -640 740 -490 {
lab=IBP_1U[3:0]}
N 670 -730 700 -730 {
lab=LPI}
N 670 -730 670 -660 {
lab=LPI}
N 0 -660 670 -660 {
lab=LPI}
N 0 -730 0 -660 {
lab=LPI}
N 260 -730 310 -730 {
lab=VDD_1V8}
N 310 -840 310 -730 {
lab=VDD_1V8}
N 260 -840 260 -760 {
lab=VDD_1V8}
N 180 -730 220 -730 {
lab=LPI}
N 180 -730 180 -660 {
lab=LPI}
N 260 -700 260 -570 {
lab=IBP_2U}
N -40 -570 260 -570 {
lab=IBP_2U}
N 430 -730 480 -730 {
lab=VDD_1V8}
N 480 -840 480 -730 {
lab=VDD_1V8}
N 430 -840 430 -760 {
lab=VDD_1V8}
N 350 -730 390 -730 {
lab=LPI}
N 350 -730 350 -660 {
lab=LPI}
N 350 0 390 0 {
lab=VSS}
N 350 0 350 60 {
lab=VSS}
N 350 60 430 60 {
lab=VSS}
N 430 30 430 60 {
lab=VSS}
N 60 60 350 60 {
lab=VSS}
N 350 -160 410 -160 {
lab=VSS}
N 350 -190 350 0 {
lab=VSS}
N 430 -120 430 -90 {
lab=T_ON,VR2[3:0]}
N 430 -60 430 -30 {
lab=T_ON}
N 430 -360 430 -340 {
lab=T_OP}
N 350 -300 410 -300 {
lab=VSS}
N 350 -400 410 -400 {
lab=VSS}
N 430 -460 430 -440 {
lab=#net1}
N 350 -300 350 -190 {
lab=VSS}
N 350 -400 350 -300 {
lab=VSS}
N 350 -500 350 -400 {
lab=VSS}
N 350 -500 410 -500 {
lab=VSS}
N 60 -170 60 -50 {
lab=VD2}
N 430 -700 430 -540 {
lab=#net2}
N 510 -540 550 -540 {
lab=T_OP}
N 430 -230 430 -200 {
lab=VR2[3:0],VRT}
N 430 -260 430 -250 {
lab=VRT}
N 510 -540 510 -350 {
lab=T_OP}
N 430 -350 510 -350 {
lab=T_OP}
N -120 -760 -120 -750 {
lab=LPI}
C {cborder/border_s.sym} 520 0 0 0 {
user="Carsten Wulff"
company="Carsten Wulff Software"}
C {devices/ipin.sym} -460 -840 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -420 60 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -90 -390 3 0 {name=p3 lab=PWRUP_1V8}
C {devices/opin.sym} -90 -710 1 0 {name=p6 lab=LPI}
C {devices/opin.sym} -120 -630 3 0 {name=p7 lab=LPO}
C {devices/opin.sym} 740 -500 1 0 {name=p8 lab=IBP_1U[3:0]}
C {SUN_TR_SKY130NM/SUNTR_PCHLCM.sym} 20 -730 0 0 {name=xpb2 }
C {SUN_TR_SKY130NM/SUNTR_PCHLCM.sym} -250 -730 0 1 {name=xpb1[7:0] }
C {sky130_fd_pr/pnp_05v5.sym} -310 10 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 40 10 0 0 {name=Q2[7:0]
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 60 -250 1 0 {name=x20 }
C {RPLY_BIAS_SKY130A/RPLYBS_OTA.sym} -110 -550 3 0 {name=xota}
C {devices/lab_pin.sym} -150 -380 3 0 {name=l1 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_pin.sym} -70 -380 3 0 {name=l3 sig_type=std_logic lab=VSS}
C {SUN_TR_SKY130NM/SUNTR_PCHLCM.sym} 700 -730 0 0 {name=xpb4[3:0] }
C {devices/lab_pin.sym} -290 -310 0 1 {name=l2 sig_type=std_logic lab=VD1}
C {devices/lab_pin.sym} 60 -40 0 1 {name=l4 sig_type=std_logic lab=VD2}
C {devices/lab_pin.sym} 60 -310 0 1 {name=l5 sig_type=std_logic lab=VR1}
C {SUN_TR_SKY130NM/SUNTR_PCHLCM.sym} 220 -730 0 0 {name=xpb3 }
C {devices/lab_wire.sym} 160 -570 0 0 {name=l6 sig_type=std_logic lab=IBP_2U}
C {SUN_TR_SKY130NM/SUNTR_PCHLCM.sym} 390 -730 0 0 {name=xpb1 }
C {sky130_fd_pr/pnp_05v5.sym} 410 0 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {SUN_TR_SKY130NM/SUNTR_RPPO16.sym} 430 -200 1 0 {name=x1[4:0] }
C {devices/lab_pin.sym} 430 -90 0 1 {name=l7 sig_type=std_logic lab=T_ON,VR2[3:0]}
C {devices/lab_pin.sym} 430 -230 0 1 {name=l8 sig_type=std_logic lab=VR2[3:0],VRT}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 430 -340 1 0 {name=x2 }
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 430 -440 1 0 {name=x1 }
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 430 -540 1 0 {name=x3 }
C {devices/opin.sym} 540 -540 0 0 {name=p4 lab=T_OP}
C {devices/lab_pin.sym} 430 -50 0 1 {name=l9 sig_type=std_logic lab=T_ON}
C {devices/lab_pin.sym} 430 -250 0 1 {name=l10 sig_type=std_logic lab=VRT}
C {devices/opin.sym} 530 -50 0 0 {name=p5 lab=T_ON}
C {SUN_TR_SKY130NM/SUNTR_CAP_20.sym} -120 -760 0 0 {name=xcap[5:0] }
