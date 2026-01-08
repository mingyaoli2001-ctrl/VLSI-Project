* Version T-2022.03-SP3 -- linux64 
* Date   : Fri Nov 28 16:52:50 2025
.option lis_new=1 statfl=1 post=0 runlvl=6 autostop
.save level=none
* Begin user SPICE header.
*nanosim tech="direct"
*nanosim tech="voltage 1.0"
*nanosim tech="vds 0 1.0 0.05" *nanosim tech="vgs 0 1.0 0.05"
.include "/package/eda/cells/FreePDK45/models/hspice/tran_models/models_nom/NMOS_VTL.inc"
.include "/package/eda/cells/FreePDK45/models/hspice/tran_models/models_nom/PMOS_VTL.inc"

* End user SPICE header.

* PATH 10945
* 
* 
* Startpoint:        b<2> (inout port)             
* Endpoint:          s<14> (inout port)            
* Path Type:         max                           
* Constraint:        set_output_delay check        
* 
*     Path     Incr   Adjust    Trans      Cap  NT     Point                          Net                           
* -------- -------- -------- -------- -------- ---- -- ------------------------------ ------------------------------
*                      0.000                           clock MCLK (rise)                                            
*                      1.000                           input external delay                                         
*    1.000             0.000    0.040    0.002  O    r b<2> (inout)                   b<2>                          
*    1.000    0.000             0.040    0.002       r XI23.XI148.MNM1.g (AND)        b<2>                          
*    1.013    0.013             0.019    0.001       f XI23.XI148.MPM2.g (AND)        XI23.XI148.net4               
*    1.029    0.016             0.028    0.001       r XI24.XI7.MNM0.g (inverter)     p21                           
*    1.041    0.011             0.025    0.001       f XI24.MPM2.g (FAdder)           XI24.abar                     
*    1.096    0.056             0.099    0.002       r XI24.MNM58.g (FAdder)          XI24.p                        
*    1.129    0.032             0.063    0.001       r XI24.XI11.MNM0.g (inverter)    XI24.net13                    
*    1.138    0.010             0.024    0.001       f XI118.MPM3.g (FAdder)          c03                           
*    1.188    0.049             0.099    0.002       r XI118.MNM58.g (FAdder)         XI118.p                       
*    1.220    0.032             0.063    0.001       r XI118.XI11.MNM0.g (inverter)   XI118.net13                   
*    1.230    0.010             0.024    0.001       f XI131.MPM3.g (FAdder)          c23                           
*    1.279    0.049             0.099    0.002       r XI131.MNM56.g (FAdder)         XI131.p                       
*    1.310    0.031             0.062    0.001       r XI131.XI10.MNM0.g (inverter)   XI131.net1                    
*    1.320    0.010             0.024    0.001       f XI102.XI3.MPM0.g (inverter)    s42                           
*    1.338    0.017             0.029    0.001       r XI102.MNM1.g (HAdder)          XI102.bbar                    
*    1.357    0.019             0.028    0.001       f XI146.XI22.XI2.MPM0.g (inverter) aout<5>                       
*    1.375    0.018             0.030    0.001       r XI146.XI22.MNM4.g (HAdder)     XI146.XI22.abar               
*    1.388    0.013             0.020    0.001       f XI146.XI4.MPM4.g (FA_CO)       XI146.net4                    
*    1.430    0.041             0.084    0.001       r XI146.XI4.MNM6.g (FA_CO)       XI146.net3                    
*    1.442    0.012             0.032    0.001       f XI146.XI6.MPM4.g (FA_CO)       XI146.net39                   
*    1.487    0.045             0.085    0.001       r XI146.XI6.MNM6.g (FA_CO)       XI146.net13                   
*    1.499    0.012             0.032    0.001       f XI146.XI8.MPM4.g (FA_CO)       XI146.net16                   
*    1.544    0.045             0.085    0.001       r XI146.XI8.MNM6.g (FA_CO)       XI146.net1                    
*    1.557    0.012             0.032    0.001       f XI146.XI10.MPM4.g (FA_CO)      XI146.net27                   
*    1.601    0.045             0.085    0.001       r XI146.XI10.MNM6.g (FA_CO)      XI146.net42                   
*    1.614    0.012             0.032    0.001       f XI146.XI12.MPM4.g (FA_CO)      XI146.net44                   
*    1.659    0.045             0.085    0.001       r XI146.XI12.MNM6.g (FA_CO)      XI146.net41                   
*    1.671    0.012             0.032    0.001       f XI146.XI14.MPM4.g (FA_CO)      XI146.net56                   
*    1.716    0.045             0.085    0.001       r XI146.XI14.MNM6.g (FA_CO)      XI146.net40                   
*    1.729    0.012             0.032    0.001       f XI146.XI16.MPM4.g (FA_CO)      XI146.net68                   
*    1.774    0.045             0.085    0.001       r XI146.XI16.MNM6.g (FA_CO)      XI146.net80                   
*    1.786    0.012             0.032    0.001       f XI146.XI18.MPM4.g (FA_CO)      XI146.net83                   
*    1.831    0.045             0.085    0.001       r XI146.XI18.MNM6.g (FA_CO)      XI146.net81                   
*    1.843    0.012             0.032    0.001       f XI146.XI20.MPM4.g (FA_CO)      XI146.net95                   
*    1.888    0.045             0.085    0.001       r XI146.XI21.MNM0.g (FA_SUM)     XI146.net79                   
*    1.908    0.019             0.039    0.001       f XI146.XI21.MPM7.g (FA_SUM)     XI146.XI21.net4               
*    1.944    0.037             0.066    0.002  O    r s<14> (inout)                  s<14>                         
*    1.944                                             data arrival time                                            
*             0.944    1.000                           Total                                                        
*                                                                                                                   
*   10.000   10.000                                    clock MCLK (rise)                                            
*   10.000    0.000                                    output external delay                                        
*   10.000    0.000                                    clock uncertainty                                            
*   10.000                                             data required time                                           
* ------------------------------------------------------------------------------------------------------------------
*   10.000                                             data required time                                           
*   -1.944                                             data arrival time                                            
* ------------------------------------------------------------------------------------------------------------------
*    8.056                                             slack (MET)                                                  
.option mixed_num_format=1
.option scale=1.0
.option geoshrink=1.0

.SUBCKT Path10945_Arc0 b<2>
* b<2> input output conn_to_trigger
* Port b<2> b<2> PIN_b<2>
* Off transistors
MNXI23_XI147_MNM1 0 b<2> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI147_MPM1 Path10945_Arc0___dummy_vdd b<2> Path10945_Arc0___dummy_vdd Path10945_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI149_MNM1 0 b<2> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI149_MPM1 Path10945_Arc0___dummy_vdd b<2> Path10945_Arc0___dummy_vdd Path10945_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI150_MNM1 0 b<2> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI150_MPM1 Path10945_Arc0___dummy_vdd b<2> Path10945_Arc0___dummy_vdd Path10945_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI151_MNM1 0 b<2> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI151_MPM1 Path10945_Arc0___dummy_vdd b<2> Path10945_Arc0___dummy_vdd Path10945_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI152_MNM1 0 b<2> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI152_MPM1 Path10945_Arc0___dummy_vdd b<2> Path10945_Arc0___dummy_vdd Path10945_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI153_MNM1 0 b<2> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI153_MPM1 Path10945_Arc0___dummy_vdd b<2> Path10945_Arc0___dummy_vdd Path10945_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI154_MNM1 0 b<2> 0 0 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI154_MPM1 Path10945_Arc0___dummy_vdd b<2> Path10945_Arc0___dummy_vdd Path10945_Arc0___dummy_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* b<2> is trigger node
* b<2> is output
* b<2> is input
* b<2> is watch node
* b<2> is rising
V__dummy_vdd Path10945_Arc0___dummy_vdd 0 1
.ENDS Path10945_Arc0

.SUBCKT Path10945_Arc1 b<2> XI23_XI148_net4
* b<2> input conn_to_trigger
* XI23_XI148_net4 output conn_to_trigger
MNXI23_XI148_MNM0 XI23_XI148_net4 a<1> XI23_XI148_net6 XI23_XI148_net6 nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI23_XI148_MNM1 XI23_XI148_net6 b<2> Path10945_Arc1_gnd Path10945_Arc1_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI148_MPM1 XI23_XI148_net4 b<2> Path10945_Arc1_vdd Path10945_Arc1_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MPXI23_XI148_MPM0 XI23_XI148_net4 Path10945_Arc1_vdd Path10945_Arc1_vdd Path10945_Arc1_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI23_XI148_net4 is output
* XI23_XI148_net4 is watch node
* XI23_XI148_net4 is falling
.IC V(XI23_XI148_net4)=1
* XI23_XI148_net6 is falling
.IC V(XI23_XI148_net6)=0.530212
* a<1> is input
* a<1> is logic 1
V1 a<1> 0 DC=1
* b<2> is trigger node
* b<2> is input
* b<2> is rising
* gnd is ground
V2 Path10945_Arc1_gnd 0 DC=0
* vdd is positive supply
V3 Path10945_Arc1_vdd 0 DC=1
.ENDS Path10945_Arc1

