* Version T-2022.03-SP3 -- linux64 
* Date   : Sat Nov 29 16:07:55 2025
.option lis_new=1 statfl=1 post=0 runlvl=6 autostop
.save level=none
* Begin user SPICE header.
*nanosim tech="direct"
*nanosim tech="voltage 1.0"
*nanosim tech="vds 0 1.0 0.05" *nanosim tech="vgs 0 1.0 0.05"
.include "/package/eda/cells/FreePDK45/models/hspice/tran_models/models_nom/NMOS_VTL.inc"
.include "/package/eda/cells/FreePDK45/models/hspice/tran_models/models_nom/PMOS_VTL.inc"

* End user SPICE header.

* PATH 9998
* 
* 
* Startpoint:        b<5> (in port)                
* Endpoint:          s<14> (out port)              
* Path Type:         max                           
* Constraint:        set_output_delay check        
* 
*     Path     Incr   Adjust    Trans      Cap  NT     Point                          Net                           
* -------- -------- -------- -------- -------- ---- -- ------------------------------ ------------------------------
*                      0.000                           clock MCLK (rise)                                            
*                      1.000                           input external delay                                         
*    1.000             0.000    0.040    0.002  D    f b<5> (in)                      b<5>                          
*    1.000    0.000             0.040    0.002       f XI23.XI173.MPM1.g (AND)        b<5>                          
*    1.024    0.024             0.034    0.001       r XI23.XI173.MNM2.g (AND)        XI23.XI173.net4               
*    1.038    0.014             0.022    0.001       f XI115.XI13.MPM0.g (inverter)   p52                           
*    1.101    0.063             0.106    0.001       r XI115.MNM55.g (FAdder)         XI115.pbar                    
*    1.143    0.042             0.081    0.001       r XI115.XI10.MNM0.g (inverter)   XI115.net1                    
*    1.161    0.018             0.035    0.001       f XI121.XI13.MPM0.g (inverter)   s14                           
*    1.229    0.068             0.106    0.001       r XI121.MNM57.g (FAdder)         XI121.pbar                    
*    1.267    0.038             0.085    0.001       r XI121.XI11.MNM0.g (inverter)   XI121.net13                   
*    1.286    0.019             0.047    0.002       f XI134.MPM61.g (FAdder)         c26                           
*    1.332    0.046             0.102    0.001       r XI134.MNM57.g (FAdder)         XI134.pbar                    
*    1.370    0.038             0.084    0.001       r XI134.XI11.MNM0.g (inverter)   XI134.net13                   
*    1.389    0.019             0.047    0.002       f XI137.MPM61.g (FAdder)         c45                           
*    1.435    0.046             0.102    0.001       r XI137.MNM55.g (FAdder)         XI137.pbar                    
*    1.476    0.041             0.080    0.001       r XI137.XI10.MNM0.g (inverter)   XI137.net1                    
*    1.489    0.013             0.032    0.001       f XI166.XI14.MPM0.g (AND)        aout<9>                       
*    1.507    0.018             0.027    0.001       r XI166.XI14.MNM2.g (AND)        XI166.XI14.net4               
*    1.514    0.006             0.013    0.001       f XI166.XI34.MPM23.g (4bit_CLA_logic) XI166.g9                      
*    1.710    0.196             0.355    0.002       r XI166.XI34.XI3.MNM0.g (inverter) XI166.XI34.net11              
*    1.726    0.016             0.107    0.002       f XI166.XI35.MPM18.g (4bit_CLA_logic) XI166.net18                   
*    1.864    0.138             0.338    0.002       r XI166.XI35.XI3.MNM0.g (inverter) XI166.XI35.net11              
*    1.862   -0.002             0.091    0.001       f XI166.XI28.XI0.MPM0.g (inverter) XI166.net12                   
*    1.938    0.076             0.155    0.003  O    r s<14> (out)                    s<14>                         
*    1.938                                             data arrival time                                            
*             0.938    1.000                           Total                                                        
*                                                                                                                   
*   10.000   10.000                                    clock MCLK (rise)                                            
*   10.000    0.000                                    output external delay                                        
*   10.000    0.000                                    clock uncertainty                                            
*   10.000                                             data required time                                           
* ------------------------------------------------------------------------------------------------------------------
*   10.000                                             data required time                                           
*   -1.938                                             data arrival time                                            
* ------------------------------------------------------------------------------------------------------------------
*    8.062                                             slack (MET)                                                  
.option mixed_num_format=1
.option scale=1.0
.option geoshrink=1.0

