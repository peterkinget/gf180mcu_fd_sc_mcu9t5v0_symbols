v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -672.5 432.5 147.5 712.5 {flags=graph,unlocked
y1=0
y2=4
ypos1=0
ypos2=4
divy=5
subdivy=1
unity=1
x1=3.1418376e-07
x2=3.711649e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=2.5
rainbow=0
autoload=1
digital=1
sim_type=tran
rawfile=$netlist_dir/tb_nand.raw
color="4 5 6 7 8 9 10 11 12"
node="out_8
out_7
out_6
out_5
out_4
out_3
out_2
out_1
a1"}
B 2 307.5 357.5 1107.5 757.5 {flags=graph
y1=0
y2=3.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.2983695e-08
x2=7.2337727e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=ro_out
color=4
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
rawfile=$netlist_dir/tb_inv.raw
sim_type=tran}
N -420 210 -420 240 {lab=GND}
N -420 100 -420 150 {lab=VSSd}
N -420 -20 -420 40 {lab=VDDd}
N 22.5 132.5 77.5 132.5 {lab=out_2}
N -112.5 132.5 -57.5 132.5 {lab=out_1}
N 157.5 132.5 212.5 132.5 {lab=out_3}
N 25 212.5 80 212.5 {lab=out_5}
N -110 212.5 -55 212.5 {lab=out_4}
N 160 212.5 215 212.5 {lab=out_6}
N -292.5 132.5 -192.5 132.5 {lab=A1}
N -292.5 192.5 -292.5 220 {lab=VSSd}
N -320 220 -292.5 220 {lab=VSSd}
N -245 212.5 -190 212.5 {lab=out_3}
N 15 352.5 75 352.5 {lab=VSSd}
N -110 285 -55 285 {lab=out_7}
N 75 285 80 285 {lab=out_8}
N 75 285 75 292.5 {lab=out_8}
N 25 285 75 285 {lab=out_8}
N -245 285 -190 285 {lab=out_6}
N 475 275 505 275 {lab=#net1}
N 585 275 625 275 {lab=#net2}
N 705 275 745 275 {lab=#net3}
N 825 275 875 275 {lab=#net4}
N 955 275 985 275 {lab=RO_out}
N 985 210 985 275 {lab=RO_out}
N 390 210 985 210 {lab=RO_out}
N 390 210 390 275 {lab=RO_out}
N 390 275 395 275 {lab=RO_out}
C {devices/vsource.sym} -420 180 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} -420 240 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -420 70 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} -420 130 0 0 {name=p2 sig_type=std_logic lab=VSSd}
C {devices/lab_wire.sym} -420 10 0 0 {name=p3 sig_type=std_logic lab=VDDd}
C {devices/code_shown.sym} -740 120 0 0 {name=Simulation only_toplevel=false value="
.param Cload = 2p
.param VDD = 3.3
.param Tbit = 25n

.control

save all

OP
*show all > op.log
show all

* DC V3 0 3.3 0.01
TRAN 0.1n 0.5u
write tb_inv.raw
.endc
"}
C {devices/code_shown.sym} -750 -130 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -292.5 162.5 0 0 {name=VDATA value="pulse 0 \{VDD\} 0 \{Tbit/10\} \{Tbit/10\} \{Tbit\} \{2*Tbit\}"}
C {devices/lab_wire.sym} -247.5 132.5 0 0 {name=p4 sig_type=std_logic lab=A1}
C {launcher.sym} -377.5 405 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_inv.raw tran"
}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} -152.5 132.5 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} -17.5 132.5 0 0 {name=x5 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_3.sym} 117.5 132.5 0 0 {name=x6 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} -65 132.5 0 0 {name=p10 sig_type=std_logic lab=out_1}
C {lab_wire.sym} 70 132.5 0 0 {name=p11 sig_type=std_logic lab=out_2}
C {lab_wire.sym} 205 132.5 0 0 {name=p12 sig_type=std_logic lab=out_3}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_4.sym} -150 212.5 0 0 {name=x1 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_8.sym} -15 212.5 0 0 {name=x2 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_12.sym} 120 212.5 0 0 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} -62.5 212.5 0 0 {name=p13 sig_type=std_logic lab=out_4}
C {lab_wire.sym} 72.5 212.5 0 0 {name=p14 sig_type=std_logic lab=out_5}
C {lab_wire.sym} 207.5 212.5 0 0 {name=p15 sig_type=std_logic lab=out_6}
C {devices/lab_wire.sym} -310 220 0 0 {name=p1 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} -197.5 212.5 0 0 {name=p5 sig_type=std_logic lab=out_3}
C {capa-2.sym} 75 322.5 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} -62.5 285 0 0 {name=p6 sig_type=std_logic lab=out_7}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_20.sym} -15 285 0 0 {name=x8 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 72.5 285 0 0 {name=p8 sig_type=std_logic lab=out_8}
C {devices/lab_wire.sym} 45 352.5 0 0 {name=p9 sig_type=std_logic lab=VSSd}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_16.sym} -150 285 0 0 {name=x7 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} -197.5 285 0 0 {name=p7 sig_type=std_logic lab=out_6}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_20.sym} 435 275 0 0 {name=x9 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_20.sym} 545 275 0 0 {name=x10 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_20.sym} 665 275 0 0 {name=x11 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_20.sym} 785 275 0 0 {name=x12 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_20.sym} 915 275 0 0 {name=x13 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 540 210 0 0 {name=p16 sig_type=std_logic lab=RO_out}