.SUBCKT Path10945_Arc2 XI23_XI148_net4 p21
* XI23_XI148_net4 input conn_to_trigger
* p21 output conn_to_trigger
MNXI23_XI148_MNM2 p21 XI23_XI148_net4 Path10945_Arc2_gnd Path10945_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI23_XI148_MPM2 p21 XI23_XI148_net4 Path10945_Arc2_vdd Path10945_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI24_MNM4 0 p21 0 Path10945_Arc2_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM6 Path10945_Arc2_vdd p21 Path10945_Arc2_vdd Path10945_Arc2_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI23_XI148_net4 is trigger node
* XI23_XI148_net4 is input
* XI23_XI148_net4 is falling
* gnd is ground
V1 Path10945_Arc2_gnd 0 DC=0
* p21 is output
* p21 is watch node
* p21 is rising
.IC V(p21)=0
* vdd is positive supply
V2 Path10945_Arc2_vdd 0 DC=1
.ENDS Path10945_Arc2

.SUBCKT Path10945_Arc3 p21 XI24_abar
* p21 input conn_to_trigger
* XI24_abar output conn_to_trigger
MNXI24_MNM57 XI24_abar XI24_pbar XI24_net13 Path10945_Arc3_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM56 XI24_abar XI24_p XI24_net13 Path10945_Arc3_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_XI7_MNM0 XI24_abar p21 Path10945_Arc3_gnd Path10945_Arc3_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_XI7_MPM0 XI24_abar p21 Path10945_Arc3_vdd Path10945_Arc3_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI24_MNM58 0 0 XI24_net13 Path10945_Arc3_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM57 Path10945_Arc3_vdd Path10945_Arc3_vdd XI24_net13 Path10945_Arc3_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_XI11_MNM0 0 XI24_net13 0 Path10945_Arc3_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_XI11_MPM0 Path10945_Arc3_vdd XI24_net13 Path10945_Arc3_vdd Path10945_Arc3_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI24_abar is output
* XI24_abar is watch node
* XI24_abar is falling
.IC V(XI24_abar)=1
* XI24_net13 is falling
.IC V(XI24_net13)=1
* XI24_p is input
* XI24_p is logic 0
V1 XI24_p 0 DC=0
* XI24_pbar is input
* XI24_pbar is logic 1
V2 XI24_pbar 0 DC=1
* gnd is ground
V3 Path10945_Arc3_gnd 0 DC=0
* p21 is trigger node
* p21 is input
* p21 is rising
* vdd is positive supply
V4 Path10945_Arc3_vdd 0 DC=1
.ENDS Path10945_Arc3

.SUBCKT Path10945_Arc4 XI24_abar XI24_p
* XI24_abar input conn_to_trigger
* XI24_p output conn_to_trigger
MNXI24_MNM4 XI24_p p21 XI24_net9 Path10945_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_MNM6 XI24_p XI24_abar XI24_net8 Path10945_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_MNM7 XI24_net8 XI24_net2 Path10945_Arc4_gnd Path10945_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM2 XI24_net7 XI24_abar Path10945_Arc4_vdd Path10945_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM3 XI24_p p12 XI24_net7 Path10945_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI24_MNM5 XI24_net9 0 0 Path10945_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_MNM56 0 XI24_p 0 Path10945_Arc4_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM54 Path10945_Arc4_vdd XI24_p Path10945_Arc4_vdd Path10945_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM56 Path10945_Arc4_vdd XI24_p Path10945_Arc4_vdd Path10945_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM7 XI24_p Path10945_Arc4_vdd Path10945_Arc4_vdd Path10945_Arc4_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI24_abar is trigger node
* XI24_abar is input
* XI24_abar is falling
* XI24_net2 is input
* XI24_net2 is logic 1
V1 XI24_net2 0 DC=1
* XI24_net7 is rising
.IC V(XI24_net7)=0.41919
* XI24_net8 is logic 0
.IC V(XI24_net8)=0
* XI24_net9 has unknown logic
.IC V(XI24_net9)=0
* XI24_p is output
* XI24_p is watch node
* XI24_p is rising
.IC V(XI24_p)=0
* gnd is ground
V2 Path10945_Arc4_gnd 0 DC=0
* p12 is input
* p12 is logic 0
V3 p12 0 DC=0
* p21 is input
* p21 is rising
V__p21_rail_voltage __p21_rail_voltage 0 DC=1
E4 p21 0 XI24_abar __p21_rail_voltage -1.0
* vdd is positive supply
V5 Path10945_Arc4_vdd 0 DC=1
.ENDS Path10945_Arc4

.SUBCKT Path10945_Arc5 XI24_p XI24_net13
* XI24_p input conn_to_trigger
* XI24_net13 output conn_to_trigger
MNXI24_MNM57 XI24_abar XI24_pbar XI24_net13 Path10945_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_MNM58 XI24_cbar XI24_p XI24_net13 Path10945_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM56 XI24_abar XI24_p XI24_net13 Path10945_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM57 XI24_cbar XI24_pbar XI24_net13 Path10945_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_XI12_MPM0 XI24_cbar p03 Path10945_Arc5_vdd Path10945_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_XI7_MNM0 XI24_abar p21 Path10945_Arc5_gnd Path10945_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_XI9_MNM0 XI24_pbar XI24_p Path10945_Arc5_gnd Path10945_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_XI9_MPM0 XI24_pbar XI24_p Path10945_Arc5_vdd Path10945_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI24_MNM55 0 XI24_pbar 0 Path10945_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_MNM55__1 XI24_cbar 0 0 Path10945_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_MNM6 0 XI24_abar 0 Path10945_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
CXI24_MNM6_miller_load XI24_abar 0 0.0236115FF
MPXI24_MPM2 Path10945_Arc5_vdd XI24_abar Path10945_Arc5_vdd Path10945_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM54 XI24_cbar Path10945_Arc5_vdd Path10945_Arc5_vdd Path10945_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_MPM55 Path10945_Arc5_vdd XI24_pbar Path10945_Arc5_vdd Path10945_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI24_XI12_MNM0 XI24_cbar 0 0 Path10945_Arc5_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_XI7_MPM0 XI24_abar Path10945_Arc5_vdd Path10945_Arc5_vdd Path10945_Arc5_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI24_abar is logic 0
.IC V(XI24_abar)=0
* XI24_cbar is logic 1
.IC V(XI24_cbar)=1
* XI24_net13 is output
* XI24_net13 is watch node
* XI24_net13 is rising
.IC V(XI24_net13)=0
* XI24_p is trigger node
* XI24_p is input
* XI24_p is rising
* XI24_pbar is watch node
* XI24_pbar is falling
.IC V(XI24_pbar)=1
* gnd is ground
V1 Path10945_Arc5_gnd 0 DC=0
* p03 is input
* p03 is logic 0
V2 p03 0 DC=0
* p21 is input
* p21 is logic 1
V3 p21 0 DC=1
* vdd is positive supply
V4 Path10945_Arc5_vdd 0 DC=1
.ENDS Path10945_Arc5

.SUBCKT Path10945_Arc6 XI24_net13 c03
* XI24_net13 input conn_to_trigger
* c03 output conn_to_trigger
MNXI24_XI11_MNM0 c03 XI24_net13 Path10945_Arc6_gnd Path10945_Arc6_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI24_XI11_MPM0 c03 XI24_net13 Path10945_Arc6_vdd Path10945_Arc6_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI24_net13 is trigger node
* XI24_net13 is input
* XI24_net13 is rising
* c03 is output
* c03 is watch node
* c03 is falling
.IC V(c03)=1
* gnd is ground
V1 Path10945_Arc6_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc6_vdd 0 DC=1
.ENDS Path10945_Arc6