.SUBCKT Path9998_Arc0 b<5>
* b<5> input output conn_to_trigger
* Port b<5> b<5> PIN_b<5>
* Off transistors
MNXI23_XI171_MNM1 0 b<5> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI171_MPM1 Path9998_Arc0___dummy_vdd b<5> Path9998_Arc0___dummy_vdd Path9998_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI172_MNM1 0 b<5> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI172_MPM1 Path9998_Arc0___dummy_vdd b<5> Path9998_Arc0___dummy_vdd Path9998_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI174_MNM1 0 b<5> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI174_MPM1 Path9998_Arc0___dummy_vdd b<5> Path9998_Arc0___dummy_vdd Path9998_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI175_MNM1 0 b<5> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI175_MPM1 Path9998_Arc0___dummy_vdd b<5> Path9998_Arc0___dummy_vdd Path9998_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI176_MNM1 0 b<5> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI176_MPM1 Path9998_Arc0___dummy_vdd b<5> Path9998_Arc0___dummy_vdd Path9998_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI177_MNM1 0 b<5> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI177_MPM1 Path9998_Arc0___dummy_vdd b<5> Path9998_Arc0___dummy_vdd Path9998_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI178_MNM1 0 b<5> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI178_MPM1 Path9998_Arc0___dummy_vdd b<5> Path9998_Arc0___dummy_vdd Path9998_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* b<5> is trigger node
* b<5> is output
* b<5> is input
* b<5> is watch node
* b<5> is falling
V__dummy_vdd Path9998_Arc0___dummy_vdd 0 1
.ENDS Path9998_Arc0

.SUBCKT Path9998_Arc1 b<5> XI23_XI173_net4
* b<5> input conn_to_trigger
* XI23_XI173_net4 output conn_to_trigger
MNXI23_XI173_MNM0 XI23_XI173_net4 a<2> XI23_XI173_net6 XI23_XI173_net6 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI173_MNM1 XI23_XI173_net6 b<5> Path9998_Arc1_gnd Path9998_Arc1_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI173_MPM1 XI23_XI173_net4 b<5> Path9998_Arc1_vdd Path9998_Arc1_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MPXI23_XI173_MPM0 XI23_XI173_net4 Path9998_Arc1_vdd Path9998_Arc1_vdd Path9998_Arc1_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI23_XI173_net4 is output
* XI23_XI173_net4 is watch node
* XI23_XI173_net4 is rising
.IC V(XI23_XI173_net4)=0
* XI23_XI173_net6 is rising
.IC V(XI23_XI173_net6)=0
* a<2> is input
* a<2> is logic 1
V1 a<2> 0 DC=1
* b<5> is trigger node
* b<5> is input
* b<5> is falling
* gnd is ground
V2 Path9998_Arc1_gnd 0 DC=0
* vdd is positive supply
V3 Path9998_Arc1_vdd 0 DC=1
.ENDS Path9998_Arc1

.SUBCKT Path9998_Arc2 XI23_XI173_net4 XI115_pbar
* XI23_XI173_net4 input conn_to_trigger
* XI115_pbar output conn_to_trigger
MNXI115_MNM55 XI115_cbar XI115_pbar XI115_net1 Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM56 p34 XI115_p XI115_net1 Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM57 XI115_abar XI115_pbar XI115_net13 Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM58 XI115_cbar XI115_p XI115_net13 Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM59 p43 XI115_abar XI115_p Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM62 p43 p52 XI115_pbar Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM54 XI115_cbar XI115_p XI115_net1 Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM55 p34 XI115_pbar XI115_net1 Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM56 XI115_abar XI115_p XI115_net13 Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM57 XI115_cbar XI115_pbar XI115_net13 Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM59 XI115_p p43 p52 Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM61 XI115_pbar p43 XI115_abar Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM63 XI115_p p52 p43 Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM64 XI115_pbar XI115_abar p43 Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_XI12_MNM0 XI115_cbar p34 Path9998_Arc2_gnd Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_XI13_MNM0 XI115_abar p52 Path9998_Arc2_gnd Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_XI13_MPM0 XI115_abar p52 Path9998_Arc2_vdd Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI173_MNM2 p52 XI23_XI173_net4 Path9998_Arc2_gnd Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI173_MPM2 p52 XI23_XI173_net4 Path9998_Arc2_vdd Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI115_MNM65 p52 0 XI115_pbar Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM67 XI115_abar 0 XI115_p Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_XI10_MNM0 0 XI115_net1 0 Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_XI10_MPM0 Path9998_Arc2_vdd XI115_net1 Path9998_Arc2_vdd Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_XI11_MNM0 0 XI115_net13 0 Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_XI11_MPM0 Path9998_Arc2_vdd XI115_net13 Path9998_Arc2_vdd Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI159_MNM2 p34 0 0 Path9998_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI159_MPM2 p34 Path9998_Arc2_vdd Path9998_Arc2_vdd Path9998_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI115_abar is rising
.IC V(XI115_abar)=0
* XI115_cbar is logic 0
.IC V(XI115_cbar)=0
* XI115_net1 has unknown logic
.IC V(XI115_net1)=1
* XI115_net13 has unknown logic
.IC V(XI115_net13)=0
* XI115_p is falling
.IC V(XI115_p)=1
* XI115_pbar is rising
.IC V(XI115_pbar)=0
* XI23_XI173_net4 is trigger node
* XI23_XI173_net4 is input
* XI23_XI173_net4 is rising
* gnd is ground
V1 Path9998_Arc2_gnd 0 DC=0
* p34 is input
* p34 is logic 1
V2 p34 0 DC=1
* p43 is input
* p43 is logic 0
V3 p43 0 DC=0
* p52 is output
* p52 is watch node
* p52 is falling
.IC V(p52)=1
* vdd is positive supply
V4 Path9998_Arc2_vdd 0 DC=1
.ENDS Path9998_Arc2

