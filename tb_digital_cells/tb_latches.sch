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
x1=3.3239512e-08
x2=3.6136013e-08
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
rawfile=$netlist_dir/tb_latches.raw
color="4 5 6 7 8 9 10 11 12"
node="clk
out_2
data
out_m1
out_s1
out_m2
out_s2
out_m4
out_s4"}
N -420 210 -420 240 {lab=GND}
N -420 100 -420 150 {lab=VSSd}
N -420 -17.5 -420 42.5 {lab=VDDd}
N 48.75 132.5 77.5 132.5 {lab=out_2}
N -112.5 132.5 -57.5 132.5 {lab=out_1}
N -292.5 132.5 -192.5 132.5 {lab=CLK}
N -292.5 192.5 -292.5 220 {lab=VSSd}
N -320 220 -292.5 220 {lab=VSSd}
N 22.5 132.5 48.75 132.5 {lab=out_2}
N 556.25 275 646.25 275 {lab=out_m1}
N 618.75 275 646.25 275 {lab=out_m1}
N 611.25 295 611.25 342.5 {lab=#net1}
N 611.25 295 618.75 295 {lab=#net1}
N 358.75 295 358.75 342.5 {lab=out_2}
N 358.75 295 376.25 295 {lab=out_2}
N 331.25 275 376.25 275 {lab=DATA}
N 798.75 275 853.75 275 {lab=out_s1}
N -295 30 -295 57.5 {lab=VSSd}
N -322.5 57.5 -295 57.5 {lab=VSSd}
N -295 -30 -191.25 -30 {lab=DATA}
N 557.5 342.5 611.25 342.5 {lab=#net1}
N 358.75 342.5 477.5 342.5 {lab=out_2}
N 556.25 118.75 646.25 118.75 {lab=out_m2}
N 618.75 118.75 646.25 118.75 {lab=out_m2}
N 611.25 138.75 611.25 186.25 {lab=#net2}
N 611.25 138.75 618.75 138.75 {lab=#net2}
N 358.75 138.75 358.75 186.25 {lab=out_2}
N 358.75 138.75 376.25 138.75 {lab=out_2}
N 331.25 118.75 376.25 118.75 {lab=DATA}
N 798.75 118.75 853.75 118.75 {lab=out_s2}
N 557.5 186.25 611.25 186.25 {lab=#net2}
N 358.75 186.25 477.5 186.25 {lab=out_2}
N 556.25 -35 646.25 -35 {lab=out_m4}
N 618.75 -35 646.25 -35 {lab=out_m4}
N 611.25 -15 611.25 32.5 {lab=#net3}
N 611.25 -15 618.75 -15 {lab=#net3}
N 358.75 -15 358.75 32.5 {lab=out_2}
N 358.75 -15 376.25 -15 {lab=out_2}
N 331.25 -35 376.25 -35 {lab=DATA}
N 798.75 -35 853.75 -35 {lab=out_s4}
N 557.5 32.5 611.25 32.5 {lab=#net3}
N 358.75 32.5 477.5 32.5 {lab=out_2}
N 848.75 -35 882.5 -35 {lab=out_s4}
N 882.5 -35 882.5 -30 {lab=out_s4}
N 882.5 30 882.5 55 {lab=#net4}
N 835 55 882.5 55 {lab=#net4}
N 882.5 183.75 882.5 208.75 {lab=#net5}
N 835 208.75 882.5 208.75 {lab=#net5}
N 882.5 343.75 882.5 368.75 {lab=#net6}
N 835 368.75 882.5 368.75 {lab=#net6}
N 845 118.75 882.5 118.75 {lab=out_s2}
N 882.5 118.75 882.5 123.75 {lab=out_s2}
N 841.25 275 882.5 275 {lab=out_s1}
N 882.5 275 882.5 283.75 {lab=out_s1}
C {devices/vsource.sym} -420 180 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} -420 240 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -420 71.25 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {devices/lab_wire.sym} -420 130 0 0 {name=p2 sig_type=std_logic lab=VSSd}
C {devices/lab_wire.sym} -420 10 0 0 {name=p3 sig_type=std_logic lab=VDDd}
C {devices/code_shown.sym} -740 120 0 0 {name=Simulation only_toplevel=false value="
.param Cload = 20p
.param VDD = 3.3
.param Tbit = 2n
.param Tdelay_DATA = \{Tbit/3\}

.control

save all

OP
*show all > op.log
show all

* DC V3 0 3.3 0.01
TRAN 0.2n 400n
write tb_latches.raw

.endc
"}
C {devices/code_shown.sym} -750 -130 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/vsource.sym} -292.5 162.5 0 0 {name=VCLK value="pulse 0 \{VDD\} 0 \{Tbit/10\} \{Tbit/10\} \{Tbit\} \{2*Tbit\}"}
C {devices/lab_wire.sym} -247.5 132.5 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {launcher.sym} -110 400 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_latches.raw tran"
}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} -152.5 132.5 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} -17.5 132.5 0 0 {name=x5 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} -65 132.5 0 0 {name=p10 sig_type=std_logic lab=out_1}
C {lab_wire.sym} 70 132.5 0 0 {name=p11 sig_type=std_logic lab=out_2}
C {devices/lab_wire.sym} -310 220 0 0 {name=p1 sig_type=std_logic lab=VSSd}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/latq_1.sym} 466.25 285 0 0 {name=x8 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/latq_1.sym} 708.75 285 0 0 {name=x15 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 517.5 342.5 0 0 {name=x16 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 848.75 275 0 0 {name=p7 sig_type=std_logic lab=out_s1}
C {lab_wire.sym} 608.75 275 0 0 {name=p8 sig_type=std_logic lab=out_m1}
C {lab_wire.sym} 361.25 275 0 0 {name=p9 sig_type=std_logic lab=DATA}
C {lab_wire.sym} 436.25 342.5 0 0 {name=p13 sig_type=std_logic lab=out_2}
C {devices/vsource.sym} -295 0 0 0 {name=VDATA value="pulse 0 \{VDD\} \{Tdelay_DATA\} \{Tbit/10\} \{Tbit/10\} \{Tbit*2\} \{4*Tbit\}"}
C {devices/lab_wire.sym} -218.75 -30 0 0 {name=p14 sig_type=std_logic lab=DATA}
C {devices/lab_wire.sym} -312.5 57.5 0 0 {name=p15 sig_type=std_logic lab=VSSd}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/latq_2.sym} 466.25 128.75 0 0 {name=x17 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/latq_2.sym} 708.75 128.75 0 0 {name=x18 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} 517.5 186.25 0 0 {name=x19 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 848.75 118.75 0 0 {name=p17 sig_type=std_logic lab=out_s2}
C {lab_wire.sym} 608.75 118.75 0 0 {name=p20 sig_type=std_logic lab=out_m2}
C {lab_wire.sym} 361.25 118.75 0 0 {name=p21 sig_type=std_logic lab=DATA}
C {lab_wire.sym} 436.25 186.25 0 0 {name=p22 sig_type=std_logic lab=out_2}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/latq_4.sym} 466.25 -25 0 0 {name=x20 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/latq_4.sym} 708.75 -25 0 0 {name=x21 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_4.sym} 517.5 32.5 0 0 {name=x22 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 848.75 -35 0 0 {name=p23 sig_type=std_logic lab=out_s4}
C {lab_wire.sym} 608.75 -35 0 0 {name=p24 sig_type=std_logic lab=out_m4}
C {lab_wire.sym} 361.25 -35 0 0 {name=p25 sig_type=std_logic lab=DATA}
C {lab_wire.sym} 436.25 32.5 0 0 {name=p26 sig_type=std_logic lab=out_2}
C {capa-2.sym} 882.5 0 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 867.5 53.75 0 0 {name=p5 sig_type=std_logic lab=VSSd}
C {capa-2.sym} 882.5 153.75 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 867.5 207.5 0 0 {name=p6 sig_type=std_logic lab=VSSd}
C {capa-2.sym} 882.5 313.75 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device=polarized_capacitor}
C {lab_wire.sym} 867.5 367.5 0 0 {name=p12 sig_type=std_logic lab=VSSd}
C {title.sym} -647.5 1095 0 0 {name=l2 author="Peter Kinget"}
