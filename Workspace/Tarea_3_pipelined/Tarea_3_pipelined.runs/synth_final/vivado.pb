
t
Command: %s
53*	vivadotcl2C
/synth_design -top device -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
193282default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1281.652 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
device2default:default2
 2default:default2?
xD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/device.sv2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

uart_basic2default:default2
 2default:default2?
{D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_basic.v2default:default2
102default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2&
uart_baud_tick_gen2default:default2
 2default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter OVERSAMPLING bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
uart_baud_tick_gen2default:default2
 2default:default2
02default:default2
12default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2?
xD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_rx.v2default:default2
102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	data_sync2default:default2
 2default:default2?
zD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/data_sync.v2default:default2
112default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	data_sync2default:default2
 2default:default2
02default:default2
12default:default2?
zD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/data_sync.v2default:default2
112default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2?
xD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_rx.v2default:default2
782default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
02default:default2
12default:default2?
xD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_rx.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys26
"uart_baud_tick_gen__parameterized02default:default2
 2default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-6157h px? 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter OVERSAMPLING bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"uart_baud_tick_gen__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_baud_tick_gen.v2default:default2
112default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2?
xD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_tx.v2default:default2
102default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
02default:default2
12default:default2?
xD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_tx.v2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

uart_basic2default:default2
 2default:default2
02default:default2
12default:default2?
{D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/uart_basic.v2default:default2
102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
counter_with_inc2default:default2
 2default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/counter_with_inc.sv2default:default2
12default:default8@Z8-6157h px? 
W
%s
*synth2?
+	Parameter n bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
counter_with_inc2default:default2
 2default:default2
02default:default2
12default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/counter_with_inc.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
byte_to_mem2default:default2
 2default:default2?
}D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/byte_to_mem.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter WIDTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
byte_to_mem2default:default2
 2default:default2
02default:default2
12default:default2?
}D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/byte_to_mem.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
DRAM2default:default2
 2default:default2?
vD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/DRAM.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter WIDTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DRAM2default:default2
 2default:default2
02default:default2
12default:default2?
vD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/DRAM.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mem_to_byte2default:default2
 2default:default2?
}D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/mem_to_byte.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter WIDTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mem_to_byte2default:default2
 2default:default2
02default:default2
12default:default2?
}D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/mem_to_byte.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
save_and_transmit2default:default2
 2default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/save_and_transmit.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter WIDTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/save_and_transmit.sv2default:default2
292default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/save_and_transmit.sv2default:default2
522default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
save_and_transmit2default:default2
 2default:default2
02default:default2
12default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/save_and_transmit.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
info_to_7seg2default:default2
 2default:default2?
~D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/info_to_7seg.sv2default:default2
12default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
bin2bcd2default:default2
 2default:default2?
~D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/double_dabble.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bin2bcd2default:default2
 2default:default2
02default:default2
12default:default2?
~D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/double_dabble.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
bcd2seg2default:default2
 2default:default2?
uD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/BCD.sv2default:default2
32default:default8@Z8-6157h px? 
?
default block is never used226*oasys2?
uD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/BCD.sv2default:default2
112default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bcd2seg2default:default2
 2default:default2
02default:default2
12default:default2?
uD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/BCD.sv2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
multiplexing2default:default2
 2default:default2?
~D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/Multiplexing.sv2default:default2
32default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter freq bound to: 120 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
timer2default:default2
 2default:default2?
wD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/timer.sv2default:default2
12default:default8@Z8-6157h px? 
i
%s
*synth2Q
=	Parameter n_clycles_count bound to: 104166 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
timer2default:default2
 2default:default2
02default:default2
12default:default2?
wD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/timer.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys24
 counter_with_inc__parameterized02default:default2
 2default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/counter_with_inc.sv2default:default2
12default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter n bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 counter_with_inc__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/counter_with_inc.sv2default:default2
12default:default8@Z8-6155h px? 
?
default block is never used226*oasys2?
~D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/Multiplexing.sv2default:default2
332default:default8@Z8-226h px? 
?
default block is never used226*oasys2?
~D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/Multiplexing.sv2default:default2
442default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
multiplexing2default:default2
 2default:default2
02default:default2
12default:default2?
~D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/Multiplexing.sv2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
info_to_7seg2default:default2
 2default:default2
02default:default2
12default:default2?
~D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/info_to_7seg.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	operation2default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/operations.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter WIDTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
data_enable2default:default2
 2default:default2?
}D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/data_enable.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter WIDTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
data_enable2default:default2
 2default:default2