.SUBCKT Path9998_Arc4 XI115_pbar XI115_net1
* XI115_pbar input conn_to_trigger
* XI115_net1 output conn_to_trigger
MNXI115_MNM55 XI115_cbar XI115_pbar XI115_net1 Path9998_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM56 p34 XI115_p XI115_net1 Path9998_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM57 XI115_abar XI115_pbar XI115_net13 Path9998_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM58 XI115_cbar XI115_p XI115_net13 Path9998_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM54 XI115_cbar XI115_p XI115_net1 Path9998_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM55 p34 XI115_pbar XI115_net1 Path9998_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM56 XI115_abar XI115_p XI115_net13 Path9998_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM57 XI115_cbar XI115_pbar XI115_net13 Path9998_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_XI12_MPM0 XI115_cbar p34 Path9998_Arc4_vdd Path9998_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_XI13_MPM0 XI115_abar p52 Path9998_Arc4_vdd Path9998_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI115_MNM59 0 XI115_abar 0 Path9998_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_MNM67 XI115_abar 0 0 Path9998_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM61 Path9998_Arc4_vdd Path9998_Arc4_vdd XI115_abar Path9998_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_MPM64 Path9998_Arc4_vdd XI115_abar Path9998_Arc4_vdd Path9998_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
CXI115_MPM64_miller_load XI115_abar 0 0.0235446FF
MNXI115_XI11_MNM0 0 XI115_net13 0 Path9998_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_XI11_MPM0 Path9998_Arc4_vdd XI115_net13 Path9998_Arc4_vdd Path9998_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_XI12_MNM0 XI115_cbar 0 0 Path9998_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI115_XI13_MNM0 XI115_abar 0 0 Path9998_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI115_abar is logic 1
.IC V(XI115_abar)=1
* XI115_cbar is logic 1
.IC V(XI115_cbar)=1
* XI115_net1 is output
* XI115_net1 is watch node
* XI115_net1 is rising
.IC V(XI115_net1)=0
* XI115_net13 has unknown logic
.IC V(XI115_net13)=1
* XI115_p is input
* XI115_p is falling
V__XI115_p_rail_voltage __XI115_p_rail_voltage 0 DC=1
E1 XI115_p __XI115_p_rail_voltage XI115_pbar 0 -1.0
* XI115_pbar is trigger node
* XI115_pbar is input
* XI115_pbar is rising
* gnd is ground
V2 Path9998_Arc4_gnd 0 DC=0
* p34 is input
* p34 is logic 0
V3 p34 0 DC=0
* p52 is input
* p52 is logic 0
V4 p52 0 DC=0
* vdd is positive supply
V5 Path9998_Arc4_vdd 0 DC=1
.ENDS Path9998_Arc4

.SUBCKT Path9998_Arc5 XI115_net1 XI121_net13
* XI115_net1 input conn_to_trigger
* XI121_net13 output conn_to_trigger
MNXI115_XI10_MNM0 s14 XI115_net1 Path9998_Arc5_gnd Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI115_XI10_MPM0 s14 XI115_net1 Path9998_Arc5_vdd Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_MNM55 XI121_cbar XI121_pbar XI121_net1 Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_MNM56 s07 XI121_p XI121_net1 Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_MNM57 XI121_abar XI121_pbar XI121_net13 Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_MNM58 XI121_cbar XI121_p XI121_net13 Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_MNM59 c06 XI121_abar XI121_p Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_MNM62 c06 s14 XI121_pbar Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_MPM54 XI121_cbar XI121_p XI121_net1 Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_MPM55 s07 XI121_pbar XI121_net1 Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_MPM56 XI121_abar XI121_p XI121_net13 Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_MPM57 XI121_cbar XI121_pbar XI121_net13 Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_MPM59 XI121_p c06 s14 Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_MPM61 XI121_pbar c06 XI121_abar Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_MPM63 XI121_p s14 c06 Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_MPM64 XI121_pbar XI121_abar c06 Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_XI12_MNM0 XI121_cbar s07 Path9998_Arc5_gnd Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_XI13_MNM0 XI121_abar s14 Path9998_Arc5_gnd Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_XI13_MPM0 XI121_abar s14 Path9998_Arc5_vdd Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI109_XI10_MNM0 s07 0 0 Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI109_XI10_MPM0 s07 Path9998_Arc5_vdd Path9998_Arc5_vdd Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_MNM65 s14 0 XI121_pbar Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_MNM67 XI121_abar 0 XI121_p Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI121_XI10_MNM0 0 XI121_net1 0 Path9998_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_XI10_MPM0 Path9998_Arc5_vdd XI121_net1 Path9998_Arc5_vdd Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_XI12_MPM0 XI121_cbar s07 Path9998_Arc5_vdd Path9998_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
CXI121_XI12_MPM0_miller_load s07 0 0.0235446FF
* XI115_net1 is trigger node
* XI115_net1 is input
* XI115_net1 is rising
* XI121_abar is rising
.IC V(XI121_abar)=0
* XI121_cbar is logic 0
.IC V(XI121_cbar)=0
* XI121_net1 has unknown logic
.IC V(XI121_net1)=1
* XI121_net13 has unknown logic
.IC V(XI121_net13)=0
* XI121_p is falling
V__XI121_p_rail_voltage __XI121_p_rail_voltage 0 DC=1
E1 XI121_p __XI121_p_rail_voltage XI121_pbar 0 -1.0
* XI121_pbar is rising
.IC V(XI121_pbar)=0
* c06 is input
* c06 is logic 0
V2 c06 0 DC=0
* gnd is ground
V3 Path9998_Arc5_gnd 0 DC=0
* s07 is input
* s07 is logic 1
V4 s07 0 DC=1
* s14 is output
* s14 is watch node
* s14 is falling
.IC V(s14)=1
* vdd is positive supply
V5 Path9998_Arc5_vdd 0 DC=1
.ENDS Path9998_Arc5

