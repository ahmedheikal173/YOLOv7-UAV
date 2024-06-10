// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu May 30 19:55:55 2024
// Host        : DESKTOP-KVLS732 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/verilog/trials/gp_ip/gp_ip.gen/sources_1/bd/design_1/ip/design_1_conv_ref_0_0/design_1_conv_ref_0_0_stub.v
// Design      : design_1_conv_ref_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "conv_ref,Vivado 2021.2" *)
module design_1_conv_ref_0_0(ap_local_block, ap_local_deadlock, 
  image_r_ce0, weights_ce0, weights_ce1, output_conv_ce0, output_conv_we0, ap_clk, ap_rst, 
  ap_start, ap_done, ap_idle, ap_ready, image_r_address0, image_r_q0, weights_address0, 
  weights_q0, weights_address1, weights_q1, output_conv_address0, output_conv_d0, 
  output_conv_q0)
/* synthesis syn_black_box black_box_pad_pin="ap_local_block,ap_local_deadlock,image_r_ce0,weights_ce0,weights_ce1,output_conv_ce0,output_conv_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,image_r_address0[20:0],image_r_q0[7:0],weights_address0[9:0],weights_q0[7:0],weights_address1[9:0],weights_q1[7:0],output_conv_address0[23:0],output_conv_d0[7:0],output_conv_q0[7:0]" */;
  output ap_local_block;
  output ap_local_deadlock;
  output image_r_ce0;
  output weights_ce0;
  output weights_ce1;
  output output_conv_ce0;
  output output_conv_we0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [20:0]image_r_address0;
  input [7:0]image_r_q0;
  output [9:0]weights_address0;
  input [7:0]weights_q0;
  output [9:0]weights_address1;
  input [7:0]weights_q1;
  output [23:0]output_conv_address0;
  output [7:0]output_conv_d0;
  input [7:0]output_conv_q0;
endmodule
