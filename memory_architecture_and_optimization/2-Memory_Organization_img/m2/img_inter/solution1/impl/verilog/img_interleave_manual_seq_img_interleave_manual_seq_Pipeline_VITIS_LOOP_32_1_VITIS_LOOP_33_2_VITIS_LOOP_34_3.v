// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module img_interleave_manual_seq_img_interleave_manual_seq_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_in_Addr_A,
        x_in_EN_A,
        x_in_WEN_A,
        x_in_Din_A,
        x_in_Dout_A,
        tmpx_V_address0,
        tmpx_V_ce0,
        tmpx_V_we0,
        tmpx_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] x_in_Addr_A;
output   x_in_EN_A;
output  [0:0] x_in_WEN_A;
output  [7:0] x_in_Din_A;
input  [7:0] x_in_Dout_A;
output  [20:0] tmpx_V_address0;
output   tmpx_V_ce0;
output   tmpx_V_we0;
output  [7:0] tmpx_V_d0;

reg ap_idle;
reg x_in_EN_A;
reg tmpx_V_ce0;
reg tmpx_V_we0;

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
wire   [0:0] icmp_ln32_fu_182_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln33_fu_212_p2;
reg   [0:0] icmp_ln33_reg_543;
wire   [0:0] and_ln32_fu_250_p2;
reg   [0:0] and_ln32_reg_550;
wire   [63:0] zext_ln35_3_fu_352_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] idx_1_cast_fu_458_p1;
reg   [9:0] j_fu_80;
wire   [9:0] add_ln34_fu_357_p2;
wire    ap_loop_init;
reg   [20:0] idx_1_fu_84;
wire   [20:0] add_ln36_fu_463_p2;
reg   [9:0] i_fu_88;
wire   [9:0] select_ln33_2_fu_276_p3;
reg   [20:0] idx_fu_92;
wire   [20:0] select_ln33_3_fu_451_p3;
reg   [19:0] indvar_flatten_fu_96;
wire   [19:0] select_ln33_4_fu_369_p3;
reg   [1:0] k_fu_100;
wire   [1:0] select_ln32_3_fu_226_p3;
reg   [20:0] indvars_iv559_fu_104;
wire   [20:0] select_ln32_4_fu_431_p3;
reg   [20:0] indvar_flatten15_fu_108;
wire   [20:0] add_ln32_2_fu_188_p2;
wire   [31:0] x_in_Addr_A_orig;
wire   [1:0] add_ln32_fu_206_p2;
wire   [0:0] icmp_ln34_fu_244_p2;
wire   [0:0] xor_ln32_fu_238_p2;
wire   [9:0] select_ln32_1_fu_218_p3;
wire   [0:0] or_ln33_fu_262_p2;
wire   [9:0] add_ln33_fu_256_p2;
wire   [18:0] tmp_fu_284_p3;
wire   [16:0] tmp_2_fu_296_p3;
wire   [61:0] zext_ln35_fu_292_p1;
wire   [61:0] zext_ln35_1_fu_304_p1;
wire   [9:0] select_ln33_1_fu_268_p3;
wire   [61:0] add_ln35_fu_308_p2;
wire   [61:0] zext_ln35_2_fu_314_p1;
wire   [61:0] add_ln35_1_fu_318_p2;
wire   [18:0] trunc_ln35_1_fu_328_p1;
wire   [20:0] p_shl_cast_fu_332_p3;
wire   [20:0] trunc_ln35_fu_324_p1;
wire   [20:0] sub_ln35_fu_340_p2;
wire   [20:0] zext_ln33_fu_234_p1;
wire   [20:0] add_ln35_2_fu_346_p2;
wire   [19:0] add_ln33_2_fu_363_p2;
wire   [20:0] add_ln32_1_fu_411_p2;
wire   [20:0] select_ln32_fu_417_p3;
wire   [20:0] add_ln33_1_fu_438_p2;
wire   [20:0] select_ln32_2_fu_424_p3;
wire   [20:0] select_ln33_fu_444_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