.SUBCKT Path10945_Arc7 c03 XI118_p
* c03 input conn_to_trigger
* XI118_p output conn_to_trigger
MNXI118_MNM4 XI118_p s11 XI118_net9 Path10945_Arc7_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_MNM5 XI118_net9 c03 Path10945_Arc7_gnd Path10945_Arc7_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_MPM2 XI118_net7 XI118_abar Path10945_Arc7_vdd Path10945_Arc7_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_MPM3 XI118_p c03 XI118_net7 Path10945_Arc7_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_MPM7 XI118_p XI118_net2 XI118_net11 Path10945_Arc7_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_XI8_MNM0 XI118_net2 c03 Path10945_Arc7_gnd Path10945_Arc7_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_XI8_MPM0 XI118_net2 c03 Path10945_Arc7_vdd Path10945_Arc7_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI118_MNM56 0 XI118_p 0 Path10945_Arc7_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_MNM6 XI118_p 0 0 Path10945_Arc7_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_MNM7 0 XI118_net2 0 Path10945_Arc7_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_MPM54 Path10945_Arc7_vdd XI118_p Path10945_Arc7_vdd Path10945_Arc7_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_MPM6 XI118_net11 Path10945_Arc7_vdd Path10945_Arc7_vdd Path10945_Arc7_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI118_abar is input
* XI118_abar is logic 0
V1 XI118_abar 0 DC=0
* XI118_net11 has unknown logic
.IC V(XI118_net11)=0.41919
* XI118_net2 is watch node
* XI118_net2 is rising
.IC V(XI118_net2)=0
* XI118_net7 is logic 1
.IC V(XI118_net7)=1
* XI118_net9 is rising
.IC V(XI118_net9)=0
* XI118_p is output
* XI118_p is watch node
* XI118_p is rising
.IC V(XI118_p)=0
* c03 is trigger node
* c03 is input
* c03 is falling
* gnd is ground
V2 Path10945_Arc7_gnd 0 DC=0
* s11 is input
* s11 is logic 1
V3 s11 0 DC=1
* vdd is positive supply
V4 Path10945_Arc7_vdd 0 DC=1
.ENDS Path10945_Arc7

.SUBCKT Path10945_Arc8 XI118_p XI118_net13
* XI118_p input conn_to_trigger
* XI118_net13 output conn_to_trigger
MNXI118_MNM57 XI118_abar XI118_pbar XI118_net13 Path10945_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_MNM58 XI118_cbar XI118_p XI118_net13 Path10945_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_MPM56 XI118_abar XI118_p XI118_net13 Path10945_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_MPM57 XI118_cbar XI118_pbar XI118_net13 Path10945_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_XI12_MPM0 XI118_cbar s04 Path10945_Arc8_vdd Path10945_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_XI7_MNM0 XI118_abar s11 Path10945_Arc8_gnd Path10945_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_XI9_MNM0 XI118_pbar XI118_p Path10945_Arc8_gnd Path10945_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_XI9_MPM0 XI118_pbar XI118_p Path10945_Arc8_vdd Path10945_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI118_MNM55 0 XI118_pbar 0 Path10945_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_MNM55__1 XI118_cbar 0 0 Path10945_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_MNM6 0 XI118_abar 0 Path10945_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
CXI118_MNM6_miller_load XI118_abar 0 0.0236115FF
MPXI118_MPM2 Path10945_Arc8_vdd XI118_abar Path10945_Arc8_vdd Path10945_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_MPM54 XI118_cbar Path10945_Arc8_vdd Path10945_Arc8_vdd Path10945_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_MPM55 Path10945_Arc8_vdd XI118_pbar Path10945_Arc8_vdd Path10945_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI118_XI12_MNM0 XI118_cbar 0 0 Path10945_Arc8_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_XI7_MPM0 XI118_abar Path10945_Arc8_vdd Path10945_Arc8_vdd Path10945_Arc8_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI118_abar is logic 0
.IC V(XI118_abar)=0
* XI118_cbar is logic 1
.IC V(XI118_cbar)=1
* XI118_net13 is output
* XI118_net13 is watch node
* XI118_net13 is rising
.IC V(XI118_net13)=0
* XI118_p is trigger node
* XI118_p is input
* XI118_p is rising
* XI118_pbar is watch node
* XI118_pbar is falling
.IC V(XI118_pbar)=1
* gnd is ground
V1 Path10945_Arc8_gnd 0 DC=0
* s04 is input
* s04 is logic 0
V2 s04 0 DC=0
* s11 is input
* s11 is logic 1
V3 s11 0 DC=1
* vdd is positive supply
V4 Path10945_Arc8_vdd 0 DC=1
.ENDS Path10945_Arc8

.SUBCKT Path10945_Arc9 XI118_net13 c23
* XI118_net13 input conn_to_trigger
* c23 output conn_to_trigger
MNXI118_XI11_MNM0 c23 XI118_net13 Path10945_Arc9_gnd Path10945_Arc9_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI118_XI11_MPM0 c23 XI118_net13 Path10945_Arc9_vdd Path10945_Arc9_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI118_net13 is trigger node
* XI118_net13 is input
* XI118_net13 is rising
* c23 is output
* c23 is watch node
* c23 is falling
.IC V(c23)=1
* gnd is ground
V1 Path10945_Arc9_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc9_vdd 0 DC=1
.ENDS Path10945_Arc9

.SUBCKT Path10945_Arc10 c23 XI131_p
* c23 input conn_to_trigger
* XI131_p output conn_to_trigger
MNXI131_MNM4 XI131_p c11 XI131_net9 Path10945_Arc10_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_MNM5 XI131_net9 c23 Path10945_Arc10_gnd Path10945_Arc10_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_MPM2 XI131_net7 XI131_abar Path10945_Arc10_vdd Path10945_Arc10_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_MPM3 XI131_p c23 XI131_net7 Path10945_Arc10_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_MPM7 XI131_p XI131_net2 XI131_net11 Path10945_Arc10_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_XI8_MNM0 XI131_net2 c23 Path10945_Arc10_gnd Path10945_Arc10_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_XI8_MPM0 XI131_net2 c23 Path10945_Arc10_vdd Path10945_Arc10_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI131_MNM6 XI131_p 0 0 Path10945_Arc10_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_MNM7 0 XI131_net2 0 Path10945_Arc10_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_MPM56 Path10945_Arc10_vdd XI131_p Path10945_Arc10_vdd Path10945_Arc10_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_MPM6 XI131_net11 Path10945_Arc10_vdd Path10945_Arc10_vdd Path10945_Arc10_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI131_abar is input
* XI131_abar is logic 0
V1 XI131_abar 0 DC=0
* XI131_net11 has unknown logic
.IC V(XI131_net11)=0.41919
* XI131_net2 is watch node
* XI131_net2 is rising
.IC V(XI131_net2)=0
* XI131_net7 is logic 1
.IC V(XI131_net7)=1
* XI131_net9 is rising
.IC V(XI131_net9)=0
* XI131_p is output
* XI131_p is watch node
* XI131_p is rising
.IC V(XI131_p)=0
* c11 is input
* c11 is logic 1
V2 c11 0 DC=1
* c23 is trigger node
* c23 is input
* c23 is falling
* gnd is ground
V3 Path10945_Arc10_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc10_vdd 0 DC=1
.ENDS Path10945_Arc10

.SUBCKT Path10945_Arc11 XI131_p XI131_net1
* XI131_p input conn_to_trigger
* XI131_net1 output conn_to_trigger
MPXI123_XI10_MPM0 s24 XI123_net1 Path10945_Arc11_vdd Path10945_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_MNM55 XI131_cbar XI131_pbar XI131_net1 Path10945_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_MNM56 s24 XI131_p XI131_net1 Path10945_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_MNM58 XI131_cbar XI131_p XI131_net13 Path10945_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_MPM54 XI131_cbar XI131_p XI131_net1 Path10945_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_MPM55 s24 XI131_pbar XI131_net1 Path10945_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_MPM57 XI131_cbar XI131_pbar XI131_net13 Path10945_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_XI12_MNM0 XI131_cbar s24 Path10945_Arc11_gnd Path10945_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_XI12_MPM0 XI131_cbar s24 Path10945_Arc11_vdd Path10945_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_XI9_MNM0 XI131_pbar XI131_p Path10945_Arc11_gnd Path10945_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_XI9_MPM0 XI131_pbar XI131_p Path10945_Arc11_vdd Path10945_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI123_XI10_MNM0 s24 0 0 Path10945_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_MNM57 0 0 XI131_net13 Path10945_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_MNM57__1 0 XI131_pbar 0 Path10945_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_MPM56 Path10945_Arc11_vdd Path10945_Arc11_vdd XI131_net13 Path10945_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI131_XI11_MNM0 0 XI131_net13 0 Path10945_Arc11_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_XI11_MPM0 Path10945_Arc11_vdd XI131_net13 Path10945_Arc11_vdd Path10945_Arc11_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI123_net1 is input
* XI123_net1 is logic 0
V1 XI123_net1 0 DC=0
* XI131_cbar is logic 0
.IC V(XI131_cbar)=0
* XI131_net1 is output
* XI131_net1 is watch node
* XI131_net1 is rising
.IC V(XI131_net1)=0
* XI131_net13 has unknown logic
.IC V(XI131_net13)=0
* XI131_p is trigger node
* XI131_p is input
* XI131_p is rising
* XI131_pbar is watch node
* XI131_pbar is falling
.IC V(XI131_pbar)=1
* gnd is ground
V2 Path10945_Arc11_gnd 0 DC=0
* s24 is logic 1
.IC V(s24)=1
* vdd is positive supply
V3 Path10945_Arc11_vdd 0 DC=1
.ENDS Path10945_Arc11

