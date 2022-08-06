v {xschem version=3.0.0 file_version=1.2 }
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
}
C {devices/iopin.sym} 0 0 0 0{name=p0 lab=D}
C {devices/iopin.sym} 0 20 0 0{name=p1 lab=CK}
C {devices/iopin.sym} 0 40 0 0{name=p2 lab=RN}
C {devices/iopin.sym} 0 60 0 0{name=p3 lab=Q}
C {devices/iopin.sym} 0 80 0 0{name=p4 lab=QN}
C {devices/iopin.sym} 0 100 0 0{name=p5 lab=AVDD}
C {devices/iopin.sym} 0 120 0 0{name=p6 lab=AVSS}
C {SUN_TR_SKY130NM/SUNTR_TAPCELLB_CV.sym} 400 0 0 0 {name=XXA0}
N 360.0 0.0 380.0 0.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 0.0 0 0  {name=l0 sig_type=std_logic lab=AVDD }
N 360.0 20.0 380.0 20.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 20.0 0 0  {name=l1 sig_type=std_logic lab=AVSS }
C {SUN_TR_SKY130NM/SUNTR_NDX1_CV.sym} 400 140.0 0 0 {name=XXA1}
N 380.0 120.0 400.0 120.0{lab=CK}
C {devices/lab_pin.sym} 380.0 120.0 0 0  {name=l2 sig_type=std_logic lab=CK }
N 380.0 140.0 400.0 140.0{lab=RN}
C {devices/lab_pin.sym} 380.0 140.0 0 0  {name=l3 sig_type=std_logic lab=RN }
N 510.0 130.0 490.0 130.0{lab=CKN}
C {devices/lab_pin.sym} 510.0 130.0 2 0  {name=l4 sig_type=std_logic lab=CKN }
N 420.0 90.0 440.0 90.0{lab=AVDD}
C {devices/lab_pin.sym} 420.0 90.0 0 0  {name=l5 sig_type=std_logic lab=AVDD }
N 420.0 170.0 440.0 170.0{lab=AVSS}
C {devices/lab_pin.sym} 420.0 170.0 0 0  {name=l6 sig_type=std_logic lab=AVSS }
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 400 330.0 0 0 {name=XXA2}
N 380.0 330.0 400.0 330.0{lab=CKN}
C {devices/lab_pin.sym} 380.0 330.0 0 0  {name=l7 sig_type=std_logic lab=CKN }
N 500.0 330.0 480.0 330.0{lab=CKB}
C {devices/lab_pin.sym} 500.0 330.0 2 0  {name=l8 sig_type=std_logic lab=CKB }
N 460.0 290.0 440.0 290.0{lab=AVDD}
C {devices/lab_pin.sym} 460.0 290.0 2 0  {name=l9 sig_type=std_logic lab=AVDD }
N 460.0 370.0 440.0 370.0{lab=AVSS}
C {devices/lab_pin.sym} 460.0 370.0 2 0  {name=l10 sig_type=std_logic lab=AVSS }
C {SUN_TR_SKY130NM/SUNTR_IVTRIX1_CV.sym} 400 520.0 0 0 {name=XXA3}
N 360.0 520.0 380.0 520.0{lab=D}
C {devices/lab_pin.sym} 360.0 520.0 0 0  {name=l11 sig_type=std_logic lab=D }
N 360.0 540.0 380.0 540.0{lab=CKN}
C {devices/lab_pin.sym} 360.0 540.0 0 0  {name=l12 sig_type=std_logic lab=CKN }
N 360.0 560.0 380.0 560.0{lab=CKB}
C {devices/lab_pin.sym} 360.0 560.0 0 0  {name=l13 sig_type=std_logic lab=CKB }
N 360.0 580.0 380.0 580.0{lab=A0}
C {devices/lab_pin.sym} 360.0 580.0 0 0  {name=l14 sig_type=std_logic lab=A0 }
N 360.0 600.0 380.0 600.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 600.0 0 0  {name=l15 sig_type=std_logic lab=AVDD }
N 360.0 620.0 380.0 620.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 620.0 0 0  {name=l16 sig_type=std_logic lab=AVSS }
C {SUN_TR_SKY130NM/SUNTR_IVTRIX1_CV.sym} 400 740.0 0 0 {name=XXA4}
N 360.0 740.0 380.0 740.0{lab=A1}
C {devices/lab_pin.sym} 360.0 740.0 0 0  {name=l17 sig_type=std_logic lab=A1 }
N 360.0 760.0 380.0 760.0{lab=CKB}
C {devices/lab_pin.sym} 360.0 760.0 0 0  {name=l18 sig_type=std_logic lab=CKB }
N 360.0 780.0 380.0 780.0{lab=CKN}
C {devices/lab_pin.sym} 360.0 780.0 0 0  {name=l19 sig_type=std_logic lab=CKN }
N 360.0 800.0 380.0 800.0{lab=A0}
C {devices/lab_pin.sym} 360.0 800.0 0 0  {name=l20 sig_type=std_logic lab=A0 }
N 360.0 820.0 380.0 820.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 820.0 0 0  {name=l21 sig_type=std_logic lab=AVDD }
N 360.0 840.0 380.0 840.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 840.0 0 0  {name=l22 sig_type=std_logic lab=AVSS }
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 400 960.0 0 0 {name=XXA5}
N 380.0 960.0 400.0 960.0{lab=A0}
C {devices/lab_pin.sym} 380.0 960.0 0 0  {name=l23 sig_type=std_logic lab=A0 }
N 500.0 960.0 480.0 960.0{lab=A1}
C {devices/lab_pin.sym} 500.0 960.0 2 0  {name=l24 sig_type=std_logic lab=A1 }
N 460.0 920.0 440.0 920.0{lab=AVDD}
C {devices/lab_pin.sym} 460.0 920.0 2 0  {name=l25 sig_type=std_logic lab=AVDD }
N 460.0 1000.0 440.0 1000.0{lab=AVSS}
C {devices/lab_pin.sym} 460.0 1000.0 2 0  {name=l26 sig_type=std_logic lab=AVSS }
C {SUN_TR_SKY130NM/SUNTR_IVTRIX1_CV.sym} 900 0 0 0 {name=XXA6}
N 860.0 0.0 880.0 0.0{lab=A1}
C {devices/lab_pin.sym} 860.0 0.0 0 0  {name=l27 sig_type=std_logic lab=A1 }
N 860.0 20.0 880.0 20.0{lab=CKB}
C {devices/lab_pin.sym} 860.0 20.0 0 0  {name=l28 sig_type=std_logic lab=CKB }
N 860.0 40.0 880.0 40.0{lab=CKN}
C {devices/lab_pin.sym} 860.0 40.0 0 0  {name=l29 sig_type=std_logic lab=CKN }
N 860.0 60.0 880.0 60.0{lab=QN}
C {devices/lab_pin.sym} 860.0 60.0 0 0  {name=l30 sig_type=std_logic lab=QN }
N 860.0 80.0 880.0 80.0{lab=AVDD}
C {devices/lab_pin.sym} 860.0 80.0 0 0  {name=l31 sig_type=std_logic lab=AVDD }
N 860.0 100.0 880.0 100.0{lab=AVSS}
C {devices/lab_pin.sym} 860.0 100.0 0 0  {name=l32 sig_type=std_logic lab=AVSS }
C {SUN_TR_SKY130NM/SUNTR_NDTRIX1_CV.sym} 900 220.0 0 0 {name=XXA7}
N 860.0 220.0 880.0 220.0{lab=Q}
C {devices/lab_pin.sym} 860.0 220.0 0 0  {name=l33 sig_type=std_logic lab=Q }
N 860.0 240.0 880.0 240.0{lab=CKN}
C {devices/lab_pin.sym} 860.0 240.0 0 0  {name=l34 sig_type=std_logic lab=CKN }
N 860.0 260.0 880.0 260.0{lab=CKB}
C {devices/lab_pin.sym} 860.0 260.0 0 0  {name=l35 sig_type=std_logic lab=CKB }
N 860.0 280.0 880.0 280.0{lab=RN}
C {devices/lab_pin.sym} 860.0 280.0 0 0  {name=l36 sig_type=std_logic lab=RN }
N 860.0 300.0 880.0 300.0{lab=QN}
C {devices/lab_pin.sym} 860.0 300.0 0 0  {name=l37 sig_type=std_logic lab=QN }
N 860.0 320.0 880.0 320.0{lab=AVDD}
C {devices/lab_pin.sym} 860.0 320.0 0 0  {name=l38 sig_type=std_logic lab=AVDD }
N 860.0 340.0 880.0 340.0{lab=AVSS}
C {devices/lab_pin.sym} 860.0 340.0 0 0  {name=l39 sig_type=std_logic lab=AVSS }
C {SUN_TR_SKY130NM/SUNTR_IVX1_CV.sym} 900 460.0 0 0 {name=XXA8}
N 880.0 460.0 900.0 460.0{lab=QN}
C {devices/lab_pin.sym} 880.0 460.0 0 0  {name=l40 sig_type=std_logic lab=QN }
N 1000.0 460.0 980.0 460.0{lab=Q}
C {devices/lab_pin.sym} 1000.0 460.0 2 0  {name=l41 sig_type=std_logic lab=Q }
N 960.0 420.0 940.0 420.0{lab=AVDD}
C {devices/lab_pin.sym} 960.0 420.0 2 0  {name=l42 sig_type=std_logic lab=AVDD }
N 960.0 500.0 940.0 500.0{lab=AVSS}
C {devices/lab_pin.sym} 960.0 500.0 2 0  {name=l43 sig_type=std_logic lab=AVSS }