.SUBCKT Path9998_Arc8 XI121_net13 XI134_net13
* XI121_net13 input conn_to_trigger
* XI134_net13 output conn_to_trigger
MNXI121_XI11_MNM0 c26 XI121_net13 Path9998_Arc8_gnd Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI121_XI11_MPM0 c26 XI121_net13 Path9998_Arc8_vdd Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_MNM55 XI134_cbar XI134_pbar XI134_net1 Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_MNM56 s27 XI134_p XI134_net1 Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_MNM57 XI134_abar XI134_pbar XI134_net13 Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_MNM58 XI134_cbar XI134_p XI134_net13 Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_MNM59 c26 XI134_abar XI134_p Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_MNM65 s33 c26 XI134_pbar Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_MNM67 XI134_abar c26 XI134_p Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_MPM54 XI134_cbar XI134_p XI134_net1 Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_MPM55 s27 XI134_pbar XI134_net1 Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_MPM56 XI134_abar XI134_p XI134_net13 Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_MPM57 XI134_cbar XI134_pbar XI134_net13 Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_MPM59 XI134_p c26 s33 Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_MPM61 XI134_pbar c26 XI134_abar Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_MPM63 XI134_p s33 c26 Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_MPM64 XI134_pbar XI134_abar c26 Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_XI12_MNM0 XI134_cbar s27 Path9998_Arc8_gnd Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_XI13_MPM0 XI134_abar s33 Path9998_Arc8_vdd Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI120_XI10_MNM0 s27 0 0 Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI120_XI10_MPM0 s27 Path9998_Arc8_vdd Path9998_Arc8_vdd Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_MNM62 c26 0 XI134_pbar Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI134_XI10_MNM0 0 XI134_net1 0 Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_XI10_MPM0 Path9998_Arc8_vdd XI134_net1 Path9998_Arc8_vdd Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_XI12_MPM0 XI134_cbar s27 Path9998_Arc8_vdd Path9998_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
CXI134_XI12_MPM0_miller_load s27 0 0.0235446FF
MNXI134_XI13_MNM0 XI134_abar 0 0 Path9998_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI121_net13 is trigger node
* XI121_net13 is input
* XI121_net13 is rising
* XI134_abar is logic 1
.IC V(XI134_abar)=1
* XI134_cbar is logic 0
.IC V(XI134_cbar)=0
* XI134_net1 has unknown logic
.IC V(XI134_net1)=1
* XI134_net13 has unknown logic
.IC V(XI134_net13)=0
* XI134_p is falling
V__XI134_p_rail_voltage __XI134_p_rail_voltage 0 DC=1
E1 XI134_p 0 c26 0 1.0
* XI134_pbar has unknown logic
.IC V(XI134_pbar)=0
* c26 is output
* c26 is watch node
* c26 is falling
.IC V(c26)=1
* gnd is ground
V2 Path9998_Arc8_gnd 0 DC=0
* s27 is input
* s27 is logic 1
V3 s27 0 DC=1
* s33 is input
* s33 is logic 0
V4 s33 0 DC=0
* vdd is positive supply
V5 Path9998_Arc8_vdd 0 DC=1
.ENDS Path9998_Arc8

.SUBCKT Path9998_Arc11 XI134_net13 XI137_pbar
* XI134_net13 input conn_to_trigger
* XI137_pbar output conn_to_trigger
MNXI134_XI11_MNM0 c45 XI134_net13 Path9998_Arc11_gnd Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI134_XI11_MPM0 c45 XI134_net13 Path9998_Arc11_vdd Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM55 XI137_cbar XI137_pbar XI137_net1 Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM56 s46 XI137_p XI137_net1 Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM57 XI137_abar XI137_pbar XI137_net13 Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM58 XI137_cbar XI137_p XI137_net13 Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM59 c45 XI137_abar XI137_p Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM65 c33 c45 XI137_pbar Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM67 XI137_abar c45 XI137_p Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM54 XI137_cbar XI137_p XI137_net1 Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM55 s46 XI137_pbar XI137_net1 Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM56 XI137_abar XI137_p XI137_net13 Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM57 XI137_cbar XI137_pbar XI137_net13 Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM59 XI137_p c45 c33 Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM61 XI137_pbar c45 XI137_abar Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM63 XI137_p c33 c45 Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM64 XI137_pbar XI137_abar c45 Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_XI12_MNM0 XI137_cbar s46 Path9998_Arc11_gnd Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_XI13_MPM0 XI137_abar c33 Path9998_Arc11_vdd Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI133_XI10_MNM0 s46 0 0 Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI133_XI10_MPM0 s46 Path9998_Arc11_vdd Path9998_Arc11_vdd Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM62 c45 0 XI137_pbar Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_XI10_MNM0 0 XI137_net1 0 Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_XI10_MPM0 Path9998_Arc11_vdd XI137_net1 Path9998_Arc11_vdd Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_XI11_MNM0 0 XI137_net13 0 Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_XI11_MPM0 Path9998_Arc11_vdd XI137_net13 Path9998_Arc11_vdd Path9998_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_XI13_MNM0 XI137_abar 0 0 Path9998_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI134_net13 is trigger node
* XI134_net13 is input
* XI134_net13 is rising
* XI137_abar is logic 1
.IC V(XI137_abar)=1
* XI137_cbar is logic 0
.IC V(XI137_cbar)=0
* XI137_net1 has unknown logic
.IC V(XI137_net1)=1
* XI137_net13 has unknown logic
.IC V(XI137_net13)=0
* XI137_p is falling
V__XI137_p_rail_voltage __XI137_p_rail_voltage 0 DC=1
E1 XI137_p 0 c45 0 1.0
* XI137_pbar has unknown logic
.IC V(XI137_pbar)=0
* c33 is input
* c33 is logic 0
V2 c33 0 DC=0
* c45 is output
* c45 is watch node
* c45 is falling
.IC V(c45)=1
* gnd is ground
V3 Path9998_Arc11_gnd 0 DC=0
* s46 is input
* s46 is logic 1
V4 s46 0 DC=1
* vdd is positive supply
V5 Path9998_Arc11_vdd 0 DC=1
.ENDS Path9998_Arc11