.SUBCKT Path10945_Arc12 XI131_net1 s42
* XI131_net1 input conn_to_trigger
* s42 output conn_to_trigger
MNXI131_XI10_MNM0 s42 XI131_net1 Path10945_Arc12_gnd Path10945_Arc12_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI131_XI10_MPM0 s42 XI131_net1 Path10945_Arc12_vdd Path10945_Arc12_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI102_MNM3 0 s42 0 Path10945_Arc12_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI102_MPM1 Path10945_Arc12_vdd s42 Path10945_Arc12_vdd Path10945_Arc12_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI131_net1 is trigger node
* XI131_net1 is input
* XI131_net1 is rising
* gnd is ground
V1 Path10945_Arc12_gnd 0 DC=0
* s42 is output
* s42 is watch node
* s42 is falling
.IC V(s42)=1
* vdd is positive supply
V2 Path10945_Arc12_vdd 0 DC=1
.ENDS Path10945_Arc12

.SUBCKT Path10945_Arc13 s42 XI102_bbar
* s42 input conn_to_trigger
* XI102_bbar output conn_to_trigger
MNXI102_XI3_MNM0 XI102_bbar s42 Path10945_Arc13_gnd Path10945_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI102_XI3_MPM0 XI102_bbar s42 Path10945_Arc13_vdd Path10945_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI102_MNM5 0 XI102_bbar 0 Path10945_Arc13_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI102_MPM5 Path10945_Arc13_vdd XI102_bbar Path10945_Arc13_vdd Path10945_Arc13_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI102_bbar is output
* XI102_bbar is watch node
* XI102_bbar is rising
.IC V(XI102_bbar)=0
* gnd is ground
V1 Path10945_Arc13_gnd 0 DC=0
* s42 is trigger node
* s42 is input
* s42 is falling
* vdd is positive supply
V2 Path10945_Arc13_vdd 0 DC=1
.ENDS Path10945_Arc13

.SUBCKT Path10945_Arc14 XI102_bbar aout<5>
* XI102_bbar input conn_to_trigger
* aout<5> output conn_to_trigger
MNXI102_MNM0 aout<5> XI102_abar XI102_net4 Path10945_Arc14_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI102_MNM1 XI102_net4 XI102_bbar Path10945_Arc14_gnd Path10945_Arc14_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI102_MPM0 aout<5> c41 XI102_net11 Path10945_Arc14_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI102_MPM1 aout<5> s42 XI102_net11 Path10945_Arc14_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI102_MPM3 XI102_net11 XI102_bbar Path10945_Arc14_vdd Path10945_Arc14_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI102_MNM2 aout<5> 0 0 Path10945_Arc14_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI102_MPM2 XI102_net11 Path10945_Arc14_vdd Path10945_Arc14_vdd Path10945_Arc14_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI22_MNM2 0 aout<5> 0 Path10945_Arc14_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI22_MPM0 Path10945_Arc14_vdd aout<5> Path10945_Arc14_vdd Path10945_Arc14_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI102_abar is input
* XI102_abar is logic 1
V1 XI102_abar 0 DC=1
* XI102_bbar is trigger node
* XI102_bbar is input
* XI102_bbar is rising
* XI102_net11 is falling
.IC V(XI102_net11)=1
* XI102_net4 is falling
.IC V(XI102_net4)=0.530212
* aout<5> is output
* aout<5> is watch node
* aout<5> is falling
.IC V(aout<5>)=1
* c41 is input
* c41 is logic 0
V2 c41 0 DC=0
* gnd is ground
V3 Path10945_Arc14_gnd 0 DC=0
* s42 is input
* s42 is falling
V__s42_rail_voltage __s42_rail_voltage 0 DC=1
E4 s42 __s42_rail_voltage XI102_bbar 0 -1.0
* vdd is positive supply
V5 Path10945_Arc14_vdd 0 DC=1
.ENDS Path10945_Arc14

.SUBCKT Path10945_Arc15 aout<5> XI146_XI22_abar
* aout<5> input conn_to_trigger
* XI146_XI22_abar output conn_to_trigger
MNXI146_XI22_XI2_MNM0 XI146_XI22_abar aout<5> Path10945_Arc15_gnd Path10945_Arc15_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI22_XI2_MPM0 XI146_XI22_abar aout<5> Path10945_Arc15_vdd Path10945_Arc15_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI22_MNM0 0 XI146_XI22_abar 0 Path10945_Arc15_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI22_MPM2 Path10945_Arc15_vdd XI146_XI22_abar Path10945_Arc15_vdd Path10945_Arc15_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI22_abar is output
* XI146_XI22_abar is watch node
* XI146_XI22_abar is rising
.IC V(XI146_XI22_abar)=0
* aout<5> is trigger node
* aout<5> is input
* aout<5> is falling
* gnd is ground
V1 Path10945_Arc15_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc15_vdd 0 DC=1
.ENDS Path10945_Arc15

.SUBCKT Path10945_Arc16 XI146_XI22_abar XI146_net4
* XI146_XI22_abar input conn_to_trigger
* XI146_net4 output conn_to_trigger
MNXI146_XI22_MNM4 XI146_net4 XI146_XI22_abar Path10945_Arc16_gnd Path10945_Arc16_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI22_MPM4 XI146_XI22_net7 XI146_XI22_abar Path10945_Arc16_vdd Path10945_Arc16_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI22_MPM5 XI146_net4 XI146_XI22_bbar XI146_XI22_net7 Path10945_Arc16_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI22_MNM5 XI146_net4 0 0 Path10945_Arc16_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI5_MNM3 0 XI146_net4 0 Path10945_Arc16_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI5_MNM6 0 XI146_net4 0 Path10945_Arc16_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI5_MPM2 Path10945_Arc16_vdd XI146_net4 Path10945_Arc16_vdd Path10945_Arc16_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI5_MPM6 Path10945_Arc16_vdd XI146_net4 Path10945_Arc16_vdd Path10945_Arc16_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI22_abar is trigger node
* XI146_XI22_abar is input
* XI146_XI22_abar is rising
* XI146_XI22_bbar is input
* XI146_XI22_bbar is logic 0
V1 XI146_XI22_bbar 0 DC=0
* XI146_XI22_net7 is falling
.IC V(XI146_XI22_net7)=1
* XI146_net4 is output
* XI146_net4 is watch node
* XI146_net4 is falling
.IC V(XI146_net4)=1
* gnd is ground
V2 Path10945_Arc16_gnd 0 DC=0
* vdd is positive supply
V3 Path10945_Arc16_vdd 0 DC=1
.ENDS Path10945_Arc16

.SUBCKT Path10945_Arc17 XI146_net4 XI146_net3
* XI146_net4 input conn_to_trigger
* XI146_net3 output conn_to_trigger
MNXI146_XI4_MNM0 XI146_net3 aout<6> XI146_XI4_net1 Path10945_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI4_MNM2 XI146_net3 XI146_net4 XI146_XI4_net26 Path10945_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI4_MNM3 XI146_XI4_net26 aout<6> Path10945_Arc17_gnd Path10945_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI4_MPM3 XI146_XI4_net17 bout<6> Path10945_Arc17_vdd Path10945_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI4_MPM4 XI146_net3 XI146_net4 XI146_XI4_net17 Path10945_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI4_MNM1 XI146_XI4_net1 0 0 Path10945_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI4_MNM4 XI146_XI4_net26 0 0 Path10945_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI4_MPM1 XI146_net3 Path10945_Arc17_vdd Path10945_Arc17_vdd Path10945_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI4_MPM2 XI146_XI4_net17 Path10945_Arc17_vdd Path10945_Arc17_vdd Path10945_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI5_MNM0 0 XI146_net3 0 Path10945_Arc17_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI5_MPM3 Path10945_Arc17_vdd XI146_net3 Path10945_Arc17_vdd Path10945_Arc17_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI4_net1 is rising
.IC V(XI146_XI4_net1)=0
* XI146_XI4_net17 is logic 1
.IC V(XI146_XI4_net17)=1
* XI146_XI4_net26 is logic 0
.IC V(XI146_XI4_net26)=0
* XI146_net3 is output
* XI146_net3 is watch node
* XI146_net3 is rising
.IC V(XI146_net3)=0
* XI146_net4 is trigger node
* XI146_net4 is input
* XI146_net4 is falling
* aout<6> is input
* aout<6> is logic 1
V1 aout<6> 0 DC=1
* bout<6> is input
* bout<6> is logic 0
V2 bout<6> 0 DC=0
* gnd is ground
V3 Path10945_Arc17_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc17_vdd 0 DC=1
.ENDS Path10945_Arc17

