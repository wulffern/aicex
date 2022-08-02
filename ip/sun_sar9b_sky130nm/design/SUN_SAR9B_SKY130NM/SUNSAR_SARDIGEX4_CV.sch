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
C {devices/iopin.sym} 0 100 0 0{name=p5 lab=DONE}
C {devices/iopin.sym} 0 120 0 0{name=p6 lab=CP0}
C {devices/iopin.sym} 0 140 0 0{name=p7 lab=CP1}
C {devices/iopin.sym} 0 160 0 0{name=p8 lab=CN0}
C {devices/iopin.sym} 0 180 0 0{name=p9 lab=CN1}
C {devices/iopin.sym} 0 200 0 0{name=p10 lab=CEIN}
C {devices/iopin.sym} 0 220 0 0{name=p11 lab=CEO}
C {devices/iopin.sym} 0 240 0 0{name=p12 lab=CKS}
C {devices/iopin.sym} 0 260 0 0{name=p13 lab=VREF}
C {devices/iopin.sym} 0 280 0 0{name=p14 lab=AVDD}
C {devices/iopin.sym} 0 300 0 0{name=p15 lab=AVSS}
C {SUN_SAR9B_SKY130NM/SUNSAR_SARMRYX1_CV.sym} 400 0 0 0 {name=XXA1}
N 360.0 0.0 380.0 0.0{lab=CMP_OP}
C {devices/lab_pin.sym} 360.0 0.0 0 0  {name=l0 sig_type=std_logic lab=CMP_OP }
N 360.0 20.0 380.0 20.0{lab=CMP_ON}
C {devices/lab_pin.sym} 360.0 20.0 0 0  {name=l1 sig_type=std_logic lab=CMP_ON }
N 360.0 40.0 380.0 40.0{lab=EN}
C {devices/lab_pin.sym} 360.0 40.0 0 0  {name=l2 sig_type=std_logic lab=EN }
N 360.0 60.0 380.0 60.0{lab=RST_N}
C {devices/lab_pin.sym} 360.0 60.0 0 0  {name=l3 sig_type=std_logic lab=RST_N }
N 360.0 80.0 380.0 80.0{lab=ENO}
C {devices/lab_pin.sym} 360.0 80.0 0 0  {name=l4 sig_type=std_logic lab=ENO }
N 360.0 100.0 380.0 100.0{lab=CHL_OP}
C {devices/lab_pin.sym} 360.0 100.0 0 0  {name=l5 sig_type=std_logic lab=CHL_OP }
N 360.0 120.0 380.0 120.0{lab=CHL_ON}
C {devices/lab_pin.sym} 360.0 120.0 0 0  {name=l6 sig_type=std_logic lab=CHL_ON }
N 360.0 140.0 380.0 140.0{lab=AVDD}
C {devices/lab_pin.sym} 360.0 140.0 0 0  {name=l7 sig_type=std_logic lab=AVDD }
N 360.0 160.0 380.0 160.0{lab=AVSS}
C {devices/lab_pin.sym} 360.0 160.0 0 0  {name=l8 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SWX4_CV.sym} 400 280.0 0 0 {name=XXA2}
N 380.0 280.0 400.0 280.0{lab=CHL_ON}
C {devices/lab_pin.sym} 380.0 280.0 0 0  {name=l9 sig_type=std_logic lab=CHL_ON }
N 500.0 280.0 480.0 280.0{lab=CN1}
C {devices/lab_pin.sym} 500.0 280.0 2 0  {name=l10 sig_type=std_logic lab=CN1 }
N 410.0 240.0 430.0 240.0{lab=VREF}
C {devices/lab_pin.sym} 410.0 240.0 0 0  {name=l11 sig_type=std_logic lab=VREF }
N 410.0 320.0 430.0 320.0{lab=AVSS}
C {devices/lab_pin.sym} 410.0 320.0 0 0  {name=l12 sig_type=std_logic lab=AVSS }
N 470.0 240.0 450.0 240.0{lab=AVDD}
C {devices/lab_pin.sym} 470.0 240.0 2 0  {name=l13 sig_type=std_logic lab=AVDD }
N 470.0 320.0 450.0 320.0{lab=AVSS}
C {devices/lab_pin.sym} 470.0 320.0 2 0  {name=l14 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SWX4_CV.sym} 400 470.0 0 0 {name=XXA3}
N 380.0 470.0 400.0 470.0{lab=CN1}
C {devices/lab_pin.sym} 380.0 470.0 0 0  {name=l15 sig_type=std_logic lab=CN1 }
N 500.0 470.0 480.0 470.0{lab=CP1}
C {devices/lab_pin.sym} 500.0 470.0 2 0  {name=l16 sig_type=std_logic lab=CP1 }
N 410.0 430.0 430.0 430.0{lab=VREF}
C {devices/lab_pin.sym} 410.0 430.0 0 0  {name=l17 sig_type=std_logic lab=VREF }
N 410.0 510.0 430.0 510.0{lab=AVSS}
C {devices/lab_pin.sym} 410.0 510.0 0 0  {name=l18 sig_type=std_logic lab=AVSS }
N 470.0 430.0 450.0 430.0{lab=AVDD}
C {devices/lab_pin.sym} 470.0 430.0 2 0  {name=l19 sig_type=std_logic lab=AVDD }
N 470.0 510.0 450.0 510.0{lab=AVSS}
C {devices/lab_pin.sym} 470.0 510.0 2 0  {name=l20 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SWX4_CV.sym} 400 660.0 0 0 {name=XXA4}
N 380.0 660.0 400.0 660.0{lab=CHL_OP}
C {devices/lab_pin.sym} 380.0 660.0 0 0  {name=l21 sig_type=std_logic lab=CHL_OP }
N 500.0 660.0 480.0 660.0{lab=CP0}
C {devices/lab_pin.sym} 500.0 660.0 2 0  {name=l22 sig_type=std_logic lab=CP0 }
N 410.0 620.0 430.0 620.0{lab=VREF}
C {devices/lab_pin.sym} 410.0 620.0 0 0  {name=l23 sig_type=std_logic lab=VREF }
N 410.0 700.0 430.0 700.0{lab=AVSS}
C {devices/lab_pin.sym} 410.0 700.0 0 0  {name=l24 sig_type=std_logic lab=AVSS }
N 470.0 620.0 450.0 620.0{lab=AVDD}
C {devices/lab_pin.sym} 470.0 620.0 2 0  {name=l25 sig_type=std_logic lab=AVDD }
N 470.0 700.0 450.0 700.0{lab=AVSS}
C {devices/lab_pin.sym} 470.0 700.0 2 0  {name=l26 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SWX4_CV.sym} 400 850.0 0 0 {name=XXA5}
N 380.0 850.0 400.0 850.0{lab=CP0}
C {devices/lab_pin.sym} 380.0 850.0 0 0  {name=l27 sig_type=std_logic lab=CP0 }
N 500.0 850.0 480.0 850.0{lab=CN0}
C {devices/lab_pin.sym} 500.0 850.0 2 0  {name=l28 sig_type=std_logic lab=CN0 }
N 410.0 810.0 430.0 810.0{lab=VREF}
C {devices/lab_pin.sym} 410.0 810.0 0 0  {name=l29 sig_type=std_logic lab=VREF }
N 410.0 890.0 430.0 890.0{lab=AVSS}
C {devices/lab_pin.sym} 410.0 890.0 0 0  {name=l30 sig_type=std_logic lab=AVSS }
N 470.0 810.0 450.0 810.0{lab=AVDD}
C {devices/lab_pin.sym} 470.0 810.0 2 0  {name=l31 sig_type=std_logic lab=AVDD }
N 470.0 890.0 450.0 890.0{lab=AVSS}
C {devices/lab_pin.sym} 470.0 890.0 2 0  {name=l32 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_SARCEX1_CV.sym} 900 0 0 0 {name=XXA6}
N 860.0 0.0 880.0 0.0{lab=CN0}
C {devices/lab_pin.sym} 860.0 0.0 0 0  {name=l33 sig_type=std_logic lab=CN0 }
N 860.0 20.0 880.0 20.0{lab=CP1}
C {devices/lab_pin.sym} 860.0 20.0 0 0  {name=l34 sig_type=std_logic lab=CP1 }
N 860.0 40.0 880.0 40.0{lab=CE}
C {devices/lab_pin.sym} 860.0 40.0 0 0  {name=l35 sig_type=std_logic lab=CE }
N 860.0 60.0 880.0 60.0{lab=CKS}
C {devices/lab_pin.sym} 860.0 60.0 0 0  {name=l36 sig_type=std_logic lab=CKS }
N 860.0 80.0 880.0 80.0{lab=AVDD}
C {devices/lab_pin.sym} 860.0 80.0 0 0  {name=l37 sig_type=std_logic lab=AVDD }
N 860.0 100.0 880.0 100.0{lab=AVSS}
C {devices/lab_pin.sym} 860.0 100.0 0 0  {name=l38 sig_type=std_logic lab=AVSS }
N 860.0 120.0 880.0 120.0{lab=AVDD}
C {devices/lab_pin.sym} 860.0 120.0 0 0  {name=l39 sig_type=std_logic lab=AVDD }
N 860.0 140.0 880.0 140.0{lab=AVSS}
C {devices/lab_pin.sym} 860.0 140.0 0 0  {name=l40 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX1_CV.sym} 900 260.0 0 0 {name=XXA7}
N 880.0 260.0 900.0 260.0{lab=ENO}
C {devices/lab_pin.sym} 880.0 260.0 0 0  {name=l41 sig_type=std_logic lab=ENO }
N 1000.0 260.0 980.0 260.0{lab=ENO_N}
C {devices/lab_pin.sym} 1000.0 260.0 2 0  {name=l42 sig_type=std_logic lab=ENO_N }
N 970.0 220.0 950.0 220.0{lab=AVDD}
C {devices/lab_pin.sym} 970.0 220.0 2 0  {name=l43 sig_type=std_logic lab=AVDD }
N 970.0 300.0 950.0 300.0{lab=AVSS}
C {devices/lab_pin.sym} 970.0 300.0 2 0  {name=l44 sig_type=std_logic lab=AVSS }
N 910.0 220.0 930.0 220.0{lab=AVDD}
C {devices/lab_pin.sym} 910.0 220.0 0 0  {name=l45 sig_type=std_logic lab=AVDD }
N 910.0 300.0 930.0 300.0{lab=AVSS}
C {devices/lab_pin.sym} 910.0 300.0 0 0  {name=l46 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX1_CV.sym} 900 450.0 0 0 {name=XXA8}
N 880.0 450.0 900.0 450.0{lab=ENO_N}
C {devices/lab_pin.sym} 880.0 450.0 0 0  {name=l47 sig_type=std_logic lab=ENO_N }
N 1000.0 450.0 980.0 450.0{lab=DONE}
C {devices/lab_pin.sym} 1000.0 450.0 2 0  {name=l48 sig_type=std_logic lab=DONE }
N 970.0 410.0 950.0 410.0{lab=AVDD}
C {devices/lab_pin.sym} 970.0 410.0 2 0  {name=l49 sig_type=std_logic lab=AVDD }
N 970.0 490.0 950.0 490.0{lab=AVSS}
C {devices/lab_pin.sym} 970.0 490.0 2 0  {name=l50 sig_type=std_logic lab=AVSS }
N 910.0 410.0 930.0 410.0{lab=AVDD}
C {devices/lab_pin.sym} 910.0 410.0 0 0  {name=l51 sig_type=std_logic lab=AVDD }
N 910.0 490.0 930.0 490.0{lab=AVSS}
C {devices/lab_pin.sym} 910.0 490.0 0 0  {name=l52 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NDX1_CV.sym} 900 640.0 0 0 {name=XXA9}
N 880.0 620.0 900.0 620.0{lab=ENO_N}
C {devices/lab_pin.sym} 880.0 620.0 0 0  {name=l53 sig_type=std_logic lab=ENO_N }
N 880.0 640.0 900.0 640.0{lab=CE}
C {devices/lab_pin.sym} 880.0 640.0 0 0  {name=l54 sig_type=std_logic lab=CE }
N 1010.0 630.0 990.0 630.0{lab=CE1}
C {devices/lab_pin.sym} 1010.0 630.0 2 0  {name=l55 sig_type=std_logic lab=CE1 }
N 980.0 590.0 960.0 590.0{lab=AVDD}
C {devices/lab_pin.sym} 980.0 590.0 2 0  {name=l56 sig_type=std_logic lab=AVDD }
N 980.0 670.0 960.0 670.0{lab=AVSS}
C {devices/lab_pin.sym} 980.0 670.0 2 0  {name=l57 sig_type=std_logic lab=AVSS }
N 920.0 590.0 940.0 590.0{lab=AVDD}
C {devices/lab_pin.sym} 920.0 590.0 0 0  {name=l58 sig_type=std_logic lab=AVDD }
N 920.0 670.0 940.0 670.0{lab=AVSS}
C {devices/lab_pin.sym} 920.0 670.0 0 0  {name=l59 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX1_CV.sym} 900 830.0 0 0 {name=XXA10}
N 880.0 830.0 900.0 830.0{lab=CE1}
C {devices/lab_pin.sym} 880.0 830.0 0 0  {name=l60 sig_type=std_logic lab=CE1 }
N 1000.0 830.0 980.0 830.0{lab=CE1_N}
C {devices/lab_pin.sym} 1000.0 830.0 2 0  {name=l61 sig_type=std_logic lab=CE1_N }
N 970.0 790.0 950.0 790.0{lab=AVDD}
C {devices/lab_pin.sym} 970.0 790.0 2 0  {name=l62 sig_type=std_logic lab=AVDD }
N 970.0 870.0 950.0 870.0{lab=AVSS}
C {devices/lab_pin.sym} 970.0 870.0 2 0  {name=l63 sig_type=std_logic lab=AVSS }
N 910.0 790.0 930.0 790.0{lab=AVDD}
C {devices/lab_pin.sym} 910.0 790.0 0 0  {name=l64 sig_type=std_logic lab=AVDD }
N 910.0 870.0 930.0 870.0{lab=AVSS}
C {devices/lab_pin.sym} 910.0 870.0 0 0  {name=l65 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_NRX1_CV.sym} 1400 0 0 0 {name=XXA11}
N 1380.0 -20.0 1400.0 -20.0{lab=CE1_N}
C {devices/lab_pin.sym} 1380.0 -20.0 0 0  {name=l66 sig_type=std_logic lab=CE1_N }
N 1380.0 0.0 1400.0 0.0{lab=CEIN}
C {devices/lab_pin.sym} 1380.0 0.0 0 0  {name=l67 sig_type=std_logic lab=CEIN }
N 1510.0 -10.0 1490.0 -10.0{lab=CEO1}
C {devices/lab_pin.sym} 1510.0 -10.0 2 0  {name=l68 sig_type=std_logic lab=CEO1 }
N 1480.0 -50.0 1460.0 -50.0{lab=AVDD}
C {devices/lab_pin.sym} 1480.0 -50.0 2 0  {name=l69 sig_type=std_logic lab=AVDD }
N 1480.0 30.0 1460.0 30.0{lab=AVSS}
C {devices/lab_pin.sym} 1480.0 30.0 2 0  {name=l70 sig_type=std_logic lab=AVSS }
N 1420.0 -50.0 1440.0 -50.0{lab=AVDD}
C {devices/lab_pin.sym} 1420.0 -50.0 0 0  {name=l71 sig_type=std_logic lab=AVDD }
N 1420.0 30.0 1440.0 30.0{lab=AVSS}
C {devices/lab_pin.sym} 1420.0 30.0 0 0  {name=l72 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_IVX1_CV.sym} 1400 190.0 0 0 {name=XXA12}
N 1380.0 190.0 1400.0 190.0{lab=CEO1}
C {devices/lab_pin.sym} 1380.0 190.0 0 0  {name=l73 sig_type=std_logic lab=CEO1 }
N 1500.0 190.0 1480.0 190.0{lab=CEO}
C {devices/lab_pin.sym} 1500.0 190.0 2 0  {name=l74 sig_type=std_logic lab=CEO }
N 1470.0 150.0 1450.0 150.0{lab=AVDD}
C {devices/lab_pin.sym} 1470.0 150.0 2 0  {name=l75 sig_type=std_logic lab=AVDD }
N 1470.0 230.0 1450.0 230.0{lab=AVSS}
C {devices/lab_pin.sym} 1470.0 230.0 2 0  {name=l76 sig_type=std_logic lab=AVSS }
N 1410.0 150.0 1430.0 150.0{lab=AVDD}
C {devices/lab_pin.sym} 1410.0 150.0 0 0  {name=l77 sig_type=std_logic lab=AVDD }
N 1410.0 230.0 1430.0 230.0{lab=AVSS}
C {devices/lab_pin.sym} 1410.0 230.0 0 0  {name=l78 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SKY130NM/SUNSAR_TAPCELLB_CV.sym} 1400 380.0 0 0 {name=XXA13}
N 1420.0 360.0 1400.0 360.0{lab=AVDD}
C {devices/lab_pin.sym} 1420.0 360.0 2 0  {name=l79 sig_type=std_logic lab=AVDD }
N 1420.0 400.0 1400.0 400.0{lab=AVSS}
C {devices/lab_pin.sym} 1420.0 400.0 2 0  {name=l80 sig_type=std_logic lab=AVSS }
