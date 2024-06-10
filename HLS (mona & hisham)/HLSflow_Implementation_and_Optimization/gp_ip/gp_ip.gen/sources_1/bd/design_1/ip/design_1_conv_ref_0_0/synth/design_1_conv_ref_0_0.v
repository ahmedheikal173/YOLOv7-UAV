// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:conv_ref:1.0
// IP Revision: 2113560824

(* X_CORE_INFO = "conv_ref,Vivado 2021.2" *)
(* CHECK_LICENSE_TYPE = "design_1_conv_ref_0_0,conv_ref,{}" *)
(* CORE_GENERATION_INFO = "design_1_conv_ref_0_0,conv_ref,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=conv_ref,x_ipVersion=1.0,x_ipCoreRevision=2113560824,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_conv_ref_0_0 (
  ap_local_block,
  ap_local_deadlock,
  image_r_ce0,
  weights_ce0,
  weights_ce1,
  output_conv_ce0,
  output_conv_we0,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  image_r_address0,
  image_r_q0,
  weights_address0,
  weights_q0,
  weights_address1,
  weights_q1,
  output_conv_address0,
  output_conv_d0,
  output_conv_q0
);

output wire ap_local_block;
output wire ap_local_deadlock;
output wire image_r_ce0;
output wire weights_ce0;
output wire weights_ce1;
output wire output_conv_ce0;
output wire output_conv_we0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME image_r_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 image_r_address0 DATA" *)
output wire [20 : 0] image_r_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME image_r_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 image_r_q0 DATA" *)
input wire [7 : 0] image_r_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights_address0 DATA" *)
output wire [9 : 0] weights_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights_q0 DATA" *)
input wire [7 : 0] weights_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights_address1 DATA" *)
output wire [9 : 0] weights_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights_q1 DATA" *)
input wire [7 : 0] weights_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME output_conv_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 output_conv_address0 DATA" *)
output wire [23 : 0] output_conv_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME output_conv_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 output_conv_d0 DATA" *)
output wire [7 : 0] output_conv_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME output_conv_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 output_conv_q0 DATA" *)
input wire [7 : 0] output_conv_q0;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  conv_ref inst (
    .ap_local_block(ap_local_block),
    .ap_local_deadlock(ap_local_deadlock),
    .image_r_ce0(image_r_ce0),
    .weights_ce0(weights_ce0),
    .weights_ce1(weights_ce1),
    .output_conv_ce0(output_conv_ce0),
    .output_conv_we0(output_conv_we0),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .image_r_address0(image_r_address0),
    .image_r_q0(image_r_q0),
    .weights_address0(weights_address0),
    .weights_q0(weights_q0),
    .weights_address1(weights_address1),
    .weights_q1(weights_q1),
    .output_conv_address0(output_conv_address0),
    .output_conv_d0(output_conv_d0),
    .output_conv_q0(output_conv_q0)
  );
endmodule
