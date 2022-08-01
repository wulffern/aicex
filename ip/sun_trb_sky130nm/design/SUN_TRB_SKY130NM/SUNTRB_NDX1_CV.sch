v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/ipin.sym} 0 0 0 0{name=p0 lab=A}
C {devices/ipin.sym} 0 20 0 0{name=p1 lab=B}
C {devices/opin.sym} 0 40 0 0{name=p2 lab=Y}
C {devices/ipin.sym} 0 60 0 0{name=p3 lab=BULKP}
C {devices/ipin.sym} 0 80 0 0{name=p4 lab=BULKN}
C {devices/ipin.sym} 0 100 0 0{name=p5 lab=AVDD}
C {devices/ipin.sym} 0 120 0 0{name=p6 lab=AVSS}
C {SUN_TRB_SKY130NM/SUNTRB_NCHDL.sym} 400 0 0 0 {name=XMN0}
N 460.0 -30.0 440.0 -30.0{lab=N1}
C {devices/lab_pin.sym} 460.0 -30.0 2 0  {name=l0 sig_type=std_logic lab=N1 }
N 380.0 0.0 400.0 0.0{lab=A}
C {devices/lab_pin.sym} 380.0 0.0 0 0  {name=l1 sig_type=std_logic lab=A }
N 460.0 30.0 440.0 30.0{lab=AVSS}
C {devices/lab_pin.sym} 460.0 30.0 2 0  {name=l2 sig_type=std_logic lab=AVSS }
N 460.0 0.0 440.0 0.0{lab=BULKN}
C {devices/lab_pin.sym} 460.0 0.0 2 0  {name=l3 sig_type=std_logic lab=BULKN }
C {SUN_TRB_SKY130NM/SUNTRB_NCHDL.sym} 400 108.0 0 0 {name=XMN1}
N 460.0 78.0 440.0 78.0{lab=Y}
C {devices/lab_pin.sym} 460.0 78.0 2 0  {name=l4 sig_type=std_logic lab=Y }
N 380.0 108.0 400.0 108.0{lab=B}
C {devices/lab_pin.sym} 380.0 108.0 0 0  {name=l5 sig_type=std_logic lab=B }
N 460.0 138.0 440.0 138.0{lab=N1}
C {devices/lab_pin.sym} 460.0 138.0 2 0  {name=l6 sig_type=std_logic lab=N1 }
N 460.0 108.0 440.0 108.0{lab=BULKN}
C {devices/lab_pin.sym} 460.0 108.0 2 0  {name=l7 sig_type=std_logic lab=BULKN }
C {SUN_TRB_SKY130NM/SUNTRB_PCHDL.sym} 400 216.0 0 0 {name=XMP0}
N 460.0 246.0 440.0 246.0{lab=Y}
C {devices/lab_pin.sym} 460.0 246.0 2 0  {name=l8 sig_type=std_logic lab=Y }
N 380.0 216.0 400.0 216.0{lab=A}
C {devices/lab_pin.sym} 380.0 216.0 0 0  {name=l9 sig_type=std_logic lab=A }
N 460.0 186.0 440.0 186.0{lab=AVDD}
C {devices/lab_pin.sym} 460.0 186.0 2 0  {name=l10 sig_type=std_logic lab=AVDD }
N 460.0 216.0 440.0 216.0{lab=BULKP}
C {devices/lab_pin.sym} 460.0 216.0 2 0  {name=l11 sig_type=std_logic lab=BULKP }
C {SUN_TRB_SKY130NM/SUNTRB_PCHDL.sym} 400 324.0 0 0 {name=XMP1}
N 460.0 354.0 440.0 354.0{lab=AVDD}
C {devices/lab_pin.sym} 460.0 354.0 2 0  {name=l12 sig_type=std_logic lab=AVDD }
N 380.0 324.0 400.0 324.0{lab=B}
C {devices/lab_pin.sym} 380.0 324.0 0 0  {name=l13 sig_type=std_logic lab=B }
N 460.0 294.0 440.0 294.0{lab=Y}
C {devices/lab_pin.sym} 460.0 294.0 2 0  {name=l14 sig_type=std_logic lab=Y }
N 460.0 324.0 440.0 324.0{lab=BULKP}
C {devices/lab_pin.sym} 460.0 324.0 2 0  {name=l15 sig_type=std_logic lab=BULKP }
