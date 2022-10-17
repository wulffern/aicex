v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} 0 0 0 0{name=p0 lab=A}
C {devices/iopin.sym} 0 20 0 0{name=p1 lab=B}
C {sky130_fd_pr/res_generic_m3.sym} 400 0 0 0 {name=R1
W=0.44
L=0.36
model=res_generic_m3
mult=1}
N 420.0 30.0 400.0 30.0{lab=A}
C {devices/lab_pin.sym} 420.0 30.0 2 0  {name=l0 sig_type=std_logic lab=A }
N 420.0 -30.0 400.0 -30.0{lab=NC0}
C {devices/lab_pin.sym} 420.0 -30.0 2 0  {name=l1 sig_type=std_logic lab=NC0 }
C {sky130_fd_pr/res_generic_m3.sym} 400 160.0 0 0 {name=R2
W=0.44
L=0.36
model=res_generic_m3
mult=1}
N 420.0 190.0 400.0 190.0{lab=B}
C {devices/lab_pin.sym} 420.0 190.0 2 0  {name=l2 sig_type=std_logic lab=B }
N 420.0 130.0 400.0 130.0{lab=NC1}
C {devices/lab_pin.sym} 420.0 130.0 2 0  {name=l3 sig_type=std_logic lab=NC1 }
