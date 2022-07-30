v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Ring oscillator with level shifter. } -425 -335 0 0 0.4 0.4 {}
N 70 -10 150 -10 {
lab=N[7:0]}
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
N 370 -290 370 -10 {
lab=#net1}
N 550 -290 550 -10 {
lab=CKUP}
N 370 20 390 20 {
lab=AVSS}
N 390 20 390 50 {
lab=AVSS}
N 370 50 390 50 {
lab=AVSS}
N 550 50 580 50 {
lab=AVSS}
N 580 20 580 50 {
lab=AVSS}
N 550 20 580 20 {
lab=AVSS}
N 370 50 370 130 {
lab=AVSS}
N -530 130 370 130 {
lab=AVSS}
N 30 60 30 130 {
lab=AVSS}
N -360 70 -360 130 {
lab=AVSS}
N 550 50 550 130 {
lab=AVSS}
N 370 130 550 130 {
lab=AVSS}
N 290 20 330 20 {
lab=N[0]}
N 470 20 510 20 {
lab=N[1]}
N 410 -320 440 -320 {
lab=CKUP}
N 440 -320 500 -250 {
lab=CKUP}
N 500 -250 550 -250 {
lab=CKUP}
N 480 -320 510 -320 {
lab=#net1}
N 430 -250 480 -320 {
lab=#net1}
N 370 -250 430 -250 {
lab=#net1}
N 330 -320 370 -320 {
lab=VDD_1V8}
N 330 -350 330 -320 {
lab=VDD_1V8}
N 330 -350 370 -350 {
lab=VDD_1V8}
N 370 -400 370 -350 {
lab=VDD_1V8}
N 370 -400 550 -400 {
lab=VDD_1V8}
N 550 -400 550 -350 {
lab=VDD_1V8}
N 550 -350 570 -350 {
lab=VDD_1V8}
N 570 -350 570 -320 {
lab=VDD_1V8}
N 550 -320 570 -320 {
lab=VDD_1V8}
N 210 -400 370 -400 {
lab=VDD_1V8}
N -360 -160 -360 -80 {
lab=VDD_ROSC}
N -520 -160 -360 -160 {
lab=VDD_ROSC}
N -360 -160 30 -160 {
lab=VDD_ROSC}
N 30 -160 30 -90 {
lab=VDD_ROSC}
N 550 -160 700 -160 {
lab=CKUP}
N 780 -160 850 -160 {
lab=CK}
N 740 -120 740 130 {
lab=AVSS}
N 550 130 740 130 {
lab=AVSS}
N 740 -400 740 -200 {
lab=VDD_1V8}
N 550 -400 740 -400 {
lab=VDD_1V8}
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
C {devices/iopin.sym} -510 -10 2 0 {name=p1 lab=PWRUP_1V8
}
C {devices/iopin.sym} -510 -160 2 0 {name=p2 lab=VDD_ROSC
}
C {devices/iopin.sym} -520 130 2 0 {name=p3 lab=AVSS
}
C {devices/lab_pin.sym} 290 20 0 0 {name=l1 sig_type=std_logic lab=N[0]
}
C {devices/lab_pin.sym} 470 20 0 0 {name=l3 sig_type=std_logic lab=N[1]
}
C {devices/iopin.sym} 220 -400 2 0 {name=p4 lab=VDD_1V8
}
C {devices/iopin.sym} 850 -160 0 0 {name=p5 lab=CK}
C {devices/lab_pin.sym} 630 -160 1 0 {name=l2 sig_type=std_logic lab=CKUP
}
C {SUN_TR_SKY130NM/SUNTR_NDX1_CV.sym} -400 10 0 0 {name=x1}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} -10 -10 0 0 {name=x7}
C {SUN_TR_SKY130NM/SUNTR_NCHDLA.sym} 330 20 0 0 {name=x4}
C {SUN_TR_SKY130NM/SUNTR_NCHDLA.sym} 510 20 0 0 {name=x5}
C {SUN_TR_SKY130NM/SUNTR_PCHDL.sym} 510 -320 0 0 {name=x2}
C {SUN_TR_SKY130NM/SUNTR_PCHDL.sym} 410 -320 0 1 {name=x3}
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 700 -160 0 0 {name=x6}
