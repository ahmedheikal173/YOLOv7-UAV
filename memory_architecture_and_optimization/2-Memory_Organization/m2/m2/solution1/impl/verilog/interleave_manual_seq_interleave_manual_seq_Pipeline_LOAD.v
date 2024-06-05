// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module interleave_manual_seq_interleave_manual_seq_Pipeline_LOAD (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_idx_V_load,
        x_sel_V_load,
        x_in_Addr_A,
        x_in_EN_A,
        x_in_WEN_A,
        x_in_Din_A,
        x_in_Dout_A,
        x_idx_V_flag_0_out,
        x_idx_V_flag_0_out_ap_vld,
        x_idx_V_new_0_out,
        x_idx_V_new_0_out_ap_vld,
        t_V_out,
        t_V_out_ap_vld,
        x_x0_V_address0,
        x_x0_V_ce0,
        x_x0_V_we0,
        x_x0_V_d0,
        x_x1_V_address0,
        x_x1_V_ce0,
        x_x1_V_we0,
        x_x1_V_d0,
        x_x2_V_address0,
        x_x2_V_ce0,
        x_x2_V_we0,
        x_x2_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [20:0] x_idx_V_load;
input  [1:0] x_sel_V_load;
output  [31:0] x_in_Addr_A;
output   x_in_EN_A;
output  [0:0] x_in_WEN_A;
output  [7:0] x_in_Din_A;
input  [7:0] x_in_Dout_A;
output  [0:0] x_idx_V_flag_0_out;
output   x_idx_V_flag_0_out_ap_vld;
output  [20:0] x_idx_V_new_0_out;
output   x_idx_V_new_0_out_ap_vld;
output  [1:0] t_V_out;
output   t_V_out_ap_vld;
output  [18:0] x_x0_V_address0;
output   x_x0_V_ce0;
output   x_x0_V_we0;
output  [7:0] x_x0_V_d0;
output  [18:0] x_x1_V_address0;
output   x_x1_V_ce0;
output   x_x1_V_we0;
output  [7:0] x_x1_V_d0;
output  [18:0] x_x2_V_address0;
output   x_x2_V_ce0;
output   x_x2_V_we0;
output  [7:0] x_x2_V_d0;

reg ap_idle;
reg x_in_EN_A;
reg x_idx_V_flag_0_out_ap_vld;
reg x_idx_V_new_0_out_ap_vld;
reg t_V_out_ap_vld;
reg x_x0_V_ce0;
reg x_x0_V_we0;
reg x_x1_V_ce0;
reg x_x1_V_we0;
reg x_x2_V_ce0;
reg x_x2_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln20_fu_218_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [20:0] reg_191;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] t_V_load_load_fu_230_p1;
reg   [1:0] t_V_load_reg_410;
wire   [0:0] icmp_ln1064_fu_268_p2;
reg   [0:0] icmp_ln1064_reg_419;
wire   [63:0] zext_ln587_fu_233_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln587_3_fu_311_p1;
wire   [63:0] zext_ln587_2_fu_316_p1;
wire   [63:0] zext_ln587_1_fu_321_p1;
reg   [20:0] i_V_fu_80;
wire   [20:0] i_fu_224_p2;
wire    ap_loop_init;
reg   [1:0] t_V_fu_84;
wire   [1:0] select_ln26_fu_288_p3;
reg   [20:0] t_V_1_fu_88;
wire   [20:0] add_ln885_1_fu_244_p2;
wire   [20:0] select_ln25_1_fu_274_p3;
reg   [20:0] ap_sig_allocacmp_t_V_1_load_3;
reg   [20:0] x_idx_V_new_0_fu_92;
wire   [20:0] select_ln25_fu_337_p3;
reg   [0:0] x_idx_V_flag_0_fu_96;
wire   [0:0] or_ln25_fu_332_p2;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] x_in_Addr_A_orig;
wire   [1:0] add_ln885_fu_238_p2;
wire   [0:0] icmp_ln1064_1_fu_282_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_293;
reg    ap_condition_296;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