.SUBCKT Path9998_Arc13 XI137_pbar XI137_net1
* XI137_pbar input conn_to_trigger
* XI137_net1 output conn_to_trigger
MNXI137_MNM55 XI137_cbar XI137_pbar XI137_net1 Path9998_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM56 s46 XI137_p XI137_net1 Path9998_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM57 XI137_abar XI137_pbar XI137_net13 Path9998_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM58 XI137_cbar XI137_p XI137_net13 Path9998_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM54 XI137_cbar XI137_p XI137_net1 Path9998_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM55 s46 XI137_pbar XI137_net1 Path9998_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM56 XI137_abar XI137_p XI137_net13 Path9998_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM57 XI137_cbar XI137_pbar XI137_net13 Path9998_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_XI12_MPM0 XI137_cbar s46 Path9998_Arc13_vdd Path9998_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_XI13_MPM0 XI137_abar c33 Path9998_Arc13_vdd Path9998_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI137_MNM59 0 XI137_abar 0 Path9998_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_MNM67 XI137_abar 0 0 Path9998_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM61 Path9998_Arc13_vdd Path9998_Arc13_vdd XI137_abar Path9998_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_MPM64 Path9998_Arc13_vdd XI137_abar Path9998_Arc13_vdd Path9998_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
CXI137_MPM64_miller_load XI137_abar 0 0.0235446FF
MNXI137_XI11_MNM0 0 XI137_net13 0 Path9998_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_XI11_MPM0 Path9998_Arc13_vdd XI137_net13 Path9998_Arc13_vdd Path9998_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_XI12_MNM0 XI137_cbar 0 0 Path9998_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI137_XI13_MNM0 XI137_abar 0 0 Path9998_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI137_abar is logic 1
.IC V(XI137_abar)=1
* XI137_cbar is logic 1
.IC V(XI137_cbar)=1
* XI137_net1 is output
* XI137_net1 is watch node
* XI137_net1 is rising
.IC V(XI137_net1)=0
* XI137_net13 has unknown logic
.IC V(XI137_net13)=1
* XI137_p is input
* XI137_p is falling
V__XI137_p_rail_voltage __XI137_p_rail_voltage 0 DC=1
E1 XI137_p __XI137_p_rail_voltage XI137_pbar 0 -1.0
* XI137_pbar is trigger node
* XI137_pbar is input
* XI137_pbar is rising
* c33 is input
* c33 is logic 0
V2 c33 0 DC=0
* gnd is ground
V3 Path9998_Arc13_gnd 0 DC=0
* s46 is input
* s46 is logic 0
V4 s46 0 DC=0
* vdd is positive supply
V5 Path9998_Arc13_vdd 0 DC=1
.ENDS Path9998_Arc13

.SUBCKT Path9998_Arc14 XI137_net1 aout<9>
* XI137_net1 input conn_to_trigger
* aout<9> output conn_to_trigger
MNXI137_XI10_MNM0 aout<9> XI137_net1 Path9998_Arc14_gnd Path9998_Arc14_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI137_XI10_MPM0 aout<9> XI137_net1 Path9998_Arc14_vdd Path9998_Arc14_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI166_XI15_MNM1 aout<9> 0 0 Path9998_Arc14_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI15_MPM1 Path9998_Arc14_vdd Path9998_Arc14_vdd aout<9> Path9998_Arc14_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI15_XI0_MNM0 0 aout<9> 0 Path9998_Arc14_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI15_XI0_MPM0 Path9998_Arc14_vdd aout<9> Path9998_Arc14_vdd Path9998_Arc14_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI137_net1 is trigger node
* XI137_net1 is input
* XI137_net1 is rising
* aout<9> is output
* aout<9> is watch node
* aout<9> is falling
.IC V(aout<9>)=1
* gnd is ground
V1 Path9998_Arc14_gnd 0 DC=0
* vdd is positive supply
V2 Path9998_Arc14_vdd 0 DC=1
.ENDS Path9998_Arc14

