// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Jan  5 10:07:06 2023
// Host        : LAPTOP-VMLVOQLM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3/Tarea_3.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(CLKLOG, reset, CLK100MHZ)
/* synthesis syn_black_box black_box_pad_pin="CLKLOG,reset,CLK100MHZ" */;
  output CLKLOG;
  input reset;
  input CLK100MHZ;
endmodule
