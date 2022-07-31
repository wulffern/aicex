v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 -420 0 -140 {
lab=YN}
N 180 -420 180 -140 {
lab=Y}
N 0 -110 20 -110 {
lab=AVSS}
N 20 -110 20 -80 {
lab=AVSS}
N 0 -80 20 -80 {
lab=AVSS}
N 180 -80 210 -80 {
lab=AVSS}
N 210 -110 210 -80 {
lab=AVSS}
N 180 -110 210 -110 {
lab=AVSS}
N 0 -80 0 0 {
lab=AVSS}
N 180 -80 180 0 {
lab=AVSS}
N 0 0 180 0 {
lab=AVSS}
N -80 -110 -40 -110 {
lab=A}
N 100 -110 140 -110 {
lab=AN}
N 40 -450 70 -450 {
lab=Y}
N 70 -450 130 -380 {
lab=Y}
N 130 -380 180 -380 {
lab=Y}
N 110 -450 140 -450 {
lab=YN}
N 60 -380 110 -450 {
lab=YN}
N 0 -380 60 -380 {
lab=YN}
N -40 -450 0 -450 {
lab=AVDD}
N -40 -480 -40 -450 {
lab=AVDD}
N 0 -530 0 -480 {
lab=#net1}
N 0 -620 180 -620 {
lab=AVDD}
N 180 -530 180 -480 {
lab=#net2}
N 200 -480 200 -450 {
lab=AVDD}
N 180 -450 200 -450 {
lab=AVDD}
N 180 -280 210 -280 {
lab=Y}
N 0 -280 20 -280 {
lab=YN}
N -80 0 -0 0 {
lab=AVSS}
N -110 -620 0 -620 {
lab=AVDD}
N -0 -620 0 -590 {
lab=AVDD}
N 180 -620 180 -590 {
lab=AVDD}
N 200 -620 200 -560 {
lab=AVDD}
N 180 -620 190 -620 {
lab=AVDD}
N -40 -560 -0 -560 {
lab=AVDD}
N -40 -620 -40 -560 {
lab=AVDD}
N -40 -560 -40 -480 {
lab=AVDD}
N 200 -560 200 -480 {
lab=AVDD}
N 40 -560 40 -450 {
lab=Y}
N 140 -560 140 -450 {
lab=YN}
N 180 -560 200 -560 {
lab=AVDD}
N 190 -620 200 -620 {
lab=AVDD}
C {SUN_TR_SKY130NM/SUNTR_NCHDL.sym} -40 -110 0 0 {name=xb2[1:0]
}
C {SUN_TR_SKY130NM/SUNTR_NCHDL.sym} 140 -110 0 0 {name=xb1[1:0]
}
C {SUN_TR_SKY130NM/SUNTR_PCHDL.sym} 140 -450 0 0 {name=xc1b}
C {SUN_TR_SKY130NM/SUNTR_PCHDL.sym} 40 -450 0 1 {name=xc2b
}
C {devices/ipin.sym} -100 -620 2 1 {name=p4 lab=AVDD
}
C {devices/ipin.sym} -70 -110 2 1 {name=p2 lab=A
}
C {devices/ipin.sym} 110 -110 2 1 {name=p3 lab=AN

}
C {devices/opin.sym} 200 -280 2 1 {name=p1 lab=Y
}
C {devices/opin.sym} 20 -280 2 1 {name=p5 lab=YN
}
C {devices/ipin.sym} -70 0 2 1 {name=p6 lab=AVSS
}
C {SUN_TR_SKY130NM/SUNTR_PCHDL.sym} 40 -560 0 1 {name=xc2a}
C {SUN_TR_SKY130NM/SUNTR_PCHDL.sym} 140 -560 0 0 {name=xc1a

}
