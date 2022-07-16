v {xschem version=3.0.0 file_version=1.2 }
C {devices/iopin.sym} 0 0 0 0{name=p0 lab=SAR_IP}
C {devices/iopin.sym} 0 20 0 0{name=p1 lab=SAR_IN}
C {devices/iopin.sym} 0 40 0 0{name=p2 lab=SARN}
C {devices/iopin.sym} 0 60 0 0{name=p3 lab=SARP}
C {devices/iopin.sym} 0 80 0 0{name=p4 lab=DONE}
C {devices/iopin.sym} 0 100 0 0{name=p5 lab=D_8}
C {devices/iopin.sym} 0 120 0 0{name=p6 lab=D_7}
C {devices/iopin.sym} 0 140 0 0{name=p7 lab=D_6}
C {devices/iopin.sym} 0 160 0 0{name=p8 lab=D_5}
C {devices/iopin.sym} 0 180 0 0{name=p9 lab=D_4}
C {devices/iopin.sym} 0 200 0 0{name=p10 lab=D_3}
C {devices/iopin.sym} 0 220 0 0{name=p11 lab=D_2}
C {devices/iopin.sym} 0 240 0 0{name=p12 lab=D_1}
C {devices/iopin.sym} 0 260 0 0{name=p13 lab=D_0}
C {devices/iopin.sym} 0 280 0 0{name=p14 lab=EN}
C {devices/iopin.sym} 0 300 0 0{name=p15 lab=CK_SAMPLE}
C {devices/iopin.sym} 0 320 0 0{name=p16 lab=CK_SAMPLE_BSSW}
C {devices/iopin.sym} 0 340 0 0{name=p17 lab=VREF}
C {devices/iopin.sym} 0 360 0 0{name=p18 lab=AVDD}
C {devices/iopin.sym} 0 380 0 0{name=p19 lab=AVSS}
C {SUN_SAR9B_SK130NM/SARBSSW_CV.sym} 400 0 0 0 {name=XB1}
N 340.0 0.0 380.0 0.0{lab=SAR_IP}
C {devices/lab_pin.sym} 340.0 0.0 0 0  {name=l0 sig_type=std_logic lab=SAR_IP }
N 340.0 20.0 380.0 20.0{lab=CK_SAMPLE_BSSW}
C {devices/lab_pin.sym} 340.0 20.0 0 0  {name=l1 sig_type=std_logic lab=CK_SAMPLE_BSSW }
N 340.0 40.0 380.0 40.0{lab=NCCA}
C {devices/lab_pin.sym} 340.0 40.0 0 0  {name=l2 sig_type=std_logic lab=NCCA }
N 340.0 60.0 380.0 60.0{lab=CEIN}
C {devices/lab_pin.sym} 340.0 60.0 0 0  {name=l3 sig_type=std_logic lab=CEIN }
N 340.0 80.0 380.0 80.0{lab=SARP}
C {devices/lab_pin.sym} 340.0 80.0 0 0  {name=l4 sig_type=std_logic lab=SARP }
N 340.0 100.0 380.0 100.0{lab=SARN}
C {devices/lab_pin.sym} 340.0 100.0 0 0  {name=l5 sig_type=std_logic lab=SARN }
N 340.0 120.0 380.0 120.0{lab=AVDD}
C {devices/lab_pin.sym} 340.0 120.0 0 0  {name=l6 sig_type=std_logic lab=AVDD }
N 340.0 140.0 380.0 140.0{lab=AVSS}
C {devices/lab_pin.sym} 340.0 140.0 0 0  {name=l7 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARBSSW_CV.sym} 400 180 0 0 {name=XB2}
N 340.0 180.0 380.0 180.0{lab=SAR_IN}
C {devices/lab_pin.sym} 340.0 180.0 0 0  {name=l8 sig_type=std_logic lab=SAR_IN }
N 340.0 200.0 380.0 200.0{lab=CK_SAMPLE_BSSW}
C {devices/lab_pin.sym} 340.0 200.0 0 0  {name=l9 sig_type=std_logic lab=CK_SAMPLE_BSSW }
N 340.0 220.0 380.0 220.0{lab=NCCB}
C {devices/lab_pin.sym} 340.0 220.0 0 0  {name=l10 sig_type=std_logic lab=NCCB }
N 340.0 240.0 380.0 240.0{lab=CEIN}
C {devices/lab_pin.sym} 340.0 240.0 0 0  {name=l11 sig_type=std_logic lab=CEIN }
N 340.0 260.0 380.0 260.0{lab=SARN}
C {devices/lab_pin.sym} 340.0 260.0 0 0  {name=l12 sig_type=std_logic lab=SARN }
N 340.0 280.0 380.0 280.0{lab=SARP}
C {devices/lab_pin.sym} 340.0 280.0 0 0  {name=l13 sig_type=std_logic lab=SARP }
N 340.0 300.0 380.0 300.0{lab=AVDD}
C {devices/lab_pin.sym} 340.0 300.0 0 0  {name=l14 sig_type=std_logic lab=AVDD }
N 340.0 320.0 380.0 320.0{lab=AVSS}
C {devices/lab_pin.sym} 340.0 320.0 0 0  {name=l15 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/CDAC8_CV.sym} 400 360 0 0 {name=XDAC1}
N 340.0 360.0 380.0 360.0{lab=CP_11}
C {devices/lab_pin.sym} 340.0 360.0 0 0  {name=l16 sig_type=std_logic lab=CP_11 }
N 340.0 380.0 380.0 380.0{lab=CP_10}
C {devices/lab_pin.sym} 340.0 380.0 0 0  {name=l17 sig_type=std_logic lab=CP_10 }
N 340.0 400.0 380.0 400.0{lab=D_7}
C {devices/lab_pin.sym} 340.0 400.0 0 0  {name=l18 sig_type=std_logic lab=D_7 }
N 340.0 420.0 380.0 420.0{lab=CP_8}
C {devices/lab_pin.sym} 340.0 420.0 0 0  {name=l19 sig_type=std_logic lab=CP_8 }
N 340.0 440.0 380.0 440.0{lab=D_6}
C {devices/lab_pin.sym} 340.0 440.0 0 0  {name=l20 sig_type=std_logic lab=D_6 }
N 340.0 460.0 380.0 460.0{lab=CP_6}
C {devices/lab_pin.sym} 340.0 460.0 0 0  {name=l21 sig_type=std_logic lab=CP_6 }
N 340.0 480.0 380.0 480.0{lab=D_5}
C {devices/lab_pin.sym} 340.0 480.0 0 0  {name=l22 sig_type=std_logic lab=D_5 }
N 340.0 500.0 380.0 500.0{lab=CP_4}
C {devices/lab_pin.sym} 340.0 500.0 0 0  {name=l23 sig_type=std_logic lab=CP_4 }
N 340.0 520.0 380.0 520.0{lab=D_4}
C {devices/lab_pin.sym} 340.0 520.0 0 0  {name=l24 sig_type=std_logic lab=D_4 }
N 340.0 540.0 380.0 540.0{lab=D_3}
C {devices/lab_pin.sym} 340.0 540.0 0 0  {name=l25 sig_type=std_logic lab=D_3 }
N 340.0 560.0 380.0 560.0{lab=D_2}
C {devices/lab_pin.sym} 340.0 560.0 0 0  {name=l26 sig_type=std_logic lab=D_2 }
N 340.0 580.0 380.0 580.0{lab=D_1}
C {devices/lab_pin.sym} 340.0 580.0 0 0  {name=l27 sig_type=std_logic lab=D_1 }
N 340.0 600.0 380.0 600.0{lab=SARP}
C {devices/lab_pin.sym} 340.0 600.0 0 0  {name=l28 sig_type=std_logic lab=SARP }
N 340.0 620.0 380.0 620.0{lab=AVSS}
C {devices/lab_pin.sym} 340.0 620.0 0 0  {name=l29 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/CDAC8_CV.sym} 400 660 0 0 {name=XDAC2}
N 340.0 660.0 380.0 660.0{lab=D_8}
C {devices/lab_pin.sym} 340.0 660.0 0 0  {name=l30 sig_type=std_logic lab=D_8 }
N 340.0 680.0 380.0 680.0{lab=CN_10}
C {devices/lab_pin.sym} 340.0 680.0 0 0  {name=l31 sig_type=std_logic lab=CN_10 }
N 340.0 700.0 380.0 700.0{lab=CN_9}
C {devices/lab_pin.sym} 340.0 700.0 0 0  {name=l32 sig_type=std_logic lab=CN_9 }
N 340.0 720.0 380.0 720.0{lab=CN_8}
C {devices/lab_pin.sym} 340.0 720.0 0 0  {name=l33 sig_type=std_logic lab=CN_8 }
N 340.0 740.0 380.0 740.0{lab=CN_7}
C {devices/lab_pin.sym} 340.0 740.0 0 0  {name=l34 sig_type=std_logic lab=CN_7 }
N 340.0 760.0 380.0 760.0{lab=CN_6}
C {devices/lab_pin.sym} 340.0 760.0 0 0  {name=l35 sig_type=std_logic lab=CN_6 }
N 340.0 780.0 380.0 780.0{lab=CN_5}
C {devices/lab_pin.sym} 340.0 780.0 0 0  {name=l36 sig_type=std_logic lab=CN_5 }
N 340.0 800.0 380.0 800.0{lab=CN_4}
C {devices/lab_pin.sym} 340.0 800.0 0 0  {name=l37 sig_type=std_logic lab=CN_4 }
N 340.0 820.0 380.0 820.0{lab=CN_3}
C {devices/lab_pin.sym} 340.0 820.0 0 0  {name=l38 sig_type=std_logic lab=CN_3 }
N 340.0 840.0 380.0 840.0{lab=CN_2}
C {devices/lab_pin.sym} 340.0 840.0 0 0  {name=l39 sig_type=std_logic lab=CN_2 }
N 340.0 860.0 380.0 860.0{lab=CN_1}
C {devices/lab_pin.sym} 340.0 860.0 0 0  {name=l40 sig_type=std_logic lab=CN_1 }
N 340.0 880.0 380.0 880.0{lab=CN_0}
C {devices/lab_pin.sym} 340.0 880.0 0 0  {name=l41 sig_type=std_logic lab=CN_0 }
N 340.0 900.0 380.0 900.0{lab=SARN}
C {devices/lab_pin.sym} 340.0 900.0 0 0  {name=l42 sig_type=std_logic lab=SARN }
N 340.0 920.0 380.0 920.0{lab=AVSS}
C {devices/lab_pin.sym} 340.0 920.0 0 0  {name=l43 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARDIGEX4_CV.sym} 400 960 0 0 {name=XA0}
N 340.0 960.0 380.0 960.0{lab=CMP_OP}
C {devices/lab_pin.sym} 340.0 960.0 0 0  {name=l44 sig_type=std_logic lab=CMP_OP }
N 340.0 980.0 380.0 980.0{lab=CMP_ON}
C {devices/lab_pin.sym} 340.0 980.0 0 0  {name=l45 sig_type=std_logic lab=CMP_ON }
N 340.0 1000.0 380.0 1000.0{lab=EN}
C {devices/lab_pin.sym} 340.0 1000.0 0 0  {name=l46 sig_type=std_logic lab=EN }
N 340.0 1020.0 380.0 1020.0{lab=EN}
C {devices/lab_pin.sym} 340.0 1020.0 0 0  {name=l47 sig_type=std_logic lab=EN }
N 340.0 1040.0 380.0 1040.0{lab=ENO0}
C {devices/lab_pin.sym} 340.0 1040.0 0 0  {name=l48 sig_type=std_logic lab=ENO0 }
N 340.0 1060.0 380.0 1060.0{lab=DONE0}
C {devices/lab_pin.sym} 340.0 1060.0 0 0  {name=l49 sig_type=std_logic lab=DONE0 }
N 340.0 1080.0 380.0 1080.0{lab=CP_10}
C {devices/lab_pin.sym} 340.0 1080.0 0 0  {name=l50 sig_type=std_logic lab=CP_10 }
N 340.0 1100.0 380.0 1100.0{lab=CP_11}
C {devices/lab_pin.sym} 340.0 1100.0 0 0  {name=l51 sig_type=std_logic lab=CP_11 }
N 340.0 1120.0 380.0 1120.0{lab=CN_10}
C {devices/lab_pin.sym} 340.0 1120.0 0 0  {name=l52 sig_type=std_logic lab=CN_10 }
N 340.0 1140.0 380.0 1140.0{lab=D_8}
C {devices/lab_pin.sym} 340.0 1140.0 0 0  {name=l53 sig_type=std_logic lab=D_8 }
N 340.0 1160.0 380.0 1160.0{lab=CEIN}
C {devices/lab_pin.sym} 340.0 1160.0 0 0  {name=l54 sig_type=std_logic lab=CEIN }
N 340.0 1180.0 380.0 1180.0{lab=CEO0}
C {devices/lab_pin.sym} 340.0 1180.0 0 0  {name=l55 sig_type=std_logic lab=CEO0 }
N 340.0 1200.0 380.0 1200.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 340.0 1200.0 0 0  {name=l56 sig_type=std_logic lab=CK_SAMPLE }
N 340.0 1220.0 380.0 1220.0{lab=VREF}
C {devices/lab_pin.sym} 340.0 1220.0 0 0  {name=l57 sig_type=std_logic lab=VREF }
N 340.0 1240.0 380.0 1240.0{lab=AVDD}
C {devices/lab_pin.sym} 340.0 1240.0 0 0  {name=l58 sig_type=std_logic lab=AVDD }
N 340.0 1260.0 380.0 1260.0{lab=AVSS}
C {devices/lab_pin.sym} 340.0 1260.0 0 0  {name=l59 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARDIGEX4_CV.sym} 800 0 0 0 {name=XA1}
N 740.0 0.0 780.0 0.0{lab=CMP_OP}
C {devices/lab_pin.sym} 740.0 0.0 0 0  {name=l60 sig_type=std_logic lab=CMP_OP }
N 740.0 20.0 780.0 20.0{lab=CMP_ON}
C {devices/lab_pin.sym} 740.0 20.0 0 0  {name=l61 sig_type=std_logic lab=CMP_ON }
N 740.0 40.0 780.0 40.0{lab=ENO0}
C {devices/lab_pin.sym} 740.0 40.0 0 0  {name=l62 sig_type=std_logic lab=ENO0 }
N 740.0 60.0 780.0 60.0{lab=EN}
C {devices/lab_pin.sym} 740.0 60.0 0 0  {name=l63 sig_type=std_logic lab=EN }
N 740.0 80.0 780.0 80.0{lab=ENO1}
C {devices/lab_pin.sym} 740.0 80.0 0 0  {name=l64 sig_type=std_logic lab=ENO1 }
N 740.0 100.0 780.0 100.0{lab=DONE1}
C {devices/lab_pin.sym} 740.0 100.0 0 0  {name=l65 sig_type=std_logic lab=DONE1 }
N 740.0 120.0 780.0 120.0{lab=CP_8}
C {devices/lab_pin.sym} 740.0 120.0 0 0  {name=l66 sig_type=std_logic lab=CP_8 }
N 740.0 140.0 780.0 140.0{lab=D_7}
C {devices/lab_pin.sym} 740.0 140.0 0 0  {name=l67 sig_type=std_logic lab=D_7 }
N 740.0 160.0 780.0 160.0{lab=CN_8}
C {devices/lab_pin.sym} 740.0 160.0 0 0  {name=l68 sig_type=std_logic lab=CN_8 }
N 740.0 180.0 780.0 180.0{lab=CN_9}
C {devices/lab_pin.sym} 740.0 180.0 0 0  {name=l69 sig_type=std_logic lab=CN_9 }
N 740.0 200.0 780.0 200.0{lab=CEO0}
C {devices/lab_pin.sym} 740.0 200.0 0 0  {name=l70 sig_type=std_logic lab=CEO0 }
N 740.0 220.0 780.0 220.0{lab=CEO1}
C {devices/lab_pin.sym} 740.0 220.0 0 0  {name=l71 sig_type=std_logic lab=CEO1 }
N 740.0 240.0 780.0 240.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 740.0 240.0 0 0  {name=l72 sig_type=std_logic lab=CK_SAMPLE }
N 740.0 260.0 780.0 260.0{lab=VREF}
C {devices/lab_pin.sym} 740.0 260.0 0 0  {name=l73 sig_type=std_logic lab=VREF }
N 740.0 280.0 780.0 280.0{lab=AVDD}
C {devices/lab_pin.sym} 740.0 280.0 0 0  {name=l74 sig_type=std_logic lab=AVDD }
N 740.0 300.0 780.0 300.0{lab=AVSS}
C {devices/lab_pin.sym} 740.0 300.0 0 0  {name=l75 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARDIGEX4_CV.sym} 800 340 0 0 {name=XA2}
N 740.0 340.0 780.0 340.0{lab=CMP_OP}
C {devices/lab_pin.sym} 740.0 340.0 0 0  {name=l76 sig_type=std_logic lab=CMP_OP }
N 740.0 360.0 780.0 360.0{lab=CMP_ON}
C {devices/lab_pin.sym} 740.0 360.0 0 0  {name=l77 sig_type=std_logic lab=CMP_ON }
N 740.0 380.0 780.0 380.0{lab=ENO1}
C {devices/lab_pin.sym} 740.0 380.0 0 0  {name=l78 sig_type=std_logic lab=ENO1 }
N 740.0 400.0 780.0 400.0{lab=EN}
C {devices/lab_pin.sym} 740.0 400.0 0 0  {name=l79 sig_type=std_logic lab=EN }
N 740.0 420.0 780.0 420.0{lab=ENO2}
C {devices/lab_pin.sym} 740.0 420.0 0 0  {name=l80 sig_type=std_logic lab=ENO2 }
N 740.0 440.0 780.0 440.0{lab=DONE2}
C {devices/lab_pin.sym} 740.0 440.0 0 0  {name=l81 sig_type=std_logic lab=DONE2 }
N 740.0 460.0 780.0 460.0{lab=CP_6}
C {devices/lab_pin.sym} 740.0 460.0 0 0  {name=l82 sig_type=std_logic lab=CP_6 }
N 740.0 480.0 780.0 480.0{lab=D_6}
C {devices/lab_pin.sym} 740.0 480.0 0 0  {name=l83 sig_type=std_logic lab=D_6 }
N 740.0 500.0 780.0 500.0{lab=CN_6}
C {devices/lab_pin.sym} 740.0 500.0 0 0  {name=l84 sig_type=std_logic lab=CN_6 }
N 740.0 520.0 780.0 520.0{lab=CN_7}
C {devices/lab_pin.sym} 740.0 520.0 0 0  {name=l85 sig_type=std_logic lab=CN_7 }
N 740.0 540.0 780.0 540.0{lab=CEO1}
C {devices/lab_pin.sym} 740.0 540.0 0 0  {name=l86 sig_type=std_logic lab=CEO1 }
N 740.0 560.0 780.0 560.0{lab=CEO2}
C {devices/lab_pin.sym} 740.0 560.0 0 0  {name=l87 sig_type=std_logic lab=CEO2 }
N 740.0 580.0 780.0 580.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 740.0 580.0 0 0  {name=l88 sig_type=std_logic lab=CK_SAMPLE }
N 740.0 600.0 780.0 600.0{lab=VREF}
C {devices/lab_pin.sym} 740.0 600.0 0 0  {name=l89 sig_type=std_logic lab=VREF }
N 740.0 620.0 780.0 620.0{lab=AVDD}
C {devices/lab_pin.sym} 740.0 620.0 0 0  {name=l90 sig_type=std_logic lab=AVDD }
N 740.0 640.0 780.0 640.0{lab=AVSS}
C {devices/lab_pin.sym} 740.0 640.0 0 0  {name=l91 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARDIGEX4_CV.sym} 800 680 0 0 {name=XA3}
N 740.0 680.0 780.0 680.0{lab=CMP_OP}
C {devices/lab_pin.sym} 740.0 680.0 0 0  {name=l92 sig_type=std_logic lab=CMP_OP }
N 740.0 700.0 780.0 700.0{lab=CMP_ON}
C {devices/lab_pin.sym} 740.0 700.0 0 0  {name=l93 sig_type=std_logic lab=CMP_ON }
N 740.0 720.0 780.0 720.0{lab=ENO2}
C {devices/lab_pin.sym} 740.0 720.0 0 0  {name=l94 sig_type=std_logic lab=ENO2 }
N 740.0 740.0 780.0 740.0{lab=EN}
C {devices/lab_pin.sym} 740.0 740.0 0 0  {name=l95 sig_type=std_logic lab=EN }
N 740.0 760.0 780.0 760.0{lab=ENO3}
C {devices/lab_pin.sym} 740.0 760.0 0 0  {name=l96 sig_type=std_logic lab=ENO3 }
N 740.0 780.0 780.0 780.0{lab=DONE3}
C {devices/lab_pin.sym} 740.0 780.0 0 0  {name=l97 sig_type=std_logic lab=DONE3 }
N 740.0 800.0 780.0 800.0{lab=CP_4}
C {devices/lab_pin.sym} 740.0 800.0 0 0  {name=l98 sig_type=std_logic lab=CP_4 }
N 740.0 820.0 780.0 820.0{lab=D_5}
C {devices/lab_pin.sym} 740.0 820.0 0 0  {name=l99 sig_type=std_logic lab=D_5 }
N 740.0 840.0 780.0 840.0{lab=CN_4}
C {devices/lab_pin.sym} 740.0 840.0 0 0  {name=l100 sig_type=std_logic lab=CN_4 }
N 740.0 860.0 780.0 860.0{lab=CN_5}
C {devices/lab_pin.sym} 740.0 860.0 0 0  {name=l101 sig_type=std_logic lab=CN_5 }
N 740.0 880.0 780.0 880.0{lab=CEO2}
C {devices/lab_pin.sym} 740.0 880.0 0 0  {name=l102 sig_type=std_logic lab=CEO2 }
N 740.0 900.0 780.0 900.0{lab=CEO3}
C {devices/lab_pin.sym} 740.0 900.0 0 0  {name=l103 sig_type=std_logic lab=CEO3 }
N 740.0 920.0 780.0 920.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 740.0 920.0 0 0  {name=l104 sig_type=std_logic lab=CK_SAMPLE }
N 740.0 940.0 780.0 940.0{lab=VREF}
C {devices/lab_pin.sym} 740.0 940.0 0 0  {name=l105 sig_type=std_logic lab=VREF }
N 740.0 960.0 780.0 960.0{lab=AVDD}
C {devices/lab_pin.sym} 740.0 960.0 0 0  {name=l106 sig_type=std_logic lab=AVDD }
N 740.0 980.0 780.0 980.0{lab=AVSS}
C {devices/lab_pin.sym} 740.0 980.0 0 0  {name=l107 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARDIGEX4_CV.sym} 1200 0 0 0 {name=XA4}
N 1140.0 0.0 1180.0 0.0{lab=CMP_OP}
C {devices/lab_pin.sym} 1140.0 0.0 0 0  {name=l108 sig_type=std_logic lab=CMP_OP }
N 1140.0 20.0 1180.0 20.0{lab=CMP_ON}
C {devices/lab_pin.sym} 1140.0 20.0 0 0  {name=l109 sig_type=std_logic lab=CMP_ON }
N 1140.0 40.0 1180.0 40.0{lab=ENO3}
C {devices/lab_pin.sym} 1140.0 40.0 0 0  {name=l110 sig_type=std_logic lab=ENO3 }
N 1140.0 60.0 1180.0 60.0{lab=EN}
C {devices/lab_pin.sym} 1140.0 60.0 0 0  {name=l111 sig_type=std_logic lab=EN }
N 1140.0 80.0 1180.0 80.0{lab=ENO4}
C {devices/lab_pin.sym} 1140.0 80.0 0 0  {name=l112 sig_type=std_logic lab=ENO4 }
N 1140.0 100.0 1180.0 100.0{lab=DONE4}
C {devices/lab_pin.sym} 1140.0 100.0 0 0  {name=l113 sig_type=std_logic lab=DONE4 }
N 1140.0 120.0 1180.0 120.0{lab=NC2A}
C {devices/lab_pin.sym} 1140.0 120.0 0 0  {name=l114 sig_type=std_logic lab=NC2A }
N 1140.0 140.0 1180.0 140.0{lab=D_4}
C {devices/lab_pin.sym} 1140.0 140.0 0 0  {name=l115 sig_type=std_logic lab=D_4 }
N 1140.0 160.0 1180.0 160.0{lab=CN_3}
C {devices/lab_pin.sym} 1140.0 160.0 0 0  {name=l116 sig_type=std_logic lab=CN_3 }
N 1140.0 180.0 1180.0 180.0{lab=NC2B}
C {devices/lab_pin.sym} 1140.0 180.0 0 0  {name=l117 sig_type=std_logic lab=NC2B }
N 1140.0 200.0 1180.0 200.0{lab=CEO3}
C {devices/lab_pin.sym} 1140.0 200.0 0 0  {name=l118 sig_type=std_logic lab=CEO3 }
N 1140.0 220.0 1180.0 220.0{lab=CEO4}
C {devices/lab_pin.sym} 1140.0 220.0 0 0  {name=l119 sig_type=std_logic lab=CEO4 }
N 1140.0 240.0 1180.0 240.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 1140.0 240.0 0 0  {name=l120 sig_type=std_logic lab=CK_SAMPLE }
N 1140.0 260.0 1180.0 260.0{lab=VREF}
C {devices/lab_pin.sym} 1140.0 260.0 0 0  {name=l121 sig_type=std_logic lab=VREF }
N 1140.0 280.0 1180.0 280.0{lab=AVDD}
C {devices/lab_pin.sym} 1140.0 280.0 0 0  {name=l122 sig_type=std_logic lab=AVDD }
N 1140.0 300.0 1180.0 300.0{lab=AVSS}
C {devices/lab_pin.sym} 1140.0 300.0 0 0  {name=l123 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARDIGEX4_CV.sym} 1200 340 0 0 {name=XA5}
N 1140.0 340.0 1180.0 340.0{lab=CMP_OP}
C {devices/lab_pin.sym} 1140.0 340.0 0 0  {name=l124 sig_type=std_logic lab=CMP_OP }
N 1140.0 360.0 1180.0 360.0{lab=CMP_ON}
C {devices/lab_pin.sym} 1140.0 360.0 0 0  {name=l125 sig_type=std_logic lab=CMP_ON }
N 1140.0 380.0 1180.0 380.0{lab=ENO4}
C {devices/lab_pin.sym} 1140.0 380.0 0 0  {name=l126 sig_type=std_logic lab=ENO4 }
N 1140.0 400.0 1180.0 400.0{lab=EN}
C {devices/lab_pin.sym} 1140.0 400.0 0 0  {name=l127 sig_type=std_logic lab=EN }
N 1140.0 420.0 1180.0 420.0{lab=ENO5}
C {devices/lab_pin.sym} 1140.0 420.0 0 0  {name=l128 sig_type=std_logic lab=ENO5 }
N 1140.0 440.0 1180.0 440.0{lab=DONE5}
C {devices/lab_pin.sym} 1140.0 440.0 0 0  {name=l129 sig_type=std_logic lab=DONE5 }
N 1140.0 460.0 1180.0 460.0{lab=NC3A}
C {devices/lab_pin.sym} 1140.0 460.0 0 0  {name=l130 sig_type=std_logic lab=NC3A }
N 1140.0 480.0 1180.0 480.0{lab=D_3}
C {devices/lab_pin.sym} 1140.0 480.0 0 0  {name=l131 sig_type=std_logic lab=D_3 }
N 1140.0 500.0 1180.0 500.0{lab=CN_2}
C {devices/lab_pin.sym} 1140.0 500.0 0 0  {name=l132 sig_type=std_logic lab=CN_2 }
N 1140.0 520.0 1180.0 520.0{lab=NC3B}
C {devices/lab_pin.sym} 1140.0 520.0 0 0  {name=l133 sig_type=std_logic lab=NC3B }
N 1140.0 540.0 1180.0 540.0{lab=CEO4}
C {devices/lab_pin.sym} 1140.0 540.0 0 0  {name=l134 sig_type=std_logic lab=CEO4 }
N 1140.0 560.0 1180.0 560.0{lab=CEO5}
C {devices/lab_pin.sym} 1140.0 560.0 0 0  {name=l135 sig_type=std_logic lab=CEO5 }
N 1140.0 580.0 1180.0 580.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 1140.0 580.0 0 0  {name=l136 sig_type=std_logic lab=CK_SAMPLE }
N 1140.0 600.0 1180.0 600.0{lab=VREF}
C {devices/lab_pin.sym} 1140.0 600.0 0 0  {name=l137 sig_type=std_logic lab=VREF }
N 1140.0 620.0 1180.0 620.0{lab=AVDD}
C {devices/lab_pin.sym} 1140.0 620.0 0 0  {name=l138 sig_type=std_logic lab=AVDD }
N 1140.0 640.0 1180.0 640.0{lab=AVSS}
C {devices/lab_pin.sym} 1140.0 640.0 0 0  {name=l139 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARDIGEX4_CV.sym} 1200 680 0 0 {name=XA6}
N 1140.0 680.0 1180.0 680.0{lab=CMP_OP}
C {devices/lab_pin.sym} 1140.0 680.0 0 0  {name=l140 sig_type=std_logic lab=CMP_OP }
N 1140.0 700.0 1180.0 700.0{lab=CMP_ON}
C {devices/lab_pin.sym} 1140.0 700.0 0 0  {name=l141 sig_type=std_logic lab=CMP_ON }
N 1140.0 720.0 1180.0 720.0{lab=ENO5}
C {devices/lab_pin.sym} 1140.0 720.0 0 0  {name=l142 sig_type=std_logic lab=ENO5 }
N 1140.0 740.0 1180.0 740.0{lab=EN}
C {devices/lab_pin.sym} 1140.0 740.0 0 0  {name=l143 sig_type=std_logic lab=EN }
N 1140.0 760.0 1180.0 760.0{lab=ENO6}
C {devices/lab_pin.sym} 1140.0 760.0 0 0  {name=l144 sig_type=std_logic lab=ENO6 }
N 1140.0 780.0 1180.0 780.0{lab=DONE6}
C {devices/lab_pin.sym} 1140.0 780.0 0 0  {name=l145 sig_type=std_logic lab=DONE6 }
N 1140.0 800.0 1180.0 800.0{lab=NC4A}
C {devices/lab_pin.sym} 1140.0 800.0 0 0  {name=l146 sig_type=std_logic lab=NC4A }
N 1140.0 820.0 1180.0 820.0{lab=D_2}
C {devices/lab_pin.sym} 1140.0 820.0 0 0  {name=l147 sig_type=std_logic lab=D_2 }
N 1140.0 840.0 1180.0 840.0{lab=CN_1}
C {devices/lab_pin.sym} 1140.0 840.0 0 0  {name=l148 sig_type=std_logic lab=CN_1 }
N 1140.0 860.0 1180.0 860.0{lab=NC4B}
C {devices/lab_pin.sym} 1140.0 860.0 0 0  {name=l149 sig_type=std_logic lab=NC4B }
N 1140.0 880.0 1180.0 880.0{lab=CEO5}
C {devices/lab_pin.sym} 1140.0 880.0 0 0  {name=l150 sig_type=std_logic lab=CEO5 }
N 1140.0 900.0 1180.0 900.0{lab=CEO6}
C {devices/lab_pin.sym} 1140.0 900.0 0 0  {name=l151 sig_type=std_logic lab=CEO6 }
N 1140.0 920.0 1180.0 920.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 1140.0 920.0 0 0  {name=l152 sig_type=std_logic lab=CK_SAMPLE }
N 1140.0 940.0 1180.0 940.0{lab=VREF}
C {devices/lab_pin.sym} 1140.0 940.0 0 0  {name=l153 sig_type=std_logic lab=VREF }
N 1140.0 960.0 1180.0 960.0{lab=AVDD}
C {devices/lab_pin.sym} 1140.0 960.0 0 0  {name=l154 sig_type=std_logic lab=AVDD }
N 1140.0 980.0 1180.0 980.0{lab=AVSS}
C {devices/lab_pin.sym} 1140.0 980.0 0 0  {name=l155 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARDIGEX4_CV.sym} 1600 0 0 0 {name=XA7}
N 1540.0 0.0 1580.0 0.0{lab=CMP_OP}
C {devices/lab_pin.sym} 1540.0 0.0 0 0  {name=l156 sig_type=std_logic lab=CMP_OP }
N 1540.0 20.0 1580.0 20.0{lab=CMP_ON}
C {devices/lab_pin.sym} 1540.0 20.0 0 0  {name=l157 sig_type=std_logic lab=CMP_ON }
N 1540.0 40.0 1580.0 40.0{lab=ENO6}
C {devices/lab_pin.sym} 1540.0 40.0 0 0  {name=l158 sig_type=std_logic lab=ENO6 }
N 1540.0 60.0 1580.0 60.0{lab=EN}
C {devices/lab_pin.sym} 1540.0 60.0 0 0  {name=l159 sig_type=std_logic lab=EN }
N 1540.0 80.0 1580.0 80.0{lab=ENO7}
C {devices/lab_pin.sym} 1540.0 80.0 0 0  {name=l160 sig_type=std_logic lab=ENO7 }
N 1540.0 100.0 1580.0 100.0{lab=DONE7}
C {devices/lab_pin.sym} 1540.0 100.0 0 0  {name=l161 sig_type=std_logic lab=DONE7 }
N 1540.0 120.0 1580.0 120.0{lab=NC5A}
C {devices/lab_pin.sym} 1540.0 120.0 0 0  {name=l162 sig_type=std_logic lab=NC5A }
N 1540.0 140.0 1580.0 140.0{lab=D_1}
C {devices/lab_pin.sym} 1540.0 140.0 0 0  {name=l163 sig_type=std_logic lab=D_1 }
N 1540.0 160.0 1580.0 160.0{lab=CN_0}
C {devices/lab_pin.sym} 1540.0 160.0 0 0  {name=l164 sig_type=std_logic lab=CN_0 }
N 1540.0 180.0 1580.0 180.0{lab=NC5B}
C {devices/lab_pin.sym} 1540.0 180.0 0 0  {name=l165 sig_type=std_logic lab=NC5B }
N 1540.0 200.0 1580.0 200.0{lab=CEO6}
C {devices/lab_pin.sym} 1540.0 200.0 0 0  {name=l166 sig_type=std_logic lab=CEO6 }
N 1540.0 220.0 1580.0 220.0{lab=CEO7}
C {devices/lab_pin.sym} 1540.0 220.0 0 0  {name=l167 sig_type=std_logic lab=CEO7 }
N 1540.0 240.0 1580.0 240.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 1540.0 240.0 0 0  {name=l168 sig_type=std_logic lab=CK_SAMPLE }
N 1540.0 260.0 1580.0 260.0{lab=VREF}
C {devices/lab_pin.sym} 1540.0 260.0 0 0  {name=l169 sig_type=std_logic lab=VREF }
N 1540.0 280.0 1580.0 280.0{lab=AVDD}
C {devices/lab_pin.sym} 1540.0 280.0 0 0  {name=l170 sig_type=std_logic lab=AVDD }
N 1540.0 300.0 1580.0 300.0{lab=AVSS}
C {devices/lab_pin.sym} 1540.0 300.0 0 0  {name=l171 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARDIGEX4_CV.sym} 1600 340 0 0 {name=XA8}
N 1540.0 340.0 1580.0 340.0{lab=CMP_OP}
C {devices/lab_pin.sym} 1540.0 340.0 0 0  {name=l172 sig_type=std_logic lab=CMP_OP }
N 1540.0 360.0 1580.0 360.0{lab=CMP_ON}
C {devices/lab_pin.sym} 1540.0 360.0 0 0  {name=l173 sig_type=std_logic lab=CMP_ON }
N 1540.0 380.0 1580.0 380.0{lab=ENO7}
C {devices/lab_pin.sym} 1540.0 380.0 0 0  {name=l174 sig_type=std_logic lab=ENO7 }
N 1540.0 400.0 1580.0 400.0{lab=EN}
C {devices/lab_pin.sym} 1540.0 400.0 0 0  {name=l175 sig_type=std_logic lab=EN }
N 1540.0 420.0 1580.0 420.0{lab=ENO8}
C {devices/lab_pin.sym} 1540.0 420.0 0 0  {name=l176 sig_type=std_logic lab=ENO8 }
N 1540.0 440.0 1580.0 440.0{lab=DONE}
C {devices/lab_pin.sym} 1540.0 440.0 0 0  {name=l177 sig_type=std_logic lab=DONE }
N 1540.0 460.0 1580.0 460.0{lab=NC6A}
C {devices/lab_pin.sym} 1540.0 460.0 0 0  {name=l178 sig_type=std_logic lab=NC6A }
N 1540.0 480.0 1580.0 480.0{lab=D_0}
C {devices/lab_pin.sym} 1540.0 480.0 0 0  {name=l179 sig_type=std_logic lab=D_0 }
N 1540.0 500.0 1580.0 500.0{lab=NC6C}
C {devices/lab_pin.sym} 1540.0 500.0 0 0  {name=l180 sig_type=std_logic lab=NC6C }
N 1540.0 520.0 1580.0 520.0{lab=NC6B}
C {devices/lab_pin.sym} 1540.0 520.0 0 0  {name=l181 sig_type=std_logic lab=NC6B }
N 1540.0 540.0 1580.0 540.0{lab=CEO7}
C {devices/lab_pin.sym} 1540.0 540.0 0 0  {name=l182 sig_type=std_logic lab=CEO7 }
N 1540.0 560.0 1580.0 560.0{lab=CK_CMP}
C {devices/lab_pin.sym} 1540.0 560.0 0 0  {name=l183 sig_type=std_logic lab=CK_CMP }
N 1540.0 580.0 1580.0 580.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 1540.0 580.0 0 0  {name=l184 sig_type=std_logic lab=CK_SAMPLE }
N 1540.0 600.0 1580.0 600.0{lab=VREF}
C {devices/lab_pin.sym} 1540.0 600.0 0 0  {name=l185 sig_type=std_logic lab=VREF }
N 1540.0 620.0 1580.0 620.0{lab=AVDD}
C {devices/lab_pin.sym} 1540.0 620.0 0 0  {name=l186 sig_type=std_logic lab=AVDD }
N 1540.0 640.0 1580.0 640.0{lab=AVSS}
C {devices/lab_pin.sym} 1540.0 640.0 0 0  {name=l187 sig_type=std_logic lab=AVSS }
C {SUN_SAR9B_SK130NM/SARCMPX1_CV.sym} 1600 680 0 0 {name=XA20}
N 1560.0 700.0 1600.0 700.0{lab=SARP}
C {devices/lab_pin.sym} 1560.0 700.0 0 0  {name=l188 sig_type=std_logic lab=SARP }
N 1560.0 740.0 1600.0 740.0{lab=SARN}
C {devices/lab_pin.sym} 1560.0 740.0 0 0  {name=l189 sig_type=std_logic lab=SARN }
N 1860.0 700.0 1900.0 700.0{lab=CMP_OP}
C {devices/lab_pin.sym} 1860.0 700.0 0 0  {name=l190 sig_type=std_logic lab=CMP_OP }
N 1860.0 740.0 1900.0 740.0{lab=CMP_ON}
C {devices/lab_pin.sym} 1860.0 740.0 0 0  {name=l191 sig_type=std_logic lab=CMP_ON }
N 1560.0 800.0 1600.0 800.0{lab=CK_CMP}
C {devices/lab_pin.sym} 1560.0 800.0 0 0  {name=l192 sig_type=std_logic lab=CK_CMP }
N 1560.0 780.0 1600.0 780.0{lab=CK_SAMPLE}
C {devices/lab_pin.sym} 1560.0 780.0 0 0  {name=l193 sig_type=std_logic lab=CK_SAMPLE }
N 1560.0 820.0 1600.0 820.0{lab=DONE}
C {devices/lab_pin.sym} 1560.0 820.0 0 0  {name=l194 sig_type=std_logic lab=DONE }
N 1560.0 680.0 1600.0 680.0{lab=AVDD}
C {devices/lab_pin.sym} 1560.0 680.0 0 0  {name=l195 sig_type=std_logic lab=AVDD }
N 1560.0 840.0 1600.0 840.0{lab=AVSS}
C {devices/lab_pin.sym} 1560.0 840.0 0 0  {name=l196 sig_type=std_logic lab=AVSS }