.SUBCKT Path9998_Arc15 aout<9> XI166_XI14_net4
* aout<9> input conn_to_trigger
* XI166_XI14_net4 output conn_to_trigger
MNXI166_XI14_MNM0 XI166_XI14_net4 aout<9> XI166_XI14_net6 XI166_XI14_net6 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI14_MNM1 XI166_XI14_net6 bout<9> Path9998_Arc15_gnd Path9998_Arc15_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI14_MPM0 XI166_XI14_net4 aout<9> Path9998_Arc15_vdd Path9998_Arc15_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MPXI166_XI14_MPM1 XI166_XI14_net4 Path9998_Arc15_vdd Path9998_Arc15_vdd Path9998_Arc15_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI166_XI14_net4 is output
* XI166_XI14_net4 is watch node
* XI166_XI14_net4 is rising
.IC V(XI166_XI14_net4)=0
* XI166_XI14_net6 is logic 0
.IC V(XI166_XI14_net6)=0
* aout<9> is trigger node
* aout<9> is input
* aout<9> is falling
* bout<9> is input
* bout<9> is logic 1
V1 bout<9> 0 DC=1
* gnd is ground
V2 Path9998_Arc15_gnd 0 DC=0
* vdd is positive supply
V3 Path9998_Arc15_vdd 0 DC=1
.ENDS Path9998_Arc15

.SUBCKT Path9998_Arc16 XI166_XI14_net4 XI166_g9
* XI166_XI14_net4 input conn_to_trigger
* XI166_g9 output conn_to_trigger
MNXI166_XI14_MNM2 XI166_g9 XI166_XI14_net4 Path9998_Arc16_gnd Path9998_Arc16_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI14_MPM2 XI166_g9 XI166_XI14_net4 Path9998_Arc16_vdd Path9998_Arc16_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI166_XI14_net4 is trigger node
* XI166_XI14_net4 is input
* XI166_XI14_net4 is rising
* XI166_g9 is output
* XI166_g9 is watch node
* XI166_g9 is falling
.IC V(XI166_g9)=1
* gnd is ground
V1 Path9998_Arc16_gnd 0 DC=0
* vdd is positive supply
V2 Path9998_Arc16_vdd 0 DC=1
.ENDS Path9998_Arc16

.SUBCKT Path9998_Arc17 XI166_g9 XI166_XI34_net11
* XI166_g9 input conn_to_trigger
* XI166_XI34_net11 output conn_to_trigger
MNXI166_XI34_MNM23 XI166_XI34_net11 XI166_g9 Path9998_Arc17_gnd Path9998_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_MPM18 XI166_XI34_net11 XI166_net1 XI166_XI34_net18 Path9998_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_MPM19 XI166_XI34_net18 XI166_g6 XI166_XI34_net15 Path9998_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_MPM20 XI166_XI34_net15 XI166_g7 XI166_XI34_net62 Path9998_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_MPM21 XI166_XI34_net62 XI166_g8 XI166_XI34_net20 Path9998_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_MPM23 XI166_XI34_net20 XI166_g9 Path9998_Arc17_vdd Path9998_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI166_XI34_MNM15 XI166_XI34_net11 0 0 Path9998_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI34_MNM19 XI166_XI34_net11 0 0 Path9998_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI34_MNM20 XI166_XI34_net11 0 0 Path9998_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI34_MNM21 XI166_XI34_net11 0 0 Path9998_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_MPM15 XI166_XI34_net11 Path9998_Arc17_vdd XI166_XI34_net20 Path9998_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_MPM16 XI166_XI34_net11 Path9998_Arc17_vdd XI166_XI34_net62 Path9998_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_MPM17 XI166_XI34_net11 Path9998_Arc17_vdd XI166_XI34_net15 Path9998_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_MPM22 XI166_XI34_net11 Path9998_Arc17_vdd Path9998_Arc17_vdd Path9998_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI166_XI34_net11 is output
* XI166_XI34_net11 is watch node
* XI166_XI34_net11 is rising
.IC V(XI166_XI34_net11)=0
* XI166_XI34_net15 is rising
.IC V(XI166_XI34_net15)=0.41919
* XI166_XI34_net18 is rising
.IC V(XI166_XI34_net18)=0.41919
* XI166_XI34_net20 is rising
.IC V(XI166_XI34_net20)=0.41919
* XI166_XI34_net62 is rising
.IC V(XI166_XI34_net62)=0.41919
* XI166_g6 is input
* XI166_g6 is logic 0
V1 XI166_g6 0 DC=0
* XI166_g7 is input
* XI166_g7 is logic 0
V2 XI166_g7 0 DC=0
* XI166_g8 is input
* XI166_g8 is logic 0
V3 XI166_g8 0 DC=0
* XI166_g9 is trigger node
* XI166_g9 is input
* XI166_g9 is falling
* XI166_net1 is input
* XI166_net1 is logic 0
V4 XI166_net1 0 DC=0
* gnd is ground
V5 Path9998_Arc17_gnd 0 DC=0
* vdd is positive supply
V6 Path9998_Arc17_vdd 0 DC=1
.ENDS Path9998_Arc17

