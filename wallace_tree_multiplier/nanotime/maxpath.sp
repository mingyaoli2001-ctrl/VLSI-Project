* Version T-2022.03-SP3 -- linux64 
* Date   : Sun Nov 16 17:03:47 2025
.option lis_new=1 statfl=1 post=0 runlvl=6 autostop
.save level=none
* Begin user SPICE header.
*nanosim tech="direct"
*nanosim tech="voltage 1.10"
*nanosim tech="vds 0 1.10 0.02" *nanosim tech="vgs 0 1.10 0.02"
.include "/package/eda/cells/FreePDK45/models/hspice/tran_models/models_nom/NMOS_VTL.inc"
.include "/package/eda/cells/FreePDK45/models/hspice/tran_models/models_nom/PMOS_VTL.inc"
* End user SPICE header.

* PATH 7
* 
* 
* Startpoint:        b (inout port)                
* Endpoint:          sum (inout port)              
* Path Type:         max                           
* Constraint:        set_output_delay check        
* 
*     Path     Incr   Adjust    Trans      Cap  NT     Point                          Net                           
* -------- -------- -------- -------- -------- ---- -- ------------------------------ ------------------------------
*                      0.000                           clock MCLK (rise)                                            
*                      1.000                           input external delay                                         
*    1.000             0.000    0.040    0.001  D    r b (inout)                      b                             
*    1.000    0.000             0.040    0.001       r XI3.MNM0.g (inverter)          b                             
*    1.008    0.008             0.018    0.001       f MPM3.g                         bbar                          
*    1.037    0.029             0.045    0.001  O    r sum (inout)                    sum                           
*    1.037                                             data arrival time                                            
*             0.037    1.000                           Total                                                        
*                                                                                                                   
*   10.000   10.000                                    clock MCLK (rise)                                            
*   10.000    0.000                                    output external delay                                        
*   10.000    0.000                                    clock uncertainty                                            
*   10.000                                             data required time                                           
* ------------------------------------------------------------------------------------------------------------------
*   10.000                                             data required time                                           
*   -1.037                                             data arrival time                                            
* ------------------------------------------------------------------------------------------------------------------
*    8.963                                             slack (MET)                                                  
.option mixed_num_format=1
.option scale=1.0
.option geoshrink=1.0

.SUBCKT Path7_Arc0 b
* b input output conn_to_trigger
* Port b b PIN_b
* Off transistors
MNMNM3 0 b 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPMPM1 Path7_Arc0___dummy_vdd b Path7_Arc0___dummy_vdd Path7_Arc0_MPM1.b pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* b is trigger node
* b is output
* b is input
* b is watch node
* b is rising
V__dummy_vdd Path7_Arc0___dummy_vdd 0 1.1
Vbulk__dummy_MPM1.b Path7_Arc0_MPM1.b 0 -1.79769e+308
.ENDS Path7_Arc0

.SUBCKT Path7_Arc1 b bbar
* b input conn_to_trigger
* bbar output conn_to_trigger
MNXI3_MNM0 bbar b Path7_Arc1_gnd Path7_Arc1_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI3_MPM0 bbar b Path7_Arc1_vdd Path7_Arc1_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNMNM5 0 bbar 0 Path7_Arc1_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPMPM5 Path7_Arc1_vdd bbar Path7_Arc1_vdd Path7_Arc1_MPM5.b pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* b is trigger node
* b is input
* b is rising
* bbar is output
* bbar is watch node
* bbar is falling
.IC V(bbar)=1.1
* gnd is ground
V1 Path7_Arc1_gnd 0 DC=0
* vdd is positive supply
V2 Path7_Arc1_vdd 0 DC=1.1
Vbulk__dummy_MPM5.b Path7_Arc1_MPM5.b 0 -1.79769e+308
.ENDS Path7_Arc1

.SUBCKT Path7_Arc2 sum bbar
* sum output conn_to_trigger
* bbar input conn_to_trigger
MNMNM0 sum abar net1 net1 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNMNM1 net1 bbar Path7_Arc2_gnd Path7_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPMPM0 sum a net5 net5 pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPMPM1 sum b net5 net5 pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPMPM3 net5 bbar Path7_Arc2_vdd Path7_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNMNM2 sum 0 0 Path7_Arc2_MNM2.b nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPMPM2 net5 Path7_Arc2_vdd Path7_Arc2_vdd Path7_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* a is input
* a is logic 0
V1 a 0 DC=0
* abar is input
* abar is logic 1
V2 abar 0 DC=1.1
* b is input
* b is rising
V__b_rail_voltage __b_rail_voltage 0 DC=1.1
E3 b 0 bbar __b_rail_voltage -1.0
* bbar is trigger node
* bbar is input
* bbar is falling
* gnd is ground
V4 Path7_Arc2_gnd 0 DC=0
* net1 is rising
.IC V(net1)=0
* net5 is rising
.IC V(net5)=0.41919
* sum is output
* sum is watch node
* sum is rising
.IC V(sum)=0
* vdd is positive supply
V5 Path7_Arc2_vdd 0 DC=1.1
Vbulk__dummy_MNM2.b Path7_Arc2_MNM2.b 0 -1.79769e+308
.ENDS Path7_Arc2

X0 b Path7_Arc0
X1 b bbar Path7_Arc1
X2 sum bbar Path7_Arc2

.TEMP 25

* input slope is 0.04
VIN b 0 PWL(0ns 0 0.05ns 1.1)

* output slope is 0.0451016

* Transient analysis
.TRAN 0.1PS 0.348872NS

* Look at the input and output
.PRINT TRAN V(b) V(sum)

* Path measurements.
.MEASURE TRAN path_delay TRIG v(b) VAL=0.55 CROSS=1 TARG v(sum) VAL=0.55 CROSS=1
.MEASURE TRAN path_input_transition TRIG v(b) VAL=0.11 CROSS=1 TARG v(b) VAL=0.99 CROSS=1
.MEASURE TRAN path_output_transition TRIG v(sum) VAL=0.11 CROSS=1 TARG v(sum) VAL=0.99 CROSS=1

.END