.SUBCKT Path10945_Arc18 XI146_net3 XI146_net39
* XI146_net3 input conn_to_trigger
* XI146_net39 output conn_to_trigger
MNXI146_XI4_MNM6 XI146_net39 XI146_net3 Path10945_Arc18_gnd Path10945_Arc18_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI4_MPM6 XI146_net39 XI146_net3 Path10945_Arc18_vdd Path10945_Arc18_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI7_MNM3 0 XI146_net39 0 Path10945_Arc18_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI7_MNM6 0 XI146_net39 0 Path10945_Arc18_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI7_MPM2 Path10945_Arc18_vdd XI146_net39 Path10945_Arc18_vdd Path10945_Arc18_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI7_MPM6 Path10945_Arc18_vdd XI146_net39 Path10945_Arc18_vdd Path10945_Arc18_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_net3 is trigger node
* XI146_net3 is input
* XI146_net3 is rising
* XI146_net39 is output
* XI146_net39 is watch node
* XI146_net39 is falling
.IC V(XI146_net39)=1
* gnd is ground
V1 Path10945_Arc18_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc18_vdd 0 DC=1
.ENDS Path10945_Arc18

.SUBCKT Path10945_Arc19 XI146_net39 XI146_net13
* XI146_net39 input conn_to_trigger
* XI146_net13 output conn_to_trigger
MNXI146_XI6_MNM0 XI146_net13 aout<7> XI146_XI6_net1 Path10945_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI6_MNM2 XI146_net13 XI146_net39 XI146_XI6_net26 Path10945_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI6_MNM3 XI146_XI6_net26 aout<7> Path10945_Arc19_gnd Path10945_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI6_MPM3 XI146_XI6_net17 bout<7> Path10945_Arc19_vdd Path10945_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI6_MPM4 XI146_net13 XI146_net39 XI146_XI6_net17 Path10945_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI6_MNM1 XI146_XI6_net1 0 0 Path10945_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI6_MNM4 XI146_XI6_net26 0 0 Path10945_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI6_MPM1 XI146_net13 Path10945_Arc19_vdd Path10945_Arc19_vdd Path10945_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI6_MPM2 XI146_XI6_net17 Path10945_Arc19_vdd Path10945_Arc19_vdd Path10945_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI7_MNM0 0 XI146_net13 0 Path10945_Arc19_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI7_MPM3 Path10945_Arc19_vdd XI146_net13 Path10945_Arc19_vdd Path10945_Arc19_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI6_net1 is rising
.IC V(XI146_XI6_net1)=0
* XI146_XI6_net17 is logic 1
.IC V(XI146_XI6_net17)=1
* XI146_XI6_net26 is logic 0
.IC V(XI146_XI6_net26)=0
* XI146_net13 is output
* XI146_net13 is watch node
* XI146_net13 is rising
.IC V(XI146_net13)=0
* XI146_net39 is trigger node
* XI146_net39 is input
* XI146_net39 is falling
* aout<7> is input
* aout<7> is logic 1
V1 aout<7> 0 DC=1
* bout<7> is input
* bout<7> is logic 0
V2 bout<7> 0 DC=0
* gnd is ground
V3 Path10945_Arc19_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc19_vdd 0 DC=1
.ENDS Path10945_Arc19

.SUBCKT Path10945_Arc20 XI146_net13 XI146_net16
* XI146_net13 input conn_to_trigger
* XI146_net16 output conn_to_trigger
MNXI146_XI6_MNM6 XI146_net16 XI146_net13 Path10945_Arc20_gnd Path10945_Arc20_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI6_MPM6 XI146_net16 XI146_net13 Path10945_Arc20_vdd Path10945_Arc20_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI9_MNM3 0 XI146_net16 0 Path10945_Arc20_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI9_MNM6 0 XI146_net16 0 Path10945_Arc20_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI9_MPM2 Path10945_Arc20_vdd XI146_net16 Path10945_Arc20_vdd Path10945_Arc20_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI9_MPM6 Path10945_Arc20_vdd XI146_net16 Path10945_Arc20_vdd Path10945_Arc20_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_net13 is trigger node
* XI146_net13 is input
* XI146_net13 is rising
* XI146_net16 is output
* XI146_net16 is watch node
* XI146_net16 is falling
.IC V(XI146_net16)=1
* gnd is ground
V1 Path10945_Arc20_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc20_vdd 0 DC=1
.ENDS Path10945_Arc20

.SUBCKT Path10945_Arc21 XI146_net16 XI146_net1
* XI146_net16 input conn_to_trigger
* XI146_net1 output conn_to_trigger
MNXI146_XI8_MNM0 XI146_net1 aout<8> XI146_XI8_net1 Path10945_Arc21_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI8_MNM2 XI146_net1 XI146_net16 XI146_XI8_net26 Path10945_Arc21_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI8_MNM3 XI146_XI8_net26 aout<8> Path10945_Arc21_gnd Path10945_Arc21_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI8_MPM3 XI146_XI8_net17 bout<8> Path10945_Arc21_vdd Path10945_Arc21_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI8_MPM4 XI146_net1 XI146_net16 XI146_XI8_net17 Path10945_Arc21_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI8_MNM1 XI146_XI8_net1 0 0 Path10945_Arc21_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI8_MNM4 XI146_XI8_net26 0 0 Path10945_Arc21_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI8_MPM1 XI146_net1 Path10945_Arc21_vdd Path10945_Arc21_vdd Path10945_Arc21_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI8_MPM2 XI146_XI8_net17 Path10945_Arc21_vdd Path10945_Arc21_vdd Path10945_Arc21_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI9_MNM0 0 XI146_net1 0 Path10945_Arc21_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI9_MPM3 Path10945_Arc21_vdd XI146_net1 Path10945_Arc21_vdd Path10945_Arc21_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI8_net1 is rising
.IC V(XI146_XI8_net1)=0
* XI146_XI8_net17 is logic 1
.IC V(XI146_XI8_net17)=1
* XI146_XI8_net26 is logic 0
.IC V(XI146_XI8_net26)=0
* XI146_net1 is output
* XI146_net1 is watch node
* XI146_net1 is rising
.IC V(XI146_net1)=0
* XI146_net16 is trigger node
* XI146_net16 is input
* XI146_net16 is falling
* aout<8> is input
* aout<8> is logic 1
V1 aout<8> 0 DC=1
* bout<8> is input
* bout<8> is logic 0
V2 bout<8> 0 DC=0
* gnd is ground
V3 Path10945_Arc21_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc21_vdd 0 DC=1
.ENDS Path10945_Arc21

.SUBCKT Path10945_Arc22 XI146_net1 XI146_net27
* XI146_net1 input conn_to_trigger
* XI146_net27 output conn_to_trigger
MNXI146_XI8_MNM6 XI146_net27 XI146_net1 Path10945_Arc22_gnd Path10945_Arc22_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI8_MPM6 XI146_net27 XI146_net1 Path10945_Arc22_vdd Path10945_Arc22_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI11_MNM3 0 XI146_net27 0 Path10945_Arc22_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI11_MNM6 0 XI146_net27 0 Path10945_Arc22_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI11_MPM2 Path10945_Arc22_vdd XI146_net27 Path10945_Arc22_vdd Path10945_Arc22_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI11_MPM6 Path10945_Arc22_vdd XI146_net27 Path10945_Arc22_vdd Path10945_Arc22_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_net1 is trigger node
* XI146_net1 is input
* XI146_net1 is rising
* XI146_net27 is output
* XI146_net27 is watch node
* XI146_net27 is falling
.IC V(XI146_net27)=1
* gnd is ground
V1 Path10945_Arc22_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc22_vdd 0 DC=1
.ENDS Path10945_Arc22