interleave_manual_seq_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_V_fu_80 <= 21'd0;
        end else if (((icmp_ln20_fu_218_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_V_fu_80 <= i_fu_224_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            t_V_1_fu_88 <= x_idx_V_load;
        end else if (((icmp_ln20_fu_218_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            t_V_1_fu_88 <= select_ln25_1_fu_274_p3;
        end else if ((1'b1 == ap_condition_293)) begin
            t_V_1_fu_88 <= add_ln885_1_fu_244_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            t_V_fu_84 <= x_sel_V_load;
        end else if (((icmp_ln20_fu_218_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            t_V_fu_84 <= select_ln26_fu_288_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            x_idx_V_flag_0_fu_96 <= 1'd0;
        end else if ((1'b1 == ap_condition_296)) begin
            x_idx_V_flag_0_fu_96 <= 1'd1;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            x_idx_V_flag_0_fu_96 <= or_ln25_fu_332_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if ((1'b1 == ap_condition_296)) begin
            x_idx_V_new_0_fu_92 <= add_ln885_1_fu_244_p2;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            x_idx_V_new_0_fu_92 <= select_ln25_fu_337_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln20_fu_218_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1064_reg_419 <= icmp_ln1064_fu_268_p2;
        t_V_load_reg_410 <= t_V_fu_84;
    end
end

always @ (posedge ap_clk) begin
    if ((((t_V_load_load_fu_230_p1 == 2'd2) & (icmp_ln20_fu_218_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((t_V_load_load_fu_230_p1 == 2'd0) & (icmp_ln20_fu_218_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((t_V_load_load_fu_230_p1 == 2'd1) & (icmp_ln20_fu_218_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_191 <= t_V_1_fu_88;
    end
end

always @ (*) begin
    if (((icmp_ln20_fu_218_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((t_V_load_load_fu_230_p1 == 2'd2) & (icmp_ln20_fu_218_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_t_V_1_load_3 = add_ln885_1_fu_244_p2;
    end else begin
        ap_sig_allocacmp_t_V_1_load_3 = t_V_1_fu_88;
    end
end

always @ (*) begin
    if (((icmp_ln20_fu_218_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_V_out_ap_vld = 1'b1;
    end else begin
        t_V_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln20_fu_218_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_idx_V_flag_0_out_ap_vld = 1'b1;
    end else begin
        x_idx_V_flag_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln20_fu_218_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_idx_V_new_0_out_ap_vld = 1'b1;
    end else begin
        x_idx_V_new_0_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_in_EN_A = 1'b1;
    end else begin
        x_in_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        x_x0_V_ce0 = 1'b1;
    end else begin
        x_x0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (t_V_load_reg_410 == 2'd0))) begin
        x_x0_V_we0 = 1'b1;
    end else begin
        x_x0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        x_x1_V_ce0 = 1'b1;
    end else begin
        x_x1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (t_V_load_reg_410 == 2'd1))) begin
        x_x1_V_we0 = 1'b1;
    end else begin
        x_x1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        x_x2_V_ce0 = 1'b1;
    end else begin
        x_x2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (t_V_load_reg_410 == 2'd2))) begin
        x_x2_V_we0 = 1'b1;
    end else begin
        x_x2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln885_1_fu_244_p2 = (t_V_1_fu_88 + 21'd1);

assign add_ln885_fu_238_p2 = (t_V_fu_84 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_293 = ((t_V_load_load_fu_230_p1 == 2'd2) & (icmp_ln20_fu_218_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_296 = ((t_V_load_load_fu_230_p1 == 2'd2) & (icmp_ln20_fu_218_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign i_fu_224_p2 = (i_V_fu_80 + 21'd1);

assign icmp_ln1064_1_fu_282_p2 = ((add_ln885_fu_238_p2 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln1064_fu_268_p2 = ((ap_sig_allocacmp_t_V_1_load_3 == 21'd409600) ? 1'b1 : 1'b0);

assign icmp_ln20_fu_218_p2 = ((i_V_fu_80 == 21'd1228800) ? 1'b1 : 1'b0);

assign or_ln25_fu_332_p2 = (x_idx_V_flag_0_fu_96 | icmp_ln1064_reg_419);

assign select_ln25_1_fu_274_p3 = ((icmp_ln1064_fu_268_p2[0:0] == 1'b1) ? 21'd0 : ap_sig_allocacmp_t_V_1_load_3);

assign select_ln25_fu_337_p3 = ((icmp_ln1064_reg_419[0:0] == 1'b1) ? 21'd0 : x_idx_V_new_0_fu_92);

assign select_ln26_fu_288_p3 = ((icmp_ln1064_1_fu_282_p2[0:0] == 1'b1) ? 2'd0 : add_ln885_fu_238_p2);

assign t_V_load_load_fu_230_p1 = t_V_fu_84;

assign t_V_out = t_V_fu_84;

assign x_idx_V_flag_0_out = x_idx_V_flag_0_fu_96;

assign x_idx_V_new_0_out = x_idx_V_new_0_fu_92;

assign x_in_Addr_A = x_in_Addr_A_orig << 32'd0;

assign x_in_Addr_A_orig = zext_ln587_fu_233_p1;

assign x_in_Din_A = 8'd0;

assign x_in_WEN_A = 1'd0;

assign x_x0_V_address0 = zext_ln587_1_fu_321_p1;

assign x_x0_V_d0 = x_in_Dout_A;

assign x_x1_V_address0 = zext_ln587_2_fu_316_p1;

assign x_x1_V_d0 = x_in_Dout_A;

assign x_x2_V_address0 = zext_ln587_3_fu_311_p1;

assign x_x2_V_d0 = x_in_Dout_A;

assign zext_ln587_1_fu_321_p1 = reg_191;

assign zext_ln587_2_fu_316_p1 = reg_191;

assign zext_ln587_3_fu_311_p1 = reg_191;

assign zext_ln587_fu_233_p1 = i_V_fu_80;

endmodule //interleave_manual_seq_interleave_manual_seq_Pipeline_LOAD
