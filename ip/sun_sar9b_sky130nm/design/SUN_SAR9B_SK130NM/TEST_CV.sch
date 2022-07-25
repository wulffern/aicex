v {xschem version=3.0.0 file_version=1.2 }
C {devices/iopin.sym} 0 0 0 0{name=p0 lab=A}
C {devices/iopin.sym} 0 20 0 0{name=p1 lab=Y}
C {devices/iopin.sym} 0 40 0 0{name=p2 lab=AVDD}
C {devices/iopin.sym} 0 60 0 0{name=p3 lab=AVSS}
C {SUN_SAR9B_SK130NM/TAPCELLB_CV.sym} 400 0 0 0 {name=XA5}
N 340.0 0.0 380.0 0.0{lab=AVDD}
C {devices/lab_pin.sym} 340.0 0.0 0 0  {name=l0 sig_type=std_logic lab=AVDD }
N 340.0 20.0 380.0 20.0{lab=AVSS}
C {devices/lab_pin.sym} 340.0 20.0 0 0  {name=l1 sig_type=std_logic lab=AVSS }
