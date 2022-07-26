v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/iopin.sym} 0 0 0 0{name=p0 lab=D}
C {devices/iopin.sym} 0 20 0 0{name=p1 lab=G}
C {devices/iopin.sym} 0 40 0 0{name=p2 lab=S}
C {devices/iopin.sym} 0 60 0 0{name=p3 lab=B}
C {sky130_fd_pr/pfet_01v8.sym} 400 0 0 0 {name=M1
L=0.18
W=1.08
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'"
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'"
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
N 440.0 30.0 420.0 30.0{lab=D}
C {devices/lab_pin.sym} 440.0 30.0 2 0  {name=l0 sig_type=std_logic lab=D }
N 360.0 0.0 380.0 0.0{lab=G}
C {devices/lab_pin.sym} 360.0 0.0 0 0  {name=l1 sig_type=std_logic lab=G }
N 440.0 -30.0 420.0 -30.0{lab=S}
C {devices/lab_pin.sym} 440.0 -30.0 2 0  {name=l2 sig_type=std_logic lab=S }
N 440.0 0.0 420.0 0.0{lab=B}
C {devices/lab_pin.sym} 440.0 0.0 2 0  {name=l3 sig_type=std_logic lab=B }