02default:default2
12default:default2?
}D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/data_enable.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
n_bit_multiadder2default:default2
 2default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/n_bit_multiadder.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter WIDTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
n_bit_multiadder2default:default2
 2default:default2
02default:default2
12default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/n_bit_multiadder.sv2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
ManDisOperation2default:default2
 2default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/ManDisOperation.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter WIDTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

adder_tree2default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter WIDTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter LENGTH bound to: 18 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized02default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter WIDTH bound to: 512 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DEEPTH bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized12default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter WIDTH bound to: 256 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEEPTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized22default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter WIDTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEEPTH bound to: 11 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized32default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEEPTH bound to: 12 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized42default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEEPTH bound to: 13 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized52default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEEPTH bound to: 14 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized62default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEEPTH bound to: 15 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized72default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEEPTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2.
adder_tree__parameterized82default:default2
 2default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DEEPTH bound to: 17 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized82default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized72default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized62default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized52default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized42default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized32default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
adder_tree__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

adder_tree2default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/adder_tree.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
ManDisOperation2default:default2
 2default:default2
02default:default2
12default:default2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/ManDisOperation.sv2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	operation2default:default2
 2default:default2
02default:default2
12default:default2?
|D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/operations.sv2default:default2
12default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2?
xD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/device.sv2default:default2
1332default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
device2default:default2
 2default:default2