img_interleave_manual_seq_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
            i_fu_88 <= 10'd0;
        end else if (((icmp_ln32_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_fu_88 <= select_ln33_2_fu_276_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            idx_1_fu_84 <= 21'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            idx_1_fu_84 <= add_ln36_fu_463_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            idx_fu_92 <= 21'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            idx_fu_92 <= select_ln33_3_fu_451_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten15_fu_108 <= 21'd0;
        end else if (((icmp_ln32_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten15_fu_108 <= add_ln32_2_fu_188_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_96 <= 20'd0;
        end else if (((icmp_ln32_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten_fu_96 <= select_ln33_4_fu_369_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            indvars_iv559_fu_104 <= 21'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            indvars_iv559_fu_104 <= select_ln32_4_fu_431_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_80 <= 10'd0;
        end else if (((icmp_ln32_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            j_fu_80 <= add_ln34_fu_357_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_100 <= 2'd0;
        end else if (((icmp_ln32_fu_182_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            k_fu_100 <= select_ln32_3_fu_226_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_182_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln32_reg_550 <= and_ln32_fu_250_p2;
        icmp_ln33_reg_543 <= icmp_ln33_fu_212_p2;
    end
end

always @ (*) begin
    if (((icmp_ln32_fu_182_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmpx_V_ce0 = 1'b1;
    end else begin
        tmpx_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmpx_V_we0 = 1'b1;
    end else begin
        tmpx_V_we0 = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln32_1_fu_411_p2 = (indvars_iv559_fu_104 + 21'd409600);

assign add_ln32_2_fu_188_p2 = (indvar_flatten15_fu_108 + 21'd1);

assign add_ln32_fu_206_p2 = (k_fu_100 + 2'd1);

assign add_ln33_1_fu_438_p2 = (select_ln32_fu_417_p3 + 21'd640);

assign add_ln33_2_fu_363_p2 = (indvar_flatten_fu_96 + 20'd1);

assign add_ln33_fu_256_p2 = (select_ln32_1_fu_218_p3 + 10'd1);

assign add_ln34_fu_357_p2 = (select_ln33_1_fu_268_p3 + 10'd1);

assign add_ln35_1_fu_318_p2 = (add_ln35_fu_308_p2 + zext_ln35_2_fu_314_p1);

assign add_ln35_2_fu_346_p2 = (sub_ln35_fu_340_p2 + zext_ln33_fu_234_p1);

assign add_ln35_fu_308_p2 = (zext_ln35_fu_292_p1 + zext_ln35_1_fu_304_p1);

assign add_ln36_fu_463_p2 = (select_ln33_fu_444_p3 + 21'd1);

assign and_ln32_fu_250_p2 = (xor_ln32_fu_238_p2 & icmp_ln34_fu_244_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign icmp_ln32_fu_182_p2 = ((indvar_flatten15_fu_108 == 21'd1228800) ? 1'b1 : 1'b0);

assign icmp_ln33_fu_212_p2 = ((indvar_flatten_fu_96 == 20'd409600) ? 1'b1 : 1'b0);

assign icmp_ln34_fu_244_p2 = ((j_fu_80 == 10'd640) ? 1'b1 : 1'b0);

assign idx_1_cast_fu_458_p1 = select_ln33_fu_444_p3;

assign or_ln33_fu_262_p2 = (icmp_ln33_fu_212_p2 | and_ln32_fu_250_p2);

assign p_shl_cast_fu_332_p3 = {{trunc_ln35_1_fu_328_p1}, {2'd0}};

assign select_ln32_1_fu_218_p3 = ((icmp_ln33_fu_212_p2[0:0] == 1'b1) ? 10'd0 : i_fu_88);

assign select_ln32_2_fu_424_p3 = ((icmp_ln33_reg_543[0:0] == 1'b1) ? add_ln32_1_fu_411_p2 : idx_1_fu_84);

assign select_ln32_3_fu_226_p3 = ((icmp_ln33_fu_212_p2[0:0] == 1'b1) ? add_ln32_fu_206_p2 : k_fu_100);

assign select_ln32_4_fu_431_p3 = ((icmp_ln33_reg_543[0:0] == 1'b1) ? add_ln32_1_fu_411_p2 : indvars_iv559_fu_104);

assign select_ln32_fu_417_p3 = ((icmp_ln33_reg_543[0:0] == 1'b1) ? add_ln32_1_fu_411_p2 : idx_fu_92);

assign select_ln33_1_fu_268_p3 = ((or_ln33_fu_262_p2[0:0] == 1'b1) ? 10'd0 : j_fu_80);

assign select_ln33_2_fu_276_p3 = ((and_ln32_fu_250_p2[0:0] == 1'b1) ? add_ln33_fu_256_p2 : select_ln32_1_fu_218_p3);

assign select_ln33_3_fu_451_p3 = ((and_ln32_reg_550[0:0] == 1'b1) ? add_ln33_1_fu_438_p2 : select_ln32_fu_417_p3);

assign select_ln33_4_fu_369_p3 = ((icmp_ln33_fu_212_p2[0:0] == 1'b1) ? 20'd1 : add_ln33_2_fu_363_p2);

assign select_ln33_fu_444_p3 = ((and_ln32_reg_550[0:0] == 1'b1) ? add_ln33_1_fu_438_p2 : select_ln32_2_fu_424_p3);

assign sub_ln35_fu_340_p2 = (p_shl_cast_fu_332_p3 - trunc_ln35_fu_324_p1);

assign tmp_2_fu_296_p3 = {{select_ln33_2_fu_276_p3}, {7'd0}};

assign tmp_fu_284_p3 = {{select_ln33_2_fu_276_p3}, {9'd0}};

assign tmpx_V_address0 = idx_1_cast_fu_458_p1;

assign tmpx_V_d0 = x_in_Dout_A;

assign trunc_ln35_1_fu_328_p1 = add_ln35_1_fu_318_p2[18:0];

assign trunc_ln35_fu_324_p1 = add_ln35_1_fu_318_p2[20:0];

assign x_in_Addr_A = x_in_Addr_A_orig << 32'd0;

assign x_in_Addr_A_orig = zext_ln35_3_fu_352_p1;

assign x_in_Din_A = 8'd0;

assign x_in_WEN_A = 1'd0;

assign xor_ln32_fu_238_p2 = (icmp_ln33_fu_212_p2 ^ 1'd1);

assign zext_ln33_fu_234_p1 = select_ln32_3_fu_226_p3;

assign zext_ln35_1_fu_304_p1 = tmp_2_fu_296_p3;

assign zext_ln35_2_fu_314_p1 = select_ln33_1_fu_268_p3;

assign zext_ln35_3_fu_352_p1 = add_ln35_2_fu_346_p2;

assign zext_ln35_fu_292_p1 = tmp_fu_284_p3;

endmodule //img_interleave_manual_seq_img_interleave_manual_seq_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3
