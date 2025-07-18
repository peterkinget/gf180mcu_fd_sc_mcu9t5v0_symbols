v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -672.5 432.5 147.5 712.5 {flags=graph
y1=0
y2=4
ypos1=0
ypos2=4
divy=5
subdivy=1
unity=1
x1=3.0217287e-07
x2=4.7134071e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a2
a1
out_4
out_2
out_1"
color="4 5 6 7 8"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=2.5
rainbow=0
autoload=1
digital=1
sim_type=tran
rawfile=$netlist_dir/tb_nand.raw}
N -420 210 -420 240 {lab=GND}
N -420 100 -420 150 {lab=VSSd}
N -420 -20 -420 40 {lab=VDDd}
N -70 90 -10 90 {lab=A1}
N -40 130 -10 130 {lab=A2}
N 100 110 180 110 {lab=out_1}
N -280 100 -280 215 {lab=VSSd}
N -280 215 -230 215 {lab=VSSd}
N -230 190 -230 215 {lab=VSSd}
N -230 130 -40 130 {lab=A2}
N -100 40 -70 40 {lab=A1}
N -70 40 -70 90 {lab=A1}
N -70 220 -70 330 {lab=A1}
N -70 330 -10 330 {lab=A1}
N -40 130 -40 260 {lab=A2}
N -40 260 -10 260 {lab=A2}
N -40 260 -40 370 {lab=A2}
N -40 370 -10 370 {lab=A2}
N -100 40 -100 220 {lab=A1}
N -70 220 -10 220 {lab=A1}
N -100 220 -70 220 {lab=A1}
N -280 40 -100 40 {lab=A1}
N 110 350 180 350 {lab=out_4}
N 110 240 180 240 {lab=out_2}
N 180 170 240 170 {lab=VSSd}
N 240 170 240 310 {lab=VSSd}
N 180 310 240 310 {lab=VSSd}
N 180 300 180 310 {lab=VSSd}
N 240 310 240 410 {lab=VSSd}
N 180 410 240 410 {lab=VSSd}
C {devices/vsource.sym} -420 180 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} -420 240 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -420 70 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} -420 130 0 0 {name=p2 sig_type=std_logic lab=VSSd}
C {devices/lab_wire.sym} -420 10 0 0 {name=p3 sig_type=std_logic lab=VDDd}
C {devices/code_shown.sym} -740 120 0 0 {name=Simulation only_toplevel=false value="
.param Cload = 100f
.param VDD = 3.3
.param Tbit = 10n

.control

save all

OP
*show all > op.log
show all

* DC V3 0 3.3 0.01
TRAN 0.1n 1u
write tb_nand.raw
.endc
"}
C {devices/code_shown.sym} -750 -130 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 160 110 0 0 {name=p6 sig_type=std_logic lab=out_1}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/nand2_1.sym} 45 110 0 0 {name=x1 prefix1=gf180mcu_fd_sc_mcu prefix2=9t5v0}
C {devices/vsource.sym} -280 70 0 0 {name=VDATA value="pulse 0 \{VDD\} 0 \{Tbit/10\} \{Tbit/10\} \{Tbit\} \{2*Tbit\}"}
C {devices/vsource.sym} -230 160 0 0 {name=VDATA1 value="pulse 0 \{VDD\} 0 \{Tbit/10\} \{Tbit/10\} \{2*Tbit\} \{4*Tbit\}"}
C {devices/lab_wire.sym} -245 215 0 0 {name=p1 sig_type=std_logic lab=VSSd}
C {devices/lab_wire.sym} -160 40 0 0 {name=p4 sig_type=std_logic lab=A1}
C {devices/lab_wire.sym} -125 130 0 0 {name=p5 sig_type=std_logic lab=A2}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/nand2_2.sym} 50 240 0 0 {name=x2 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/nand2_4.sym} 50 350 0 0 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {capa-2.sym} 180 140 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 180 270 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device=polarized_capacitor}
C {capa-2.sym} 180 380 0 0 {name=C3
m=1
value=\{Cload\}
footprint=1206
device=polarized_capacitor}
C {devices/lab_wire.sym} 240 205 0 0 {name=p7 sig_type=std_logic lab=VSSd}
C {lab_wire.sym} 155 240 0 0 {name=p8 sig_type=std_logic lab=out_2}
C {lab_wire.sym} 160 350 0 0 {name=p9 sig_type=std_logic lab=out_4}
C {launcher.sym} -377.5 405 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_nand.raw tran"
}