.SUBCKT Path10945_Arc23 XI146_net27 XI146_net42
* XI146_net27 input conn_to_trigger
* XI146_net42 output conn_to_trigger
MNXI146_XI10_MNM0 XI146_net42 aout<9> XI146_XI10_net1 Path10945_Arc23_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI10_MNM2 XI146_net42 XI146_net27 XI146_XI10_net26 Path10945_Arc23_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI10_MNM3 XI146_XI10_net26 aout<9> Path10945_Arc23_gnd Path10945_Arc23_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI10_MPM3 XI146_XI10_net17 bout<9> Path10945_Arc23_vdd Path10945_Arc23_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI10_MPM4 XI146_net42 XI146_net27 XI146_XI10_net17 Path10945_Arc23_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI10_MNM1 XI146_XI10_net1 0 0 Path10945_Arc23_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI10_MNM4 XI146_XI10_net26 0 0 Path10945_Arc23_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI10_MPM1 XI146_net42 Path10945_Arc23_vdd Path10945_Arc23_vdd Path10945_Arc23_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI10_MPM2 XI146_XI10_net17 Path10945_Arc23_vdd Path10945_Arc23_vdd Path10945_Arc23_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI11_MNM0 0 XI146_net42 0 Path10945_Arc23_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI11_MPM3 Path10945_Arc23_vdd XI146_net42 Path10945_Arc23_vdd Path10945_Arc23_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI10_net1 is rising
.IC V(XI146_XI10_net1)=0
* XI146_XI10_net17 is logic 1
.IC V(XI146_XI10_net17)=1
* XI146_XI10_net26 is logic 0
.IC V(XI146_XI10_net26)=0
* XI146_net27 is trigger node
* XI146_net27 is input
* XI146_net27 is falling
* XI146_net42 is output
* XI146_net42 is watch node
* XI146_net42 is rising
.IC V(XI146_net42)=0
* aout<9> is input
* aout<9> is logic 1
V1 aout<9> 0 DC=1
* bout<9> is input
* bout<9> is logic 0
V2 bout<9> 0 DC=0
* gnd is ground
V3 Path10945_Arc23_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc23_vdd 0 DC=1
.ENDS Path10945_Arc23

.SUBCKT Path10945_Arc24 XI146_net42 XI146_net44
* XI146_net42 input conn_to_trigger
* XI146_net44 output conn_to_trigger
MNXI146_XI10_MNM6 XI146_net44 XI146_net42 Path10945_Arc24_gnd Path10945_Arc24_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI10_MPM6 XI146_net44 XI146_net42 Path10945_Arc24_vdd Path10945_Arc24_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI13_MNM3 0 XI146_net44 0 Path10945_Arc24_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI13_MNM6 0 XI146_net44 0 Path10945_Arc24_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI13_MPM2 Path10945_Arc24_vdd XI146_net44 Path10945_Arc24_vdd Path10945_Arc24_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI13_MPM6 Path10945_Arc24_vdd XI146_net44 Path10945_Arc24_vdd Path10945_Arc24_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_net42 is trigger node
* XI146_net42 is input
* XI146_net42 is rising
* XI146_net44 is output
* XI146_net44 is watch node
* XI146_net44 is falling
.IC V(XI146_net44)=1
* gnd is ground
V1 Path10945_Arc24_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc24_vdd 0 DC=1
.ENDS Path10945_Arc24

.SUBCKT Path10945_Arc25 XI146_net44 XI146_net41
* XI146_net44 input conn_to_trigger
* XI146_net41 output conn_to_trigger
MNXI146_XI12_MNM0 XI146_net41 aout<10> XI146_XI12_net1 Path10945_Arc25_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI12_MNM2 XI146_net41 XI146_net44 XI146_XI12_net26 Path10945_Arc25_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI12_MNM3 XI146_XI12_net26 aout<10> Path10945_Arc25_gnd Path10945_Arc25_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI12_MPM3 XI146_XI12_net17 bout<10> Path10945_Arc25_vdd Path10945_Arc25_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI12_MPM4 XI146_net41 XI146_net44 XI146_XI12_net17 Path10945_Arc25_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI12_MNM1 XI146_XI12_net1 0 0 Path10945_Arc25_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI12_MNM4 XI146_XI12_net26 0 0 Path10945_Arc25_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI12_MPM1 XI146_net41 Path10945_Arc25_vdd Path10945_Arc25_vdd Path10945_Arc25_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI12_MPM2 XI146_XI12_net17 Path10945_Arc25_vdd Path10945_Arc25_vdd Path10945_Arc25_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI13_MNM0 0 XI146_net41 0 Path10945_Arc25_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI13_MPM3 Path10945_Arc25_vdd XI146_net41 Path10945_Arc25_vdd Path10945_Arc25_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI12_net1 is rising
.IC V(XI146_XI12_net1)=0
* XI146_XI12_net17 is logic 1
.IC V(XI146_XI12_net17)=1
* XI146_XI12_net26 is logic 0
.IC V(XI146_XI12_net26)=0
* XI146_net41 is output
* XI146_net41 is watch node
* XI146_net41 is rising
.IC V(XI146_net41)=0
* XI146_net44 is trigger node
* XI146_net44 is input
* XI146_net44 is falling
* aout<10> is input
* aout<10> is logic 1
V1 aout<10> 0 DC=1
* bout<10> is input
* bout<10> is logic 0
V2 bout<10> 0 DC=0
* gnd is ground
V3 Path10945_Arc25_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc25_vdd 0 DC=1
.ENDS Path10945_Arc25

.SUBCKT Path10945_Arc26 XI146_net41 XI146_net56
* XI146_net41 input conn_to_trigger
* XI146_net56 output conn_to_trigger
MNXI146_XI12_MNM6 XI146_net56 XI146_net41 Path10945_Arc26_gnd Path10945_Arc26_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI12_MPM6 XI146_net56 XI146_net41 Path10945_Arc26_vdd Path10945_Arc26_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI15_MNM3 0 XI146_net56 0 Path10945_Arc26_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI15_MNM6 0 XI146_net56 0 Path10945_Arc26_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI15_MPM2 Path10945_Arc26_vdd XI146_net56 Path10945_Arc26_vdd Path10945_Arc26_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI15_MPM6 Path10945_Arc26_vdd XI146_net56 Path10945_Arc26_vdd Path10945_Arc26_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_net41 is trigger node
* XI146_net41 is input
* XI146_net41 is rising
* XI146_net56 is output
* XI146_net56 is watch node
* XI146_net56 is falling
.IC V(XI146_net56)=1
* gnd is ground
V1 Path10945_Arc26_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc26_vdd 0 DC=1
.ENDS Path10945_Arc26

.SUBCKT Path10945_Arc27 XI146_net56 XI146_net40
* XI146_net56 input conn_to_trigger
* XI146_net40 output conn_to_trigger
MNXI146_XI14_MNM0 XI146_net40 aout<11> XI146_XI14_net1 Path10945_Arc27_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI14_MNM2 XI146_net40 XI146_net56 XI146_XI14_net26 Path10945_Arc27_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI14_MNM3 XI146_XI14_net26 aout<11> Path10945_Arc27_gnd Path10945_Arc27_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI14_MPM3 XI146_XI14_net17 bout<11> Path10945_Arc27_vdd Path10945_Arc27_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI14_MPM4 XI146_net40 XI146_net56 XI146_XI14_net17 Path10945_Arc27_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI14_MNM1 XI146_XI14_net1 0 0 Path10945_Arc27_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI14_MNM4 XI146_XI14_net26 0 0 Path10945_Arc27_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI14_MPM1 XI146_net40 Path10945_Arc27_vdd Path10945_Arc27_vdd Path10945_Arc27_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI14_MPM2 XI146_XI14_net17 Path10945_Arc27_vdd Path10945_Arc27_vdd Path10945_Arc27_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI15_MNM0 0 XI146_net40 0 Path10945_Arc27_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI15_MPM3 Path10945_Arc27_vdd XI146_net40 Path10945_Arc27_vdd Path10945_Arc27_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI14_net1 is rising
.IC V(XI146_XI14_net1)=0
* XI146_XI14_net17 is logic 1
.IC V(XI146_XI14_net17)=1
* XI146_XI14_net26 is logic 0
.IC V(XI146_XI14_net26)=0
* XI146_net40 is output
* XI146_net40 is watch node
* XI146_net40 is rising
.IC V(XI146_net40)=0
* XI146_net56 is trigger node
* XI146_net56 is input
* XI146_net56 is falling
* aout<11> is input
* aout<11> is logic 1
V1 aout<11> 0 DC=1
* bout<11> is input
* bout<11> is logic 0
V2 bout<11> 0 DC=0
* gnd is ground
V3 Path10945_Arc27_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc27_vdd 0 DC=1
.ENDS Path10945_Arc27

