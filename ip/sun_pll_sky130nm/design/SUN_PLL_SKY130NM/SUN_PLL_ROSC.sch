v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Ring oscillator with level shifter. } -345 -565 0 0 1 1 {}
N -70 -10 -10 -10 {
lab=NI,N[7:1]}
N 30 -90 30 -50 {
lab=VDD_ROSC}
N 30 30 30 60 {
lab=AVSS}
N -310 -0 -270 0 {
lab=NI}
N -360 -80 -360 -40 {
lab=VDD_ROSC}
N -360 40 -360 70 {
lab=AVSS}
N -310 0 -270 0 {
lab=NI}
N -440 10 -400 10 {
lab=N[0]}
N -440 10 -400 10 {
lab=N[0]}
N -440 -10 -400 -10 {
lab=PWRUP_1V8}
N -520 -10 -440 -10 {
lab=PWRUP_1V8}
N -530 130 370 130 {
lab=AVSS}
N 30 60 30 130 {
lab=AVSS}
N -360 70 -360 130 {
lab=AVSS}
N 370 130 550 130 {
lab=AVSS}
N 390 -160 430 -160 {
lab=N[2]}
N 390 -140 430 -140 {
lab=N[1]}
N 370 -400 550 -400 {
lab=AVDD}
N 210 -400 370 -400 {
lab=AVDD}
N -360 -160 -360 -80 {
lab=VDD_ROSC}
N -520 -160 -360 -160 {
lab=VDD_ROSC}
N -360 -160 30 -160 {
lab=VDD_ROSC}
N 30 -160 30 -90 {
lab=VDD_ROSC}
N 780 -160 850 -160 {
lab=CK}
N 740 -120 740 130 {
lab=AVSS}
N 550 130 740 130 {
lab=AVSS}
N 740 -400 740 -200 {
lab=AVDD}
N 550 -400 740 -400 {
lab=AVDD}
N 430 -400 430 -180 {
lab=AVDD}
N 430 -120 430 130 {
lab=AVSS}
N 550 -140 600 -140 {
lab=CKUP}
N 600 -160 600 -140 {
lab=CKUP}
N 600 -160 700 -160 {
lab=CKUP}
N 120 -400 210 -400 {
lab=AVDD}
N 220 -400 220 -330 {
lab=AVDD}
N 170 -310 220 -310 {
lab=AVSS}
N -10 -10 0 -10 {
lab=NI,N[7:1]}
N 50 30 50 130 {
lab=AVSS}
N 10 -400 120 -400 {
lab=AVDD}
N 50 -400 50 -50 {
lab=AVDD}
N 80 -10 150 -10 {
lab=N[7:0]}
N -340 -100 -340 -40 {
lab=AVDD}
N -340 -100 50 -100 {
lab=AVDD}
N -340 40 -340 130 {
lab=AVSS}
N 550 -160 580 -160 {
lab=CKDWN}
N 80 -140 80 -100 {
lab=AVSS}
N 80 -100 110 -100 {
lab=AVSS}
N 110 -100 110 130 {
lab=AVSS}
N 50 -160 80 -160 {
lab=AVDD}
N 580 -300 620 -300 {
lab=CKDWN}
N 580 -300 580 -160 {
lab=CKDWN}
N 660 -260 660 130 {
lab=AVSS}
N 660 -390 660 -340 {
lab=AVDD}
N 660 -400 660 -390 {
lab=AVDD}
N 700 -300 730 -300 {
lab=NC1}
C {devices/lab_pin.sym} 150 -10 2 0 {name=l5 sig_type=std_logic lab=N[7:0]

}
C {devices/lab_pin.sym} 150 -10 2 0 {name=l6 sig_type=std_logic lab=N[7:0]

}
C {devices/lab_pin.sym} -70 -10 0 0 {name=l7 sig_type=std_logic lab=NI,N[7:1]

}
C {devices/lab_pin.sym} -270 0 2 0 {name=l9 sig_type=std_logic lab=NI


}
C {devices/lab_pin.sym} -440 10 0 0 {name=l11 sig_type=std_logic lab=N[0]

}
C {devices/ipin.sym} -510 -10 2 1 {name=p1 lab=PWRUP_1V8
}
C {devices/ipin.sym} -510 -160 2 1 {name=p2 lab=VDD_ROSC
}
C {devices/ipin.sym} -520 130 2 1 {name=p3 lab=AVSS
}
C {devices/lab_pin.sym} 390 -160 0 0 {name=l1 sig_type=std_logic lab=N[2]
}
C {devices/lab_pin.sym} 170 -310 0 0 {name=l3 sig_type=std_logic lab=AVSS
}
C {devices/ipin.sym} 20 -400 2 1 {name=p4 lab=AVDD
}
C {devices/opin.sym} 850 -160 0 0 {name=p5 lab=CK}
C {devices/lab_pin.sym} 630 -160 1 0 {name=l2 sig_type=std_logic lab=CKUP
}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 700 -160 0 0 {name=xa5}
C {SUN_PLL_SKY130NM/SUN_PLL_LSCORE.sym} 580 -150 0 0 {name=xa3}
C {SUN_TR_SKY130NM/SUNTR_TAPCELLB_CV.sym} 220 -330 0 0 {name=xa6}
C {devices/lab_pin.sym} 390 -140 0 0 {name=l4 sig_type=std_logic lab=N[1]}
C {SUN_TRB_SKY130NM/SUNTRB_IVX1_CV.sym} 0 -10 0 0 {name=xb2[0:7]}
C {devices/lab_pin.sym} 730 -300 1 0 {name=l8 sig_type=std_logic lab=NC1}
C {SUN_TRB_SKY130NM/SUNTRB_NDX1_CV.sym} -400 10 0 0 {name=xb1}
C {SUN_TRB_SKY130NM/SUNTRB_TAPCELLBAVSS_CV.sym} 100 -160 0 0 {name=xb3}
C {cborder/border_s.sym} 550 220 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 620 -300 0 0 {name=xa4}
C {devices/lab_pin.sym} 580 -250 0 0 {name=l10 sig_type=std_logic lab=CKDWN
}