.SUBCKT Path9998_Arc18 XI166_XI34_net11 XI166_net18
* XI166_XI34_net11 input conn_to_trigger
* XI166_net18 output conn_to_trigger
MNXI166_XI34_XI3_MNM0 XI166_net18 XI166_XI34_net11 Path9998_Arc18_gnd Path9998_Arc18_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI34_XI3_MPM0 XI166_net18 XI166_XI34_net11 Path9998_Arc18_vdd Path9998_Arc18_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI166_XI17_MNM1 XI166_net18 0 0 Path9998_Arc18_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI17_MPM1 Path9998_Arc18_vdd Path9998_Arc18_vdd XI166_net18 Path9998_Arc18_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI17_XI0_MNM0 0 XI166_net18 0 Path9998_Arc18_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI17_XI0_MPM0 Path9998_Arc18_vdd XI166_net18 Path9998_Arc18_vdd Path9998_Arc18_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM0 0 XI166_net18 0 Path9998_Arc18_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM3 0 XI166_net18 0 Path9998_Arc18_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM8 0 XI166_net18 0 Path9998_Arc18_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM0 Path9998_Arc18_vdd XI166_net18 Path9998_Arc18_vdd Path9998_Arc18_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM3 Path9998_Arc18_vdd XI166_net18 Path9998_Arc18_vdd Path9998_Arc18_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM8 Path9998_Arc18_vdd XI166_net18 Path9998_Arc18_vdd Path9998_Arc18_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI166_XI34_net11 is trigger node
* XI166_XI34_net11 is input
* XI166_XI34_net11 is rising
* XI166_net18 is output
* XI166_net18 is watch node
* XI166_net18 is falling
.IC V(XI166_net18)=1
* gnd is ground
V1 Path9998_Arc18_gnd 0 DC=0
* vdd is positive supply
V2 Path9998_Arc18_vdd 0 DC=1
.ENDS Path9998_Arc18

.SUBCKT Path9998_Arc19 XI166_net18 XI166_XI35_net11
* XI166_net18 input conn_to_trigger
* XI166_XI35_net11 output conn_to_trigger
MNXI166_XI35_MNM15 XI166_XI35_net11 XI166_net18 XI166_XI35_net16 Path9998_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM16 XI166_XI35_net16 XI166_p10 XI166_XI35_net17 Path9998_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM17 XI166_XI35_net17 XI166_p11 XI166_XI35_net72 Path9998_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM18 XI166_XI35_net72 XI166_p12 XI166_XI35_net19 Path9998_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM22 XI166_XI35_net19 XI166_p13 Path9998_Arc19_gnd Path9998_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM18 XI166_XI35_net11 XI166_net18 XI166_XI35_net18 Path9998_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM19 XI166_XI35_net18 XI166_g10 XI166_XI35_net15 Path9998_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM20 XI166_XI35_net15 XI166_g11 XI166_XI35_net62 Path9998_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM21 XI166_XI35_net62 XI166_g12 XI166_XI35_net20 Path9998_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM23 XI166_XI35_net20 XI166_g13 Path9998_Arc19_vdd Path9998_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI166_XI35_MNM19 XI166_XI35_net11 0 XI166_XI35_net17 Path9998_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM20 XI166_XI35_net11 0 XI166_XI35_net72 Path9998_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM21 XI166_XI35_net11 0 XI166_XI35_net19 Path9998_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI35_MNM23 XI166_XI35_net11 0 0 Path9998_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM15 XI166_XI35_net11 Path9998_Arc19_vdd XI166_XI35_net20 Path9998_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM16 XI166_XI35_net11 Path9998_Arc19_vdd XI166_XI35_net62 Path9998_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM17 XI166_XI35_net11 Path9998_Arc19_vdd XI166_XI35_net15 Path9998_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_MPM22 XI166_XI35_net11 Path9998_Arc19_vdd Path9998_Arc19_vdd Path9998_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI166_XI35_net11 is output
* XI166_XI35_net11 is watch node
* XI166_XI35_net11 is rising
.IC V(XI166_XI35_net11)=0
* XI166_XI35_net15 is initially high
.IC V(XI166_XI35_net15)=1
* XI166_XI35_net16 has unknown logic
.IC V(XI166_XI35_net16)=0
* XI166_XI35_net17 has unknown logic
.IC V(XI166_XI35_net17)=0
* XI166_XI35_net18 is initially high
.IC V(XI166_XI35_net18)=1
* XI166_XI35_net19 is logic 0
.IC V(XI166_XI35_net19)=0
* XI166_XI35_net20 is logic 1
.IC V(XI166_XI35_net20)=1
* XI166_XI35_net62 is initially high
.IC V(XI166_XI35_net62)=1
* XI166_XI35_net72 has unknown logic
.IC V(XI166_XI35_net72)=0
* XI166_g10 is input
* XI166_g10 is logic 0
V1 XI166_g10 0 DC=0
* XI166_g11 is input
* XI166_g11 is logic 0
V2 XI166_g11 0 DC=0
* XI166_g12 is input
* XI166_g12 is logic 0
V3 XI166_g12 0 DC=0
* XI166_g13 is input
* XI166_g13 is logic 0
V4 XI166_g13 0 DC=0
* XI166_net18 is trigger node
* XI166_net18 is input
* XI166_net18 is falling
* XI166_p10 is input
* XI166_p10 is logic 1
V5 XI166_p10 0 DC=1
* XI166_p11 is input
* XI166_p11 is logic 1
V6 XI166_p11 0 DC=1
* XI166_p12 is input
* XI166_p12 is logic 1
V7 XI166_p12 0 DC=1
* XI166_p13 is input
* XI166_p13 is logic 1
V8 XI166_p13 0 DC=1
* gnd is ground
V9 Path9998_Arc19_gnd 0 DC=0
* vdd is positive supply
V10 Path9998_Arc19_vdd 0 DC=1
.ENDS Path9998_Arc19

