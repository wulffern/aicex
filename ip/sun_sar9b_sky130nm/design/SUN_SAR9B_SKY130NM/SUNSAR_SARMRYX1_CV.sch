v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} 0 0 0 0{name=p0 lab=CMP_OP}
C {devices/iopin.sym} 0 20 0 0{name=p1 lab=CMP_ON}
C {devices/iopin.sym} 0 40 0 0{name=p2 lab=EN}
C {devices/iopin.sym} 0 60 0 0{name=p3 lab=RST_N}
C {devices/iopin.sym} 0 80 0 0{name=p4 lab=ENO}
C {devices/iopin.sym} 0 100 0 0{name=p5 lab=CHL_OP}
C {devices/iopin.sym} 0 120 0 0{name=p6 lab=CHL_ON}
C {devices/iopin.sym} 0 140 0 0{name=p7 lab=AVDD}
C {devices/iopin.sym} 0 160 0 0{name=p8 lab=AVSS}
C {SUN_SAR9B_SKY130NM/SUNSAR_TAPCELLB_CV.sym} 400 0 0 0 {name=XXA0}
N 420.0 -20.0 400.0 -20.0{lab=AVDD}
C {devices/lab_pin.sym} 420.0 -20.0 2 0  {name=l0 sig_type=std_logic lab=AVDD }
N 420.0 20.0 400.0 20.0{lab=AVSS}
C {devices/lab_pin.sym} 420.0 20.0 2 0  {name=l1 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SAREMX1_CV.sym} 400 150.0 0 0 {name=XXA1}
N 360.0 150.0 380.0 150.0{lab=CMP_OP}
C {devices/lab_pin.sym} 360.0 150.0 0 0  {name=l2 sig_type=std_logic lab=CMP_OP }
N 360.0 170.0 380.0 170.0{lab=CMP_ON}
C {devices/lab_pin.sym} 360.0 170.0 0 0  {name=l3 sig_type=std_logic lab=CMP_ON }
N 360.0 190.0 380.0 190.0{lab=EN}
C {devices/lab_pin.sym} 360.0 190.0 0 0  {name=l4 sig_type=std_logic lab=EN }
N 360.0 210.0 380.0 210.0{lab=ENO}
C {devices/lab_pin.sym} 360.0 210.0 0 0  {name=l5 sig_type=std_logic lab=ENO }
N 360.0 230.0 380.0 230.0{lab=RST_N}
C {devices/lab_pin.sym} 360.0 230.0 0 0  {name=l6 sig_type=std_logic lab=RST_N }
N 360.0 250.0 380.0 250.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 250.0 0 0  {name=l7 sig_type=std_logic lab=AVDD }
N 360.0 270.0 380.0 270.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 270.0 0 0  {name=l8 sig_type=std_logic lab=AVSS }
N 360.0 290.0 380.0 290.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 290.0 0 0  {name=l9 sig_type=std_logic lab=AVDD }
N 360.0 310.0 380.0 310.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 310.0 0 0  {name=l10 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX1_CV.sym} 400 430.0 0 0 {name=XXA2}
N 380.0 430.0 400.0 430.0{lab=ENO}
C {devices/lab_pin.sym} 380.0 430.0 0 0  {name=l11 sig_type=std_logic lab=ENO }
N 500.0 430.0 480.0 430.0{lab=LCK_N}
C {devices/lab_pin.sym} 500.0 430.0 2 0  {name=l12 sig_type=std_logic lab=LCK_N }
N 470.0 390.0 450.0 390.0{lab=AVDD}
C {devices/lab_pin.sym} 470.0 390.0 2 0  {name=l13 sig_type=std_logic lab=AVDD }
N 470.0 470.0 450.0 470.0{lab=AVSS}
C {devices/lab_pin.sym} 470.0 470.0 2 0  {name=l14 sig_type=std_logic lab=AVSS }
N 410.0 390.0 430.0 390.0{lab=AVDD}
C {devices/lab_pin.sym} 410.0 390.0 0 0  {name=l15 sig_type=std_logic lab=AVDD }
N 410.0 470.0 430.0 470.0{lab=AVSS}
C {devices/lab_pin.sym} 410.0 470.0 0 0  {name=l16 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SARLTX1_CV.sym} 400 620.0 0 0 {name=XXA4}
N 360.0 620.0 380.0 620.0{lab=CMP_OP}
C {devices/lab_pin.sym} 360.0 620.0 0 0  {name=l17 sig_type=std_logic lab=CMP_OP }
N 360.0 640.0 380.0 640.0{lab=CHL_OP}
C {devices/lab_pin.sym} 360.0 640.0 0 0  {name=l18 sig_type=std_logic lab=CHL_OP }
N 360.0 660.0 380.0 660.0{lab=RST_N}
C {devices/lab_pin.sym} 360.0 660.0 0 0  {name=l19 sig_type=std_logic lab=RST_N }
N 360.0 680.0 380.0 680.0{lab=EN}
C {devices/lab_pin.sym} 360.0 680.0 0 0  {name=l20 sig_type=std_logic lab=EN }
N 360.0 700.0 380.0 700.0{lab=LCK_N}
C {devices/lab_pin.sym} 360.0 700.0 0 0  {name=l21 sig_type=std_logic lab=LCK_N }
N 360.0 720.0 380.0 720.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 720.0 0 0  {name=l22 sig_type=std_logic lab=AVDD }
N 360.0 740.0 380.0 740.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 740.0 0 0  {name=l23 sig_type=std_logic lab=AVSS }
N 360.0 760.0 380.0 760.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 760.0 0 0  {name=l24 sig_type=std_logic lab=AVDD }
N 360.0 780.0 380.0 780.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 780.0 0 0  {name=l25 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SARLTX1_CV.sym} 400 900.0 0 0 {name=XXA5}
N 360.0 900.0 380.0 900.0{lab=CMP_ON}
C {devices/lab_pin.sym} 360.0 900.0 0 0  {name=l26 sig_type=std_logic lab=CMP_ON }
N 360.0 920.0 380.0 920.0{lab=CHL_ON}
C {devices/lab_pin.sym} 360.0 920.0 0 0  {name=l27 sig_type=std_logic lab=CHL_ON }
N 360.0 940.0 380.0 940.0{lab=RST_N}
C {devices/lab_pin.sym} 360.0 940.0 0 0  {name=l28 sig_type=std_logic lab=RST_N }
N 360.0 960.0 380.0 960.0{lab=EN}
C {devices/lab_pin.sym} 360.0 960.0 0 0  {name=l29 sig_type=std_logic lab=EN }
N 360.0 980.0 380.0 980.0{lab=LCK_N}
C {devices/lab_pin.sym} 360.0 980.0 0 0  {name=l30 sig_type=std_logic lab=LCK_N }
N 360.0 1000.0 380.0 1000.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 1000.0 0 0  {name=l31 sig_type=std_logic lab=AVDD }
N 360.0 1020.0 380.0 1020.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 1020.0 0 0  {name=l32 sig_type=std_logic lab=AVSS }
N 360.0 1040.0 380.0 1040.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 1040.0 0 0  {name=l33 sig_type=std_logic lab=AVDD }
N 360.0 1060.0 380.0 1060.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 1060.0 0 0  {name=l34 sig_type=std_logic lab=AVSS }
