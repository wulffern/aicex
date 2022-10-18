v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
P 9 5 1230 170 1230 380 1870 380 1870 170 1230 170 {}
T {Reset pull ups} 1500 330 0 0 0.6 0.6 {}
T {Dummy} 1610 570 0 0 0.6 0.6 {}
T {Core} 730 670 0 0 0.6 0.6 {}
T {Comparator Half Circuit} 690 -60 0 0 1 1 {}
T {Standard strong arm comparator. Pull-ups to ensure all nodes are reset} 1025 655 0 0 0.4 0.4 {}
N 700 580 720 580 {lab=CK}
N 760 610 780 610 {lab=AVSS}
N 760 580 780 580 {lab=BULKN}
N 360 470 380 470 {lab=CI}
N 420 470 440 470 {lab=BULKN}
N 1100 500 1120 500 {lab=N1}
N 1040 470 1060 470 {lab=CI}
N 1100 440 1120 440 {lab=N2}
N 1100 470 1120 470 {lab=BULKN}
N 870 470 890 470 {lab=CI}
N 930 470 950 470 {lab=BULKN}
N 700 470 720 470 {lab=CI}
N 760 470 780 470 {lab=BULKN}
N 530 470 550 470 {lab=CI}
N 590 470 610 470 {lab=BULKN}
N 760 340 780 340 {lab=CO}
N 700 370 720 370 {lab=VMR}
N 760 370 780 370 {lab=BULKN}
N 1550 220 1570 220 {lab=AVDD}
N 1490 250 1510 250 {lab=CK}
N 1550 280 1570 280 {lab=N1}
N 1550 250 1570 250 {lab=BULKP}
N 1730 280 1750 280 {lab=N2}
N 1670 250 1690 250 {lab=CK}
N 1730 220 1750 220 {lab=AVDD}
N 1730 250 1750 250 {lab=BULKP}
N 1650 490 1670 490 {lab=AVDD}
N 1590 520 1610 520 {lab=AVDD}
N 1650 550 1670 550 {lab=N2}
N 1650 520 1670 520 {lab=BULKP}
N 1370 280 1390 280 {lab=CO}
N 1310 250 1330 250 {lab=CK}
N 1370 220 1390 220 {lab=AVDD}
N 1370 250 1390 250 {lab=BULKP}
N 950 230 970 230 {lab=AVDD}
N 890 260 910 260 {lab=VMR}
N 950 260 970 260 {lab=BULKP}
N 530 260 550 260 {lab=VMR}
N 590 230 610 230 {lab=AVDD}
N 590 260 610 260 {lab=BULKP}
N 760 230 780 230 {lab=AVDD}
N 700 260 720 260 {lab=VMR}
N 760 260 780 260 {lab=BULKP}
N 590 290 760 290 {
lab=CO}
N 760 290 760 340 {
lab=CO}
N 760 290 950 290 {
lab=CO}
N 760 400 760 440 {
lab=N2}
N 420 440 590 440 {
lab=N2}
N 590 440 760 440 {
lab=N2}
N 760 440 930 440 {
lab=N2}
N 930 440 1100 440 {
lab=N2}
N 420 500 590 500 {
lab=N1}
N 590 500 760 500 {
lab=N1}
N 760 500 930 500 {
lab=N1}
N 930 500 1100 500 {
lab=N1}
N 760 500 760 550 {
lab=N1}
N 710 260 710 370 {
lab=VMR}
C {devices/iopin.sym} 310 470 2 0 {name=p0 lab=CI}
C {devices/iopin.sym} 640 580 0 1 {name=p1 lab=CK}
C {devices/iopin.sym} 1040 320 0 0 {name=p2 lab=CO}
C {devices/iopin.sym} 470 260 0 1 {name=p3 lab=VMR}
C {devices/iopin.sym} 1700 40 0 0 {name=p4 lab=N1}
C {devices/iopin.sym} 1700 60 0 0 {name=p5 lab=N2}
C {devices/iopin.sym} 1700 80 0 0 {name=p6 lab=BULKP}
C {devices/iopin.sym} 1700 100 0 0 {name=p7 lab=BULKN}
C {devices/iopin.sym} 310 110 0 1 {name=p8 lab=AVDD}
C {devices/iopin.sym} 320 740 0 1 {name=p9 lab=AVSS}
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 720 580 0 0 {name=XMN0}
C {devices/lab_pin.sym} 700 580 0 0 {name=l1 sig_type=std_logic lab=CK }
C {devices/lab_pin.sym} 780 610 2 0 {name=l2 sig_type=std_logic lab=AVSS }
C {devices/lab_pin.sym} 780 580 2 0 {name=l3 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 380 470 0 0 {name=XMN1}
C {devices/lab_pin.sym} 360 470 0 0 {name=l5 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 440 470 2 0 {name=l7 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 1060 470 2 1 {name=XMN2}
C {devices/lab_pin.sym} 1120 500 0 1 {name=l8 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 1040 470 2 1 {name=l9 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 1120 440 0 1 {name=l10 sig_type=std_logic lab=N2 }
C {devices/lab_pin.sym} 1120 470 0 1 {name=l11 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 890 470 0 0 {name=XMN3}
C {devices/lab_pin.sym} 870 470 0 0 {name=l13 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 950 470 2 0 {name=l15 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 720 470 2 1 {name=XMN4}
C {devices/lab_pin.sym} 700 470 2 1 {name=l17 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 780 470 0 1 {name=l19 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 550 470 0 0 {name=XMN5}
C {devices/lab_pin.sym} 530 470 0 0 {name=l21 sig_type=std_logic lab=CI }
C {devices/lab_pin.sym} 610 470 2 0 {name=l23 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_NCHDL.sym} 720 370 0 0 {name=XMN6}
C {devices/lab_pin.sym} 780 340 2 0 {name=l24 sig_type=std_logic lab=CO }
C {devices/lab_pin.sym} 780 370 2 0 {name=l27 sig_type=std_logic lab=BULKN }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1510 250 2 1 {name=XMP0}
C {devices/lab_pin.sym} 1570 220 0 1 {name=l28 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1490 250 2 1 {name=l29 sig_type=std_logic lab=CK }
C {devices/lab_pin.sym} 1570 280 0 1 {name=l30 sig_type=std_logic lab=N1 }
C {devices/lab_pin.sym} 1570 250 0 1 {name=l31 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1690 250 0 0 {name=XMP1}
C {devices/lab_pin.sym} 1750 280 2 0 {name=l32 sig_type=std_logic lab=N2 }
C {devices/lab_pin.sym} 1670 250 0 0 {name=l33 sig_type=std_logic lab=CK }
C {devices/lab_pin.sym} 1750 220 2 0 {name=l34 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1750 250 2 0 {name=l35 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1610 520 2 1 {name=XMP2}
C {devices/lab_pin.sym} 1670 490 0 1 {name=l36 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1590 520 2 1 {name=l37 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1670 550 0 1 {name=l38 sig_type=std_logic lab=N2 }
C {devices/lab_pin.sym} 1670 520 0 1 {name=l39 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 1330 250 0 0 {name=XMP3}
C {devices/lab_pin.sym} 1390 280 2 0 {name=l40 sig_type=std_logic lab=CO }
C {devices/lab_pin.sym} 1310 250 0 0 {name=l41 sig_type=std_logic lab=CK }
C {devices/lab_pin.sym} 1390 220 2 0 {name=l42 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 1390 250 2 0 {name=l43 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 910 260 2 1 {name=XMP4}
C {devices/lab_pin.sym} 970 230 0 1 {name=l44 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 890 260 2 1 {name=l45 sig_type=std_logic lab=VMR }
C {devices/lab_pin.sym} 970 260 0 1 {name=l47 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 550 260 0 0 {name=XMP5}
C {devices/lab_pin.sym} 530 260 0 0 {name=l49 sig_type=std_logic lab=VMR }
C {devices/lab_pin.sym} 610 230 2 0 {name=l50 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 610 260 2 0 {name=l51 sig_type=std_logic lab=BULKP }
C {SUN_SAR9B_SKY130NM/SUNSAR_PCHDL.sym} 720 260 2 1 {name=XMP6}
C {devices/lab_pin.sym} 780 230 0 1 {name=l52 sig_type=std_logic lab=AVDD }
C {devices/lab_pin.sym} 700 260 2 1 {name=l53 sig_type=std_logic lab=VMR }
C {devices/lab_pin.sym} 780 260 0 1 {name=l55 sig_type=std_logic lab=BULKP }
C {cborder/border_s.sym} 1440 710 0 0 {user="Carsten Wulff" company="Carsten Wulff Software"}
