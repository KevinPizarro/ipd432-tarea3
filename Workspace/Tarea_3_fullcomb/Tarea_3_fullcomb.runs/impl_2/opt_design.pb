
f
Command: %s
53*	vivadotcl25
!opt_design -directive ExploreArea2default:defaultZ4-113h px� 
h
$Directive used for opt_design is: %s67*	vivadotcl2
ExploreArea2default:defaultZ4-136h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1845.578 ; gain = 0.0002default:defaulth px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px� 
k
)Generating Script for core instance : %s 214*	chipscope2
dbg_hub2default:defaultZ16-329h px� 
�
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:3.02default:default2

dbg_hub_CV2default:defaultZ19-3806h px� 
�
;Using cached IP synthesis design for IP %s, cache-ID = %s.
286*	chipscope2+
xilinx.com:ip:xsdbm:3.02default:default2$
6f2b23994bd3347f2default:defaultZ16-469h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0892default:default2
2184.2622default:default2
0.0002default:defaultZ17-268h px� 
W
BPhase 1 Generate And Synthesize Debug Cores | Checksum: 1db71aad2
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:10 ; elapsed = 00:00:21 . Memory (MB): peak = 2184.262 ; gain = 190.3672default:defaulth px� 
i

Phase %s%s
101*constraints2
2 2default:default2
Retarget2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
22default:default2
62default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
<
'Phase 2 Retarget | Checksum: 1704ba50e
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:19 ; elapsed = 00:00:27 . Memory (MB): peak = 2184.262 ; gain = 190.3672default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
62default:default2
132default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
662default:defaultZ31-1021h px� 
u