.SUBCKT Path9998_Arc20 XI166_XI35_net11 XI166_net12
* XI166_XI35_net11 input conn_to_trigger
* XI166_net12 output conn_to_trigger
MNXI166_XI35_XI3_MNM0 XI166_net12 XI166_XI35_net11 Path9998_Arc20_gnd Path9998_Arc20_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI35_XI3_MPM0 XI166_net12 XI166_XI35_net11 Path9998_Arc20_vdd Path9998_Arc20_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI166_XI28_MNM1 XI166_net12 0 0 Path9998_Arc20_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI28_MPM1 Path9998_Arc20_vdd Path9998_Arc20_vdd XI166_net12 Path9998_Arc20_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI166_XI35_net11 is trigger node
* XI166_XI35_net11 is input
* XI166_XI35_net11 is rising
* XI166_net12 is output
* XI166_net12 is watch node
* XI166_net12 is falling
.IC V(XI166_net12)=1
* gnd is ground
V1 Path9998_Arc20_gnd 0 DC=0
* vdd is positive supply
V2 Path9998_Arc20_vdd 0 DC=1
.ENDS Path9998_Arc20

.SUBCKT Path9998_Arc21 s<14> XI166_net12
* s<14> output conn_to_trigger
* XI166_net12 input conn_to_trigger
MNXI166_XI28_MNM0 XI166_XI28_abar XI166_p14 s<14> Path9998_Arc21_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI28_MPM0 s<14> XI166_XI28_bbar XI166_XI28_abar Path9998_Arc21_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI166_XI28_XI0_MNM0 XI166_XI28_abar XI166_net12 Path9998_Arc21_gnd Path9998_Arc21_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI28_XI0_MPM0 XI166_XI28_abar XI166_net12 Path9998_Arc21_vdd Path9998_Arc21_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI166_XI28_MNM1 0 0 s<14> Path9998_Arc21_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI166_XI28_MPM1 s<14> Path9998_Arc21_vdd Path9998_Arc21_vdd Path9998_Arc21_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI166_XI28_abar is rising
.IC V(XI166_XI28_abar)=0
* XI166_XI28_bbar is input
* XI166_XI28_bbar is logic 0
V1 XI166_XI28_bbar 0 DC=0
* XI166_net12 is trigger node
* XI166_net12 is input
* XI166_net12 is falling
* XI166_p14 is input
* XI166_p14 is logic 1
V2 XI166_p14 0 DC=1
* gnd is ground
V3 Path9998_Arc21_gnd 0 DC=0
* s<14> is output
* s<14> is watch node
* s<14> is rising
.IC V(s<14>)=0
Cs<14>__net_load s<14> 0 2FF
* vdd is positive supply
V4 Path9998_Arc21_vdd 0 DC=1
.ENDS Path9998_Arc21

X0 b<5> Path9998_Arc0
X1 b<5> XI23_XI173_net4 Path9998_Arc1
X2 XI23_XI173_net4 XI115_pbar Path9998_Arc2
X3 XI115_pbar XI115_net1 Path9998_Arc4
X4 XI115_net1 XI121_net13 Path9998_Arc5
X5 XI121_net13 XI134_net13 Path9998_Arc8
X6 XI134_net13 XI137_pbar Path9998_Arc11
X7 XI137_pbar XI137_net1 Path9998_Arc13
X8 XI137_net1 aout<9> Path9998_Arc14
X9 aout<9> XI166_XI14_net4 Path9998_Arc15
X10 XI166_XI14_net4 XI166_g9 Path9998_Arc16
X11 XI166_g9 XI166_XI34_net11 Path9998_Arc17
X12 XI166_XI34_net11 XI166_net18 Path9998_Arc18
X13 XI166_net18 XI166_XI35_net11 Path9998_Arc19
X14 XI166_XI35_net11 XI166_net12 Path9998_Arc20
X15 s<14> XI166_net12 Path9998_Arc21

.TEMP 25

* input slope is 0.04
VIN b<5> 0 PWL(0ns 1 0.05ns 0)

* output slope is 0.154952

* Transient analysis
.TRAN 0.1PS 5.39827NS

* Look at the input and output
.PRINT TRAN V(b<5>) V(s<14>)

* Path measurements.
.MEASURE TRAN path_delay TRIG v(b<5>) VAL=0.5 CROSS=1 TARG v(s<14>) VAL=0.5 CROSS=1
.MEASURE TRAN path_input_transition TRIG v(b<5>) VAL=0.9 CROSS=1 TARG v(b<5>) VAL=0.1 CROSS=1
.MEASURE TRAN path_output_transition TRIG v(s<14>) VAL=0.1 CROSS=1 TARG v(s<14>) VAL=0.9 CROSS=1

.END
