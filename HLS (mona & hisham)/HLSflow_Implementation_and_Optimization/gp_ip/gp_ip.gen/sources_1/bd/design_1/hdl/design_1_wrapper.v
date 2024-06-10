//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Thu May 30 19:51:07 2024
//Host        : DESKTOP-KVLS732 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ap_ctrl_0_done,
    ap_ctrl_0_idle,
    ap_ctrl_0_ready,
    ap_ctrl_0_start,
    ap_local_block_0,
    ap_local_deadlock_0,
    clk_in1_0,
    ext_reset_in_0,
    image_r_address0_0,
    image_r_ce0_0,
    image_r_q0_0,
    output_conv_address0_0,
    output_conv_ce0_0,
    output_conv_d0_0,
    output_conv_q0_0,
    output_conv_we0_0,
    weights_address0_0,
    weights_address1_0,
    weights_ce0_0,
    weights_ce1_0,
    weights_q0_0,
    weights_q1_0);
  output ap_ctrl_0_done;
  output ap_ctrl_0_idle;
  output ap_ctrl_0_ready;
  input ap_ctrl_0_start;
  output ap_local_block_0;
  output ap_local_deadlock_0;
  input clk_in1_0;
  input ext_reset_in_0;
  output [20:0]image_r_address0_0;
  output image_r_ce0_0;
  input [7:0]image_r_q0_0;
  output [23:0]output_conv_address0_0;
  output output_conv_ce0_0;
  output [7:0]output_conv_d0_0;
  input [7:0]output_conv_q0_0;
  output output_conv_we0_0;
  output [9:0]weights_address0_0;
  output [9:0]weights_address1_0;
  output weights_ce0_0;
  output weights_ce1_0;
  input [7:0]weights_q0_0;
  input [7:0]weights_q1_0;

  wire ap_ctrl_0_done;
  wire ap_ctrl_0_idle;
  wire ap_ctrl_0_ready;
  wire ap_ctrl_0_start;
  wire ap_local_block_0;
  wire ap_local_deadlock_0;
  wire clk_in1_0;
  wire ext_reset_in_0;
  wire [20:0]image_r_address0_0;
  wire image_r_ce0_0;
  wire [7:0]image_r_q0_0;
  wire [23:0]output_conv_address0_0;
  wire output_conv_ce0_0;
  wire [7:0]output_conv_d0_0;
  wire [7:0]output_conv_q0_0;
  wire output_conv_we0_0;
  wire [9:0]weights_address0_0;
  wire [9:0]weights_address1_0;
  wire weights_ce0_0;
  wire weights_ce1_0;
  wire [7:0]weights_q0_0;
  wire [7:0]weights_q1_0;

  design_1 design_1_i
       (.ap_ctrl_0_done(ap_ctrl_0_done),
        .ap_ctrl_0_idle(ap_ctrl_0_idle),
        .ap_ctrl_0_ready(ap_ctrl_0_ready),
        .ap_ctrl_0_start(ap_ctrl_0_start),
        .ap_local_block_0(ap_local_block_0),
        .ap_local_deadlock_0(ap_local_deadlock_0),
        .clk_in1_0(clk_in1_0),
        .ext_reset_in_0(ext_reset_in_0),
        .image_r_address0_0(image_r_address0_0),
        .image_r_ce0_0(image_r_ce0_0),
        .image_r_q0_0(image_r_q0_0),
        .output_conv_address0_0(output_conv_address0_0),
        .output_conv_ce0_0(output_conv_ce0_0),
        .output_conv_d0_0(output_conv_d0_0),
        .output_conv_q0_0(output_conv_q0_0),
        .output_conv_we0_0(output_conv_we0_0),
        .weights_address0_0(weights_address0_0),
        .weights_address1_0(weights_address1_0),
        .weights_ce0_0(weights_ce0_0),
        .weights_ce1_0(weights_ce1_0),
        .weights_q0_0(weights_q0_0),
        .weights_q1_0(weights_q1_0));
endmodule
