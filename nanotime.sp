************************************************************************
* auCdl Netlist:
* 
* Library Name:  tutorial
* Top Cell Name: HAdder
* View Name:     schematic
* Netlisted on:  Nov 16 15:57:04 2025
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM



************************************************************************
* Library Name: tutorial
* Cell Name:    inverter
* View Name:    schematic
************************************************************************

.SUBCKT inverter Gnd In Out Vdd
*.PININFO In:I Out:O Gnd:B Vdd:B
MPM0 Out In Vdd Vdd g45p1svt m=1 l=45n w=120n
MNM0 Out In Gnd Gnd g45n1svt m=1 l=45n w=120n
.ENDS

************************************************************************
* Library Name: tutorial
* Cell Name:    HAdder
* View Name:    schematic
************************************************************************

.SUBCKT HAdder a b carry gnd sum vdd
*.PININFO a:I b:I gnd:I vdd:I carry:O sum:O
MNM5 carry bbar gnd gnd g45n1svt m=1 l=45n w=120n
MNM4 carry abar gnd gnd g45n1svt m=1 l=45n w=120n
MNM3 net17 b gnd gnd g45n1svt m=1 l=45n w=120n
MNM2 sum a net17 net17 g45n1svt m=1 l=45n w=120n
MNM1 net1 bbar gnd gnd g45n1svt m=1 l=45n w=120n
MNM0 sum abar net1 net1 g45n1svt m=1 l=45n w=120n
XI2 gnd a abar vdd / inverter
XI3 gnd b bbar vdd / inverter
MPM5 carry bbar net6 net6 g45p1svt m=1 l=45n w=120n
MPM4 net6 abar vdd vdd g45p1svt m=1 l=45n w=120n
MPM3 net5 bbar vdd vdd g45p1svt m=1 l=45n w=120n
MPM2 net5 abar vdd vdd g45p1svt m=1 l=45n w=120n
MPM1 sum b net5 net5 g45p1svt m=1 l=45n w=120n
MPM0 sum a net5 net5 g45p1svt m=1 l=45n w=120n
.ENDS

