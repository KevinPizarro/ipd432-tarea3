
f
Command: %s
53*	vivadotcl25
!opt_design -directive ExploreArea2default:defaultZ4-113h px? 
h
$Directive used for opt_design is: %s67*	vivadotcl2
ExploreArea2default:defaultZ4-136h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 1334.699 ; gain = 0.0002default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
<
'Phase 1 Retarget | Checksum: 18d005427
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 2239.590 ; gain = 640.2702default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
02default:default2
02default:defaultZ31-389h px? 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
H
3Phase 2 Constant propagation | Checksum: 1ac46a3c7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:20 ; elapsed = 00:00:17 . Memory (MB): peak = 2239.590 ; gain = 640.2702default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
02default:defaultZ31-389h px? 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px? 
9
$Phase 3 Sweep | Checksum: 15861746d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:19 . Memory (MB): peak = 2239.590 ; gain = 640.2702default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
32default:defaultZ31-389h px? 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
E
0Phase 4 BUFG optimization | Checksum: 15861746d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:25 ; elapsed = 00:00:21 . Memory (MB): peak = 2239.590 ; gain = 640.2702default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
?
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px? 
O
:Phase 5 Shift Register Optimization | Checksum: 15861746d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:25 ; elapsed = 00:00:21 . Memory (MB): peak = 2239.590 ; gain = 640.2702default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
l

Phase %s%s
101*constraints2
6 2default:default2
Resynthesis2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
J
Optimized %s modules.
74*opt2
52default:defaultZ31-74h px? 
Y
Optimized module '%s'.
75*opt2#
ManDisOperation2default:defaultZ31-75h px? 
U
Optimized module '%s'.
75*opt2
byte_to_mem2default:defaultZ31-75h px? 
Z
Optimized module '%s'.
75*opt2$
counter_with_inc2default:defaultZ31-75h px? 
[
Optimized module '%s'.
75*opt2%
save_and_transmit2default:defaultZ31-75h px? 
Q
Optimized module '%s'.
75*opt2
uart_tx2default:defaultZ31-75h px? 
?
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2b
%master_count/counter_with_in1_LUT1_17	%master_count/counter_with_in1_LUT1_172default:default2`
$master_count/counter_with_in1_LUT2_1	$master_count/counter_with_in1_LUT2_12default:default2
182default:default8Z31-1287h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
>
)Phase 6 Resynthesis | Checksum: bbd531a3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:57 ; elapsed = 00:01:45 . Memory (MB): peak = 2474.555 ; gain = 875.2342default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Resynthesis2default:default2
21832default:default2
32342default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
7 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
J
5Phase 7 Post Processing Netlist | Checksum: bbd531a3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:57 ; elapsed = 00:01:45 . Memory (MB): peak = 2474.555 ; gain = 875.2342default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px? 
/
Opt_design Change Summary
*commonh px? 
/
=========================
*commonh px? 


*commonh px? 


*commonh px? 
?
z-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Retarget                     |               0  |               0  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               3  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Resynthesis                  |            2183  |            3234  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.253 . Memory (MB): peak = 2474.555 ; gain = 0.0002default:defaulth px? 
J
5Ending Logic Optimization Task | Checksum: 24969802f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:02 ; elapsed = 00:01:49 . Memory (MB): peak = 2474.555 ; gain = 875.2342default:defaulth px? 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0322default:default2
2474.5552default:default2
0.0002default:defaultZ17-268h px? 
K
6Ending Netlist Obfuscation Task | Checksum: 24969802f
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.053 . Memory (MB): peak = 2474.555 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:02:072default:default2
00:01:542default:default2
2474.5552default:default2
1139.8552default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0292default:default2
2474.5552default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
vD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.runs/impl_2/device_opt.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:182default:default2
00:00:122default:default2
2474.5552default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2x
dExecuting : report_drc -file device_drc_opted.rpt -pb device_drc_opted.pb -rpx device_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2k
Wreport_drc -file device_drc_opted.rpt -pb device_drc_opted.pb -rpx device_drc_opted.rpx2default:defaultZ4-113h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
G
"No user IP repositories specified
1154*coregenZ19-1704h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.runs/impl_2/device_drc_opted.rpt|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.runs/impl_2/device_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:302default:default2
00:00:172default:default2
2474.5552default:default2
0.0002default:defaultZ17-268h px? 


End Record