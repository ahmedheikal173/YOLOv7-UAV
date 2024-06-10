//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Thu May 30 19:51:07 2024
//Host        : DESKTOP-KVLS732 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 done" *) output ap_ctrl_0_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 idle" *) output ap_ctrl_0_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 ready" *) output ap_ctrl_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 start" *) input ap_ctrl_0_start;
  output ap_local_block_0;
  output ap_local_deadlock_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.EXT_RESET_IN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.EXT_RESET_IN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ext_reset_in_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAGE_R_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAGE_R_ADDRESS0_0, LAYERED_METADATA undef" *) output [20:0]image_r_address0_0;
  output image_r_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IMAGE_R_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IMAGE_R_Q0_0, LAYERED_METADATA undef" *) input [7:0]image_r_q0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OUTPUT_CONV_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OUTPUT_CONV_ADDRESS0_0, LAYERED_METADATA undef" *) output [23:0]output_conv_address0_0;
  output output_conv_ce0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OUTPUT_CONV_D0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OUTPUT_CONV_D0_0, LAYERED_METADATA undef" *) output [7:0]output_conv_d0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OUTPUT_CONV_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OUTPUT_CONV_Q0_0, LAYERED_METADATA undef" *) input [7:0]output_conv_q0_0;
  output output_conv_we0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WEIGHTS_ADDRESS0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WEIGHTS_ADDRESS0_0, LAYERED_METADATA undef" *) output [9:0]weights_address0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WEIGHTS_ADDRESS1_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WEIGHTS_ADDRESS1_0, LAYERED_METADATA undef" *) output [9:0]weights_address1_0;
  output weights_ce0_0;
  output weights_ce1_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WEIGHTS_Q0_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WEIGHTS_Q0_0, LAYERED_METADATA undef" *) input [7:0]weights_q0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WEIGHTS_Q1_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WEIGHTS_Q1_0, LAYERED_METADATA undef" *) input [7:0]weights_q1_0;

  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_clk_out2;
  wire conv_ref_0_ap_local_block;
  wire conv_ref_0_ap_local_deadlock;
  wire [20:0]conv_ref_0_image_r_address0;
  wire conv_ref_0_image_r_ce0;
  wire [23:0]conv_ref_0_output_conv_address0;
  wire conv_ref_0_output_conv_ce0;
  wire [7:0]conv_ref_0_output_conv_d0;
  wire conv_ref_0_output_conv_we0;
  wire [9:0]conv_ref_0_weights_address0;
  wire [9:0]conv_ref_0_weights_address1;
  wire conv_ref_0_weights_ce0;
  wire conv_ref_0_weights_ce1;
  wire ext_reset_in_0_1;
  wire [7:0]image_r_q0_0_1;
  wire [7:0]output_conv_q0_0_1;
  wire proc_sys_reset_0_mb_reset;
  wire [7:0]weights_q0_0_1;
  wire [7:0]weights_q1_0_1;

  assign ap_ctrl_0_1_start = ap_ctrl_0_start;
  assign ap_ctrl_0_done = ap_ctrl_0_1_done;
  assign ap_ctrl_0_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_0_ready = ap_ctrl_0_1_ready;
  assign ap_local_block_0 = conv_ref_0_ap_local_block;
  assign ap_local_deadlock_0 = conv_ref_0_ap_local_deadlock;
  assign clk_in1_0_1 = clk_in1_0;
  assign ext_reset_in_0_1 = ext_reset_in_0;
  assign image_r_address0_0[20:0] = conv_ref_0_image_r_address0;
  assign image_r_ce0_0 = conv_ref_0_image_r_ce0;
  assign image_r_q0_0_1 = image_r_q0_0[7:0];
  assign output_conv_address0_0[23:0] = conv_ref_0_output_conv_address0;
  assign output_conv_ce0_0 = conv_ref_0_output_conv_ce0;
  assign output_conv_d0_0[7:0] = conv_ref_0_output_conv_d0;
  assign output_conv_q0_0_1 = output_conv_q0_0[7:0];
  assign output_conv_we0_0 = conv_ref_0_output_conv_we0;
  assign weights_address0_0[9:0] = conv_ref_0_weights_address0;
  assign weights_address1_0[9:0] = conv_ref_0_weights_address1;
  assign weights_ce0_0 = conv_ref_0_weights_ce0;
  assign weights_ce1_0 = conv_ref_0_weights_ce1;
  assign weights_q0_0_1 = weights_q0_0[7:0];
  assign weights_q1_0_1 = weights_q1_0[7:0];
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .clk_out2(clk_wiz_0_clk_out2));
  design_1_conv_ref_0_0 conv_ref_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_local_block(conv_ref_0_ap_local_block),
        .ap_local_deadlock(conv_ref_0_ap_local_deadlock),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(proc_sys_reset_0_mb_reset),
        .ap_start(ap_ctrl_0_1_start),
        .image_r_address0(conv_ref_0_image_r_address0),
        .image_r_ce0(conv_ref_0_image_r_ce0),
        .image_r_q0(image_r_q0_0_1),
        .output_conv_address0(conv_ref_0_output_conv_address0),
        .output_conv_ce0(conv_ref_0_output_conv_ce0),
        .output_conv_d0(conv_ref_0_output_conv_d0),
        .output_conv_q0(output_conv_q0_0_1),
        .output_conv_we0(conv_ref_0_output_conv_we0),
        .weights_address0(conv_ref_0_weights_address0),
        .weights_address1(conv_ref_0_weights_address1),
        .weights_ce0(conv_ref_0_weights_ce0),
        .weights_ce1(conv_ref_0_weights_ce1),
        .weights_q0(weights_q0_0_1),
        .weights_q1(weights_q1_0_1));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .slowest_sync_clk(clk_wiz_0_clk_out2));
endmodule