.SUBCKT Path10945_Arc28 XI146_net40 XI146_net68
* XI146_net40 input conn_to_trigger
* XI146_net68 output conn_to_trigger
MNXI146_XI14_MNM6 XI146_net68 XI146_net40 Path10945_Arc28_gnd Path10945_Arc28_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI14_MPM6 XI146_net68 XI146_net40 Path10945_Arc28_vdd Path10945_Arc28_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI17_MNM3 0 XI146_net68 0 Path10945_Arc28_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI17_MNM6 0 XI146_net68 0 Path10945_Arc28_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI17_MPM2 Path10945_Arc28_vdd XI146_net68 Path10945_Arc28_vdd Path10945_Arc28_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI17_MPM6 Path10945_Arc28_vdd XI146_net68 Path10945_Arc28_vdd Path10945_Arc28_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_net40 is trigger node
* XI146_net40 is input
* XI146_net40 is rising
* XI146_net68 is output
* XI146_net68 is watch node
* XI146_net68 is falling
.IC V(XI146_net68)=1
* gnd is ground
V1 Path10945_Arc28_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc28_vdd 0 DC=1
.ENDS Path10945_Arc28

.SUBCKT Path10945_Arc29 XI146_net68 XI146_net80
* XI146_net68 input conn_to_trigger
* XI146_net80 output conn_to_trigger
MNXI146_XI16_MNM0 XI146_net80 aout<12> XI146_XI16_net1 Path10945_Arc29_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI16_MNM2 XI146_net80 XI146_net68 XI146_XI16_net26 Path10945_Arc29_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI16_MNM3 XI146_XI16_net26 aout<12> Path10945_Arc29_gnd Path10945_Arc29_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI16_MPM3 XI146_XI16_net17 bout<12> Path10945_Arc29_vdd Path10945_Arc29_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI16_MPM4 XI146_net80 XI146_net68 XI146_XI16_net17 Path10945_Arc29_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI16_MNM1 XI146_XI16_net1 0 0 Path10945_Arc29_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI16_MNM4 XI146_XI16_net26 0 0 Path10945_Arc29_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI16_MPM1 XI146_net80 Path10945_Arc29_vdd Path10945_Arc29_vdd Path10945_Arc29_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI16_MPM2 XI146_XI16_net17 Path10945_Arc29_vdd Path10945_Arc29_vdd Path10945_Arc29_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI17_MNM0 0 XI146_net80 0 Path10945_Arc29_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI17_MPM3 Path10945_Arc29_vdd XI146_net80 Path10945_Arc29_vdd Path10945_Arc29_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI16_net1 is rising
.IC V(XI146_XI16_net1)=0
* XI146_XI16_net17 is logic 1
.IC V(XI146_XI16_net17)=1
* XI146_XI16_net26 is logic 0
.IC V(XI146_XI16_net26)=0
* XI146_net68 is trigger node
* XI146_net68 is input
* XI146_net68 is falling
* XI146_net80 is output
* XI146_net80 is watch node
* XI146_net80 is rising
.IC V(XI146_net80)=0
* aout<12> is input
* aout<12> is logic 1
V1 aout<12> 0 DC=1
* bout<12> is input
* bout<12> is logic 0
V2 bout<12> 0 DC=0
* gnd is ground
V3 Path10945_Arc29_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc29_vdd 0 DC=1
.ENDS Path10945_Arc29

.SUBCKT Path10945_Arc30 XI146_net80 XI146_net83
* XI146_net80 input conn_to_trigger
* XI146_net83 output conn_to_trigger
MNXI146_XI16_MNM6 XI146_net83 XI146_net80 Path10945_Arc30_gnd Path10945_Arc30_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI16_MPM6 XI146_net83 XI146_net80 Path10945_Arc30_vdd Path10945_Arc30_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI19_MNM3 0 XI146_net83 0 Path10945_Arc30_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI19_MNM6 0 XI146_net83 0 Path10945_Arc30_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI19_MPM2 Path10945_Arc30_vdd XI146_net83 Path10945_Arc30_vdd Path10945_Arc30_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI19_MPM6 Path10945_Arc30_vdd XI146_net83 Path10945_Arc30_vdd Path10945_Arc30_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_net80 is trigger node
* XI146_net80 is input
* XI146_net80 is rising
* XI146_net83 is output
* XI146_net83 is watch node
* XI146_net83 is falling
.IC V(XI146_net83)=1
* gnd is ground
V1 Path10945_Arc30_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc30_vdd 0 DC=1
.ENDS Path10945_Arc30

.SUBCKT Path10945_Arc31 XI146_net83 XI146_net81
* XI146_net83 input conn_to_trigger
* XI146_net81 output conn_to_trigger
MNXI146_XI18_MNM0 XI146_net81 aout<13> XI146_XI18_net1 Path10945_Arc31_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI18_MNM2 XI146_net81 XI146_net83 XI146_XI18_net26 Path10945_Arc31_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI18_MNM3 XI146_XI18_net26 aout<13> Path10945_Arc31_gnd Path10945_Arc31_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI18_MPM3 XI146_XI18_net17 bout<13> Path10945_Arc31_vdd Path10945_Arc31_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI18_MPM4 XI146_net81 XI146_net83 XI146_XI18_net17 Path10945_Arc31_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI18_MNM1 XI146_XI18_net1 0 0 Path10945_Arc31_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI18_MNM4 XI146_XI18_net26 0 0 Path10945_Arc31_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI18_MPM1 XI146_net81 Path10945_Arc31_vdd Path10945_Arc31_vdd Path10945_Arc31_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI18_MPM2 XI146_XI18_net17 Path10945_Arc31_vdd Path10945_Arc31_vdd Path10945_Arc31_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI19_MNM0 0 XI146_net81 0 Path10945_Arc31_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI19_MPM3 Path10945_Arc31_vdd XI146_net81 Path10945_Arc31_vdd Path10945_Arc31_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI18_net1 is rising
.IC V(XI146_XI18_net1)=0
* XI146_XI18_net17 is logic 1
.IC V(XI146_XI18_net17)=1
* XI146_XI18_net26 is logic 0
.IC V(XI146_XI18_net26)=0
* XI146_net81 is output
* XI146_net81 is watch node
* XI146_net81 is rising
.IC V(XI146_net81)=0
* XI146_net83 is trigger node
* XI146_net83 is input
* XI146_net83 is falling
* aout<13> is input
* aout<13> is logic 1
V1 aout<13> 0 DC=1
* bout<13> is input
* bout<13> is logic 0
V2 bout<13> 0 DC=0
* gnd is ground
V3 Path10945_Arc31_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc31_vdd 0 DC=1
.ENDS Path10945_Arc31

.SUBCKT Path10945_Arc32 XI146_net81 XI146_net95
* XI146_net81 input conn_to_trigger
* XI146_net95 output conn_to_trigger
MNXI146_XI18_MNM6 XI146_net95 XI146_net81 Path10945_Arc32_gnd Path10945_Arc32_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI18_MPM6 XI146_net95 XI146_net81 Path10945_Arc32_vdd Path10945_Arc32_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI21_MNM3 0 XI146_net95 0 Path10945_Arc32_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI21_MNM6 0 XI146_net95 0 Path10945_Arc32_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI21_MPM2 Path10945_Arc32_vdd XI146_net95 Path10945_Arc32_vdd Path10945_Arc32_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI21_MPM6 Path10945_Arc32_vdd XI146_net95 Path10945_Arc32_vdd Path10945_Arc32_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_net81 is trigger node
* XI146_net81 is input
* XI146_net81 is rising
* XI146_net95 is output
* XI146_net95 is watch node
* XI146_net95 is falling
.IC V(XI146_net95)=1
* gnd is ground
V1 Path10945_Arc32_gnd 0 DC=0
* vdd is positive supply
V2 Path10945_Arc32_vdd 0 DC=1
.ENDS Path10945_Arc32

