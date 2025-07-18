v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -197.5 435 1133.75 992.5 {flags=graph
y1=0
y2=4
ypos1=0
ypos2=4
divy=5
subdivy=1
unity=1
x1=4.6728377e-08
x2=1.152695e-07
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
color="4 5 6 7 8 9 10 11 12"
node="three
out_3
out_2
out_1
a1
two_q
two_i
one_i
one_q"
}
N -420 210 -420 240 {lab=GND}
N -420 100 -420 150 {lab=VSSd}
N -420 -17.5 -420 42.5 {lab=VDDd}
N 48.75 132.5 77.5 132.5 {lab=out_2}
N -112.5 132.5 -57.5 132.5 {lab=out_1}
N -292.5 132.5 -192.5 132.5 {lab=A1}
N -292.5 192.5 -292.5 220 {lab=VSSd}
N -320 220 -292.5 220 {lab=VSSd}
N 445 132.5 490 132.5 {lab=one_I}
N 392.5 212.5 490 212.5 {lab=one_I}
N 392.5 212.5 392.5 215 {lab=one_I}
N 240 212.5 312.5 212.5 {lab=#net1}
N 240 152.5 240 212.5 {lab=#net1}
N 815 132.5 815 212.5 {lab=two_I}
N 717.5 212.5 815 212.5 {lab=two_I}
N 717.5 212.5 717.5 215 {lab=two_I}
N 562.5 212.5 637.5 212.5 {lab=#net2}
N 562.5 152.5 562.5 212.5 {lab=#net2}
N 562.5 152.5 592.5 152.5 {lab=#net2}
N 1085 132.5 1130 132.5 {lab=three}
N 1130 132.5 1130 212.5 {lab=three}
N 1032.5 212.5 1130 212.5 {lab=three}
N 1032.5 212.5 1032.5 215 {lab=three}
N 877.5 212.5 952.5 212.5 {lab=#net3}
N 877.5 152.5 877.5 212.5 {lab=#net3}
N 877.5 152.5 907.5 152.5 {lab=#net3}
N 490 132.5 592.5 132.5 {lab=one_I}
N 815 132.5 907.5 132.5 {lab=two_I}
N 770 132.5 815 132.5 {lab=two_I}
N 490 132.5 490 212.5 {lab=one_I}
N 267.5 130 267.5 132.5 {lab=out_3}
N 157.5 132.5 267.5 132.5 {lab=out_3}
N 812.5 307.5 812.5 387.5 {lab=two_Q}
N 715 387.5 812.5 387.5 {lab=two_Q}
N 715 387.5 715 390 {lab=two_Q}
N 560 387.5 635 387.5 {lab=#net4}
N 560 327.5 560 387.5 {lab=#net4}
N 560 327.5 590 327.5 {lab=#net4}
N 767.5 307.5 812.5 307.5 {lab=two_Q}
N 240 152.5 267.5 152.5 {lab=#net1}
N 590 307.5 590 308.75 {lab=#net1}
N 240 307.5 590 307.5 {lab=#net1}
N 240 212.5 240 307.5 {lab=#net1}
N 445 66.25 490 66.25 {lab=one_Q}
N 392.5 -13.75 490 -13.75 {lab=one_Q}
N 392.5 -16.25 392.5 -13.75 {lab=one_Q}
N 240 -13.75 312.5 -13.75 {lab=#net5}
N 240 -13.75 240 46.25 {lab=#net5}
N 490 -13.75 490 66.25 {lab=one_Q}
N 240 46.25 267.5 46.25 {lab=#net5}
N 48.75 47.5 48.75 132.5 {lab=out_2}
N 22.5 132.5 48.75 132.5 {lab=out_2}
N 48.75 47.5 212.5 47.5 {lab=out_2}
N 212.5 47.5 212.5 58.75 {lab=out_2}
N 212.5 58.75 267.5 58.75 {lab=out_2}
N 267.5 58.75 267.5 68.75 {lab=out_2}
C {devices/vsource.sym} -420 180 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} -420 240 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -420 71.25 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {devices/lab_wire.sym} -420 130 0 0 {name=p2 sig_type=std_logic lab=VSSd}
C {devices/lab_wire.sym} -420 10 0 0 {name=p3 sig_type=std_logic lab=VDDd}
C {devices/code_shown.sym} -740 120 0 0 {name=Simulation only_toplevel=false value="
.param Cload = 2p
.param VDD = 3.3
.param Tbit = 2n

.control

save all

OP
*show all > op.log
show all

* DC V3 0 3.3 0.01
TRAN 0.2n 400n
write tb_dff.raw

.endc
"}
C {devices/code_shown.sym} -750 -130 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -292.5 162.5 0 0 {name=VDATA value="pulse 0 \{VDD\} 0 \{Tbit/10\} \{Tbit/10\} \{Tbit/2\} \{2*Tbit\}"}
C {devices/lab_wire.sym} -247.5 132.5 0 0 {name=p4 sig_type=std_logic lab=A1}
C {launcher.sym} -382.5 360 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_dff.raw tran"
}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} -152.5 132.5 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} -17.5 132.5 0 0 {name=x5 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_3.sym} 117.5 132.5 0 0 {name=x6 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} -65 132.5 0 0 {name=p10 sig_type=std_logic lab=out_1}
C {lab_wire.sym} 70 132.5 0 0 {name=p11 sig_type=std_logic lab=out_2}
C {lab_wire.sym} 205 132.5 0 0 {name=p12 sig_type=std_logic lab=out_3}
C {devices/lab_wire.sym} -310 220 0 0 {name=p1 sig_type=std_logic lab=VSSd}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/dffq_1.sym} 357.5 142.5 0 0 {name=x9 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 352.5 212.5 2 0 {name=x11 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/dffq_1.sym} 682.5 142.5 0 0 {name=x10 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 677.5 212.5 2 0 {name=x12 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 562.5 132.5 0 0 {name=p16 sig_type=std_logic lab=one_I}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/dffq_1.sym} 997.5 142.5 0 0 {name=x13 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 992.5 212.5 2 0 {name=x14 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 877.5 132.5 0 0 {name=p18 sig_type=std_logic lab=two_I}
C {lab_wire.sym} 1127.5 132.5 0 0 {name=p19 sig_type=std_logic lab=three}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/dffq_1.sym} 680 317.5 0 0 {name=x1 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 675 387.5 2 0 {name=x2 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 806.25 307.5 0 0 {name=p5 sig_type=std_logic lab=two_Q}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/dffq_1.sym} 357.5 56.25 2 1 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 352.5 -13.75 0 1 {name=x7 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 485 66.25 0 0 {name=p6 sig_type=std_logic lab=one_Q}