Phase %s%s
101*constraints2
3 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
H
3Phase 3 Constant propagation | Checksum: 1b8822eb7
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:28 . Memory (MB): peak = 2184.262 ; gain = 190.3672default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
162default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2(
Constant propagation2default:default2
492default:defaultZ31-1021h px� 
f

Phase %s%s
101*constraints2
4 2default:default2
Sweep2default:defaultZ18-101h px� 
9
$Phase 4 Sweep | Checksum: 14caade7a
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:30 . Memory (MB): peak = 2184.262 ; gain = 190.3672default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
712default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
18862default:defaultZ31-1021h px� 
r

Phase %s%s
101*constraints2
5 2default:default2%
BUFG optimization2default:defaultZ18-101h px� 
E
0Phase 5 BUFG optimization | Checksum: 14caade7a
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 2184.262 ; gain = 190.3672default:defaulth px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px� 
|

Phase %s%s
101*constraints2
6 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
�
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px� 
O
:Phase 6 Shift Register Optimization | Checksum: 14caade7a
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:25 ; elapsed = 00:00:32 . Memory (MB): peak = 2184.262 ; gain = 190.3672default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
l

Phase %s%s
101*constraints2
7 2default:default2
Resynthesis2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
Optimized %s modules.
74*opt2
162default:defaultZ31-74h px� 
U
Optimized module '%s'.
75*opt2
byte_to_mem2default:defaultZ31-75h px� 
U
Optimized module '%s'.
75*opt2
clk_x_pntrs2default:defaultZ31-75h px� 
W
Optimized module '%s'.
75*opt2!
clk_x_pntrs_72default:defaultZ31-75h px� 
Z
Optimized module '%s'.
75*opt2$
counter_with_inc2default:defaultZ31-75h px� 
h
Optimized module '%s'.
75*opt22
ila_0_ila_v6_2_12_ila_register2default:defaultZ31-75h px� 
j
Optimized module '%s'.
75*opt24
 ila_0_ltlib_v1_0_0_generic_memrd2default:defaultZ31-75h px� 
d
Optimized module '%s'.
75*opt2.
ila_0_xsdbs_v1_0_2_reg_p2s2default:defaultZ31-75h px� 
t
Optimized module '%s'.
75*opt2>
*ila_0_xsdbs_v1_0_2_reg_p2s__parameterized02default:defaultZ31-75h px� 
t
Optimized module '%s'.
75*opt2>
*ila_0_xsdbs_v1_0_2_reg_p2s__parameterized12default:defaultZ31-75h px� 
t
Optimized module '%s'.
75*opt2>
*ila_0_xsdbs_v1_0_2_reg_p2s__parameterized22default:defaultZ31-75h px� 
t
Optimized module '%s'.
75*opt2>
*ila_0_xsdbs_v1_0_2_reg_p2s__parameterized32default:defaultZ31-75h px� 
t
Optimized module '%s'.
75*opt2>
*ila_0_xsdbs_v1_0_2_reg_p2s__parameterized42default:defaultZ31-75h px� 
U
Optimized module '%s'.
75*opt2
rd_bin_cntr2default:defaultZ31-75h px� 
Q
Optimized module '%s'.
75*opt2
uart_rx2default:defaultZ31-75h px� 
b
Optimized module '%s'.
75*opt2,
xsdbm_v3_0_0_bus_ctl_cnt2default:defaultZ31-75h px� 
g
Optimized module '%s'.
75*opt21
xsdbm_v3_0_0_if_static_status2default:defaultZ31-75h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
7ILA/inst/ila_core_inst/u_ila_regs/ila_0_ila_v6_2_6_LUT1	7ILA/inst/ila_core_inst/u_ila_regs/ila_0_ila_v6_2_6_LUT12default:default2�
9ILA/inst/ila_core_inst/u_ila_regs/ila_0_ila_v6_2_6_LUT3_1	9ILA/inst/ila_core_inst/u_ila_regs/ila_0_ila_v6_2_6_LUT3_12default:default2
22default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
9ILA/inst/ila_core_inst/u_ila_regs/ila_0_ila_v6_2_6_LUT1_4	9ILA/inst/ila_core_inst/u_ila_regs/ila_0_ila_v6_2_6_LUT1_42default:default2�
7ILA/inst/ila_core_inst/u_ila_regs/ila_0_ila_v6_2_6_LUT3	7ILA/inst/ila_core_inst/u_ila_regs/ila_0_ila_v6_2_6_LUT32default:default2
42default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
BILA/inst/ila_core_inst/xsdb_memory_read_inst/ila_0_ltlib_v1_3_LUT1	BILA/inst/ila_core_inst/xsdb_memory_read_inst/ila_0_ltlib_v1_3_LUT12default:default2�
DILA/inst/ila_core_inst/xsdb_memory_read_inst/ila_0_ltlib_v1_3_LUT6_1	DILA/inst/ila_core_inst/xsdb_memory_read_inst/ila_0_ltlib_v1_3_LUT6_12default:default2
122default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2�
jdbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_XSDB_BUS_CONTROLLER/U_TIMER/xsdbm_v3_0_0_bu4_LUT1_2	jdbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_XSDB_BUS_CONTROLLER/U_TIMER/xsdbm_v3_0_0_bu4_LUT1_22default:default2�
jdbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_XSDB_BUS_CONTROLLER/U_TIMER/xsdbm_v3_0_0_bu4_LUT5_4	jdbg_hub/inst/BSCANID.u_xsdbm_id/CORE_XSDB.UUT_MASTER/U_XSDB_BUS_CONTROLLER/U_TIMER/xsdbm_v3_0_0_bu4_LUT5_42default:default2
22default:default8Z31-1287h px� 
�
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2\
"master_count/counter_with_in1_LUT1	"master_count/counter_with_in1_LUT12default:default2`
$master_count/counter_with_in1_LUT6_6	$master_count/counter_with_in1_LUT6_62default:default2
12default:default8Z31-1287h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
?
*Phase 7 Resynthesis | Checksum: 269e83ec9
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:32 ; elapsed = 00:02:30 . Memory (MB): peak = 2476.219 ; gain = 482.3242default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Resynthesis2default:default2
28382default:default2
38662default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Resynthesis2default:default2
18892default:defaultZ31-1021h px� 
x

Phase %s%s
101*constraints2
8 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px� 
K
6Phase 8 Post Processing Netlist | Checksum: 269e83ec9
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:33 ; elapsed = 00:02:30 . Memory (MB): peak = 2476.219 ; gain = 482.3242default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2+
Post Processing Netlist2default:default2
572default:defaultZ31-1021h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |               6  |              13  |                                             66  |
|  Constant propagation         |               0  |              16  |                                             49  |
|  Sweep                        |               0  |              71  |                                           1886  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Resynthesis                  |            2838  |            3866  |                                           1889  |
|  Post Processing Netlist      |               0  |               0  |                                             57  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.271 . Memory (MB): peak = 2476.219 ; gain = 0.0002default:defaulth px� 
J
5Ending Logic Optimization Task | Checksum: 1849deae1
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:02:34 ; elapsed = 00:02:31 . Memory (MB): peak = 2476.219 ; gain = 482.3242default:defaulth px� 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0292default:default2
2476.2192default:default2
0.0002default:defaultZ17-268h px� 
K
6Ending Netlist Obfuscation Task | Checksum: 1849deae1
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.047 . Memory (MB): peak = 2476.219 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
672default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:02:392default:default2
00:02:362default:default2
2476.2192default:default2
630.6412default:defaultZ17-268h px� 
�
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.0342default:default2
2476.2192default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
tD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_fullcomb/Tarea_3_fullcomb.runs/impl_2/device_opt.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:182default:default2
00:00:122default:default2
2476.2192default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2x
dExecuting : report_drc -file device_drc_opted.rpt -pb device_drc_opted.pb -rpx device_drc_opted.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2k
Wreport_drc -file device_drc_opted.rpt -pb device_drc_opted.pb -rpx device_drc_opted.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
zD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_fullcomb/Tarea_3_fullcomb.runs/impl_2/device_drc_opted.rptzD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_fullcomb/Tarea_3_fullcomb.runs/impl_2/device_drc_opted.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:232default:default2
00:00:132default:default2
2476.2192default:default2
0.0002default:defaultZ17-268h px� 


End Record