.SUBCKT Path10945_Arc33 XI146_net95 XI146_net79
* XI146_net95 input conn_to_trigger
* XI146_net79 output conn_to_trigger
MNXI146_XI20_MNM0 XI146_net79 aout<14> XI146_XI20_net1 Path10945_Arc33_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI20_MNM2 XI146_net79 XI146_net95 XI146_XI20_net26 Path10945_Arc33_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI20_MNM3 XI146_XI20_net26 aout<14> Path10945_Arc33_gnd Path10945_Arc33_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI20_MPM3 XI146_XI20_net17 bout<14> Path10945_Arc33_vdd Path10945_Arc33_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI20_MPM4 XI146_net79 XI146_net95 XI146_XI20_net17 Path10945_Arc33_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI20_MNM1 XI146_XI20_net1 0 0 Path10945_Arc33_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI20_MNM4 XI146_XI20_net26 0 0 Path10945_Arc33_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI20_MNM6 0 XI146_net79 0 Path10945_Arc33_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI20_MPM1 XI146_net79 Path10945_Arc33_vdd Path10945_Arc33_vdd Path10945_Arc33_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI20_MPM2 XI146_XI20_net17 Path10945_Arc33_vdd Path10945_Arc33_vdd Path10945_Arc33_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI20_MPM6 Path10945_Arc33_vdd XI146_net79 Path10945_Arc33_vdd Path10945_Arc33_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI20_net1 is rising
.IC V(XI146_XI20_net1)=0
* XI146_XI20_net17 is logic 1
.IC V(XI146_XI20_net17)=1
* XI146_XI20_net26 is logic 0
.IC V(XI146_XI20_net26)=0
* XI146_net79 is output
* XI146_net79 is watch node
* XI146_net79 is rising
.IC V(XI146_net79)=0
* XI146_net95 is trigger node
* XI146_net95 is input
* XI146_net95 is falling
* aout<14> is input
* aout<14> is logic 1
V1 aout<14> 0 DC=1
* bout<14> is input
* bout<14> is logic 0
V2 bout<14> 0 DC=0
* gnd is ground
V3 Path10945_Arc33_gnd 0 DC=0
* vdd is positive supply
V4 Path10945_Arc33_vdd 0 DC=1
.ENDS Path10945_Arc33

.SUBCKT Path10945_Arc34 XI146_net79 XI146_XI21_net4
* XI146_net79 input conn_to_trigger
* XI146_XI21_net4 output conn_to_trigger
MNXI146_XI21_MNM0 XI146_XI21_net4 XI146_net79 XI146_XI21_net1 Path10945_Arc34_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI21_MNM1 XI146_XI21_net1 aout<14> Path10945_Arc34_gnd Path10945_Arc34_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI21_MPM1 XI146_XI21_net8 bout<14> Path10945_Arc34_vdd Path10945_Arc34_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI21_MPM2 XI146_XI21_net8 XI146_net95 Path10945_Arc34_vdd Path10945_Arc34_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI21_MPM3 XI146_XI21_net4 XI146_net79 XI146_XI21_net8 Path10945_Arc34_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI21_MPM6 XI146_XI21_net4 XI146_net95 XI146_XI21_net40 Path10945_Arc34_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* Off transistors
MNXI146_XI21_MNM2 XI146_XI21_net1 0 0 Path10945_Arc34_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI21_MNM3 XI146_XI21_net1 0 0 Path10945_Arc34_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MNXI146_XI21_MNM4 XI146_XI21_net4 0 0 Path10945_Arc34_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI21_MPM0 XI146_XI21_net8 Path10945_Arc34_vdd Path10945_Arc34_vdd Path10945_Arc34_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI21_MPM5 XI146_XI21_net40 Path10945_Arc34_vdd Path10945_Arc34_vdd Path10945_Arc34_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI21_net1 is logic 0
.IC V(XI146_XI21_net1)=0
* XI146_XI21_net4 is output
* XI146_XI21_net4 is watch node
* XI146_XI21_net4 is falling
.IC V(XI146_XI21_net4)=1
* XI146_XI21_net40 is falling
.IC V(XI146_XI21_net40)=1
* XI146_XI21_net8 is logic 1
.IC V(XI146_XI21_net8)=1
* XI146_net79 is trigger node
* XI146_net79 is input
* XI146_net79 is rising
* XI146_net95 is input
* XI146_net95 is logic 0
V1 XI146_net95 0 DC=0
* aout<14> is input
* aout<14> is logic 1
V2 aout<14> 0 DC=1
* bout<14> is input
* bout<14> is logic 0
V3 bout<14> 0 DC=0
* gnd is ground
V4 Path10945_Arc34_gnd 0 DC=0
* vdd is positive supply
V5 Path10945_Arc34_vdd 0 DC=1
.ENDS Path10945_Arc34

.SUBCKT Path10945_Arc35 s<14> XI146_XI21_net4
* s<14> output conn_to_trigger
* XI146_XI21_net4 input conn_to_trigger
MNXI146_XI21_MNM7 s<14> XI146_XI21_net4 Path10945_Arc35_gnd Path10945_Arc35_gnd nmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
MPXI146_XI21_MPM7 s<14> XI146_XI21_net4 Path10945_Arc35_vdd Path10945_Arc35_vdd pmos_vtl W=0.12u L=0.045u AS=0p AD=0p PS=0.22u PD=0.22u
* XI146_XI21_net4 is trigger node
* XI146_XI21_net4 is input
* XI146_XI21_net4 is falling
* gnd is ground
V1 Path10945_Arc35_gnd 0 DC=0
* s<14> is output
* s<14> is watch node
* s<14> is rising
.IC V(s<14>)=0
Cs<14>__net_load s<14> 0 2FF
* vdd is positive supply
V2 Path10945_Arc35_vdd 0 DC=1
.ENDS Path10945_Arc35

X0 b<2> Path10945_Arc0
X1 b<2> XI23_XI148_net4 Path10945_Arc1
X2 XI23_XI148_net4 p21 Path10945_Arc2
X3 p21 XI24_abar Path10945_Arc3
X4 XI24_abar XI24_p Path10945_Arc4
X5 XI24_p XI24_net13 Path10945_Arc5
X6 XI24_net13 c03 Path10945_Arc6
X7 c03 XI118_p Path10945_Arc7
X8 XI118_p XI118_net13 Path10945_Arc8
X9 XI118_net13 c23 Path10945_Arc9
X10 c23 XI131_p Path10945_Arc10
X11 XI131_p XI131_net1 Path10945_Arc11
X12 XI131_net1 s42 Path10945_Arc12
X13 s42 XI102_bbar Path10945_Arc13
X14 XI102_bbar aout<5> Path10945_Arc14
X15 aout<5> XI146_XI22_abar Path10945_Arc15
X16 XI146_XI22_abar XI146_net4 Path10945_Arc16
X17 XI146_net4 XI146_net3 Path10945_Arc17
X18 XI146_net3 XI146_net39 Path10945_Arc18
X19 XI146_net39 XI146_net13 Path10945_Arc19
X20 XI146_net13 XI146_net16 Path10945_Arc20
X21 XI146_net16 XI146_net1 Path10945_Arc21
X22 XI146_net1 XI146_net27 Path10945_Arc22
X23 XI146_net27 XI146_net42 Path10945_Arc23
X24 XI146_net42 XI146_net44 Path10945_Arc24
X25 XI146_net44 XI146_net41 Path10945_Arc25
X26 XI146_net41 XI146_net56 Path10945_Arc26
X27 XI146_net56 XI146_net40 Path10945_Arc27
X28 XI146_net40 XI146_net68 Path10945_Arc28
X29 XI146_net68 XI146_net80 Path10945_Arc29
X30 XI146_net80 XI146_net83 Path10945_Arc30
X31 XI146_net83 XI146_net81 Path10945_Arc31
X32 XI146_net81 XI146_net95 Path10945_Arc32
X33 XI146_net95 XI146_net79 Path10945_Arc33
X34 XI146_net79 XI146_XI21_net4 Path10945_Arc34
X35 s<14> XI146_XI21_net4 Path10945_Arc35

.TEMP 25

* input slope is 0.04
VIN b<2> 0 PWL(0ns 0 0.05ns 1)

* output slope is 0.0661372

* Transient analysis
.TRAN 0.1PS 4.95336NS

* Look at the input and output
.PRINT TRAN V(b<2>) V(s<14>)

* Path measurements.
.MEASURE TRAN path_delay TRIG v(b<2>) VAL=0.5 CROSS=1 TARG v(s<14>) VAL=0.5 CROSS=1
.MEASURE TRAN path_input_transition TRIG v(b<2>) VAL=0.1 CROSS=1 TARG v(b<2>) VAL=0.9 CROSS=1
.MEASURE TRAN path_output_transition TRIG v(s<14>) VAL=0.1 CROSS=1 TARG v(s<14>) VAL=0.9 CROSS=1

.END
