// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Jan  5 09:15:07 2023
// Host        : LAPTOP-VMLVOQLM running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3/Tarea_3.sim/sim_1/impl/func/xsim/TB_device_func_impl.v
// Design      : device
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module DRAM
   (DI,
    Q,
    \genblk1[2].data_out_reg[2][7]_0 ,
    \genblk1[2].data_out_reg[2][7]_1 ,
    \genblk1[1].data_out_reg[1][7]_0 ,
    \genblk1[1].data_out_reg[1][7]_1 ,
    \genblk1[0].data_out_reg[0][7]_0 ,
    \genblk1[0].data_out_reg[0][7]_1 ,
    abs2_carry,
    \abs2_inferred__0/i__carry ,
    \abs2_inferred__1/i__carry ,
    \abs2_inferred__2/i__carry ,
    SR,
    writeA,
    \genblk1[3].data_out_reg[3][7]_0 ,
    CLKMAIN);
  output [3:0]DI;
  output [7:0]Q;
  output [3:0]\genblk1[2].data_out_reg[2][7]_0 ;
  output [7:0]\genblk1[2].data_out_reg[2][7]_1 ;
  output [3:0]\genblk1[1].data_out_reg[1][7]_0 ;
  output [7:0]\genblk1[1].data_out_reg[1][7]_1 ;
  output [3:0]\genblk1[0].data_out_reg[0][7]_0 ;
  output [7:0]\genblk1[0].data_out_reg[0][7]_1 ;
  input [7:0]abs2_carry;
  input [7:0]\abs2_inferred__0/i__carry ;
  input [7:0]\abs2_inferred__1/i__carry ;
  input [7:0]\abs2_inferred__2/i__carry ;
  input [0:0]SR;
  input [3:0]writeA;
  input [7:0]\genblk1[3].data_out_reg[3][7]_0 ;
  input CLKMAIN;

  wire CLKMAIN;
  wire [3:0]DI;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [7:0]abs2_carry;
  wire [7:0]\abs2_inferred__0/i__carry ;
  wire [7:0]\abs2_inferred__1/i__carry ;
  wire [7:0]\abs2_inferred__2/i__carry ;
  wire [3:0]\genblk1[0].data_out_reg[0][7]_0 ;
  wire [7:0]\genblk1[0].data_out_reg[0][7]_1 ;
  wire [3:0]\genblk1[1].data_out_reg[1][7]_0 ;
  wire [7:0]\genblk1[1].data_out_reg[1][7]_1 ;
  wire [3:0]\genblk1[2].data_out_reg[2][7]_0 ;
  wire [7:0]\genblk1[2].data_out_reg[2][7]_1 ;
  wire [7:0]\genblk1[3].data_out_reg[3][7]_0 ;
  wire [3:0]writeA;

  LUT4 #(
    .INIT(16'h2B22)) 
    abs2_carry_i_1
       (.I0(Q[7]),
        .I1(abs2_carry[7]),
        .I2(abs2_carry[6]),
        .I3(Q[6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    abs2_carry_i_2
       (.I0(Q[5]),
        .I1(abs2_carry[5]),
        .I2(Q[4]),
        .I3(abs2_carry[4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    abs2_carry_i_3
       (.I0(Q[3]),
        .I1(abs2_carry[3]),
        .I2(Q[2]),
        .I3(abs2_carry[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    abs2_carry_i_4
       (.I0(Q[1]),
        .I1(abs2_carry[1]),
        .I2(Q[0]),
        .I3(abs2_carry[0]),
        .O(DI[0]));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][0] 
       (.C(CLKMAIN),
        .CE(writeA[0]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [0]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][1] 
       (.C(CLKMAIN),
        .CE(writeA[0]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [1]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][2] 
       (.C(CLKMAIN),
        .CE(writeA[0]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [2]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][3] 
       (.C(CLKMAIN),
        .CE(writeA[0]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [3]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][4] 
       (.C(CLKMAIN),
        .CE(writeA[0]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [4]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][5] 
       (.C(CLKMAIN),
        .CE(writeA[0]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [5]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][6] 
       (.C(CLKMAIN),
        .CE(writeA[0]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [6]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][7] 
       (.C(CLKMAIN),
        .CE(writeA[0]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [7]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][0] 
       (.C(CLKMAIN),
        .CE(writeA[1]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [0]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][1] 
       (.C(CLKMAIN),
        .CE(writeA[1]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [1]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][2] 
       (.C(CLKMAIN),
        .CE(writeA[1]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [2]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][3] 
       (.C(CLKMAIN),
        .CE(writeA[1]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [3]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][4] 
       (.C(CLKMAIN),
        .CE(writeA[1]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [4]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][5] 
       (.C(CLKMAIN),
        .CE(writeA[1]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [5]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][6] 
       (.C(CLKMAIN),
        .CE(writeA[1]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [6]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][7] 
       (.C(CLKMAIN),
        .CE(writeA[1]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [7]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][0] 
       (.C(CLKMAIN),
        .CE(writeA[2]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [0]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][1] 
       (.C(CLKMAIN),
        .CE(writeA[2]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [1]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][2] 
       (.C(CLKMAIN),
        .CE(writeA[2]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [2]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][3] 
       (.C(CLKMAIN),
        .CE(writeA[2]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [3]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][4] 
       (.C(CLKMAIN),
        .CE(writeA[2]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [4]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][5] 
       (.C(CLKMAIN),
        .CE(writeA[2]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [5]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][6] 
       (.C(CLKMAIN),
        .CE(writeA[2]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [6]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][7] 
       (.C(CLKMAIN),
        .CE(writeA[2]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [7]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][0] 
       (.C(CLKMAIN),
        .CE(writeA[3]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][1] 
       (.C(CLKMAIN),
        .CE(writeA[3]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][2] 
       (.C(CLKMAIN),
        .CE(writeA[3]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][3] 
       (.C(CLKMAIN),
        .CE(writeA[3]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][4] 
       (.C(CLKMAIN),
        .CE(writeA[3]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][5] 
       (.C(CLKMAIN),
        .CE(writeA[3]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][6] 
       (.C(CLKMAIN),
        .CE(writeA[3]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][7] 
       (.C(CLKMAIN),
        .CE(writeA[3]),
        .D(\genblk1[3].data_out_reg[3][7]_0 [7]),
        .Q(Q[7]),
        .R(SR));
  LUT4 #(
    .INIT(16'h2B22)) 
    i__carry_i_1
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [7]),
        .I1(\abs2_inferred__0/i__carry [7]),
        .I2(\abs2_inferred__0/i__carry [6]),
        .I3(\genblk1[2].data_out_reg[2][7]_1 [6]),
        .O(\genblk1[2].data_out_reg[2][7]_0 [3]));
  LUT4 #(
    .INIT(16'h2B22)) 
    i__carry_i_1__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [7]),
        .I1(\abs2_inferred__1/i__carry [7]),
        .I2(\abs2_inferred__1/i__carry [6]),
        .I3(\genblk1[1].data_out_reg[1][7]_1 [6]),
        .O(\genblk1[1].data_out_reg[1][7]_0 [3]));
  LUT4 #(
    .INIT(16'h2B22)) 
    i__carry_i_1__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [7]),
        .I1(\abs2_inferred__2/i__carry [7]),
        .I2(\abs2_inferred__2/i__carry [6]),
        .I3(\genblk1[0].data_out_reg[0][7]_1 [6]),
        .O(\genblk1[0].data_out_reg[0][7]_0 [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [5]),
        .I1(\abs2_inferred__0/i__carry [5]),
        .I2(\genblk1[2].data_out_reg[2][7]_1 [4]),
        .I3(\abs2_inferred__0/i__carry [4]),
        .O(\genblk1[2].data_out_reg[2][7]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [5]),
        .I1(\abs2_inferred__1/i__carry [5]),
        .I2(\genblk1[1].data_out_reg[1][7]_1 [4]),
        .I3(\abs2_inferred__1/i__carry [4]),
        .O(\genblk1[1].data_out_reg[1][7]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [5]),
        .I1(\abs2_inferred__2/i__carry [5]),
        .I2(\genblk1[0].data_out_reg[0][7]_1 [4]),
        .I3(\abs2_inferred__2/i__carry [4]),
        .O(\genblk1[0].data_out_reg[0][7]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [3]),
        .I1(\abs2_inferred__0/i__carry [3]),
        .I2(\genblk1[2].data_out_reg[2][7]_1 [2]),
        .I3(\abs2_inferred__0/i__carry [2]),
        .O(\genblk1[2].data_out_reg[2][7]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [3]),
        .I1(\abs2_inferred__1/i__carry [3]),
        .I2(\genblk1[1].data_out_reg[1][7]_1 [2]),
        .I3(\abs2_inferred__1/i__carry [2]),
        .O(\genblk1[1].data_out_reg[1][7]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [3]),
        .I1(\abs2_inferred__2/i__carry [3]),
        .I2(\genblk1[0].data_out_reg[0][7]_1 [2]),
        .I3(\abs2_inferred__2/i__carry [2]),
        .O(\genblk1[0].data_out_reg[0][7]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [1]),
        .I1(\abs2_inferred__0/i__carry [1]),
        .I2(\genblk1[2].data_out_reg[2][7]_1 [0]),
        .I3(\abs2_inferred__0/i__carry [0]),
        .O(\genblk1[2].data_out_reg[2][7]_0 [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [1]),
        .I1(\abs2_inferred__1/i__carry [1]),
        .I2(\genblk1[1].data_out_reg[1][7]_1 [0]),
        .I3(\abs2_inferred__1/i__carry [0]),
        .O(\genblk1[1].data_out_reg[1][7]_0 [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [1]),
        .I1(\abs2_inferred__2/i__carry [1]),
        .I2(\genblk1[0].data_out_reg[0][7]_1 [0]),
        .I3(\abs2_inferred__2/i__carry [0]),
        .O(\genblk1[0].data_out_reg[0][7]_0 [0]));
endmodule

(* ORIG_REF_NAME = "DRAM" *) 
module DRAM_0
   (\state_reg[1] ,
    \distance_reg[7]_i_3_0 ,
    \state_reg[1]_0 ,
    \distance_reg[7]_i_16_0 ,
    SR,
    S,
    \genblk1[3].data_out_reg[3][7]_0 ,
    \genblk1[3].data_out_reg[3][7]_1 ,
    \genblk1[2].data_out_reg[2][7]_0 ,
    \genblk1[2].data_out_reg[2][7]_1 ,
    \genblk1[2].data_out_reg[2][7]_2 ,
    \genblk1[1].data_out_reg[1][7]_0 ,
    \genblk1[1].data_out_reg[1][7]_1 ,
    \genblk1[1].data_out_reg[1][7]_2 ,
    \genblk1[0].data_out_reg[0][7]_0 ,
    \genblk1[0].data_out_reg[0][7]_1 ,
    \genblk1[0].data_out_reg[0][7]_2 ,
    \genblk1[3].data_out_reg[3][3]_0 ,
    \genblk1[2].data_out_reg[2][3]_0 ,
    \genblk1[1].data_out_reg[1][3]_0 ,
    \genblk1[0].data_out_reg[0][3]_0 ,
    \distance[7]_i_7 ,
    \distance[7]_i_7_0 ,
    \distance[7]_i_7_1 ,
    \distance[7]_i_7_2 ,
    \distance_reg[7]_i_3_1 ,
    Q,
    \distance_reg[7]_i_3_2 ,
    O,
    CO,
    CPU_RESETN_IBUF,
    abs2_carry,
    \abs2_inferred__0/i__carry ,
    \abs2_inferred__1/i__carry ,
    \abs2_inferred__2/i__carry ,
    writeB,
    \genblk1[3].data_out_reg[3][7]_2 ,
    CLKMAIN);
  output [3:0]\state_reg[1] ;
  output [0:0]\distance_reg[7]_i_3_0 ;
  output [3:0]\state_reg[1]_0 ;
  output [0:0]\distance_reg[7]_i_16_0 ;
  output [0:0]SR;
  output [3:0]S;
  output [7:0]\genblk1[3].data_out_reg[3][7]_0 ;
  output [3:0]\genblk1[3].data_out_reg[3][7]_1 ;
  output [3:0]\genblk1[2].data_out_reg[2][7]_0 ;
  output [7:0]\genblk1[2].data_out_reg[2][7]_1 ;
  output [3:0]\genblk1[2].data_out_reg[2][7]_2 ;
  output [3:0]\genblk1[1].data_out_reg[1][7]_0 ;
  output [7:0]\genblk1[1].data_out_reg[1][7]_1 ;
  output [3:0]\genblk1[1].data_out_reg[1][7]_2 ;
  output [3:0]\genblk1[0].data_out_reg[0][7]_0 ;
  output [7:0]\genblk1[0].data_out_reg[0][7]_1 ;
  output [3:0]\genblk1[0].data_out_reg[0][7]_2 ;
  output [3:0]\genblk1[3].data_out_reg[3][3]_0 ;
  output [3:0]\genblk1[2].data_out_reg[2][3]_0 ;
  output [3:0]\genblk1[1].data_out_reg[1][3]_0 ;
  output [3:0]\genblk1[0].data_out_reg[0][3]_0 ;
  input [0:0]\distance[7]_i_7 ;
  input [3:0]\distance[7]_i_7_0 ;
  input [0:0]\distance[7]_i_7_1 ;
  input [3:0]\distance[7]_i_7_2 ;
  input [3:0]\distance_reg[7]_i_3_1 ;
  input [3:0]Q;
  input [0:0]\distance_reg[7]_i_3_2 ;
  input [3:0]O;
  input [0:0]CO;
  input CPU_RESETN_IBUF;
  input [7:0]abs2_carry;
  input [7:0]\abs2_inferred__0/i__carry ;
  input [7:0]\abs2_inferred__1/i__carry ;
  input [7:0]\abs2_inferred__2/i__carry ;
  input [3:0]writeB;
  input [7:0]\genblk1[3].data_out_reg[3][7]_2 ;
  input CLKMAIN;

  wire CLKMAIN;
  wire [0:0]CO;
  wire CPU_RESETN_IBUF;
  wire [7:4]\Man_Dist_inst/abs[0] ;
  wire [7:4]\Man_Dist_inst/abs[2] ;
  wire [3:0]O;
  wire [3:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [7:0]abs2_carry;
  wire [7:0]\abs2_inferred__0/i__carry ;
  wire [7:0]\abs2_inferred__1/i__carry ;
  wire [7:0]\abs2_inferred__2/i__carry ;
  wire [0:0]\distance[7]_i_7 ;
  wire [3:0]\distance[7]_i_7_0 ;
  wire [0:0]\distance[7]_i_7_1 ;
  wire [3:0]\distance[7]_i_7_2 ;
  wire [0:0]\distance_reg[7]_i_16_0 ;
  wire \distance_reg[7]_i_16_n_0 ;
  wire [0:0]\distance_reg[7]_i_3_0 ;
  wire [3:0]\distance_reg[7]_i_3_1 ;
  wire [0:0]\distance_reg[7]_i_3_2 ;
  wire \distance_reg[7]_i_3_n_0 ;
  wire [3:0]\genblk1[0].data_out_reg[0][3]_0 ;
  wire [3:0]\genblk1[0].data_out_reg[0][7]_0 ;
  wire [7:0]\genblk1[0].data_out_reg[0][7]_1 ;
  wire [3:0]\genblk1[0].data_out_reg[0][7]_2 ;
  wire [3:0]\genblk1[1].data_out_reg[1][3]_0 ;
  wire [3:0]\genblk1[1].data_out_reg[1][7]_0 ;
  wire [7:0]\genblk1[1].data_out_reg[1][7]_1 ;
  wire [3:0]\genblk1[1].data_out_reg[1][7]_2 ;
  wire [3:0]\genblk1[2].data_out_reg[2][3]_0 ;
  wire [3:0]\genblk1[2].data_out_reg[2][7]_0 ;
  wire [7:0]\genblk1[2].data_out_reg[2][7]_1 ;
  wire [3:0]\genblk1[2].data_out_reg[2][7]_2 ;
  wire [3:0]\genblk1[3].data_out_reg[3][3]_0 ;
  wire [7:0]\genblk1[3].data_out_reg[3][7]_0 ;
  wire [3:0]\genblk1[3].data_out_reg[3][7]_1 ;
  wire [7:0]\genblk1[3].data_out_reg[3][7]_2 ;
  wire [3:0]\state_reg[1] ;
  wire [3:0]\state_reg[1]_0 ;
  wire [3:0]writeB;
  wire [2:0]\NLW_distance_reg[7]_i_16_CO_UNCONNECTED ;
  wire [2:0]\NLW_distance_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_distance_reg[9]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_distance_reg[9]_i_4_O_UNCONNECTED ;
  wire [3:1]\NLW_distance_reg[9]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_distance_reg[9]_i_6_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .O(SR));
  LUT2 #(
    .INIT(4'h9)) 
    abs0_carry__0_i_1
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [7]),
        .I1(abs2_carry[7]),
        .O(\genblk1[3].data_out_reg[3][7]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    abs0_carry__0_i_2
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [6]),
        .I1(abs2_carry[6]),
        .O(\genblk1[3].data_out_reg[3][7]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    abs0_carry__0_i_3
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [5]),
        .I1(abs2_carry[5]),
        .O(\genblk1[3].data_out_reg[3][7]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    abs0_carry__0_i_4
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [4]),
        .I1(abs2_carry[4]),
        .O(\genblk1[3].data_out_reg[3][7]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    abs0_carry_i_1
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [3]),
        .I1(abs2_carry[3]),
        .O(\genblk1[3].data_out_reg[3][3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    abs0_carry_i_2
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [2]),
        .I1(abs2_carry[2]),
        .O(\genblk1[3].data_out_reg[3][3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    abs0_carry_i_3
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [1]),
        .I1(abs2_carry[1]),
        .O(\genblk1[3].data_out_reg[3][3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    abs0_carry_i_4
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [0]),
        .I1(abs2_carry[0]),
        .O(\genblk1[3].data_out_reg[3][3]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    abs2_carry_i_5
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [7]),
        .I1(abs2_carry[7]),
        .I2(\genblk1[3].data_out_reg[3][7]_0 [6]),
        .I3(abs2_carry[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    abs2_carry_i_6
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [5]),
        .I1(abs2_carry[5]),
        .I2(\genblk1[3].data_out_reg[3][7]_0 [4]),
        .I3(abs2_carry[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    abs2_carry_i_7
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [3]),
        .I1(abs2_carry[3]),
        .I2(\genblk1[3].data_out_reg[3][7]_0 [2]),
        .I3(abs2_carry[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    abs2_carry_i_8
       (.I0(\genblk1[3].data_out_reg[3][7]_0 [1]),
        .I1(abs2_carry[1]),
        .I2(\genblk1[3].data_out_reg[3][7]_0 [0]),
        .I3(abs2_carry[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[7]_i_10 
       (.I0(\distance_reg[7]_i_3_1 [1]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\distance_reg[7]_i_3_2 ),
        .O(\Man_Dist_inst/abs[0] [5]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[7]_i_11 
       (.I0(\distance_reg[7]_i_3_1 [0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\distance_reg[7]_i_3_2 ),
        .O(\Man_Dist_inst/abs[0] [4]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[7]_i_17 
       (.I0(O[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(CO),
        .O(\Man_Dist_inst/abs[2] [7]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[7]_i_18 
       (.I0(O[2]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(CO),
        .O(\Man_Dist_inst/abs[2] [6]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[7]_i_19 
       (.I0(O[1]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(CO),
        .O(\Man_Dist_inst/abs[2] [5]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[7]_i_20 
       (.I0(O[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(CO),
        .O(\Man_Dist_inst/abs[2] [4]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[7]_i_8 
       (.I0(\distance_reg[7]_i_3_1 [3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\distance_reg[7]_i_3_2 ),
        .O(\Man_Dist_inst/abs[0] [7]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[7]_i_9 
       (.I0(\distance_reg[7]_i_3_1 [2]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\distance_reg[7]_i_3_2 ),
        .O(\Man_Dist_inst/abs[0] [6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \distance_reg[7]_i_16 
       (.CI(\distance[7]_i_7_1 ),
        .CO({\distance_reg[7]_i_16_n_0 ,\NLW_distance_reg[7]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\Man_Dist_inst/abs[2] ),
        .O(\state_reg[1]_0 ),
        .S(\distance[7]_i_7_2 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \distance_reg[7]_i_3 
       (.CI(\distance[7]_i_7 ),
        .CO({\distance_reg[7]_i_3_n_0 ,\NLW_distance_reg[7]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\Man_Dist_inst/abs[0] ),
        .O(\state_reg[1] ),
        .S(\distance[7]_i_7_0 ));
  CARRY4 \distance_reg[9]_i_4 
       (.CI(\distance_reg[7]_i_3_n_0 ),
        .CO({\NLW_distance_reg[9]_i_4_CO_UNCONNECTED [3:1],\distance_reg[7]_i_3_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_distance_reg[9]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \distance_reg[9]_i_6 
       (.CI(\distance_reg[7]_i_16_n_0 ),
        .CO({\NLW_distance_reg[9]_i_6_CO_UNCONNECTED [3:1],\distance_reg[7]_i_16_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_distance_reg[9]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][0] 
       (.C(CLKMAIN),
        .CE(writeB[0]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [0]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][1] 
       (.C(CLKMAIN),
        .CE(writeB[0]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [1]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][2] 
       (.C(CLKMAIN),
        .CE(writeB[0]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [2]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][3] 
       (.C(CLKMAIN),
        .CE(writeB[0]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [3]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][4] 
       (.C(CLKMAIN),
        .CE(writeB[0]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [4]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][5] 
       (.C(CLKMAIN),
        .CE(writeB[0]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [5]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][6] 
       (.C(CLKMAIN),
        .CE(writeB[0]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [6]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[0].data_out_reg[0][7] 
       (.C(CLKMAIN),
        .CE(writeB[0]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [7]),
        .Q(\genblk1[0].data_out_reg[0][7]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][0] 
       (.C(CLKMAIN),
        .CE(writeB[1]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [0]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][1] 
       (.C(CLKMAIN),
        .CE(writeB[1]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [1]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][2] 
       (.C(CLKMAIN),
        .CE(writeB[1]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [2]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][3] 
       (.C(CLKMAIN),
        .CE(writeB[1]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [3]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][4] 
       (.C(CLKMAIN),
        .CE(writeB[1]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [4]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][5] 
       (.C(CLKMAIN),
        .CE(writeB[1]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [5]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][6] 
       (.C(CLKMAIN),
        .CE(writeB[1]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [6]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[1].data_out_reg[1][7] 
       (.C(CLKMAIN),
        .CE(writeB[1]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [7]),
        .Q(\genblk1[1].data_out_reg[1][7]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][0] 
       (.C(CLKMAIN),
        .CE(writeB[2]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [0]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][1] 
       (.C(CLKMAIN),
        .CE(writeB[2]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [1]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][2] 
       (.C(CLKMAIN),
        .CE(writeB[2]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [2]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][3] 
       (.C(CLKMAIN),
        .CE(writeB[2]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [3]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][4] 
       (.C(CLKMAIN),
        .CE(writeB[2]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [4]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][5] 
       (.C(CLKMAIN),
        .CE(writeB[2]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [5]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][6] 
       (.C(CLKMAIN),
        .CE(writeB[2]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [6]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[2].data_out_reg[2][7] 
       (.C(CLKMAIN),
        .CE(writeB[2]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [7]),
        .Q(\genblk1[2].data_out_reg[2][7]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][0] 
       (.C(CLKMAIN),
        .CE(writeB[3]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [0]),
        .Q(\genblk1[3].data_out_reg[3][7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][1] 
       (.C(CLKMAIN),
        .CE(writeB[3]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [1]),
        .Q(\genblk1[3].data_out_reg[3][7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][2] 
       (.C(CLKMAIN),
        .CE(writeB[3]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [2]),
        .Q(\genblk1[3].data_out_reg[3][7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][3] 
       (.C(CLKMAIN),
        .CE(writeB[3]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [3]),
        .Q(\genblk1[3].data_out_reg[3][7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][4] 
       (.C(CLKMAIN),
        .CE(writeB[3]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [4]),
        .Q(\genblk1[3].data_out_reg[3][7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][5] 
       (.C(CLKMAIN),
        .CE(writeB[3]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [5]),
        .Q(\genblk1[3].data_out_reg[3][7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][6] 
       (.C(CLKMAIN),
        .CE(writeB[3]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [6]),
        .Q(\genblk1[3].data_out_reg[3][7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \genblk1[3].data_out_reg[3][7] 
       (.C(CLKMAIN),
        .CE(writeB[3]),
        .D(\genblk1[3].data_out_reg[3][7]_2 [7]),
        .Q(\genblk1[3].data_out_reg[3][7]_0 [7]),
        .R(SR));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [7]),
        .I1(\abs2_inferred__0/i__carry [7]),
        .O(\genblk1[2].data_out_reg[2][7]_2 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [7]),
        .I1(\abs2_inferred__1/i__carry [7]),
        .O(\genblk1[1].data_out_reg[1][7]_2 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [7]),
        .I1(\abs2_inferred__2/i__carry [7]),
        .O(\genblk1[0].data_out_reg[0][7]_2 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [6]),
        .I1(\abs2_inferred__0/i__carry [6]),
        .O(\genblk1[2].data_out_reg[2][7]_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [6]),
        .I1(\abs2_inferred__1/i__carry [6]),
        .O(\genblk1[1].data_out_reg[1][7]_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [6]),
        .I1(\abs2_inferred__2/i__carry [6]),
        .O(\genblk1[0].data_out_reg[0][7]_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [5]),
        .I1(\abs2_inferred__0/i__carry [5]),
        .O(\genblk1[2].data_out_reg[2][7]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [5]),
        .I1(\abs2_inferred__1/i__carry [5]),
        .O(\genblk1[1].data_out_reg[1][7]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [5]),
        .I1(\abs2_inferred__2/i__carry [5]),
        .O(\genblk1[0].data_out_reg[0][7]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [4]),
        .I1(\abs2_inferred__0/i__carry [4]),
        .O(\genblk1[2].data_out_reg[2][7]_2 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [4]),
        .I1(\abs2_inferred__1/i__carry [4]),
        .O(\genblk1[1].data_out_reg[1][7]_2 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [4]),
        .I1(\abs2_inferred__2/i__carry [4]),
        .O(\genblk1[0].data_out_reg[0][7]_2 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__2
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [3]),
        .I1(\abs2_inferred__0/i__carry [3]),
        .O(\genblk1[2].data_out_reg[2][3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__3
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [3]),
        .I1(\abs2_inferred__1/i__carry [3]),
        .O(\genblk1[1].data_out_reg[1][3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__4
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [3]),
        .I1(\abs2_inferred__2/i__carry [3]),
        .O(\genblk1[0].data_out_reg[0][3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__2
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [2]),
        .I1(\abs2_inferred__0/i__carry [2]),
        .O(\genblk1[2].data_out_reg[2][3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__3
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [2]),
        .I1(\abs2_inferred__1/i__carry [2]),
        .O(\genblk1[1].data_out_reg[1][3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__4
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [2]),
        .I1(\abs2_inferred__2/i__carry [2]),
        .O(\genblk1[0].data_out_reg[0][3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__2
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [1]),
        .I1(\abs2_inferred__0/i__carry [1]),
        .O(\genblk1[2].data_out_reg[2][3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__3
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [1]),
        .I1(\abs2_inferred__1/i__carry [1]),
        .O(\genblk1[1].data_out_reg[1][3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__4
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [1]),
        .I1(\abs2_inferred__2/i__carry [1]),
        .O(\genblk1[0].data_out_reg[0][3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__2
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [0]),
        .I1(\abs2_inferred__0/i__carry [0]),
        .O(\genblk1[2].data_out_reg[2][3]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__3
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [0]),
        .I1(\abs2_inferred__1/i__carry [0]),
        .O(\genblk1[1].data_out_reg[1][3]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__4
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [0]),
        .I1(\abs2_inferred__2/i__carry [0]),
        .O(\genblk1[0].data_out_reg[0][3]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [7]),
        .I1(\abs2_inferred__0/i__carry [7]),
        .I2(\genblk1[2].data_out_reg[2][7]_1 [6]),
        .I3(\abs2_inferred__0/i__carry [6]),
        .O(\genblk1[2].data_out_reg[2][7]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [7]),
        .I1(\abs2_inferred__1/i__carry [7]),
        .I2(\genblk1[1].data_out_reg[1][7]_1 [6]),
        .I3(\abs2_inferred__1/i__carry [6]),
        .O(\genblk1[1].data_out_reg[1][7]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [7]),
        .I1(\abs2_inferred__2/i__carry [7]),
        .I2(\genblk1[0].data_out_reg[0][7]_1 [6]),
        .I3(\abs2_inferred__2/i__carry [6]),
        .O(\genblk1[0].data_out_reg[0][7]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [5]),
        .I1(\abs2_inferred__0/i__carry [5]),
        .I2(\genblk1[2].data_out_reg[2][7]_1 [4]),
        .I3(\abs2_inferred__0/i__carry [4]),
        .O(\genblk1[2].data_out_reg[2][7]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [5]),
        .I1(\abs2_inferred__1/i__carry [5]),
        .I2(\genblk1[1].data_out_reg[1][7]_1 [4]),
        .I3(\abs2_inferred__1/i__carry [4]),
        .O(\genblk1[1].data_out_reg[1][7]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [5]),
        .I1(\abs2_inferred__2/i__carry [5]),
        .I2(\genblk1[0].data_out_reg[0][7]_1 [4]),
        .I3(\abs2_inferred__2/i__carry [4]),
        .O(\genblk1[0].data_out_reg[0][7]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [3]),
        .I1(\abs2_inferred__0/i__carry [3]),
        .I2(\genblk1[2].data_out_reg[2][7]_1 [2]),
        .I3(\abs2_inferred__0/i__carry [2]),
        .O(\genblk1[2].data_out_reg[2][7]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [3]),
        .I1(\abs2_inferred__1/i__carry [3]),
        .I2(\genblk1[1].data_out_reg[1][7]_1 [2]),
        .I3(\abs2_inferred__1/i__carry [2]),
        .O(\genblk1[1].data_out_reg[1][7]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [3]),
        .I1(\abs2_inferred__2/i__carry [3]),
        .I2(\genblk1[0].data_out_reg[0][7]_1 [2]),
        .I3(\abs2_inferred__2/i__carry [2]),
        .O(\genblk1[0].data_out_reg[0][7]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\genblk1[2].data_out_reg[2][7]_1 [1]),
        .I1(\abs2_inferred__0/i__carry [1]),
        .I2(\genblk1[2].data_out_reg[2][7]_1 [0]),
        .I3(\abs2_inferred__0/i__carry [0]),
        .O(\genblk1[2].data_out_reg[2][7]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(\genblk1[1].data_out_reg[1][7]_1 [1]),
        .I1(\abs2_inferred__1/i__carry [1]),
        .I2(\genblk1[1].data_out_reg[1][7]_1 [0]),
        .I3(\abs2_inferred__1/i__carry [0]),
        .O(\genblk1[1].data_out_reg[1][7]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(\genblk1[0].data_out_reg[0][7]_1 [1]),
        .I1(\abs2_inferred__2/i__carry [1]),
        .I2(\genblk1[0].data_out_reg[0][7]_1 [0]),
        .I3(\abs2_inferred__2/i__carry [0]),
        .O(\genblk1[0].data_out_reg[0][7]_0 [0]));
endmodule

module ManDisOperation
   (CO,
    \genblk1[0].data_out_reg[0][7] ,
    O,
    \genblk1[0].data_out_reg[0][6] ,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    numMan,
    \state_reg[1]_1 ,
    \genblk1[0].data_out_reg[0][6]_0 ,
    \genblk1[2].data_out_reg[2][6] ,
    DI,
    S,
    \distance[7]_i_17 ,
    \distance[7]_i_17_0 ,
    \distance[3]_i_15 ,
    \distance[3]_i_15_0 ,
    \distance[7]_i_8 ,
    \distance[7]_i_8_0 ,
    Q,
    \distance[3]_i_24 ,
    \distance[7]_i_24 ,
    \distance[7]_i_20 ,
    \distance[3]_i_24_0 ,
    \distance[7]_i_20_0 ,
    \distance[7]_i_15 ,
    \distance[3]_i_15_1 ,
    \distance[7]_i_15_0 ,
    \distance[7]_i_11 ,
    \distance[3]_i_15_2 ,
    \distance[7]_i_11_0 ,
    \distance_reg[7] ,
    \distance_reg[7]_i_2 ,
    \distance_reg[9] ,
    \mode_reg[6] ,
    \distance_reg[9]_i_3 );
  output [0:0]CO;
  output [0:0]\genblk1[0].data_out_reg[0][7] ;
  output [3:0]O;
  output [3:0]\genblk1[0].data_out_reg[0][6] ;
  output [0:0]\state_reg[1] ;
  output [0:0]\state_reg[1]_0 ;
  output [9:0]numMan;
  output \state_reg[1]_1 ;
  output [3:0]\genblk1[0].data_out_reg[0][6]_0 ;
  output [3:0]\genblk1[2].data_out_reg[2][6] ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\distance[7]_i_17 ;
  input [3:0]\distance[7]_i_17_0 ;
  input [3:0]\distance[3]_i_15 ;
  input [3:0]\distance[3]_i_15_0 ;
  input [3:0]\distance[7]_i_8 ;
  input [3:0]\distance[7]_i_8_0 ;
  input [6:0]Q;
  input [3:0]\distance[3]_i_24 ;
  input [3:0]\distance[7]_i_24 ;
  input [6:0]\distance[7]_i_20 ;
  input [3:0]\distance[3]_i_24_0 ;
  input [3:0]\distance[7]_i_20_0 ;
  input [6:0]\distance[7]_i_15 ;
  input [3:0]\distance[3]_i_15_1 ;
  input [3:0]\distance[7]_i_15_0 ;
  input [6:0]\distance[7]_i_11 ;
  input [3:0]\distance[3]_i_15_2 ;
  input [3:0]\distance[7]_i_11_0 ;
  input [3:0]\distance_reg[7] ;
  input [3:0]\distance_reg[7]_i_2 ;
  input [0:0]\distance_reg[9] ;
  input [3:0]\mode_reg[6] ;
  input [0:0]\distance_reg[9]_i_3 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]O;
  wire [6:0]Q;
  wire [3:0]S;
  wire [3:0]abs0;
  wire abs0_carry__0_n_4;
  wire abs0_carry__0_n_5;
  wire abs0_carry__0_n_6;
  wire abs0_carry__0_n_7;
  wire abs0_carry_n_0;
  wire abs0_carry_n_4;
  wire abs0_carry_n_5;
  wire abs0_carry_n_6;
  wire abs0_carry_n_7;
  wire \abs0_inferred__0/i__carry_n_0 ;
  wire \abs0_inferred__0/i__carry_n_4 ;
  wire \abs0_inferred__0/i__carry_n_5 ;
  wire \abs0_inferred__0/i__carry_n_6 ;
  wire \abs0_inferred__0/i__carry_n_7 ;
  wire \abs0_inferred__1/i__carry__0_n_4 ;
  wire \abs0_inferred__1/i__carry__0_n_5 ;
  wire \abs0_inferred__1/i__carry__0_n_6 ;
  wire \abs0_inferred__1/i__carry__0_n_7 ;
  wire \abs0_inferred__1/i__carry_n_0 ;
  wire \abs0_inferred__1/i__carry_n_4 ;
  wire \abs0_inferred__1/i__carry_n_5 ;
  wire \abs0_inferred__1/i__carry_n_6 ;
  wire \abs0_inferred__1/i__carry_n_7 ;
  wire \abs0_inferred__2/i__carry_n_0 ;
  wire abs20_in;
  wire abs24_in;
  wire [3:0]\distance[3]_i_15 ;
  wire [3:0]\distance[3]_i_15_0 ;
  wire [3:0]\distance[3]_i_15_1 ;
  wire [3:0]\distance[3]_i_15_2 ;
  wire [3:0]\distance[3]_i_24 ;
  wire [3:0]\distance[3]_i_24_0 ;
  wire [6:0]\distance[7]_i_11 ;
  wire [3:0]\distance[7]_i_11_0 ;
  wire [6:0]\distance[7]_i_15 ;
  wire [3:0]\distance[7]_i_15_0 ;
  wire [3:0]\distance[7]_i_17 ;
  wire [3:0]\distance[7]_i_17_0 ;
  wire [6:0]\distance[7]_i_20 ;
  wire [3:0]\distance[7]_i_20_0 ;
  wire [3:0]\distance[7]_i_24 ;
  wire [3:0]\distance[7]_i_8 ;
  wire [3:0]\distance[7]_i_8_0 ;
  wire [3:0]\distance_reg[7] ;
  wire [3:0]\distance_reg[7]_i_2 ;
  wire [0:0]\distance_reg[9] ;
  wire [0:0]\distance_reg[9]_i_3 ;
  wire [3:0]\genblk1[0].data_out_reg[0][6] ;
  wire [3:0]\genblk1[0].data_out_reg[0][6]_0 ;
  wire [0:0]\genblk1[0].data_out_reg[0][7] ;
  wire [3:0]\genblk1[2].data_out_reg[2][6] ;
  wire [3:0]\mode_reg[6] ;
  wire [9:0]numMan;
  wire [0:0]\state_reg[1] ;
  wire [0:0]\state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire [2:0]NLW_abs0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_abs0_carry__0_CO_UNCONNECTED;
  wire [2:0]\NLW_abs0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_abs0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_abs0_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_abs0_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_abs0_inferred__2/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_abs0_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [2:0]NLW_abs2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_abs2_carry_O_UNCONNECTED;
  wire [2:0]\NLW_abs2_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_abs2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_abs2_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_abs2_inferred__1/i__carry_O_UNCONNECTED ;
  wire [2:0]\NLW_abs2_inferred__2/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_abs2_inferred__2/i__carry_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 abs0_carry
       (.CI(1'b0),
        .CO({abs0_carry_n_0,NLW_abs0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({abs0_carry_n_4,abs0_carry_n_5,abs0_carry_n_6,abs0_carry_n_7}),
        .S(\distance[3]_i_24 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 abs0_carry__0
       (.CI(abs0_carry_n_0),
        .CO(NLW_abs0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,Q[6:4]}),
        .O({abs0_carry__0_n_4,abs0_carry__0_n_5,abs0_carry__0_n_6,abs0_carry__0_n_7}),
        .S(\distance[7]_i_24 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \abs0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\abs0_inferred__0/i__carry_n_0 ,\NLW_abs0_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(\distance[7]_i_20 [3:0]),
        .O({\abs0_inferred__0/i__carry_n_4 ,\abs0_inferred__0/i__carry_n_5 ,\abs0_inferred__0/i__carry_n_6 ,\abs0_inferred__0/i__carry_n_7 }),
        .S(\distance[3]_i_24_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \abs0_inferred__0/i__carry__0 
       (.CI(\abs0_inferred__0/i__carry_n_0 ),
        .CO(\NLW_abs0_inferred__0/i__carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\distance[7]_i_20 [6:4]}),
        .O(O),
        .S(\distance[7]_i_20_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \abs0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\abs0_inferred__1/i__carry_n_0 ,\NLW_abs0_inferred__1/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(\distance[7]_i_15 [3:0]),
        .O({\abs0_inferred__1/i__carry_n_4 ,\abs0_inferred__1/i__carry_n_5 ,\abs0_inferred__1/i__carry_n_6 ,\abs0_inferred__1/i__carry_n_7 }),
        .S(\distance[3]_i_15_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \abs0_inferred__1/i__carry__0 
       (.CI(\abs0_inferred__1/i__carry_n_0 ),
        .CO(\NLW_abs0_inferred__1/i__carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\distance[7]_i_15 [6:4]}),
        .O({\abs0_inferred__1/i__carry__0_n_4 ,\abs0_inferred__1/i__carry__0_n_5 ,\abs0_inferred__1/i__carry__0_n_6 ,\abs0_inferred__1/i__carry__0_n_7 }),
        .S(\distance[7]_i_15_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \abs0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\abs0_inferred__2/i__carry_n_0 ,\NLW_abs0_inferred__2/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(\distance[7]_i_11 [3:0]),
        .O(abs0),
        .S(\distance[3]_i_15_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \abs0_inferred__2/i__carry__0 
       (.CI(\abs0_inferred__2/i__carry_n_0 ),
        .CO(\NLW_abs0_inferred__2/i__carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\distance[7]_i_11 [6:4]}),
        .O(\genblk1[0].data_out_reg[0][6] ),
        .S(\distance[7]_i_11_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 abs2_carry
       (.CI(1'b0),
        .CO({abs24_in,NLW_abs2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_abs2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \abs2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({CO,\NLW_abs2_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\distance[7]_i_17 ),
        .O(\NLW_abs2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\distance[7]_i_17_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \abs2_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({abs20_in,\NLW_abs2_inferred__1/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\distance[3]_i_15 ),
        .O(\NLW_abs2_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S(\distance[3]_i_15_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \abs2_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\genblk1[0].data_out_reg[0][7] ,\NLW_abs2_inferred__2/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\distance[7]_i_8 ),
        .O(\NLW_abs2_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S(\distance[7]_i_8_0 ));
  adder_tree adder
       (.CO(\genblk1[0].data_out_reg[0][7] ),
        .O(abs0),
        .\distance_reg[3]_i_16 ({\abs0_inferred__0/i__carry_n_4 ,\abs0_inferred__0/i__carry_n_5 ,\abs0_inferred__0/i__carry_n_6 ,\abs0_inferred__0/i__carry_n_7 }),
        .\distance_reg[3]_i_16_0 (CO),
        .\distance_reg[3]_i_16_1 (abs24_in),
        .\distance_reg[3]_i_16_2 ({abs0_carry_n_4,abs0_carry_n_5,abs0_carry_n_6,abs0_carry_n_7}),
        .\distance_reg[3]_i_3 (abs20_in),
        .\distance_reg[3]_i_3_0 ({\abs0_inferred__1/i__carry_n_4 ,\abs0_inferred__1/i__carry_n_5 ,\abs0_inferred__1/i__carry_n_6 ,\abs0_inferred__1/i__carry_n_7 }),
        .\distance_reg[7] (\distance_reg[7] ),
        .\distance_reg[7]_i_16 (O),
        .\distance_reg[7]_i_16_0 ({abs0_carry__0_n_4,abs0_carry__0_n_5,abs0_carry__0_n_6,abs0_carry__0_n_7}),
        .\distance_reg[7]_i_2 (\distance_reg[7]_i_2 ),
        .\distance_reg[7]_i_3 (\genblk1[0].data_out_reg[0][6] ),
        .\distance_reg[7]_i_3_0 ({\abs0_inferred__1/i__carry__0_n_4 ,\abs0_inferred__1/i__carry__0_n_5 ,\abs0_inferred__1/i__carry__0_n_6 ,\abs0_inferred__1/i__carry__0_n_7 }),
        .\distance_reg[9] (\distance_reg[9] ),
        .\distance_reg[9]_i_3 (\distance_reg[9]_i_3 ),
        .\genblk1[0].data_out_reg[0][6] (\genblk1[0].data_out_reg[0][6]_0 ),
        .\genblk1[2].data_out_reg[2][6] (\genblk1[2].data_out_reg[2][6] ),
        .\mode_reg[6] (\mode_reg[6] ),
        .numMan(numMan),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[1]_0 (\state_reg[1]_0 ),
        .\state_reg[1]_1 (\state_reg[1]_1 ));
endmodule

module adder_tree
   (\state_reg[1] ,
    \state_reg[1]_0 ,
    numMan,
    \state_reg[1]_1 ,
    \genblk1[0].data_out_reg[0][6] ,
    \genblk1[2].data_out_reg[2][6] ,
    \distance_reg[7] ,
    \distance_reg[9] ,
    O,
    \mode_reg[6] ,
    CO,
    \distance_reg[3]_i_16 ,
    \distance_reg[3]_i_16_0 ,
    \distance_reg[3]_i_3 ,
    \distance_reg[3]_i_3_0 ,
    \distance_reg[7]_i_3 ,
    \distance_reg[7]_i_3_0 ,
    \distance_reg[3]_i_16_1 ,
    \distance_reg[3]_i_16_2 ,
    \distance_reg[7]_i_16 ,
    \distance_reg[7]_i_16_0 ,
    \distance_reg[7]_i_2 ,
    \distance_reg[9]_i_3 );
  output [0:0]\state_reg[1] ;
  output [0:0]\state_reg[1]_0 ;
  output [9:0]numMan;
  output \state_reg[1]_1 ;
  output [3:0]\genblk1[0].data_out_reg[0][6] ;
  output [3:0]\genblk1[2].data_out_reg[2][6] ;
  input [3:0]\distance_reg[7] ;
  input [0:0]\distance_reg[9] ;
  input [3:0]O;
  input [3:0]\mode_reg[6] ;
  input [0:0]CO;
  input [3:0]\distance_reg[3]_i_16 ;
  input [0:0]\distance_reg[3]_i_16_0 ;
  input [0:0]\distance_reg[3]_i_3 ;
  input [3:0]\distance_reg[3]_i_3_0 ;
  input [3:0]\distance_reg[7]_i_3 ;
  input [3:0]\distance_reg[7]_i_3_0 ;
  input [0:0]\distance_reg[3]_i_16_1 ;
  input [3:0]\distance_reg[3]_i_16_2 ;
  input [3:0]\distance_reg[7]_i_16 ;
  input [3:0]\distance_reg[7]_i_16_0 ;
  input [3:0]\distance_reg[7]_i_2 ;
  input [0:0]\distance_reg[9]_i_3 ;

  wire [0:0]CO;
  wire [3:0]O;
  wire [3:0]\distance_reg[3]_i_16 ;
  wire [0:0]\distance_reg[3]_i_16_0 ;
  wire [0:0]\distance_reg[3]_i_16_1 ;
  wire [3:0]\distance_reg[3]_i_16_2 ;
  wire [0:0]\distance_reg[3]_i_3 ;
  wire [3:0]\distance_reg[3]_i_3_0 ;
  wire [3:0]\distance_reg[7] ;
  wire [3:0]\distance_reg[7]_i_16 ;
  wire [3:0]\distance_reg[7]_i_16_0 ;
  wire [3:0]\distance_reg[7]_i_2 ;
  wire [3:0]\distance_reg[7]_i_3 ;
  wire [3:0]\distance_reg[7]_i_3_0 ;
  wire [0:0]\distance_reg[9] ;
  wire [0:0]\distance_reg[9]_i_3 ;
  wire [3:0]\genblk1[0].data_out_reg[0][6] ;
  wire [3:0]\genblk1[2].data_out_reg[2][6] ;
  wire [3:0]\mode_reg[6] ;
  wire [9:0]numMan;
  wire [0:0]\state_reg[1] ;
  wire [0:0]\state_reg[1]_0 ;
  wire \state_reg[1]_1 ;

  adder_tree__parameterized0 ins
       (.CO(CO),
        .O(O),
        .\distance_reg[3]_i_16_0 (\distance_reg[3]_i_16 ),
        .\distance_reg[3]_i_16_1 (\distance_reg[3]_i_16_0 ),
        .\distance_reg[3]_i_16_2 (\distance_reg[3]_i_16_1 ),
        .\distance_reg[3]_i_16_3 (\distance_reg[3]_i_16_2 ),
        .\distance_reg[3]_i_3_0 (\distance_reg[3]_i_3 ),
        .\distance_reg[3]_i_3_1 (\distance_reg[3]_i_3_0 ),
        .\distance_reg[7] (\distance_reg[7] ),
        .\distance_reg[7]_i_16 (\distance_reg[7]_i_16 ),
        .\distance_reg[7]_i_16_0 (\distance_reg[7]_i_16_0 ),
        .\distance_reg[7]_i_2_0 (\distance_reg[7]_i_2 ),
        .\distance_reg[7]_i_3 (\distance_reg[7]_i_3 ),
        .\distance_reg[7]_i_3_0 (\distance_reg[7]_i_3_0 ),
        .\distance_reg[9] (\distance_reg[9] ),
        .\distance_reg[9]_i_3_0 (\distance_reg[9]_i_3 ),
        .\genblk1[0].data_out_reg[0][6] (\genblk1[0].data_out_reg[0][6] ),
        .\genblk1[2].data_out_reg[2][6] (\genblk1[2].data_out_reg[2][6] ),
        .\mode_reg[6] (\mode_reg[6] ),
        .numMan(numMan),
        .\state_reg[1] (\state_reg[1] ),
        .\state_reg[1]_0 (\state_reg[1]_0 ),
        .\state_reg[1]_1 (\state_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "adder_tree" *) 
module adder_tree__parameterized0
   (\state_reg[1] ,
    \state_reg[1]_0 ,
    numMan,
    \state_reg[1]_1 ,
    \genblk1[0].data_out_reg[0][6] ,
    \genblk1[2].data_out_reg[2][6] ,
    \distance_reg[7] ,
    \distance_reg[9] ,
    O,
    \mode_reg[6] ,
    CO,
    \distance_reg[3]_i_16_0 ,
    \distance_reg[3]_i_16_1 ,
    \distance_reg[3]_i_3_0 ,
    \distance_reg[3]_i_3_1 ,
    \distance_reg[7]_i_3 ,
    \distance_reg[7]_i_3_0 ,
    \distance_reg[3]_i_16_2 ,
    \distance_reg[3]_i_16_3 ,
    \distance_reg[7]_i_16 ,
    \distance_reg[7]_i_16_0 ,
    \distance_reg[7]_i_2_0 ,
    \distance_reg[9]_i_3_0 );
  output [0:0]\state_reg[1] ;
  output [0:0]\state_reg[1]_0 ;
  output [9:0]numMan;
  output \state_reg[1]_1 ;
  output [3:0]\genblk1[0].data_out_reg[0][6] ;
  output [3:0]\genblk1[2].data_out_reg[2][6] ;
  input [3:0]\distance_reg[7] ;
  input [0:0]\distance_reg[9] ;
  input [3:0]O;
  input [3:0]\mode_reg[6] ;
  input [0:0]CO;
  input [3:0]\distance_reg[3]_i_16_0 ;
  input [0:0]\distance_reg[3]_i_16_1 ;
  input [0:0]\distance_reg[3]_i_3_0 ;
  input [3:0]\distance_reg[3]_i_3_1 ;
  input [3:0]\distance_reg[7]_i_3 ;
  input [3:0]\distance_reg[7]_i_3_0 ;
  input [0:0]\distance_reg[3]_i_16_2 ;
  input [3:0]\distance_reg[3]_i_16_3 ;
  input [3:0]\distance_reg[7]_i_16 ;
  input [3:0]\distance_reg[7]_i_16_0 ;
  input [3:0]\distance_reg[7]_i_2_0 ;
  input [0:0]\distance_reg[9]_i_3_0 ;

  wire [0:0]CO;
  wire [3:0]O;
  wire [3:0]\abs[0]_0 ;
  wire [3:0]\abs[2]_1 ;
  wire [3:0]\acum[0] ;
  wire [3:0]\acum[1] ;
  wire \distance[3]_i_12_n_0 ;
  wire \distance[3]_i_13_n_0 ;
  wire \distance[3]_i_14_n_0 ;
  wire \distance[3]_i_15_n_0 ;
  wire \distance[3]_i_21_n_0 ;
  wire \distance[3]_i_22_n_0 ;
  wire \distance[3]_i_23_n_0 ;
  wire \distance[3]_i_24_n_0 ;
  wire \distance[3]_i_4_n_0 ;
  wire \distance[3]_i_5_n_0 ;
  wire \distance[3]_i_6_n_0 ;
  wire \distance[3]_i_7_n_0 ;
  wire \distance[7]_i_4_n_0 ;
  wire \distance[7]_i_5_n_0 ;
  wire \distance[7]_i_6_n_0 ;
  wire \distance[7]_i_7_n_0 ;
  wire \distance[9]_i_5_n_0 ;
  wire [3:0]\distance_reg[3]_i_16_0 ;
  wire [0:0]\distance_reg[3]_i_16_1 ;
  wire [0:0]\distance_reg[3]_i_16_2 ;
  wire [3:0]\distance_reg[3]_i_16_3 ;
  wire \distance_reg[3]_i_2_n_0 ;
  wire [0:0]\distance_reg[3]_i_3_0 ;
  wire [3:0]\distance_reg[3]_i_3_1 ;
  wire [3:0]\distance_reg[7] ;
  wire [3:0]\distance_reg[7]_i_16 ;
  wire [3:0]\distance_reg[7]_i_16_0 ;
  wire [3:0]\distance_reg[7]_i_2_0 ;
  wire \distance_reg[7]_i_2_n_0 ;
  wire [3:0]\distance_reg[7]_i_3 ;
  wire [3:0]\distance_reg[7]_i_3_0 ;
  wire [0:0]\distance_reg[9] ;
  wire [0:0]\distance_reg[9]_i_3_0 ;
  wire [3:0]\genblk1[0].data_out_reg[0][6] ;
  wire [3:0]\genblk1[2].data_out_reg[2][6] ;
  wire [3:0]\mode_reg[6] ;
  wire [9:0]numMan;
  wire [0:0]\state_reg[1] ;
  wire [0:0]\state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire [2:0]\NLW_distance_reg[3]_i_16_CO_UNCONNECTED ;
  wire [2:0]\NLW_distance_reg[3]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_distance_reg[3]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_distance_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_distance_reg[9]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_distance_reg[9]_i_3_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[3]_i_10 
       (.I0(O[1]),
        .I1(\mode_reg[6] [1]),
        .I2(\mode_reg[6] [2]),
        .I3(\mode_reg[6] [0]),
        .I4(\mode_reg[6] [3]),
        .I5(CO),
        .O(\abs[0]_0 [1]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[3]_i_11 
       (.I0(O[0]),
        .I1(\mode_reg[6] [1]),
        .I2(\mode_reg[6] [2]),
        .I3(\mode_reg[6] [0]),
        .I4(\mode_reg[6] [3]),
        .I5(CO),
        .O(\abs[0]_0 [0]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[3]_i_12 
       (.I0(CO),
        .I1(O[3]),
        .I2(\distance_reg[3]_i_3_0 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[3]_i_3_1 [3]),
        .O(\distance[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[3]_i_13 
       (.I0(CO),
        .I1(O[2]),
        .I2(\distance_reg[3]_i_3_0 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[3]_i_3_1 [2]),
        .O(\distance[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[3]_i_14 
       (.I0(CO),
        .I1(O[1]),
        .I2(\distance_reg[3]_i_3_0 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[3]_i_3_1 [1]),
        .O(\distance[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[3]_i_15 
       (.I0(CO),
        .I1(O[0]),
        .I2(\distance_reg[3]_i_3_0 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[3]_i_3_1 [0]),
        .O(\distance[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[3]_i_17 
       (.I0(\distance_reg[3]_i_16_0 [3]),
        .I1(\mode_reg[6] [1]),
        .I2(\mode_reg[6] [2]),
        .I3(\mode_reg[6] [0]),
        .I4(\mode_reg[6] [3]),
        .I5(\distance_reg[3]_i_16_1 ),
        .O(\abs[2]_1 [3]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[3]_i_18 
       (.I0(\distance_reg[3]_i_16_0 [2]),
        .I1(\mode_reg[6] [1]),
        .I2(\mode_reg[6] [2]),
        .I3(\mode_reg[6] [0]),
        .I4(\mode_reg[6] [3]),
        .I5(\distance_reg[3]_i_16_1 ),
        .O(\abs[2]_1 [2]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[3]_i_19 
       (.I0(\distance_reg[3]_i_16_0 [1]),
        .I1(\mode_reg[6] [1]),
        .I2(\mode_reg[6] [2]),
        .I3(\mode_reg[6] [0]),
        .I4(\mode_reg[6] [3]),
        .I5(\distance_reg[3]_i_16_1 ),
        .O(\abs[2]_1 [1]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[3]_i_20 
       (.I0(\distance_reg[3]_i_16_0 [0]),
        .I1(\mode_reg[6] [1]),
        .I2(\mode_reg[6] [2]),
        .I3(\mode_reg[6] [0]),
        .I4(\mode_reg[6] [3]),
        .I5(\distance_reg[3]_i_16_1 ),
        .O(\abs[2]_1 [0]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[3]_i_21 
       (.I0(\distance_reg[3]_i_16_1 ),
        .I1(\distance_reg[3]_i_16_0 [3]),
        .I2(\distance_reg[3]_i_16_2 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[3]_i_16_3 [3]),
        .O(\distance[3]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[3]_i_22 
       (.I0(\distance_reg[3]_i_16_1 ),
        .I1(\distance_reg[3]_i_16_0 [2]),
        .I2(\distance_reg[3]_i_16_2 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[3]_i_16_3 [2]),
        .O(\distance[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[3]_i_23 
       (.I0(\distance_reg[3]_i_16_1 ),
        .I1(\distance_reg[3]_i_16_0 [1]),
        .I2(\distance_reg[3]_i_16_2 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[3]_i_16_3 [1]),
        .O(\distance[3]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[3]_i_24 
       (.I0(\distance_reg[3]_i_16_1 ),
        .I1(\distance_reg[3]_i_16_0 [0]),
        .I2(\distance_reg[3]_i_16_2 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[3]_i_16_3 [0]),
        .O(\distance[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[3]_i_4 
       (.I0(\acum[0] [3]),
        .I1(\acum[1] [3]),
        .O(\distance[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[3]_i_5 
       (.I0(\acum[0] [2]),
        .I1(\acum[1] [2]),
        .O(\distance[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[3]_i_6 
       (.I0(\acum[0] [1]),
        .I1(\acum[1] [1]),
        .O(\distance[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[3]_i_7 
       (.I0(\acum[0] [0]),
        .I1(\acum[1] [0]),
        .O(\distance[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[3]_i_8 
       (.I0(O[3]),
        .I1(\mode_reg[6] [1]),
        .I2(\mode_reg[6] [2]),
        .I3(\mode_reg[6] [0]),
        .I4(\mode_reg[6] [3]),
        .I5(CO),
        .O(\abs[0]_0 [3]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \distance[3]_i_9 
       (.I0(O[2]),
        .I1(\mode_reg[6] [1]),
        .I2(\mode_reg[6] [2]),
        .I3(\mode_reg[6] [0]),
        .I4(\mode_reg[6] [3]),
        .I5(CO),
        .O(\abs[0]_0 [2]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[7]_i_12 
       (.I0(CO),
        .I1(\distance_reg[7]_i_3 [3]),
        .I2(\distance_reg[3]_i_3_0 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[7]_i_3_0 [3]),
        .O(\genblk1[0].data_out_reg[0][6] [3]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[7]_i_13 
       (.I0(CO),
        .I1(\distance_reg[7]_i_3 [2]),
        .I2(\distance_reg[3]_i_3_0 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[7]_i_3_0 [2]),
        .O(\genblk1[0].data_out_reg[0][6] [2]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[7]_i_14 
       (.I0(CO),
        .I1(\distance_reg[7]_i_3 [1]),
        .I2(\distance_reg[3]_i_3_0 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[7]_i_3_0 [1]),
        .O(\genblk1[0].data_out_reg[0][6] [1]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[7]_i_15 
       (.I0(CO),
        .I1(\distance_reg[7]_i_3 [0]),
        .I2(\distance_reg[3]_i_3_0 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[7]_i_3_0 [0]),
        .O(\genblk1[0].data_out_reg[0][6] [0]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[7]_i_21 
       (.I0(\distance_reg[3]_i_16_1 ),
        .I1(\distance_reg[7]_i_16 [3]),
        .I2(\distance_reg[3]_i_16_2 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[7]_i_16_0 [3]),
        .O(\genblk1[2].data_out_reg[2][6] [3]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[7]_i_22 
       (.I0(\distance_reg[3]_i_16_1 ),
        .I1(\distance_reg[7]_i_16 [2]),
        .I2(\distance_reg[3]_i_16_2 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[7]_i_16_0 [2]),
        .O(\genblk1[2].data_out_reg[2][6] [2]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[7]_i_23 
       (.I0(\distance_reg[3]_i_16_1 ),
        .I1(\distance_reg[7]_i_16 [1]),
        .I2(\distance_reg[3]_i_16_2 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[7]_i_16_0 [1]),
        .O(\genblk1[2].data_out_reg[2][6] [1]));
  LUT5 #(
    .INIT(32'h78008800)) 
    \distance[7]_i_24 
       (.I0(\distance_reg[3]_i_16_1 ),
        .I1(\distance_reg[7]_i_16 [0]),
        .I2(\distance_reg[3]_i_16_2 ),
        .I3(\state_reg[1]_1 ),
        .I4(\distance_reg[7]_i_16_0 [0]),
        .O(\genblk1[2].data_out_reg[2][6] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[7]_i_4 
       (.I0(\distance_reg[7] [3]),
        .I1(\distance_reg[7]_i_2_0 [3]),
        .O(\distance[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[7]_i_5 
       (.I0(\distance_reg[7] [2]),
        .I1(\distance_reg[7]_i_2_0 [2]),
        .O(\distance[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[7]_i_6 
       (.I0(\distance_reg[7] [1]),
        .I1(\distance_reg[7]_i_2_0 [1]),
        .O(\distance[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[7]_i_7 
       (.I0(\distance_reg[7] [0]),
        .I1(\distance_reg[7]_i_2_0 [0]),
        .O(\distance[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \distance[9]_i_5 
       (.I0(\distance_reg[9] ),
        .I1(\distance_reg[9]_i_3_0 ),
        .O(\distance[9]_i_5_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \distance_reg[3]_i_16 
       (.CI(1'b0),
        .CO({\state_reg[1]_0 ,\NLW_distance_reg[3]_i_16_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\abs[2]_1 ),
        .O(\acum[1] ),
        .S({\distance[3]_i_21_n_0 ,\distance[3]_i_22_n_0 ,\distance[3]_i_23_n_0 ,\distance[3]_i_24_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \distance_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\distance_reg[3]_i_2_n_0 ,\NLW_distance_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\acum[0] ),
        .O(numMan[3:0]),
        .S({\distance[3]_i_4_n_0 ,\distance[3]_i_5_n_0 ,\distance[3]_i_6_n_0 ,\distance[3]_i_7_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \distance_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\state_reg[1] ,\NLW_distance_reg[3]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\abs[0]_0 ),
        .O(\acum[0] ),
        .S({\distance[3]_i_12_n_0 ,\distance[3]_i_13_n_0 ,\distance[3]_i_14_n_0 ,\distance[3]_i_15_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \distance_reg[7]_i_2 
       (.CI(\distance_reg[3]_i_2_n_0 ),
        .CO({\distance_reg[7]_i_2_n_0 ,\NLW_distance_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\distance_reg[7] ),
        .O(numMan[7:4]),
        .S({\distance[7]_i_4_n_0 ,\distance[7]_i_5_n_0 ,\distance[7]_i_6_n_0 ,\distance[7]_i_7_n_0 }));
  CARRY4 \distance_reg[9]_i_3 
       (.CI(\distance_reg[7]_i_2_n_0 ),
        .CO({\NLW_distance_reg[9]_i_3_CO_UNCONNECTED [3:2],numMan[9],\NLW_distance_reg[9]_i_3_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\distance_reg[9] }),
        .O({\NLW_distance_reg[9]_i_3_O_UNCONNECTED [3:1],numMan[8]}),
        .S({1'b0,1'b0,1'b1,\distance[9]_i_5_n_0 }));
  LUT4 #(
    .INIT(16'h0100)) 
    \mode[6]_i_1 
       (.I0(\mode_reg[6] [1]),
        .I1(\mode_reg[6] [2]),
        .I2(\mode_reg[6] [0]),
        .I3(\mode_reg[6] [3]),
        .O(\state_reg[1]_1 ));
endmodule

module byte_to_mem
   (writeB,
    writeA,
    Q,
    addr_inc,
    rx_ready,
    addr,
    CPU_RESETN_IBUF,
    CLKMAIN);
  output [3:0]writeB;
  output [3:0]writeA;
  input [3:0]Q;
  input addr_inc;
  input rx_ready;
  input [1:0]addr;
  input CPU_RESETN_IBUF;
  input CLKMAIN;

  wire CLKMAIN;
  wire CPU_RESETN_IBUF;
  wire [3:0]Q;
  wire [1:0]addr;
  wire addr_inc;
  wire \genblk1[1].data_out[1][7]_i_2_n_0 ;
  wire \genblk1[2].data_out[2][7]_i_2_n_0 ;
  wire [1:0]p_0_in;
  wire \pr_addr[0]_i_1_n_0 ;
  wire \pr_addr[1]_i_1_n_0 ;
  wire rx_ready;
  wire [3:0]writeA;
  wire [3:0]writeB;

  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \genblk1[0].data_out[0][7]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\genblk1[1].data_out[1][7]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(writeB[0]));
  LUT4 #(
    .INIT(16'h0020)) 
    \genblk1[0].data_out[0][7]_i_1__0 
       (.I0(Q[0]),
        .I1(p_0_in[1]),
        .I2(addr_inc),
        .I3(p_0_in[0]),
        .O(writeA[0]));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \genblk1[1].data_out[1][7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(p_0_in[0]),
        .I5(\genblk1[1].data_out[1][7]_i_2_n_0 ),
        .O(writeA[1]));
  LUT4 #(
    .INIT(16'h0800)) 
    \genblk1[1].data_out[1][7]_i_1__0 
       (.I0(Q[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(addr_inc),
        .O(writeB[1]));
  LUT6 #(
    .INIT(64'hFFFEFFEFFFFFFFFF)) 
    \genblk1[1].data_out[1][7]_i_2 
       (.I0(p_0_in[1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(rx_ready),
        .O(\genblk1[1].data_out[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \genblk1[2].data_out[2][7]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\genblk1[2].data_out[2][7]_i_2_n_0 ),
        .I5(p_0_in[0]),
        .O(writeB[2]));
  LUT4 #(
    .INIT(16'h0080)) 
    \genblk1[2].data_out[2][7]_i_1__0 
       (.I0(Q[0]),
        .I1(p_0_in[1]),
        .I2(addr_inc),
        .I3(p_0_in[0]),
        .O(writeA[2]));
  LUT6 #(
    .INIT(64'hFFFDFFDFFFFFFFFF)) 
    \genblk1[2].data_out[2][7]_i_2 
       (.I0(p_0_in[1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(rx_ready),
        .O(\genblk1[2].data_out[2][7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \genblk1[3].data_out[3][7]_i_1 
       (.I0(Q[0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(addr_inc),
        .O(writeA[3]));
  LUT4 #(
    .INIT(16'h8000)) 
    \genblk1[3].data_out[3][7]_i_1__0 
       (.I0(Q[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(addr_inc),
        .O(writeB[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pr_addr[0]_i_1 
       (.I0(addr[0]),
        .I1(CPU_RESETN_IBUF),
        .O(\pr_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pr_addr[1]_i_1 
       (.I0(addr[1]),
        .I1(CPU_RESETN_IBUF),
        .O(\pr_addr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pr_addr_reg[0] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\pr_addr[0]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pr_addr_reg[1] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\pr_addr[1]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
endmodule

module clk_wiz_0
   (CLKMAIN,
    CLKLOGIC,
    reset,
    CLK100MHZ,
    lopt);
  output CLKMAIN;
  output CLKLOGIC;
  input reset;
  input CLK100MHZ;
  input lopt;

  wire CLK100MHZ;
  wire CLKMAIN;
  wire lopt;
  wire NLW_inst_CLKLOGIC_UNCONNECTED;
  wire NLW_inst_reset_UNCONNECTED;

  clk_wiz_0_clk_wiz inst
       (.CLK100MHZ(CLK100MHZ),
        .CLKLOGIC(NLW_inst_CLKLOGIC_UNCONNECTED),
        .CLKMAIN(CLKMAIN),
        .lopt(lopt),
        .reset(NLW_inst_reset_UNCONNECTED));
endmodule

module clk_wiz_0_clk_wiz
   (CLKMAIN,
    CLKLOGIC,
    reset,
    CLK100MHZ,
    lopt);
  output CLKMAIN;
  output CLKLOGIC;
  input reset;
  input CLK100MHZ;
  input lopt;

  wire CLK100MHZ;
  wire CLK100MHZ_clk_wiz_0;
  wire CLKMAIN;
  wire CLKMAIN_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire lopt;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(CLK100MHZ),
        .O(CLK100MHZ_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(CLKMAIN_clk_wiz_0),
        .O(CLKMAIN));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "RETARGET SWEEP" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.500000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.500000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(30),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b1),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(CLK100MHZ_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(CLKMAIN_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(lopt));
endmodule

module counter_with_inc
   (mode,
    addr,
    Q,
    CPU_RESETN_IBUF,
    addr_inc,
    CLKMAIN);
  output [0:0]mode;
  output [1:0]addr;
  input [3:0]Q;
  input CPU_RESETN_IBUF;
  input addr_inc;
  input CLKMAIN;

  wire CLKMAIN;
  wire CPU_RESETN_IBUF;
  wire [3:0]Q;
  wire [1:0]addr;
  wire addr_inc;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire [0:0]mode;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \count[0]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(mode),
        .I2(addr[0]),
        .I3(addr_inc),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02202200)) 
    \count[1]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(mode),
        .I2(addr[0]),
        .I3(addr[1]),
        .I4(addr_inc),
        .O(\count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \count[1]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(mode));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(addr[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "counter_with_inc" *) 
module counter_with_inc__parameterized0
   (AN_OBUF,
    SEG_OBUF,
    CPU_RESETN_IBUF,
    \SEG[6] ,
    \SEG[0] ,
    \SEG[5] ,
    \SEG_OBUF[0]_inst_i_1_0 ,
    \SEG[3] ,
    \SEG[6]_0 ,
    \SEG_OBUF[6]_inst_i_1_0 ,
    \SEG[1] ,
    \SEG[2] ,
    \SEG_OBUF[0]_inst_i_1_1 ,
    \SEG_OBUF[0]_inst_i_1_2 ,
    \SEG_OBUF[3]_inst_i_1_0 ,
    \SEG_OBUF[6]_inst_i_1_1 ,
    \SEG_OBUF[1]_inst_i_1_0 ,
    \SEG_OBUF[2]_inst_i_1_0 ,
    \SEG_OBUF[2]_inst_i_1_1 ,
    \SEG_OBUF[1]_inst_i_3_0 ,
    \SEG_OBUF[1]_inst_i_3_1 ,
    \SEG_OBUF[1]_inst_i_3_2 ,
    \SEG_OBUF[1]_inst_i_3_3 ,
    \SEG_OBUF[2]_inst_i_8_0 ,
    \SEG_OBUF[5]_inst_i_1_0 ,
    \SEG_OBUF[4]_inst_i_1_0 ,
    \SEG_OBUF[4]_inst_i_1_1 ,
    \SEG_OBUF[5]_inst_i_1_1 ,
    \SEG_OBUF[5]_inst_i_1_2 ,
    \SEG_OBUF[6]_inst_i_1_2 ,
    Q,
    \SEG_OBUF[6]_inst_i_1_3 ,
    \SEG_OBUF[6]_inst_i_1_4 ,
    pulse,
    SR,
    CLKMAIN);
  output [7:0]AN_OBUF;
  output [6:0]SEG_OBUF;
  input CPU_RESETN_IBUF;
  input \SEG[6] ;
  input \SEG[0] ;
  input \SEG[5] ;
  input \SEG_OBUF[0]_inst_i_1_0 ;
  input \SEG[3] ;
  input \SEG[6]_0 ;
  input \SEG_OBUF[6]_inst_i_1_0 ;
  input \SEG[1] ;
  input \SEG[2] ;
  input \SEG_OBUF[0]_inst_i_1_1 ;
  input \SEG_OBUF[0]_inst_i_1_2 ;
  input \SEG_OBUF[3]_inst_i_1_0 ;
  input \SEG_OBUF[6]_inst_i_1_1 ;
  input \SEG_OBUF[1]_inst_i_1_0 ;
  input \SEG_OBUF[2]_inst_i_1_0 ;
  input \SEG_OBUF[2]_inst_i_1_1 ;
  input \SEG_OBUF[1]_inst_i_3_0 ;
  input \SEG_OBUF[1]_inst_i_3_1 ;
  input \SEG_OBUF[1]_inst_i_3_2 ;
  input \SEG_OBUF[1]_inst_i_3_3 ;
  input \SEG_OBUF[2]_inst_i_8_0 ;
  input \SEG_OBUF[5]_inst_i_1_0 ;
  input \SEG_OBUF[4]_inst_i_1_0 ;
  input \SEG_OBUF[4]_inst_i_1_1 ;
  input \SEG_OBUF[5]_inst_i_1_1 ;
  input \SEG_OBUF[5]_inst_i_1_2 ;
  input \SEG_OBUF[6]_inst_i_1_2 ;
  input [0:0]Q;
  input \SEG_OBUF[6]_inst_i_1_3 ;
  input \SEG_OBUF[6]_inst_i_1_4 ;
  input pulse;
  input [0:0]SR;
  input CLKMAIN;

  wire [7:0]AN_OBUF;
  wire CLKMAIN;
  wire CPU_RESETN_IBUF;
  wire [0:0]Q;
  wire \SEG[0] ;
  wire \SEG[1] ;
  wire \SEG[2] ;
  wire \SEG[3] ;
  wire \SEG[5] ;
  wire \SEG[6] ;
  wire \SEG[6]_0 ;
  wire [6:0]SEG_OBUF;
  wire \SEG_OBUF[0]_inst_i_1_0 ;
  wire \SEG_OBUF[0]_inst_i_1_1 ;
  wire \SEG_OBUF[0]_inst_i_1_2 ;
  wire \SEG_OBUF[0]_inst_i_3_n_0 ;
  wire \SEG_OBUF[0]_inst_i_4_n_0 ;
  wire \SEG_OBUF[0]_inst_i_5_n_0 ;
  wire \SEG_OBUF[1]_inst_i_1_0 ;
  wire \SEG_OBUF[1]_inst_i_2_n_0 ;
  wire \SEG_OBUF[1]_inst_i_3_0 ;
  wire \SEG_OBUF[1]_inst_i_3_1 ;
  wire \SEG_OBUF[1]_inst_i_3_2 ;
  wire \SEG_OBUF[1]_inst_i_3_3 ;
  wire \SEG_OBUF[1]_inst_i_3_n_0 ;
  wire \SEG_OBUF[2]_inst_i_13_n_0 ;
  wire \SEG_OBUF[2]_inst_i_1_0 ;
  wire \SEG_OBUF[2]_inst_i_1_1 ;
  wire \SEG_OBUF[2]_inst_i_2_n_0 ;
  wire \SEG_OBUF[2]_inst_i_4_n_0 ;
  wire \SEG_OBUF[2]_inst_i_5_n_0 ;
  wire \SEG_OBUF[2]_inst_i_8_0 ;
  wire \SEG_OBUF[2]_inst_i_8_n_0 ;
  wire \SEG_OBUF[3]_inst_i_1_0 ;
  wire \SEG_OBUF[3]_inst_i_2_n_0 ;
  wire \SEG_OBUF[3]_inst_i_4_n_0 ;
  wire \SEG_OBUF[3]_inst_i_5_n_0 ;
  wire \SEG_OBUF[4]_inst_i_1_0 ;
  wire \SEG_OBUF[4]_inst_i_1_1 ;
  wire \SEG_OBUF[4]_inst_i_2_n_0 ;
  wire \SEG_OBUF[4]_inst_i_3_n_0 ;
  wire \SEG_OBUF[5]_inst_i_1_0 ;
  wire \SEG_OBUF[5]_inst_i_1_1 ;
  wire \SEG_OBUF[5]_inst_i_1_2 ;
  wire \SEG_OBUF[5]_inst_i_2_n_0 ;
  wire \SEG_OBUF[5]_inst_i_3_n_0 ;
  wire \SEG_OBUF[6]_inst_i_12_n_0 ;
  wire \SEG_OBUF[6]_inst_i_1_0 ;
  wire \SEG_OBUF[6]_inst_i_1_1 ;
  wire \SEG_OBUF[6]_inst_i_1_2 ;
  wire \SEG_OBUF[6]_inst_i_1_3 ;
  wire \SEG_OBUF[6]_inst_i_1_4 ;
  wire \SEG_OBUF[6]_inst_i_2_n_0 ;
  wire \SEG_OBUF[6]_inst_i_3_n_0 ;
  wire \SEG_OBUF[6]_inst_i_4_n_0 ;
  wire \SEG_OBUF[6]_inst_i_7_n_0 ;
  wire \SEG_OBUF[6]_inst_i_8_n_0 ;
  wire [0:0]SR;
  wire [2:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire pulse;

  LUT4 #(
    .INIT(16'hFFFD)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(count[2]),
        .I2(count[0]),
        .I3(count[1]),
        .O(AN_OBUF[0]));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(count[2]),
        .I2(count[1]),
        .I3(count[0]),
        .O(AN_OBUF[1]));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(count[2]),
        .I2(count[0]),
        .I3(count[1]),
        .O(AN_OBUF[2]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(count[2]),
        .I2(count[0]),
        .I3(count[1]),
        .O(AN_OBUF[3]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \AN_OBUF[4]_inst_i_1 
       (.I0(count[2]),
        .I1(CPU_RESETN_IBUF),
        .I2(count[0]),
        .I3(count[1]),
        .O(AN_OBUF[4]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \AN_OBUF[5]_inst_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(CPU_RESETN_IBUF),
        .O(AN_OBUF[5]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \AN_OBUF[6]_inst_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[2]),
        .I3(CPU_RESETN_IBUF),
        .O(AN_OBUF[6]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \AN_OBUF[7]_inst_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(CPU_RESETN_IBUF),
        .O(AN_OBUF[7]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFD0)) 
    \SEG_OBUF[0]_inst_i_1 
       (.I0(\SEG[6] ),
        .I1(\SEG[0] ),
        .I2(\SEG_OBUF[6]_inst_i_7_n_0 ),
        .I3(\SEG_OBUF[0]_inst_i_3_n_0 ),
        .I4(\SEG_OBUF[0]_inst_i_4_n_0 ),
        .I5(\SEG_OBUF[0]_inst_i_5_n_0 ),
        .O(SEG_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFEFAAAAAAAA)) 
    \SEG_OBUF[0]_inst_i_3 
       (.I0(\SEG_OBUF[6]_inst_i_12_n_0 ),
        .I1(\SEG_OBUF[0]_inst_i_1_1 ),
        .I2(\SEG[5] ),
        .I3(count[0]),
        .I4(\SEG_OBUF[0]_inst_i_1_2 ),
        .I5(count[1]),
        .O(\SEG_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08008000AAAAAAAA)) 
    \SEG_OBUF[0]_inst_i_4 
       (.I0(\SEG_OBUF[6]_inst_i_8_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_1_4 ),
        .I2(Q),
        .I3(\SEG_OBUF[6]_inst_i_1_3 ),
        .I4(\SEG_OBUF[6]_inst_i_1_2 ),
        .I5(\SEG[5] ),
        .O(\SEG_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88A0000000000000)) 
    \SEG_OBUF[0]_inst_i_5 
       (.I0(count[1]),
        .I1(\SEG[5] ),
        .I2(\SEG_OBUF[0]_inst_i_1_0 ),
        .I3(count[0]),
        .I4(CPU_RESETN_IBUF),
        .I5(count[2]),
        .O(\SEG_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFBFBFFFB)) 
    \SEG_OBUF[1]_inst_i_1 
       (.I0(\SEG_OBUF[2]_inst_i_5_n_0 ),
        .I1(\SEG_OBUF[1]_inst_i_2_n_0 ),
        .I2(\SEG_OBUF[1]_inst_i_3_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_7_n_0 ),
        .I4(\SEG[1] ),
        .I5(count[2]),
        .O(SEG_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7D00)) 
    \SEG_OBUF[1]_inst_i_2 
       (.I0(\SEG_OBUF[6]_inst_i_1_2 ),
        .I1(\SEG_OBUF[6]_inst_i_1_3 ),
        .I2(Q),
        .I3(\SEG[5] ),
        .I4(count[0]),
        .I5(count[1]),
        .O(\SEG_OBUF[1]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \SEG_OBUF[1]_inst_i_3 
       (.I0(\SEG_OBUF[2]_inst_i_8_n_0 ),
        .I1(\SEG_OBUF[1]_inst_i_1_0 ),
        .I2(count[0]),
        .I3(\SEG[5] ),
        .I4(\SEG_OBUF[0]_inst_i_1_1 ),
        .O(\SEG_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FF5D)) 
    \SEG_OBUF[2]_inst_i_1 
       (.I0(\SEG_OBUF[2]_inst_i_2_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_7_n_0 ),
        .I2(\SEG[2] ),
        .I3(\SEG_OBUF[2]_inst_i_4_n_0 ),
        .I4(count[2]),
        .I5(\SEG_OBUF[2]_inst_i_5_n_0 ),
        .O(SEG_OBUF[2]));
  LUT3 #(
    .INIT(8'h7F)) 
    \SEG_OBUF[2]_inst_i_13 
       (.I0(\SEG_OBUF[2]_inst_i_8_0 ),
        .I1(count[0]),
        .I2(\SEG[5] ),
        .O(\SEG_OBUF[2]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFE00)) 
    \SEG_OBUF[2]_inst_i_2 
       (.I0(Q),
        .I1(\SEG_OBUF[6]_inst_i_1_2 ),
        .I2(\SEG_OBUF[6]_inst_i_1_3 ),
        .I3(\SEG[5] ),
        .I4(count[0]),
        .I5(count[1]),
        .O(\SEG_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA80AAAA)) 
    \SEG_OBUF[2]_inst_i_4 
       (.I0(\SEG_OBUF[2]_inst_i_8_n_0 ),
        .I1(\SEG_OBUF[2]_inst_i_1_0 ),
        .I2(\SEG_OBUF[2]_inst_i_1_1 ),
        .I3(count[0]),
        .I4(\SEG[5] ),
        .I5(\SEG_OBUF[0]_inst_i_1_1 ),
        .O(\SEG_OBUF[2]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AFF)) 
    \SEG_OBUF[2]_inst_i_5 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(\SEG_OBUF[6]_inst_i_1_0 ),
        .I3(CPU_RESETN_IBUF),
        .O(\SEG_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88A888A888A88888)) 
    \SEG_OBUF[2]_inst_i_8 
       (.I0(count[1]),
        .I1(\SEG_OBUF[2]_inst_i_13_n_0 ),
        .I2(\SEG_OBUF[1]_inst_i_3_0 ),
        .I3(\SEG_OBUF[1]_inst_i_3_1 ),
        .I4(\SEG_OBUF[1]_inst_i_3_2 ),
        .I5(\SEG_OBUF[1]_inst_i_3_3 ),
        .O(\SEG_OBUF[2]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF755)) 
    \SEG_OBUF[3]_inst_i_1 
       (.I0(\SEG_OBUF[3]_inst_i_2_n_0 ),
        .I1(\SEG[6] ),
        .I2(\SEG[3] ),
        .I3(\SEG_OBUF[6]_inst_i_7_n_0 ),
        .I4(\SEG_OBUF[3]_inst_i_4_n_0 ),
        .I5(\SEG_OBUF[3]_inst_i_5_n_0 ),
        .O(SEG_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF9700)) 
    \SEG_OBUF[3]_inst_i_2 
       (.I0(\SEG_OBUF[6]_inst_i_1_2 ),
        .I1(\SEG_OBUF[6]_inst_i_1_3 ),
        .I2(Q),
        .I3(\SEG[5] ),
        .I4(count[0]),
        .I5(count[1]),
        .O(\SEG_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    \SEG_OBUF[3]_inst_i_4 
       (.I0(\SEG_OBUF[6]_inst_i_12_n_0 ),
        .I1(count[0]),
        .I2(\SEG_OBUF[3]_inst_i_1_0 ),
        .I3(\SEG_OBUF[0]_inst_i_1_1 ),
        .I4(\SEG[5] ),
        .I5(count[1]),
        .O(\SEG_OBUF[3]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \SEG_OBUF[3]_inst_i_5 
       (.I0(count[2]),
        .I1(CPU_RESETN_IBUF),
        .I2(count[1]),
        .I3(\SEG_OBUF[0]_inst_i_1_0 ),
        .O(\SEG_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h77FF77FF3F333FFF)) 
    \SEG_OBUF[4]_inst_i_1 
       (.I0(\SEG[5] ),
        .I1(CPU_RESETN_IBUF),
        .I2(\SEG_OBUF[4]_inst_i_2_n_0 ),
        .I3(count[1]),
        .I4(\SEG_OBUF[4]_inst_i_3_n_0 ),
        .I5(count[2]),
        .O(SEG_OBUF[4]));
  LUT6 #(
    .INIT(64'h08000C0000000C00)) 
    \SEG_OBUF[4]_inst_i_2 
       (.I0(\SEG_OBUF[2]_inst_i_8_0 ),
        .I1(\SEG[5] ),
        .I2(count[0]),
        .I3(\SEG_OBUF[2]_inst_i_1_1 ),
        .I4(\SEG_OBUF[5]_inst_i_1_0 ),
        .I5(\SEG_OBUF[1]_inst_i_3_0 ),
        .O(\SEG_OBUF[4]_inst_i_2_n_0 ));
  MUXF7 \SEG_OBUF[4]_inst_i_3 
       (.I0(\SEG_OBUF[4]_inst_i_1_0 ),
        .I1(\SEG_OBUF[4]_inst_i_1_1 ),
        .O(\SEG_OBUF[4]_inst_i_3_n_0 ),
        .S(count[0]));
  LUT6 #(
    .INIT(64'h0FFFFFFF5533FFFF)) 
    \SEG_OBUF[5]_inst_i_1 
       (.I0(\SEG_OBUF[5]_inst_i_2_n_0 ),
        .I1(\SEG_OBUF[5]_inst_i_3_n_0 ),
        .I2(\SEG[5] ),
        .I3(count[1]),
        .I4(CPU_RESETN_IBUF),
        .I5(count[2]),
        .O(SEG_OBUF[5]));
  LUT6 #(
    .INIT(64'h2220000022222220)) 
    \SEG_OBUF[5]_inst_i_2 
       (.I0(\SEG[5] ),
        .I1(count[0]),
        .I2(\SEG_OBUF[2]_inst_i_1_1 ),
        .I3(\SEG_OBUF[5]_inst_i_1_0 ),
        .I4(\SEG_OBUF[2]_inst_i_8_0 ),
        .I5(\SEG_OBUF[1]_inst_i_3_0 ),
        .O(\SEG_OBUF[5]_inst_i_2_n_0 ));
  MUXF7 \SEG_OBUF[5]_inst_i_3 
       (.I0(\SEG_OBUF[5]_inst_i_1_1 ),
        .I1(\SEG_OBUF[5]_inst_i_1_2 ),
        .O(\SEG_OBUF[5]_inst_i_3_n_0 ),
        .S(count[0]));
  LUT6 #(
    .INIT(64'hAAA8AAAAA8A8A8A8)) 
    \SEG_OBUF[6]_inst_i_1 
       (.I0(\SEG_OBUF[6]_inst_i_2_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_3_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_4_n_0 ),
        .I3(\SEG[6]_0 ),
        .I4(\SEG[6] ),
        .I5(\SEG_OBUF[6]_inst_i_7_n_0 ),
        .O(SEG_OBUF[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \SEG_OBUF[6]_inst_i_12 
       (.I0(count[2]),
        .I1(CPU_RESETN_IBUF),
        .O(\SEG_OBUF[6]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFFFFF7FFF7FFF)) 
    \SEG_OBUF[6]_inst_i_2 
       (.I0(\SEG_OBUF[6]_inst_i_1_0 ),
        .I1(count[2]),
        .I2(CPU_RESETN_IBUF),
        .I3(count[1]),
        .I4(\SEG_OBUF[0]_inst_i_1_0 ),
        .I5(count[0]),
        .O(\SEG_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22800000AAAAAAAA)) 
    \SEG_OBUF[6]_inst_i_3 
       (.I0(\SEG_OBUF[6]_inst_i_8_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_1_2 ),
        .I2(Q),
        .I3(\SEG_OBUF[6]_inst_i_1_3 ),
        .I4(\SEG_OBUF[6]_inst_i_1_4 ),
        .I5(\SEG[5] ),
        .O(\SEG_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFAAAAAAAA)) 
    \SEG_OBUF[6]_inst_i_4 
       (.I0(\SEG_OBUF[6]_inst_i_12_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_1_1 ),
        .I2(\SEG_OBUF[0]_inst_i_1_1 ),
        .I3(\SEG[5] ),
        .I4(count[0]),
        .I5(count[1]),
        .O(\SEG_OBUF[6]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \SEG_OBUF[6]_inst_i_7 
       (.I0(count[0]),
        .I1(count[1]),
        .O(\SEG_OBUF[6]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \SEG_OBUF[6]_inst_i_8 
       (.I0(count[1]),
        .I1(count[0]),
        .O(\SEG_OBUF[6]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count[0]_i_1 
       (.I0(pulse),
        .I1(count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(pulse),
        .I2(count[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[2]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(pulse),
        .I3(count[2]),
        .O(\count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(SR));
endmodule

module data_sync
   (rx_bit,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[2]_0 ,
    CLKMAIN,
    state__0,
    next_bit__1,
    \FSM_sequential_state_reg[0] ,
    out,
    \in_sync_sr_reg[1]_0 );
  output rx_bit;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[2]_0 ;
  input CLKMAIN;
  input [2:0]state__0;
  input next_bit__1;
  input \FSM_sequential_state_reg[0] ;
  input [0:0]out;
  input [0:0]\in_sync_sr_reg[1]_0 ;

  wire CLKMAIN;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [0:0]\in_sync_sr_reg[1]_0 ;
  wire \in_sync_sr_reg_n_0_[0] ;
  wire \in_sync_sr_reg_n_0_[1] ;
  wire next_bit__1;
  wire [0:0]out;
  wire rx_bit;
  wire stable_out_i_1_n_0;
  wire state;
  wire [2:0]state__0;
  wire [1:0]sync_counter;
  wire \sync_counter[0]_i_1_n_0 ;
  wire \sync_counter[1]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[2]),
        .I1(state),
        .I2(state__0[0]),
        .O(\FSM_sequential_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h05FF1000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[2]),
        .I1(rx_bit),
        .I2(state__0[0]),
        .I3(state),
        .I4(state__0[1]),
        .O(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state),
        .I3(state__0[2]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'h50500000FCCC0000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state__0[2]),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(next_bit__1),
        .I3(\FSM_sequential_state_reg[0] ),
        .I4(out),
        .I5(state__0[0]),
        .O(state));
  LUT3 #(
    .INIT(8'h31)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(rx_bit),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_sync_sr_reg[0] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\in_sync_sr_reg_n_0_[1] ),
        .Q(\in_sync_sr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_sync_sr_reg[1] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\in_sync_sr_reg[1]_0 ),
        .Q(\in_sync_sr_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    stable_out_i_1
       (.I0(rx_bit),
        .I1(sync_counter[0]),
        .I2(sync_counter[1]),
        .O(stable_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stable_out_reg
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(stable_out_i_1_n_0),
        .Q(rx_bit),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8E)) 
    \sync_counter[0]_i_1 
       (.I0(sync_counter[1]),
        .I1(\in_sync_sr_reg_n_0_[0] ),
        .I2(sync_counter[0]),
        .O(\sync_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sync_counter[1]_i_1 
       (.I0(\in_sync_sr_reg_n_0_[0] ),
        .I1(sync_counter[0]),
        .I2(sync_counter[1]),
        .O(\sync_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \sync_counter_reg[0] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\sync_counter[0]_i_1_n_0 ),
        .Q(sync_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \sync_counter_reg[1] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\sync_counter[1]_i_1_n_0 ),
        .Q(sync_counter[1]),
        .R(1'b0));
endmodule

(* BAUD_RATE = "115200" *) (* CLK_FREQUENCY = "100000000" *) (* DEEPTH = "8" *) 
(* DIRW = "2" *) (* ECO_CHECKSUM = "b7fc295b" *) (* WIDTH = "4" *) 
(* NotValidForBitStream *)
module device
   (CLK100MHZ,
    CPU_RESETN,
    UART_TXD_IN,
    UART_RXD_OUT,
    SEG,
    AN);
  input CLK100MHZ;
  input CPU_RESETN;
  input UART_TXD_IN;
  output UART_RXD_OUT;
  output [7:0]SEG;
  output [7:0]AN;

  wire [7:0]AN;
  wire [7:0]AN_OBUF;
  (* IBUF_LOW_PWR *) wire CLK100MHZ;
  wire CLKMAIN;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire Man_Dist_inst_n_10;
  wire Man_Dist_inst_n_11;
  wire Man_Dist_inst_n_2;
  wire Man_Dist_inst_n_22;
  wire Man_Dist_inst_n_23;
  wire Man_Dist_inst_n_24;
  wire Man_Dist_inst_n_25;
  wire Man_Dist_inst_n_26;
  wire Man_Dist_inst_n_27;
  wire Man_Dist_inst_n_28;
  wire Man_Dist_inst_n_29;
  wire Man_Dist_inst_n_3;
  wire Man_Dist_inst_n_30;
  wire Man_Dist_inst_n_4;
  wire Man_Dist_inst_n_5;
  wire [7:0]SEG;
  wire [6:0]SEG_OBUF;
  wire UART_RXD_OUT;
  wire UART_TXD_IN;
  wire UART_TXD_IN_IBUF;
  wire [7:4]abs0;
  wire abs2;
  wire abs22_in;
  wire [7:4]\acum[0] ;
  wire [7:4]\acum[1] ;
  wire [1:0]addr;
  wire addr_inc;
  wire [7:0]\memA[0] ;
  wire [7:0]\memA[1] ;
  wire [7:0]\memA[2] ;
  wire [7:0]\memA[3] ;
  wire [7:0]\memB[0] ;
  wire [7:0]\memB[1] ;
  wire [7:0]\memB[2] ;
  wire [7:0]\memB[3] ;
  wire mem_in_A_n_0;
  wire mem_in_A_n_1;
  wire mem_in_A_n_12;
  wire mem_in_A_n_13;
  wire mem_in_A_n_14;
  wire mem_in_A_n_15;
  wire mem_in_A_n_2;
  wire mem_in_A_n_24;
  wire mem_in_A_n_25;
  wire mem_in_A_n_26;
  wire mem_in_A_n_27;
  wire mem_in_A_n_3;
  wire mem_in_A_n_36;
  wire mem_in_A_n_37;
  wire mem_in_A_n_38;
  wire mem_in_A_n_39;
  wire mem_in_B_n_11;
  wire mem_in_B_n_12;
  wire mem_in_B_n_13;
  wire mem_in_B_n_14;
  wire mem_in_B_n_23;
  wire mem_in_B_n_24;
  wire mem_in_B_n_25;
  wire mem_in_B_n_26;
  wire mem_in_B_n_27;
  wire mem_in_B_n_28;
  wire mem_in_B_n_29;
  wire mem_in_B_n_30;
  wire mem_in_B_n_39;
  wire mem_in_B_n_4;
  wire mem_in_B_n_40;
  wire mem_in_B_n_41;
  wire mem_in_B_n_42;
  wire mem_in_B_n_43;
  wire mem_in_B_n_44;
  wire mem_in_B_n_45;
  wire mem_in_B_n_46;
  wire mem_in_B_n_55;
  wire mem_in_B_n_56;
  wire mem_in_B_n_57;
  wire mem_in_B_n_58;
  wire mem_in_B_n_59;
  wire mem_in_B_n_60;
  wire mem_in_B_n_61;
  wire mem_in_B_n_62;
  wire mem_in_B_n_71;
  wire mem_in_B_n_72;
  wire mem_in_B_n_73;
  wire mem_in_B_n_74;
  wire mem_in_B_n_75;
  wire mem_in_B_n_76;
  wire mem_in_B_n_77;
  wire mem_in_B_n_78;
  wire mem_in_B_n_79;
  wire mem_in_B_n_80;
  wire mem_in_B_n_81;
  wire mem_in_B_n_82;
  wire mem_in_B_n_83;
  wire mem_in_B_n_84;
  wire mem_in_B_n_85;
  wire mem_in_B_n_86;
  wire mem_in_B_n_87;
  wire mem_in_B_n_88;
  wire mem_in_B_n_89;
  wire mem_in_B_n_9;
  wire mem_in_B_n_90;
  wire [14:14]mode;
  wire [9:0]numMan;
  wire reset0;
  wire [7:0]rx_data;
  wire rx_ready;
  wire screen_n_0;
  wire [3:0]state;
  wire uart_logic_n_1;
  wire uart_logic_n_3;
  wire uart_logic_n_4;
  wire uart_logic_n_5;
  wire uart_logic_n_6;
  wire [3:0]writeA;
  wire [3:0]writeB;
  wire NLW_clock_magnement_CLKLOGIC_UNCONNECTED;
  wire NLW_clock_magnement_reset_UNCONNECTED;

  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(AN_OBUF[4]),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(AN_OBUF[5]),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(AN_OBUF[6]),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(AN_OBUF[7]),
        .O(AN[7]));
  IBUF CPU_RESETN_IBUF_inst
       (.I(CPU_RESETN),
        .O(CPU_RESETN_IBUF));
  ManDisOperation Man_Dist_inst
       (.CO(abs22_in),
        .DI({mem_in_A_n_0,mem_in_A_n_1,mem_in_A_n_2,mem_in_A_n_3}),
        .O({Man_Dist_inst_n_2,Man_Dist_inst_n_3,Man_Dist_inst_n_4,Man_Dist_inst_n_5}),
        .Q(\memA[3] [6:0]),
        .S({mem_in_B_n_11,mem_in_B_n_12,mem_in_B_n_13,mem_in_B_n_14}),
        .\distance[3]_i_15 ({mem_in_A_n_24,mem_in_A_n_25,mem_in_A_n_26,mem_in_A_n_27}),
        .\distance[3]_i_15_0 ({mem_in_B_n_43,mem_in_B_n_44,mem_in_B_n_45,mem_in_B_n_46}),
        .\distance[3]_i_15_1 ({mem_in_B_n_83,mem_in_B_n_84,mem_in_B_n_85,mem_in_B_n_86}),
        .\distance[3]_i_15_2 ({mem_in_B_n_87,mem_in_B_n_88,mem_in_B_n_89,mem_in_B_n_90}),
        .\distance[3]_i_24 ({mem_in_B_n_75,mem_in_B_n_76,mem_in_B_n_77,mem_in_B_n_78}),
        .\distance[3]_i_24_0 ({mem_in_B_n_79,mem_in_B_n_80,mem_in_B_n_81,mem_in_B_n_82}),
        .\distance[7]_i_11 (\memA[0] [6:0]),
        .\distance[7]_i_11_0 ({mem_in_B_n_71,mem_in_B_n_72,mem_in_B_n_73,mem_in_B_n_74}),
        .\distance[7]_i_15 (\memA[1] [6:0]),
        .\distance[7]_i_15_0 ({mem_in_B_n_55,mem_in_B_n_56,mem_in_B_n_57,mem_in_B_n_58}),
        .\distance[7]_i_17 ({mem_in_A_n_12,mem_in_A_n_13,mem_in_A_n_14,mem_in_A_n_15}),
        .\distance[7]_i_17_0 ({mem_in_B_n_27,mem_in_B_n_28,mem_in_B_n_29,mem_in_B_n_30}),
        .\distance[7]_i_20 (\memA[2] [6:0]),
        .\distance[7]_i_20_0 ({mem_in_B_n_39,mem_in_B_n_40,mem_in_B_n_41,mem_in_B_n_42}),
        .\distance[7]_i_24 ({mem_in_B_n_23,mem_in_B_n_24,mem_in_B_n_25,mem_in_B_n_26}),
        .\distance[7]_i_8 ({mem_in_A_n_36,mem_in_A_n_37,mem_in_A_n_38,mem_in_A_n_39}),
        .\distance[7]_i_8_0 ({mem_in_B_n_59,mem_in_B_n_60,mem_in_B_n_61,mem_in_B_n_62}),
        .\distance_reg[7] (\acum[0] ),
        .\distance_reg[7]_i_2 (\acum[1] ),
        .\distance_reg[9] (mem_in_B_n_4),
        .\distance_reg[9]_i_3 (mem_in_B_n_9),
        .\genblk1[0].data_out_reg[0][6] (abs0),
        .\genblk1[0].data_out_reg[0][6]_0 ({Man_Dist_inst_n_23,Man_Dist_inst_n_24,Man_Dist_inst_n_25,Man_Dist_inst_n_26}),
        .\genblk1[0].data_out_reg[0][7] (abs2),
        .\genblk1[2].data_out_reg[2][6] ({Man_Dist_inst_n_27,Man_Dist_inst_n_28,Man_Dist_inst_n_29,Man_Dist_inst_n_30}),
        .\mode_reg[6] (state),
        .numMan(numMan),
        .\state_reg[1] (Man_Dist_inst_n_10),
        .\state_reg[1]_0 (Man_Dist_inst_n_11),
        .\state_reg[1]_1 (Man_Dist_inst_n_22));
  OBUF \SEG_OBUF[0]_inst 
       (.I(SEG_OBUF[0]),
        .O(SEG[0]));
  OBUF \SEG_OBUF[1]_inst 
       (.I(SEG_OBUF[1]),
        .O(SEG[1]));
  OBUF \SEG_OBUF[2]_inst 
       (.I(SEG_OBUF[2]),
        .O(SEG[2]));
  OBUF \SEG_OBUF[3]_inst 
       (.I(SEG_OBUF[3]),
        .O(SEG[3]));
  OBUF \SEG_OBUF[4]_inst 
       (.I(SEG_OBUF[4]),
        .O(SEG[4]));
  OBUF \SEG_OBUF[5]_inst 
       (.I(SEG_OBUF[5]),
        .O(SEG[5]));
  OBUF \SEG_OBUF[6]_inst 
       (.I(SEG_OBUF[6]),
        .O(SEG[6]));
  OBUF \SEG_OBUF[7]_inst 
       (.I(1'b1),
        .O(SEG[7]));
  OBUF UART_RXD_OUT_OBUF_inst
       (.I(1'b1),
        .O(UART_RXD_OUT));
  IBUF UART_TXD_IN_IBUF_inst
       (.I(UART_TXD_IN),
        .O(UART_TXD_IN_IBUF));
  (* IMPORTED_FROM = "d:/Archivos/Documentos/Universidad/2022.2/IPD432/Gitlab/Tarea_3/Tarea_3.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 clock_magnement
       (.CLK100MHZ(CLK100MHZ),
        .CLKLOGIC(NLW_clock_magnement_CLKLOGIC_UNCONNECTED),
        .CLKMAIN(CLKMAIN),
        .lopt(CPU_RESETN_IBUF),
        .reset(NLW_clock_magnement_reset_UNCONNECTED));
  counter_with_inc master_count
       (.CLKMAIN(CLKMAIN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .Q(state),
        .addr(addr),
        .addr_inc(addr_inc),
        .mode(mode));
  DRAM mem_in_A
       (.CLKMAIN(CLKMAIN),
        .DI({mem_in_A_n_0,mem_in_A_n_1,mem_in_A_n_2,mem_in_A_n_3}),
        .Q(\memA[3] ),
        .SR(reset0),
        .abs2_carry(\memB[3] ),
        .\abs2_inferred__0/i__carry (\memB[2] ),
        .\abs2_inferred__1/i__carry (\memB[1] ),
        .\abs2_inferred__2/i__carry (\memB[0] ),
        .\genblk1[0].data_out_reg[0][7]_0 ({mem_in_A_n_36,mem_in_A_n_37,mem_in_A_n_38,mem_in_A_n_39}),
        .\genblk1[0].data_out_reg[0][7]_1 (\memA[0] ),
        .\genblk1[1].data_out_reg[1][7]_0 ({mem_in_A_n_24,mem_in_A_n_25,mem_in_A_n_26,mem_in_A_n_27}),
        .\genblk1[1].data_out_reg[1][7]_1 (\memA[1] ),
        .\genblk1[2].data_out_reg[2][7]_0 ({mem_in_A_n_12,mem_in_A_n_13,mem_in_A_n_14,mem_in_A_n_15}),
        .\genblk1[2].data_out_reg[2][7]_1 (\memA[2] ),
        .\genblk1[3].data_out_reg[3][7]_0 (rx_data),
        .writeA(writeA));
  DRAM_0 mem_in_B
       (.CLKMAIN(CLKMAIN),
        .CO(abs22_in),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .O({Man_Dist_inst_n_2,Man_Dist_inst_n_3,Man_Dist_inst_n_4,Man_Dist_inst_n_5}),
        .Q(state),
        .S({mem_in_B_n_11,mem_in_B_n_12,mem_in_B_n_13,mem_in_B_n_14}),
        .SR(reset0),
        .abs2_carry(\memA[3] ),
        .\abs2_inferred__0/i__carry (\memA[2] ),
        .\abs2_inferred__1/i__carry (\memA[1] ),
        .\abs2_inferred__2/i__carry (\memA[0] ),
        .\distance[7]_i_7 (Man_Dist_inst_n_10),
        .\distance[7]_i_7_0 ({Man_Dist_inst_n_23,Man_Dist_inst_n_24,Man_Dist_inst_n_25,Man_Dist_inst_n_26}),
        .\distance[7]_i_7_1 (Man_Dist_inst_n_11),
        .\distance[7]_i_7_2 ({Man_Dist_inst_n_27,Man_Dist_inst_n_28,Man_Dist_inst_n_29,Man_Dist_inst_n_30}),
        .\distance_reg[7]_i_16_0 (mem_in_B_n_9),
        .\distance_reg[7]_i_3_0 (mem_in_B_n_4),
        .\distance_reg[7]_i_3_1 (abs0),
        .\distance_reg[7]_i_3_2 (abs2),
        .\genblk1[0].data_out_reg[0][3]_0 ({mem_in_B_n_87,mem_in_B_n_88,mem_in_B_n_89,mem_in_B_n_90}),
        .\genblk1[0].data_out_reg[0][7]_0 ({mem_in_B_n_59,mem_in_B_n_60,mem_in_B_n_61,mem_in_B_n_62}),
        .\genblk1[0].data_out_reg[0][7]_1 (\memB[0] ),
        .\genblk1[0].data_out_reg[0][7]_2 ({mem_in_B_n_71,mem_in_B_n_72,mem_in_B_n_73,mem_in_B_n_74}),
        .\genblk1[1].data_out_reg[1][3]_0 ({mem_in_B_n_83,mem_in_B_n_84,mem_in_B_n_85,mem_in_B_n_86}),
        .\genblk1[1].data_out_reg[1][7]_0 ({mem_in_B_n_43,mem_in_B_n_44,mem_in_B_n_45,mem_in_B_n_46}),
        .\genblk1[1].data_out_reg[1][7]_1 (\memB[1] ),
        .\genblk1[1].data_out_reg[1][7]_2 ({mem_in_B_n_55,mem_in_B_n_56,mem_in_B_n_57,mem_in_B_n_58}),
        .\genblk1[2].data_out_reg[2][3]_0 ({mem_in_B_n_79,mem_in_B_n_80,mem_in_B_n_81,mem_in_B_n_82}),
        .\genblk1[2].data_out_reg[2][7]_0 ({mem_in_B_n_27,mem_in_B_n_28,mem_in_B_n_29,mem_in_B_n_30}),
        .\genblk1[2].data_out_reg[2][7]_1 (\memB[2] ),
        .\genblk1[2].data_out_reg[2][7]_2 ({mem_in_B_n_39,mem_in_B_n_40,mem_in_B_n_41,mem_in_B_n_42}),
        .\genblk1[3].data_out_reg[3][3]_0 ({mem_in_B_n_75,mem_in_B_n_76,mem_in_B_n_77,mem_in_B_n_78}),
        .\genblk1[3].data_out_reg[3][7]_0 (\memB[3] ),
        .\genblk1[3].data_out_reg[3][7]_1 ({mem_in_B_n_23,mem_in_B_n_24,mem_in_B_n_25,mem_in_B_n_26}),
        .\genblk1[3].data_out_reg[3][7]_2 (rx_data),
        .\state_reg[1] (\acum[0] ),
        .\state_reg[1]_0 (\acum[1] ),
        .writeB(writeB));
  byte_to_mem parallelizer
       (.CLKMAIN(CLKMAIN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .Q(state),
        .addr(addr),
        .addr_inc(addr_inc),
        .rx_ready(rx_ready),
        .writeA(writeA),
        .writeB(writeB));
  info_to_7seg screen
       (.AN_OBUF(AN_OBUF),
        .CLKMAIN(CLKMAIN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .Q(state),
        .SEG_OBUF(SEG_OBUF),
        .SR(reset0),
        .\mode_reg[6]_0 (Man_Dist_inst_n_22),
        .numMan(numMan),
        .\state_reg[3] (screen_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLKMAIN),
        .CE(uart_logic_n_1),
        .D(uart_logic_n_6),
        .Q(state[0]),
        .R(reset0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLKMAIN),
        .CE(uart_logic_n_1),
        .D(uart_logic_n_5),
        .Q(state[1]),
        .R(reset0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLKMAIN),
        .CE(uart_logic_n_1),
        .D(uart_logic_n_4),
        .Q(state[2]),
        .R(reset0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLKMAIN),
        .CE(uart_logic_n_1),
        .D(uart_logic_n_3),
        .Q(state[3]),
        .R(reset0));
  uart_basic uart_logic
       (.CLKMAIN(CLKMAIN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D({uart_logic_n_3,uart_logic_n_4,uart_logic_n_5,uart_logic_n_6}),
        .E(uart_logic_n_1),
        .Q(state),
        .SR(reset0),
        .addr(addr),
        .addr_inc(addr_inc),
        .\in_sync_sr_reg[1] (UART_TXD_IN_IBUF),
        .mode(mode),
        .\rx_data_reg[7] (rx_data),
        .rx_ready(rx_ready),
        .\state_reg[0] (screen_n_0));
endmodule

module info_to_7seg
   (\state_reg[3] ,
    AN_OBUF,
    SEG_OBUF,
    SR,
    \mode_reg[6]_0 ,
    CLKMAIN,
    CPU_RESETN_IBUF,
    Q,
    numMan);
  output \state_reg[3] ;
  output [7:0]AN_OBUF;
  output [6:0]SEG_OBUF;
  input [0:0]SR;
  input \mode_reg[6]_0 ;
  input CLKMAIN;
  input CPU_RESETN_IBUF;
  input [3:0]Q;
  input [9:0]numMan;

  wire [7:0]AN_OBUF;
  wire CLKMAIN;
  wire CPU_RESETN_IBUF;
  wire [3:0]Q;
  wire [6:0]SEG_OBUF;
  wire \SEG_OBUF[0]_inst_i_2_n_0 ;
  wire \SEG_OBUF[0]_inst_i_6_n_0 ;
  wire \SEG_OBUF[1]_inst_i_4_n_0 ;
  wire \SEG_OBUF[1]_inst_i_5_n_0 ;
  wire \SEG_OBUF[1]_inst_i_6_n_0 ;
  wire \SEG_OBUF[2]_inst_i_10_n_0 ;
  wire \SEG_OBUF[2]_inst_i_11_n_0 ;
  wire \SEG_OBUF[2]_inst_i_12_n_0 ;
  wire \SEG_OBUF[2]_inst_i_14_n_0 ;
  wire \SEG_OBUF[2]_inst_i_3_n_0 ;
  wire \SEG_OBUF[2]_inst_i_6_n_0 ;
  wire \SEG_OBUF[2]_inst_i_7_n_0 ;
  wire \SEG_OBUF[2]_inst_i_9_n_0 ;
  wire \SEG_OBUF[3]_inst_i_3_n_0 ;
  wire \SEG_OBUF[3]_inst_i_6_n_0 ;
  wire \SEG_OBUF[4]_inst_i_4_n_0 ;
  wire \SEG_OBUF[4]_inst_i_5_n_0 ;
  wire \SEG_OBUF[5]_inst_i_10_n_0 ;
  wire \SEG_OBUF[5]_inst_i_4_n_0 ;
  wire \SEG_OBUF[5]_inst_i_5_n_0 ;
  wire \SEG_OBUF[5]_inst_i_6_n_0 ;
  wire \SEG_OBUF[5]_inst_i_7_n_0 ;
  wire \SEG_OBUF[5]_inst_i_8_n_0 ;
  wire \SEG_OBUF[5]_inst_i_9_n_0 ;
  wire \SEG_OBUF[6]_inst_i_10_n_0 ;
  wire \SEG_OBUF[6]_inst_i_11_n_0 ;
  wire \SEG_OBUF[6]_inst_i_13_n_0 ;
  wire \SEG_OBUF[6]_inst_i_14_n_0 ;
  wire \SEG_OBUF[6]_inst_i_15_n_0 ;
  wire \SEG_OBUF[6]_inst_i_16_n_0 ;
  wire \SEG_OBUF[6]_inst_i_17_n_0 ;
  wire \SEG_OBUF[6]_inst_i_18_n_0 ;
  wire \SEG_OBUF[6]_inst_i_19_n_0 ;
  wire \SEG_OBUF[6]_inst_i_20_n_0 ;
  wire \SEG_OBUF[6]_inst_i_21_n_0 ;
  wire \SEG_OBUF[6]_inst_i_22_n_0 ;
  wire \SEG_OBUF[6]_inst_i_23_n_0 ;
  wire \SEG_OBUF[6]_inst_i_24_n_0 ;
  wire \SEG_OBUF[6]_inst_i_25_n_0 ;
  wire \SEG_OBUF[6]_inst_i_26_n_0 ;
  wire \SEG_OBUF[6]_inst_i_27_n_0 ;
  wire \SEG_OBUF[6]_inst_i_5_n_0 ;
  wire \SEG_OBUF[6]_inst_i_6_n_0 ;
  wire \SEG_OBUF[6]_inst_i_9_n_0 ;
  wire [0:0]SR;
  wire [9:0]distance0_in;
  wire \distance_reg_n_0_[0] ;
  wire \distance_reg_n_0_[1] ;
  wire \distance_reg_n_0_[2] ;
  wire \distance_reg_n_0_[3] ;
  wire \distance_reg_n_0_[4] ;
  wire \distance_reg_n_0_[5] ;
  wire \distance_reg_n_0_[6] ;
  wire \distance_reg_n_0_[7] ;
  wire \distance_reg_n_0_[8] ;
  wire \distance_reg_n_0_[9] ;
  wire en;
  wire en_reg_n_0;
  wire \mode[14]_i_1_n_0 ;
  wire \mode_reg[6]_0 ;
  wire \mode_reg_n_0_[14] ;
  wire \mode_reg_n_0_[6] ;
  wire [9:0]numMan;
  wire \state_reg[3] ;

  multiplexing Mul
       (.AN_OBUF(AN_OBUF),
        .CLKMAIN(CLKMAIN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .Q(\distance_reg_n_0_[0] ),
        .\SEG[0] (\SEG_OBUF[0]_inst_i_2_n_0 ),
        .\SEG[1] (\SEG_OBUF[1]_inst_i_4_n_0 ),
        .\SEG[2] (\SEG_OBUF[2]_inst_i_3_n_0 ),
        .\SEG[3] (\SEG_OBUF[3]_inst_i_3_n_0 ),
        .\SEG[5] (en_reg_n_0),
        .\SEG[6] (\SEG_OBUF[6]_inst_i_6_n_0 ),
        .\SEG[6]_0 (\SEG_OBUF[6]_inst_i_5_n_0 ),
        .SEG_OBUF(SEG_OBUF),
        .\SEG_OBUF[0]_inst_i_1 (\mode_reg_n_0_[14] ),
        .\SEG_OBUF[0]_inst_i_1_0 (\SEG_OBUF[6]_inst_i_14_n_0 ),
        .\SEG_OBUF[0]_inst_i_1_1 (\SEG_OBUF[0]_inst_i_6_n_0 ),
        .\SEG_OBUF[1]_inst_i_1 (\SEG_OBUF[1]_inst_i_5_n_0 ),
        .\SEG_OBUF[1]_inst_i_3 (\SEG_OBUF[5]_inst_i_7_n_0 ),
        .\SEG_OBUF[1]_inst_i_3_0 (\SEG_OBUF[2]_inst_i_10_n_0 ),
        .\SEG_OBUF[1]_inst_i_3_1 (\SEG_OBUF[2]_inst_i_14_n_0 ),
        .\SEG_OBUF[1]_inst_i_3_2 (\SEG_OBUF[2]_inst_i_12_n_0 ),
        .\SEG_OBUF[2]_inst_i_1 (\SEG_OBUF[2]_inst_i_9_n_0 ),
        .\SEG_OBUF[2]_inst_i_1_0 (\SEG_OBUF[5]_inst_i_4_n_0 ),
        .\SEG_OBUF[2]_inst_i_8 (\SEG_OBUF[5]_inst_i_6_n_0 ),
        .\SEG_OBUF[3]_inst_i_1 (\SEG_OBUF[3]_inst_i_6_n_0 ),
        .\SEG_OBUF[4]_inst_i_1 (\SEG_OBUF[4]_inst_i_4_n_0 ),
        .\SEG_OBUF[4]_inst_i_1_0 (\SEG_OBUF[4]_inst_i_5_n_0 ),
        .\SEG_OBUF[5]_inst_i_1 (\SEG_OBUF[5]_inst_i_5_n_0 ),
        .\SEG_OBUF[5]_inst_i_1_0 (\SEG_OBUF[5]_inst_i_8_n_0 ),
        .\SEG_OBUF[5]_inst_i_1_1 (\SEG_OBUF[5]_inst_i_9_n_0 ),
        .\SEG_OBUF[6]_inst_i_1 (\mode_reg_n_0_[6] ),
        .\SEG_OBUF[6]_inst_i_1_0 (\SEG_OBUF[6]_inst_i_13_n_0 ),
        .\SEG_OBUF[6]_inst_i_1_1 (\SEG_OBUF[6]_inst_i_9_n_0 ),
        .\SEG_OBUF[6]_inst_i_1_2 (\SEG_OBUF[6]_inst_i_10_n_0 ),
        .\SEG_OBUF[6]_inst_i_1_3 (\SEG_OBUF[6]_inst_i_11_n_0 ),
        .SR(SR));
  LUT4 #(
    .INIT(16'h0012)) 
    \SEG_OBUF[0]_inst_i_2 
       (.I0(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_17_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_15_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_18_n_0 ),
        .O(\SEG_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h084A484240424052)) 
    \SEG_OBUF[0]_inst_i_6 
       (.I0(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I4(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .O(\SEG_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFF0000)) 
    \SEG_OBUF[1]_inst_i_4 
       (.I0(\SEG_OBUF[6]_inst_i_17_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_19_n_0 ),
        .I2(\SEG_OBUF[2]_inst_i_7_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_14_n_0 ),
        .I4(en_reg_n_0),
        .I5(\SEG_OBUF[1]_inst_i_6_n_0 ),
        .O(\SEG_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0E000070000000F0)) 
    \SEG_OBUF[1]_inst_i_5 
       (.I0(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .O(\SEG_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h330400420042CC20)) 
    \SEG_OBUF[1]_inst_i_6 
       (.I0(\SEG_OBUF[2]_inst_i_12_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I2(\SEG_OBUF[2]_inst_i_11_n_0 ),
        .I3(\SEG_OBUF[2]_inst_i_10_n_0 ),
        .I4(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .O(\SEG_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h300C0000200C04C0)) 
    \SEG_OBUF[2]_inst_i_10 
       (.I0(\distance_reg_n_0_[4] ),
        .I1(\distance_reg_n_0_[8] ),
        .I2(\distance_reg_n_0_[9] ),
        .I3(\distance_reg_n_0_[7] ),
        .I4(\distance_reg_n_0_[6] ),
        .I5(\distance_reg_n_0_[5] ),
        .O(\SEG_OBUF[2]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h280BC3D40842C3F4)) 
    \SEG_OBUF[2]_inst_i_11 
       (.I0(\distance_reg_n_0_[5] ),
        .I1(\distance_reg_n_0_[7] ),
        .I2(\distance_reg_n_0_[9] ),
        .I3(\distance_reg_n_0_[8] ),
        .I4(\distance_reg_n_0_[6] ),
        .I5(\distance_reg_n_0_[4] ),
        .O(\SEG_OBUF[2]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3CF0F1CF38F3F3CF)) 
    \SEG_OBUF[2]_inst_i_12 
       (.I0(\distance_reg_n_0_[4] ),
        .I1(\distance_reg_n_0_[6] ),
        .I2(\distance_reg_n_0_[8] ),
        .I3(\distance_reg_n_0_[9] ),
        .I4(\distance_reg_n_0_[7] ),
        .I5(\distance_reg_n_0_[5] ),
        .O(\SEG_OBUF[2]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4445000000004454)) 
    \SEG_OBUF[2]_inst_i_14 
       (.I0(\SEG_OBUF[6]_inst_i_21_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_20_n_0 ),
        .I2(\distance_reg_n_0_[4] ),
        .I3(\distance_reg_n_0_[3] ),
        .I4(\SEG_OBUF[5]_inst_i_7_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .O(\SEG_OBUF[2]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h40C4CC0CCCCCCCCC)) 
    \SEG_OBUF[2]_inst_i_3 
       (.I0(\SEG_OBUF[6]_inst_i_14_n_0 ),
        .I1(en_reg_n_0),
        .I2(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I3(\SEG_OBUF[5]_inst_i_4_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_19_n_0 ),
        .I5(\SEG_OBUF[2]_inst_i_7_n_0 ),
        .O(\SEG_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00003C7D00007DC3)) 
    \SEG_OBUF[2]_inst_i_6 
       (.I0(\distance_reg_n_0_[2] ),
        .I1(\distance_reg_n_0_[4] ),
        .I2(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I3(\distance_reg_n_0_[3] ),
        .I4(\SEG_OBUF[6]_inst_i_21_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_20_n_0 ),
        .O(\SEG_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02AA0A8A0A08028A)) 
    \SEG_OBUF[2]_inst_i_7 
       (.I0(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .I1(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I2(\SEG_OBUF[2]_inst_i_10_n_0 ),
        .I3(\SEG_OBUF[2]_inst_i_11_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I5(\SEG_OBUF[2]_inst_i_12_n_0 ),
        .O(\SEG_OBUF[2]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h04C00C00)) 
    \SEG_OBUF[2]_inst_i_9 
       (.I0(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .O(\SEG_OBUF[2]_inst_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h16)) 
    \SEG_OBUF[3]_inst_i_3 
       (.I0(\SEG_OBUF[6]_inst_i_15_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_17_n_0 ),
        .O(\SEG_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1A635047586750D7)) 
    \SEG_OBUF[3]_inst_i_6 
       (.I0(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I5(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .O(\SEG_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA2828AA)) 
    \SEG_OBUF[4]_inst_i_4 
       (.I0(en_reg_n_0),
        .I1(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I2(\distance_reg_n_0_[2] ),
        .I3(\distance_reg_n_0_[1] ),
        .I4(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .I5(\distance_reg_n_0_[0] ),
        .O(\SEG_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0B00000000000)) 
    \SEG_OBUF[4]_inst_i_5 
       (.I0(\SEG_OBUF[6]_inst_i_18_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_14_n_0 ),
        .I2(en_reg_n_0),
        .I3(\SEG_OBUF[6]_inst_i_19_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_17_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .O(\SEG_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h01C70C4101040147)) 
    \SEG_OBUF[5]_inst_i_10 
       (.I0(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .I1(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I2(\SEG_OBUF[2]_inst_i_10_n_0 ),
        .I3(\SEG_OBUF[2]_inst_i_11_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I5(\SEG_OBUF[2]_inst_i_12_n_0 ),
        .O(\SEG_OBUF[5]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF7188EF7E71008E7)) 
    \SEG_OBUF[5]_inst_i_4 
       (.I0(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I5(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .O(\SEG_OBUF[5]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCB2CC3CB)) 
    \SEG_OBUF[5]_inst_i_5 
       (.I0(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .O(\SEG_OBUF[5]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF000E000)) 
    \SEG_OBUF[5]_inst_i_6 
       (.I0(\distance_reg_n_0_[6] ),
        .I1(\distance_reg_n_0_[7] ),
        .I2(\distance_reg_n_0_[9] ),
        .I3(\distance_reg_n_0_[8] ),
        .I4(\distance_reg_n_0_[5] ),
        .O(\SEG_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF00FF0FFF01FC0FF)) 
    \SEG_OBUF[5]_inst_i_7 
       (.I0(\distance_reg_n_0_[4] ),
        .I1(\distance_reg_n_0_[6] ),
        .I2(\distance_reg_n_0_[8] ),
        .I3(\distance_reg_n_0_[9] ),
        .I4(\distance_reg_n_0_[7] ),
        .I5(\distance_reg_n_0_[5] ),
        .O(\SEG_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h088A8A08AAAAAAAA)) 
    \SEG_OBUF[5]_inst_i_8 
       (.I0(en_reg_n_0),
        .I1(\SEG_OBUF[6]_inst_i_9_n_0 ),
        .I2(\distance_reg_n_0_[0] ),
        .I3(\distance_reg_n_0_[1] ),
        .I4(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_11_n_0 ),
        .O(\SEG_OBUF[5]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFF0000)) 
    \SEG_OBUF[5]_inst_i_9 
       (.I0(\SEG_OBUF[6]_inst_i_17_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_19_n_0 ),
        .I2(\SEG_OBUF[2]_inst_i_7_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_14_n_0 ),
        .I4(en_reg_n_0),
        .I5(\SEG_OBUF[5]_inst_i_10_n_0 ),
        .O(\SEG_OBUF[5]_inst_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SEG_OBUF[6]_inst_i_10 
       (.I0(\distance_reg_n_0_[1] ),
        .I1(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3A33FB21F3D3DB32)) 
    \SEG_OBUF[6]_inst_i_11 
       (.I0(\SEG_OBUF[6]_inst_i_20_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_21_n_0 ),
        .I2(\distance_reg_n_0_[3] ),
        .I3(\SEG_OBUF[6]_inst_i_22_n_0 ),
        .I4(\distance_reg_n_0_[2] ),
        .I5(\distance_reg_n_0_[1] ),
        .O(\SEG_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h37AD3F8D37AD3F0D)) 
    \SEG_OBUF[6]_inst_i_13 
       (.I0(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I5(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE0000000C0000000)) 
    \SEG_OBUF[6]_inst_i_14 
       (.I0(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h969EE7969E79969E)) 
    \SEG_OBUF[6]_inst_i_15 
       (.I0(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I5(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h007017FC0000FC01)) 
    \SEG_OBUF[6]_inst_i_16 
       (.I0(\distance_reg_n_0_[1] ),
        .I1(\distance_reg_n_0_[2] ),
        .I2(\SEG_OBUF[6]_inst_i_22_n_0 ),
        .I3(\distance_reg_n_0_[3] ),
        .I4(\SEG_OBUF[6]_inst_i_21_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_20_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4992694969492469)) 
    \SEG_OBUF[6]_inst_i_17 
       (.I0(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1008861008611008)) 
    \SEG_OBUF[6]_inst_i_18 
       (.I0(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I5(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hDB2D2DF2)) 
    \SEG_OBUF[6]_inst_i_19 
       (.I0(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_24_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_26_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_27_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h1FE187F8F81F7E87)) 
    \SEG_OBUF[6]_inst_i_20 
       (.I0(\distance_reg_n_0_[4] ),
        .I1(\distance_reg_n_0_[8] ),
        .I2(\distance_reg_n_0_[9] ),
        .I3(\distance_reg_n_0_[7] ),
        .I4(\distance_reg_n_0_[6] ),
        .I5(\distance_reg_n_0_[5] ),
        .O(\SEG_OBUF[6]_inst_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0420184182180420)) 
    \SEG_OBUF[6]_inst_i_21 
       (.I0(\distance_reg_n_0_[4] ),
        .I1(\distance_reg_n_0_[5] ),
        .I2(\distance_reg_n_0_[7] ),
        .I3(\distance_reg_n_0_[9] ),
        .I4(\distance_reg_n_0_[8] ),
        .I5(\distance_reg_n_0_[6] ),
        .O(\SEG_OBUF[6]_inst_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h3973CE9CCE9C73E7)) 
    \SEG_OBUF[6]_inst_i_22 
       (.I0(\distance_reg_n_0_[5] ),
        .I1(\distance_reg_n_0_[6] ),
        .I2(\distance_reg_n_0_[7] ),
        .I3(\distance_reg_n_0_[9] ),
        .I4(\distance_reg_n_0_[8] ),
        .I5(\distance_reg_n_0_[4] ),
        .O(\SEG_OBUF[6]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hCD4C33D3D3CD3433)) 
    \SEG_OBUF[6]_inst_i_23 
       (.I0(\distance_reg_n_0_[4] ),
        .I1(\distance_reg_n_0_[8] ),
        .I2(\distance_reg_n_0_[9] ),
        .I3(\distance_reg_n_0_[7] ),
        .I4(\distance_reg_n_0_[6] ),
        .I5(\distance_reg_n_0_[5] ),
        .O(\SEG_OBUF[6]_inst_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h71CF)) 
    \SEG_OBUF[6]_inst_i_24 
       (.I0(\distance_reg_n_0_[6] ),
        .I1(\distance_reg_n_0_[7] ),
        .I2(\distance_reg_n_0_[9] ),
        .I3(\distance_reg_n_0_[8] ),
        .O(\SEG_OBUF[6]_inst_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hC7C31CC7)) 
    \SEG_OBUF[6]_inst_i_25 
       (.I0(\distance_reg_n_0_[5] ),
        .I1(\distance_reg_n_0_[7] ),
        .I2(\distance_reg_n_0_[9] ),
        .I3(\distance_reg_n_0_[8] ),
        .I4(\distance_reg_n_0_[6] ),
        .O(\SEG_OBUF[6]_inst_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \SEG_OBUF[6]_inst_i_26 
       (.I0(\distance_reg_n_0_[8] ),
        .I1(\distance_reg_n_0_[7] ),
        .I2(\distance_reg_n_0_[9] ),
        .O(\SEG_OBUF[6]_inst_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000017FCFC17)) 
    \SEG_OBUF[6]_inst_i_27 
       (.I0(\distance_reg_n_0_[3] ),
        .I1(\SEG_OBUF[6]_inst_i_23_n_0 ),
        .I2(\distance_reg_n_0_[4] ),
        .I3(\SEG_OBUF[6]_inst_i_25_n_0 ),
        .I4(\distance_reg_n_0_[5] ),
        .I5(\SEG_OBUF[6]_inst_i_21_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h001A)) 
    \SEG_OBUF[6]_inst_i_5 
       (.I0(\SEG_OBUF[6]_inst_i_15_n_0 ),
        .I1(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_17_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_18_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA2AAAAAA)) 
    \SEG_OBUF[6]_inst_i_6 
       (.I0(en_reg_n_0),
        .I1(\SEG_OBUF[6]_inst_i_14_n_0 ),
        .I2(\SEG_OBUF[6]_inst_i_18_n_0 ),
        .I3(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .I4(\SEG_OBUF[6]_inst_i_19_n_0 ),
        .I5(\SEG_OBUF[6]_inst_i_17_n_0 ),
        .O(\SEG_OBUF[6]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \SEG_OBUF[6]_inst_i_9 
       (.I0(\SEG_OBUF[2]_inst_i_6_n_0 ),
        .I1(\distance_reg_n_0_[2] ),
        .I2(\SEG_OBUF[6]_inst_i_16_n_0 ),
        .I3(\distance_reg_n_0_[1] ),
        .O(\SEG_OBUF[6]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[0]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[1]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[2]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[2]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[3]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[3]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[4]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[5]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[5]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[6]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[6]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[6]));
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[7]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[8]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[8]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[8]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \distance[9]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(\state_reg[3] ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \distance[9]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(numMan[9]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(distance0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[0] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[0]),
        .Q(\distance_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[1] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[1]),
        .Q(\distance_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[2] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[2]),
        .Q(\distance_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[3] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[3]),
        .Q(\distance_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[4] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[4]),
        .Q(\distance_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[5] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[5]),
        .Q(\distance_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[6] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[6]),
        .Q(\distance_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[7] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[7]),
        .Q(\distance_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[8] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[8]),
        .Q(\distance_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \distance_reg[9] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(distance0_in[9]),
        .Q(\distance_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4002)) 
    en_i_1
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(en));
  FDRE #(
    .INIT(1'b0)) 
    en_reg
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(en),
        .Q(en_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0A00000000000008)) 
    \mode[14]_i_1 
       (.I0(CPU_RESETN_IBUF),
        .I1(\mode_reg_n_0_[14] ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\mode[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[14] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\mode[14]_i_1_n_0 ),
        .Q(\mode_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[6] 
       (.C(CLKMAIN),
        .CE(\state_reg[3] ),
        .D(\mode_reg[6]_0 ),
        .Q(\mode_reg_n_0_[6] ),
        .R(SR));
endmodule

module multiplexing
   (AN_OBUF,
    SEG_OBUF,
    CLKMAIN,
    CPU_RESETN_IBUF,
    \SEG[6] ,
    \SEG[0] ,
    \SEG[5] ,
    \SEG_OBUF[0]_inst_i_1 ,
    \SEG[3] ,
    \SEG[6]_0 ,
    \SEG_OBUF[6]_inst_i_1 ,
    \SEG[1] ,
    \SEG[2] ,
    \SEG_OBUF[0]_inst_i_1_0 ,
    \SEG_OBUF[0]_inst_i_1_1 ,
    \SEG_OBUF[3]_inst_i_1 ,
    \SEG_OBUF[6]_inst_i_1_0 ,
    \SEG_OBUF[1]_inst_i_1 ,
    \SEG_OBUF[2]_inst_i_1 ,
    \SEG_OBUF[2]_inst_i_1_0 ,
    \SEG_OBUF[1]_inst_i_3 ,
    \SEG_OBUF[1]_inst_i_3_0 ,
    \SEG_OBUF[1]_inst_i_3_1 ,
    \SEG_OBUF[1]_inst_i_3_2 ,
    \SEG_OBUF[2]_inst_i_8 ,
    \SEG_OBUF[5]_inst_i_1 ,
    \SEG_OBUF[4]_inst_i_1 ,
    \SEG_OBUF[4]_inst_i_1_0 ,
    \SEG_OBUF[5]_inst_i_1_0 ,
    \SEG_OBUF[5]_inst_i_1_1 ,
    \SEG_OBUF[6]_inst_i_1_1 ,
    Q,
    \SEG_OBUF[6]_inst_i_1_2 ,
    \SEG_OBUF[6]_inst_i_1_3 ,
    SR);
  output [7:0]AN_OBUF;
  output [6:0]SEG_OBUF;
  input CLKMAIN;
  input CPU_RESETN_IBUF;
  input \SEG[6] ;
  input \SEG[0] ;
  input \SEG[5] ;
  input \SEG_OBUF[0]_inst_i_1 ;
  input \SEG[3] ;
  input \SEG[6]_0 ;
  input \SEG_OBUF[6]_inst_i_1 ;
  input \SEG[1] ;
  input \SEG[2] ;
  input \SEG_OBUF[0]_inst_i_1_0 ;
  input \SEG_OBUF[0]_inst_i_1_1 ;
  input \SEG_OBUF[3]_inst_i_1 ;
  input \SEG_OBUF[6]_inst_i_1_0 ;
  input \SEG_OBUF[1]_inst_i_1 ;
  input \SEG_OBUF[2]_inst_i_1 ;
  input \SEG_OBUF[2]_inst_i_1_0 ;
  input \SEG_OBUF[1]_inst_i_3 ;
  input \SEG_OBUF[1]_inst_i_3_0 ;
  input \SEG_OBUF[1]_inst_i_3_1 ;
  input \SEG_OBUF[1]_inst_i_3_2 ;
  input \SEG_OBUF[2]_inst_i_8 ;
  input \SEG_OBUF[5]_inst_i_1 ;
  input \SEG_OBUF[4]_inst_i_1 ;
  input \SEG_OBUF[4]_inst_i_1_0 ;
  input \SEG_OBUF[5]_inst_i_1_0 ;
  input \SEG_OBUF[5]_inst_i_1_1 ;
  input \SEG_OBUF[6]_inst_i_1_1 ;
  input [0:0]Q;
  input \SEG_OBUF[6]_inst_i_1_2 ;
  input \SEG_OBUF[6]_inst_i_1_3 ;
  input [0:0]SR;

  wire [7:0]AN_OBUF;
  wire CLKMAIN;
  wire CPU_RESETN_IBUF;
  wire [0:0]Q;
  wire \SEG[0] ;
  wire \SEG[1] ;
  wire \SEG[2] ;
  wire \SEG[3] ;
  wire \SEG[5] ;
  wire \SEG[6] ;
  wire \SEG[6]_0 ;
  wire [6:0]SEG_OBUF;
  wire \SEG_OBUF[0]_inst_i_1 ;
  wire \SEG_OBUF[0]_inst_i_1_0 ;
  wire \SEG_OBUF[0]_inst_i_1_1 ;
  wire \SEG_OBUF[1]_inst_i_1 ;
  wire \SEG_OBUF[1]_inst_i_3 ;
  wire \SEG_OBUF[1]_inst_i_3_0 ;
  wire \SEG_OBUF[1]_inst_i_3_1 ;
  wire \SEG_OBUF[1]_inst_i_3_2 ;
  wire \SEG_OBUF[2]_inst_i_1 ;
  wire \SEG_OBUF[2]_inst_i_1_0 ;
  wire \SEG_OBUF[2]_inst_i_8 ;
  wire \SEG_OBUF[3]_inst_i_1 ;
  wire \SEG_OBUF[4]_inst_i_1 ;
  wire \SEG_OBUF[4]_inst_i_1_0 ;
  wire \SEG_OBUF[5]_inst_i_1 ;
  wire \SEG_OBUF[5]_inst_i_1_0 ;
  wire \SEG_OBUF[5]_inst_i_1_1 ;
  wire \SEG_OBUF[6]_inst_i_1 ;
  wire \SEG_OBUF[6]_inst_i_1_0 ;
  wire \SEG_OBUF[6]_inst_i_1_1 ;
  wire \SEG_OBUF[6]_inst_i_1_2 ;
  wire \SEG_OBUF[6]_inst_i_1_3 ;
  wire [0:0]SR;
  wire pulse;

  timer clk_seg
       (.CLKMAIN(CLKMAIN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .pulse(pulse));
  counter_with_inc__parameterized0 counter
       (.AN_OBUF(AN_OBUF),
        .CLKMAIN(CLKMAIN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .Q(Q),
        .\SEG[0] (\SEG[0] ),
        .\SEG[1] (\SEG[1] ),
        .\SEG[2] (\SEG[2] ),
        .\SEG[3] (\SEG[3] ),
        .\SEG[5] (\SEG[5] ),
        .\SEG[6] (\SEG[6] ),
        .\SEG[6]_0 (\SEG[6]_0 ),
        .SEG_OBUF(SEG_OBUF),
        .\SEG_OBUF[0]_inst_i_1_0 (\SEG_OBUF[0]_inst_i_1 ),
        .\SEG_OBUF[0]_inst_i_1_1 (\SEG_OBUF[0]_inst_i_1_0 ),
        .\SEG_OBUF[0]_inst_i_1_2 (\SEG_OBUF[0]_inst_i_1_1 ),
        .\SEG_OBUF[1]_inst_i_1_0 (\SEG_OBUF[1]_inst_i_1 ),
        .\SEG_OBUF[1]_inst_i_3_0 (\SEG_OBUF[1]_inst_i_3 ),
        .\SEG_OBUF[1]_inst_i_3_1 (\SEG_OBUF[1]_inst_i_3_0 ),
        .\SEG_OBUF[1]_inst_i_3_2 (\SEG_OBUF[1]_inst_i_3_1 ),
        .\SEG_OBUF[1]_inst_i_3_3 (\SEG_OBUF[1]_inst_i_3_2 ),
        .\SEG_OBUF[2]_inst_i_1_0 (\SEG_OBUF[2]_inst_i_1 ),
        .\SEG_OBUF[2]_inst_i_1_1 (\SEG_OBUF[2]_inst_i_1_0 ),
        .\SEG_OBUF[2]_inst_i_8_0 (\SEG_OBUF[2]_inst_i_8 ),
        .\SEG_OBUF[3]_inst_i_1_0 (\SEG_OBUF[3]_inst_i_1 ),
        .\SEG_OBUF[4]_inst_i_1_0 (\SEG_OBUF[4]_inst_i_1 ),
        .\SEG_OBUF[4]_inst_i_1_1 (\SEG_OBUF[4]_inst_i_1_0 ),
        .\SEG_OBUF[5]_inst_i_1_0 (\SEG_OBUF[5]_inst_i_1 ),
        .\SEG_OBUF[5]_inst_i_1_1 (\SEG_OBUF[5]_inst_i_1_0 ),
        .\SEG_OBUF[5]_inst_i_1_2 (\SEG_OBUF[5]_inst_i_1_1 ),
        .\SEG_OBUF[6]_inst_i_1_0 (\SEG_OBUF[6]_inst_i_1 ),
        .\SEG_OBUF[6]_inst_i_1_1 (\SEG_OBUF[6]_inst_i_1_0 ),
        .\SEG_OBUF[6]_inst_i_1_2 (\SEG_OBUF[6]_inst_i_1_1 ),
        .\SEG_OBUF[6]_inst_i_1_3 (\SEG_OBUF[6]_inst_i_1_2 ),
        .\SEG_OBUF[6]_inst_i_1_4 (\SEG_OBUF[6]_inst_i_1_3 ),
        .SR(SR),
        .pulse(pulse));
endmodule

module timer
   (pulse,
    CLKMAIN,
    CPU_RESETN_IBUF);
  output pulse;
  input CLKMAIN;
  input CPU_RESETN_IBUF;

  wire CLKMAIN;
  wire CPU_RESETN_IBUF;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[2]_i_3_n_0 ;
  wire \count[2]_i_4_n_0 ;
  wire \count[2]_i_5_n_0 ;
  wire [16:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire pulse;
  wire [2:0]\NLW_count_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hB)) 
    \count[0]_i_1 
       (.I0(pulse),
        .I1(CPU_RESETN_IBUF),
        .O(\count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \count[2]_i_2 
       (.I0(\count[2]_i_3_n_0 ),
        .I1(\count[2]_i_4_n_0 ),
        .I2(\count[2]_i_5_n_0 ),
        .I3(count_reg[16]),
        .I4(count_reg[14]),
        .I5(count_reg[9]),
        .O(pulse));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count[2]_i_3 
       (.I0(count_reg[15]),
        .I1(count_reg[2]),
        .I2(count_reg[13]),
        .I3(count_reg[11]),
        .I4(count_reg[8]),
        .I5(count_reg[10]),
        .O(\count[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[2]_i_4 
       (.I0(count_reg[7]),
        .I1(count_reg[1]),
        .I2(count_reg[5]),
        .I3(count_reg[4]),
        .O(\count[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \count[2]_i_5 
       (.I0(count_reg[6]),
        .I1(count_reg[12]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .O(\count[2]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\NLW_count_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [3:1],\count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1_n_0 ));
endmodule

module uart_basic
   (rx_ready,
    E,
    addr_inc,
    D,
    \rx_data_reg[7] ,
    CLKMAIN,
    \state_reg[0] ,
    addr,
    mode,
    Q,
    SR,
    \in_sync_sr_reg[1] ,
    CPU_RESETN_IBUF);
  output rx_ready;
  output [0:0]E;
  output addr_inc;
  output [3:0]D;
  output [7:0]\rx_data_reg[7] ;
  input CLKMAIN;
  input \state_reg[0] ;
  input [1:0]addr;
  input [0:0]mode;
  input [3:0]Q;
  input [0:0]SR;
  input [0:0]\in_sync_sr_reg[1] ;
  input CPU_RESETN_IBUF;

  wire CLKMAIN;
  wire CPU_RESETN_IBUF;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [1:0]addr;
  wire addr_inc;
  wire baud8_tick;
  wire [0:0]\in_sync_sr_reg[1] ;
  wire [0:0]mode;
  wire [7:0]\rx_data_reg[7] ;
  wire rx_ready;
  wire rx_ready_pre;
  wire rx_ready_sync;
  wire \state_reg[0] ;
  wire uart_rx_blk_n_12;

  uart_baud_tick_gen baud8_tick_blk
       (.CLKMAIN(CLKMAIN),
        .out(baud8_tick));
  LUT5 #(
    .INIT(32'h00000208)) 
    \count[1]_i_3 
       (.I0(rx_ready),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(addr_inc));
  FDRE #(
    .INIT(1'b0)) 
    rx_ready_reg
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(uart_rx_blk_n_12),
        .Q(rx_ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_ready_sync_reg
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(rx_ready_pre),
        .Q(rx_ready_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4444444)) 
    \state[3]_i_1 
       (.I0(\state_reg[0] ),
        .I1(rx_ready),
        .I2(addr_inc),
        .I3(addr[1]),
        .I4(addr[0]),
        .I5(mode),
        .O(E));
  uart_rx uart_rx_blk
       (.CLKMAIN(CLKMAIN),
        .CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .D(D),
        .\FSM_sequential_state_reg[0]_0 (uart_rx_blk_n_12),
        .Q(\rx_data_reg[7] ),
        .SR(SR),
        .\in_sync_sr_reg[1] (\in_sync_sr_reg[1] ),
        .out(baud8_tick),
        .rx_ready_pre(rx_ready_pre),
        .rx_ready_sync(rx_ready_sync),
        .\state_reg[3] (\state_reg[0] ),
        .\state_reg[3]_0 (rx_ready));
endmodule

module uart_baud_tick_gen
   (out,
    CLKMAIN);
  output [0:0]out;
  input CLKMAIN;

  wire CLKMAIN;
  (* RTL_KEEP = "true" *) wire [18:0]acc;
  wire \acc[10]_i_2_n_0 ;
  wire \acc[14]_i_2_n_0 ;
  wire \acc[6]_i_2_n_0 ;
  wire \acc[6]_i_3_n_0 ;
  wire \acc[6]_i_4_n_0 ;
  wire \acc_reg[10]_i_1_n_0 ;
  wire \acc_reg[14]_i_1_n_0 ;
  wire \acc_reg[6]_i_1_n_0 ;
  wire [18:3]p_1_in;
  wire [2:0]\NLW_acc_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[18]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_acc_reg[18]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[6]_i_1_CO_UNCONNECTED ;

  assign out[0] = acc[18];
  LUT1 #(
    .INIT(2'h1)) 
    \acc[10]_i_2 
       (.I0(acc[8]),
        .O(\acc[10]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[14]_i_2 
       (.I0(acc[11]),
        .O(\acc[14]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[6]_i_2 
       (.I0(acc[6]),
        .O(\acc[6]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[6]_i_3 
       (.I0(acc[5]),
        .O(\acc[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \acc[6]_i_4 
       (.I0(acc[4]),
        .O(\acc[6]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[10] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(acc[10]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \acc_reg[10]_i_1 
       (.CI(\acc_reg[6]_i_1_n_0 ),
        .CO({\acc_reg[10]_i_1_n_0 ,\NLW_acc_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,acc[8],1'b0}),
        .O(p_1_in[10:7]),
        .S({acc[10:9],\acc[10]_i_2_n_0 ,acc[7]}));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[11] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(acc[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[12] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(acc[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[13] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(acc[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[14] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(acc[14]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \acc_reg[14]_i_1 
       (.CI(\acc_reg[10]_i_1_n_0 ),
        .CO({\acc_reg[14]_i_1_n_0 ,\NLW_acc_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,acc[11]}),
        .O(p_1_in[14:11]),
        .S({acc[14:12],\acc[14]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[15] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(acc[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[16] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(acc[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[17] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(acc[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[18] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(acc[18]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \acc_reg[18]_i_1 
       (.CI(\acc_reg[14]_i_1_n_0 ),
        .CO({p_1_in[18],\NLW_acc_reg[18]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_reg[18]_i_1_O_UNCONNECTED [3],p_1_in[17:15]}),
        .S({1'b1,acc[17:15]}));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(acc[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(acc[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[5] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(acc[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[6] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(acc[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \acc_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\acc_reg[6]_i_1_n_0 ,\NLW_acc_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({acc[6:4],1'b0}),
        .O(p_1_in[6:3]),
        .S({\acc[6]_i_2_n_0 ,\acc[6]_i_3_n_0 ,\acc[6]_i_4_n_0 ,acc[3]}));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[7] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(acc[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[8] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(acc[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[9] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(acc[9]),
        .R(1'b0));
endmodule

module uart_rx
   (D,
    Q,
    \FSM_sequential_state_reg[0]_0 ,
    rx_ready_pre,
    CLKMAIN,
    \state_reg[3] ,
    \state_reg[3]_0 ,
    SR,
    \in_sync_sr_reg[1] ,
    out,
    CPU_RESETN_IBUF,
    rx_ready_sync);
  output [3:0]D;
  output [7:0]Q;
  output \FSM_sequential_state_reg[0]_0 ;
  output rx_ready_pre;
  input CLKMAIN;
  input \state_reg[3] ;
  input \state_reg[3]_0 ;
  input [0:0]SR;
  input [0:0]\in_sync_sr_reg[1] ;
  input [0:0]out;
  input CPU_RESETN_IBUF;
  input rx_ready_sync;

  wire CLKMAIN;
  wire CPU_RESETN_IBUF;
  wire [3:0]D;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire bit_counter;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire [0:0]\in_sync_sr_reg[1] ;
  wire next_bit__1;
  wire [0:0]out;
  wire rx_bit;
  wire \rx_data[7]_i_1_n_0 ;
  wire rx_ready_pre;
  wire rx_ready_sync;
  wire rx_sync_inst_n_1;
  wire rx_sync_inst_n_2;
  wire rx_sync_inst_n_3;
  wire [2:0]spacing_counter;
  wire \spacing_counter[0]_i_1_n_0 ;
  wire \spacing_counter[1]_i_1_n_0 ;
  wire \spacing_counter[2]_i_1_n_0 ;
  wire \spacing_counter[2]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire [2:0]state__0;
  wire \state_reg[3] ;
  wire \state_reg[3]_0 ;

  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[2] ),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "RX_START:001,RX_STOP:011,RX_READY:100,RX_IDLE:000,RX_RECV:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(rx_sync_inst_n_3),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "RX_START:001,RX_STOP:011,RX_READY:100,RX_IDLE:000,RX_RECV:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(rx_sync_inst_n_2),
        .Q(state__0[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "RX_START:001,RX_STOP:011,RX_READY:100,RX_IDLE:000,RX_RECV:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(rx_sync_inst_n_1),
        .Q(state__0[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFDFDFFFD02000000)) 
    \bit_counter[0]_i_1 
       (.I0(out),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(next_bit__1),
        .I5(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \bit_counter[1]_i_1 
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(bit_counter),
        .I3(\bit_counter_reg_n_0_[1] ),
        .O(\bit_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \bit_counter[2]_i_1 
       (.I0(\bit_counter_reg_n_0_[1] ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(state__0[1]),
        .I3(bit_counter),
        .I4(\bit_counter_reg_n_0_[2] ),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020002)) 
    \bit_counter[2]_i_2 
       (.I0(out),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(next_bit__1),
        .O(bit_counter));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[0] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[1] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bit_counter_reg[2] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00200000)) 
    \rx_data[7]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(out),
        .I3(state__0[0]),
        .I4(next_bit__1),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \rx_data[7]_i_2 
       (.I0(spacing_counter[1]),
        .I1(spacing_counter[2]),
        .I2(spacing_counter[0]),
        .O(next_bit__1));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLKMAIN),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(Q[1]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLKMAIN),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(Q[2]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLKMAIN),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(Q[3]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLKMAIN),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(Q[4]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLKMAIN),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(Q[5]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLKMAIN),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(Q[6]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLKMAIN),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(Q[7]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLKMAIN),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(rx_bit),
        .Q(Q[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    rx_ready_i_1
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(rx_ready_sync),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    rx_ready_sync_i_1
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(rx_ready_pre));
  data_sync rx_sync_inst
       (.CLKMAIN(CLKMAIN),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state[2]_i_5_n_0 ),
        .\FSM_sequential_state_reg[1] (rx_sync_inst_n_1),
        .\FSM_sequential_state_reg[2] (rx_sync_inst_n_2),
        .\FSM_sequential_state_reg[2]_0 (rx_sync_inst_n_3),
        .\in_sync_sr_reg[1]_0 (\in_sync_sr_reg[1] ),
        .next_bit__1(next_bit__1),
        .out(out),
        .rx_bit(rx_bit),
        .state__0(state__0));
  LUT6 #(
    .INIT(64'h6666666200000000)) 
    \spacing_counter[0]_i_1 
       (.I0(spacing_counter[0]),
        .I1(out),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(CPU_RESETN_IBUF),
        .O(\spacing_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6A220000)) 
    \spacing_counter[1]_i_1 
       (.I0(spacing_counter[1]),
        .I1(out),
        .I2(spacing_counter[0]),
        .I3(\spacing_counter[2]_i_2_n_0 ),
        .I4(CPU_RESETN_IBUF),
        .O(\spacing_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA222200000000)) 
    \spacing_counter[2]_i_1 
       (.I0(spacing_counter[2]),
        .I1(out),
        .I2(spacing_counter[1]),
        .I3(spacing_counter[0]),
        .I4(\spacing_counter[2]_i_2_n_0 ),
        .I5(CPU_RESETN_IBUF),
        .O(\spacing_counter[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \spacing_counter[2]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(\spacing_counter[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spacing_counter_reg[0] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\spacing_counter[0]_i_1_n_0 ),
        .Q(spacing_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spacing_counter_reg[1] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\spacing_counter[1]_i_1_n_0 ),
        .Q(spacing_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spacing_counter_reg[2] 
       (.C(CLKMAIN),
        .CE(1'b1),
        .D(\spacing_counter[2]_i_1_n_0 ),
        .Q(spacing_counter[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00022A00)) 
    \state[0]_i_1 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00202060)) 
    \state[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(\state[3]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h01700000)) 
    \state[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\state[3]_i_3_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \state[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\state[3]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \state[3]_i_3 
       (.I0(\state_reg[3] ),
        .I1(\state_reg[3]_0 ),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\state[3]_i_3_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