02default:default2
12default:default2?
xD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/sources_1/new/device.sv2default:default2
22default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2default:default2.
adder_tree__parameterized82default:defaultZ8-7129h px? 
?
%s*synth2?
zFinished RTL Elaboration : Time (s): cpu = 00:02:13 ; elapsed = 00:02:14 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:02:14 ; elapsed = 00:02:15 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:02:14 ; elapsed = 00:02:15 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:052default:default2
00:00:052default:default2
3818.0822default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/constrs_1/imports/constrs_1/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/constrs_1/imports/constrs_1/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.srcs/constrs_1/imports/constrs_1/Nexys-A7-100T-Master.xdc2default:default2,
.Xil/device_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0192default:default2
3818.0822default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.3632default:default2
3818.0822default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:03:18 ; elapsed = 00:03:18 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:03:18 ; elapsed = 00:03:18 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:03:18 ; elapsed = 00:03:18 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_rx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_tx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2%
save_and_transmit2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_IDLE |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                RX_START |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_RECV |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RX_STOP |                              011 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                RX_READY |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_rx2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                TX_START |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_SEND |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 TX_STOP |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_tx2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                              001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                    save |                              010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                transmit |                              100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2%
save_and_transmit2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:04:08 ; elapsed = 00:04:12 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   19 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   18 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   15 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   14 Bit       Adders := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit       Adders := 32    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 64    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 128   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 257   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1536  
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 1024  
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 92    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               19 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               15 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               13 Bit    Registers := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 64    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 128   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 258   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1536  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 6146  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input 1024 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   23 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   20 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 4097  
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    8 Bit        Muxes := 1025  
2default:defaulth p
x
? 
X
%s
*synth2@
,	  16 Input    7 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  10 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 75    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  16 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[682][1]2default:default2
FD2default:default2)
avg_adder_reg[682][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[682][2]2default:default2
FD2default:default2)
avg_adder_reg[682][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[682][3]2default:default2
FD2default:default2)
avg_adder_reg[682][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[682][4]2default:default2
FD2default:default2)
avg_adder_reg[682][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[682][5]2default:default2
FD2default:default2)
avg_adder_reg[682][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[682][6]2default:default2
FD2default:default2)
avg_adder_reg[682][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[682][7]2default:default2
FD2default:default2)
avg_adder_reg[682][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[12][1]2default:default2
FD2default:default2(
avg_adder_reg[12][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[12][2]2default:default2
FD2default:default2(
avg_adder_reg[12][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[12][3]2default:default2
FD2default:default2(
avg_adder_reg[12][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[12][4]2default:default2
FD2default:default2(
avg_adder_reg[12][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[12][5]2default:default2
FD2default:default2(
avg_adder_reg[12][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[12][6]2default:default2
FD2default:default2(
avg_adder_reg[12][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[12][7]2default:default2
FD2default:default2(
avg_adder_reg[12][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[17][1]2default:default2
FD2default:default2(
avg_adder_reg[17][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[17][2]2default:default2
FD2default:default2(
avg_adder_reg[17][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[17][3]2default:default2
FD2default:default2(
avg_adder_reg[17][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[17][4]2default:default2
FD2default:default2(
avg_adder_reg[17][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[17][5]2default:default2
FD2default:default2(
avg_adder_reg[17][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[17][6]2default:default2
FD2default:default2(
avg_adder_reg[17][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[17][7]2default:default2
FD2default:default2(
avg_adder_reg[17][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[5][1]2default:default2
FD2default:default2'
avg_adder_reg[5][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[5][2]2default:default2
FD2default:default2'
avg_adder_reg[5][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[5][3]2default:default2
FD2default:default2'
avg_adder_reg[5][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[5][4]2default:default2
FD2default:default2'
avg_adder_reg[5][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[5][5]2default:default2
FD2default:default2'
avg_adder_reg[5][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[5][6]2default:default2
FD2default:default2'
avg_adder_reg[5][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[5][7]2default:default2
FD2default:default2'
avg_adder_reg[5][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[4][1]2default:default2
FD2default:default2'
avg_adder_reg[4][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[4][2]2default:default2
FD2default:default2'
avg_adder_reg[4][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[4][3]2default:default2
FD2default:default2'
avg_adder_reg[4][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[4][4]2default:default2
FD2default:default2'
avg_adder_reg[4][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[4][5]2default:default2
FD2default:default2'
avg_adder_reg[4][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[4][6]2default:default2
FD2default:default2'
avg_adder_reg[4][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
sum_adder_reg[4][7]2default:default2
FD2default:default2'
avg_adder_reg[4][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[19][1]2default:default2
FD2default:default2(
avg_adder_reg[19][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[19][2]2default:default2
FD2default:default2(
avg_adder_reg[19][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[19][3]2default:default2
FD2default:default2(
avg_adder_reg[19][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[19][4]2default:default2
FD2default:default2(
avg_adder_reg[19][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[19][5]2default:default2
FD2default:default2(
avg_adder_reg[19][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[19][6]2default:default2
FD2default:default2(
avg_adder_reg[19][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[19][7]2default:default2
FD2default:default2(
avg_adder_reg[19][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[29][1]2default:default2
FD2default:default2(
avg_adder_reg[29][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[29][2]2default:default2
FD2default:default2(
avg_adder_reg[29][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[29][3]2default:default2
FD2default:default2(
avg_adder_reg[29][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[29][4]2default:default2
FD2default:default2(
avg_adder_reg[29][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[29][5]2default:default2
FD2default:default2(
avg_adder_reg[29][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[29][6]2default:default2
FD2default:default2(
avg_adder_reg[29][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[29][7]2default:default2
FD2default:default2(
avg_adder_reg[29][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[32][1]2default:default2
FD2default:default2(
avg_adder_reg[32][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[32][2]2default:default2
FD2default:default2(
avg_adder_reg[32][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[32][3]2default:default2
FD2default:default2(
avg_adder_reg[32][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[32][4]2default:default2
FD2default:default2(
avg_adder_reg[32][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[32][5]2default:default2
FD2default:default2(
avg_adder_reg[32][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[32][6]2default:default2
FD2default:default2(
avg_adder_reg[32][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[32][7]2default:default2
FD2default:default2(
avg_adder_reg[32][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[690][1]2default:default2
FD2default:default2)
avg_adder_reg[690][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[690][2]2default:default2
FD2default:default2)
avg_adder_reg[690][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[690][3]2default:default2
FD2default:default2)
avg_adder_reg[690][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[690][4]2default:default2
FD2default:default2)
avg_adder_reg[690][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[690][5]2default:default2
FD2default:default2)
avg_adder_reg[690][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[690][6]2default:default2
FD2default:default2)
avg_adder_reg[690][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[690][7]2default:default2
FD2default:default2)
avg_adder_reg[690][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[691][1]2default:default2
FD2default:default2)
avg_adder_reg[691][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[691][2]2default:default2
FD2default:default2)
avg_adder_reg[691][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[691][3]2default:default2
FD2default:default2)
avg_adder_reg[691][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[691][4]2default:default2
FD2default:default2)
avg_adder_reg[691][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[691][5]2default:default2
FD2default:default2)
avg_adder_reg[691][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[691][6]2default:default2
FD2default:default2)
avg_adder_reg[691][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[691][7]2default:default2
FD2default:default2)
avg_adder_reg[691][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[37][1]2default:default2
FD2default:default2(
avg_adder_reg[37][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[37][2]2default:default2
FD2default:default2(
avg_adder_reg[37][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[37][3]2default:default2
FD2default:default2(
avg_adder_reg[37][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[37][4]2default:default2
FD2default:default2(
avg_adder_reg[37][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[37][5]2default:default2
FD2default:default2(
avg_adder_reg[37][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[37][6]2default:default2
FD2default:default2(
avg_adder_reg[37][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[37][7]2default:default2
FD2default:default2(
avg_adder_reg[37][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
avg_adder_reg[1023][0]2default:default2
FD2default:default2*
sum_adder_reg[1023][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
avg_adder_reg[1023][1]2default:default2
FD2default:default2*
sum_adder_reg[1023][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
avg_adder_reg[1023][2]2default:default2
FD2default:default2*
sum_adder_reg[1023][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
avg_adder_reg[1023][3]2default:default2
FD2default:default2*
sum_adder_reg[1023][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
avg_adder_reg[1023][4]2default:default2
FD2default:default2*
sum_adder_reg[1023][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
avg_adder_reg[1023][5]2default:default2
FD2default:default2*
sum_adder_reg[1023][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
avg_adder_reg[1023][6]2default:default2
FD2default:default2*
sum_adder_reg[1023][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[694][1]2default:default2
FD2default:default2)
avg_adder_reg[694][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[694][2]2default:default2
FD2default:default2)
avg_adder_reg[694][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[694][3]2default:default2
FD2default:default2)
avg_adder_reg[694][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[694][4]2default:default2
FD2default:default2)
avg_adder_reg[694][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[694][5]2default:default2
FD2default:default2)
avg_adder_reg[694][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[694][6]2default:default2
FD2default:default2)
avg_adder_reg[694][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
sum_adder_reg[694][7]2default:default2
FD2default:default2)
avg_adder_reg[694][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[41][1]2default:default2
FD2default:default2(
avg_adder_reg[41][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[41][2]2default:default2
FD2default:default2(
avg_adder_reg[41][1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[41][3]2default:default2
FD2default:default2(
avg_adder_reg[41][2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[41][4]2default:default2
FD2default:default2(
avg_adder_reg[41][3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[41][5]2default:default2
FD2default:default2(
avg_adder_reg[41][4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[41][6]2default:default2
FD2default:default2(
avg_adder_reg[41][5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[41][7]2default:default2
FD2default:default2(
avg_adder_reg[41][6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[47][1]2default:default2
FD2default:default2(
avg_adder_reg[47][0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
sum_adder_reg[47][2]2default:default2
FD2default:default2(
avg_adder_reg[47][1]2default:defaultZ8-3886h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
p_0_out2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\SevenSeg_logic/mode_reg[7] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:05:34 ; elapsed = 00:05:28 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:05:48 ; elapsed = 00:05:42 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Timing Optimization : Time (s): cpu = 00:10:20 ; elapsed = 00:10:15 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Technology Mapping : Time (s): cpu = 00:11:22 ; elapsed = 00:11:26 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
wFinished IO Insertion : Time (s): cpu = 00:12:03 ; elapsed = 00:12:07 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:12:03 ; elapsed = 00:12:07 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:12:32 ; elapsed = 00:12:36 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:12:36 ; elapsed = 00:12:40 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:12:38 ; elapsed = 00:12:43 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:12:40 ; elapsed = 00:12:44 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |  9293|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    31|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   | 20021|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   | 16601|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |  7641|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   | 23607|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |  7667|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |  5632|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |   544|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   | 61611|
2default:defaulth px? 
D
%s*synth2,
|12    |FDSE   |     6|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |     3|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |    17|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:12:40 ; elapsed = 00:12:45 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:09:33 ; elapsed = 00:11:52 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:12:41 ; elapsed = 00:12:46 . Memory (MB): peak = 3818.082 ; gain = 2536.430
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:042default:default2
00:00:042default:default2
3818.0822default:default2
0.0002default:defaultZ17-268h px? 
i
-Analyzing %s Unisim elements for replacement
17*netlist2
154692default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0422default:default2
3818.0822default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
56dd69352default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2082default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:13:322default:default2
00:13:402default:default2
3818.0822default:default2
2536.4302default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
wD:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3_pipelined/Tarea_3_pipelined.runs/synth_final/device.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:252default:default2
00:00:302default:default2
3818.0822default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2v
bExecuting : report_utilization -file device_utilization_synth.rpt -pb device_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Jan  9 01:13:25 20232default:defaultZ17-206h px? 


End Record