// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3 (
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
        inn_V_address0,
        inn_V_ce0,
        inn_V_we0,
        inn_V_d0
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
output  [8:0] inn_V_address0;
output   inn_V_ce0;
output   inn_V_we0;
output  [7:0] inn_V_d0;

reg ap_idle;
reg x_in_EN_A;
reg inn_V_ce0;
reg inn_V_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln68_fu_174_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln70_fu_195_p2;
reg   [0:0] icmp_ln70_reg_503;
reg   [0:0] icmp_ln70_reg_503_pp0_iter1_reg;
reg   [0:0] icmp_ln70_reg_503_pp0_iter2_reg;
reg   [0:0] icmp_ln70_reg_503_pp0_iter3_reg;
wire   [0:0] and_ln68_fu_221_p2;
reg   [0:0] and_ln68_reg_511;
reg   [0:0] and_ln68_reg_511_pp0_iter1_reg;
reg   [0:0] and_ln68_reg_511_pp0_iter2_reg;
reg   [0:0] and_ln68_reg_511_pp0_iter3_reg;
wire   [63:0] zext_ln74_3_fu_346_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln72_fu_406_p1;
reg   [1:0] j_fu_72;
wire   [1:0] add_ln72_fu_281_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_j_load;
reg   [8:0] idx_1_fu_76;
wire   [8:0] add_ln75_fu_411_p2;
reg   [1:0] i_fu_80;
wire   [1:0] select_ln70_2_fu_247_p3;
reg   [1:0] ap_sig_allocacmp_i_load;
reg   [8:0] idx_fu_84;
wire   [8:0] select_ln70_3_fu_399_p3;
reg   [3:0] indvar_flatten_fu_88;
wire   [3:0] select_ln70_4_fu_293_p3;
reg   [3:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [5:0] k_fu_92;
wire   [5:0] select_ln68_3_fu_330_p3;
reg   [8:0] indvars_iv89_fu_96;
wire   [8:0] select_ln68_4_fu_379_p3;
reg   [8:0] indvar_flatten15_fu_100;
wire   [8:0] add_ln68_2_fu_180_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten15_load;
wire   [31:0] x_in_Addr_A_orig;
wire   [0:0] icmp_ln72_fu_215_p2;
wire   [0:0] xor_ln68_fu_209_p2;
wire   [1:0] select_ln68_1_fu_201_p3;
wire   [0:0] or_ln70_fu_233_p2;
wire   [1:0] add_ln70_fu_227_p2;
wire   [3:0] tmp_fu_259_p3;
wire   [8:0] zext_ln74_1_fu_267_p1;
wire   [8:0] zext_ln74_fu_255_p1;
wire   [1:0] select_ln70_1_fu_239_p3;
wire   [3:0] add_ln70_2_fu_287_p2;
wire   [5:0] add_ln68_fu_324_p2;
wire  signed [8:0] zext_ln74_3_fu_346_p0;
wire   [8:0] grp_fu_432_p4;
wire   [8:0] add_ln68_1_fu_359_p2;
wire   [8:0] select_ln68_fu_365_p3;
wire   [8:0] add_ln70_1_fu_386_p2;
wire   [8:0] select_ln68_2_fu_372_p3;
wire   [8:0] select_ln70_fu_392_p3;
wire  signed [4:0] grp_fu_432_p0;
wire   [1:0] grp_fu_432_p1;
wire   [5:0] grp_fu_432_p2;
wire   [5:0] grp_fu_432_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire  signed [8:0] grp_fu_432_p00;
wire   [8:0] grp_fu_432_p10;
wire   [8:0] grp_fu_432_p30;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
end

BRAM_filter_ama_addmuladd_5s_2ns_6ns_6ns_9_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 5 ),
    .din1_WIDTH( 2 ),
    .din2_WIDTH( 6 ),
    .din3_WIDTH( 6 ),
    .dout_WIDTH( 9 ))
ama_addmuladd_5s_2ns_6ns_6ns_9_4_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_432_p0),
    .din1(grp_fu_432_p1),
    .din2(grp_fu_432_p2),
    .din3(grp_fu_432_p3),
    .ce(1'b1),
    .dout(grp_fu_432_p4)
);

BRAM_filter_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln68_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_80 <= select_ln70_2_fu_247_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            idx_1_fu_76 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            idx_1_fu_76 <= add_ln75_fu_411_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            idx_fu_84 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            idx_fu_84 <= select_ln70_3_fu_399_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln68_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten15_fu_100 <= add_ln68_2_fu_180_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten15_fu_100 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln68_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_88 <= select_ln70_4_fu_293_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_88 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            indvars_iv89_fu_96 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            indvars_iv89_fu_96 <= select_ln68_4_fu_379_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln68_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_72 <= add_ln72_fu_281_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_72 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            k_fu_92 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            k_fu_92 <= select_ln68_3_fu_330_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln68_fu_174_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln68_reg_511 <= and_ln68_fu_221_p2;
        icmp_ln70_reg_503 <= icmp_ln70_fu_195_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln68_reg_511_pp0_iter1_reg <= and_ln68_reg_511;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln70_reg_503_pp0_iter1_reg <= icmp_ln70_reg_503;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        and_ln68_reg_511_pp0_iter2_reg <= and_ln68_reg_511_pp0_iter1_reg;
        and_ln68_reg_511_pp0_iter3_reg <= and_ln68_reg_511_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln70_reg_503_pp0_iter2_reg <= icmp_ln70_reg_503_pp0_iter1_reg;
        icmp_ln70_reg_503_pp0_iter3_reg <= icmp_ln70_reg_503_pp0_iter2_reg;
    end
end

always @ (*) begin
    if (((icmp_ln68_fu_174_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 2'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten15_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten15_load = indvar_flatten15_fu_100;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_88;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_72;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        inn_V_ce0 = 1'b1;
    end else begin
        inn_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        inn_V_we0 = 1'b1;
    end else begin
        inn_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
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

assign add_ln68_1_fu_359_p2 = (indvars_iv89_fu_96 + 9'd9);

assign add_ln68_2_fu_180_p2 = (ap_sig_allocacmp_indvar_flatten15_load + 9'd1);

assign add_ln68_fu_324_p2 = (k_fu_92 + 6'd1);

assign add_ln70_1_fu_386_p2 = (select_ln68_fu_365_p3 + 9'd3);

assign add_ln70_2_fu_287_p2 = (ap_sig_allocacmp_indvar_flatten_load + 4'd1);

assign add_ln70_fu_227_p2 = (select_ln68_1_fu_201_p3 + 2'd1);

assign add_ln72_fu_281_p2 = (select_ln70_1_fu_239_p3 + 2'd1);

assign add_ln75_fu_411_p2 = (select_ln70_fu_392_p3 + 9'd1);

assign and_ln68_fu_221_p2 = (xor_ln68_fu_209_p2 & icmp_ln72_fu_215_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_432_p0 = grp_fu_432_p00;

assign grp_fu_432_p00 = (zext_ln74_1_fu_267_p1 - zext_ln74_fu_255_p1);

assign grp_fu_432_p1 = grp_fu_432_p10;

assign grp_fu_432_p10 = select_ln70_1_fu_239_p3;

assign grp_fu_432_p2 = 9'd44;

assign grp_fu_432_p3 = grp_fu_432_p30;

assign grp_fu_432_p30 = select_ln68_3_fu_330_p3;

assign icmp_ln68_fu_174_p2 = ((ap_sig_allocacmp_indvar_flatten15_load == 9'd396) ? 1'b1 : 1'b0);

assign icmp_ln70_fu_195_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 4'd9) ? 1'b1 : 1'b0);

assign icmp_ln72_fu_215_p2 = ((ap_sig_allocacmp_j_load == 2'd3) ? 1'b1 : 1'b0);

assign inn_V_address0 = zext_ln72_fu_406_p1;

assign inn_V_d0 = x_in_Dout_A;

assign or_ln70_fu_233_p2 = (icmp_ln70_fu_195_p2 | and_ln68_fu_221_p2);

assign select_ln68_1_fu_201_p3 = ((icmp_ln70_fu_195_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_i_load);

assign select_ln68_2_fu_372_p3 = ((icmp_ln70_reg_503_pp0_iter3_reg[0:0] == 1'b1) ? add_ln68_1_fu_359_p2 : idx_1_fu_76);

assign select_ln68_3_fu_330_p3 = ((icmp_ln70_reg_503_pp0_iter1_reg[0:0] == 1'b1) ? add_ln68_fu_324_p2 : k_fu_92);

assign select_ln68_4_fu_379_p3 = ((icmp_ln70_reg_503_pp0_iter3_reg[0:0] == 1'b1) ? add_ln68_1_fu_359_p2 : indvars_iv89_fu_96);

assign select_ln68_fu_365_p3 = ((icmp_ln70_reg_503_pp0_iter3_reg[0:0] == 1'b1) ? add_ln68_1_fu_359_p2 : idx_fu_84);

assign select_ln70_1_fu_239_p3 = ((or_ln70_fu_233_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_j_load);

assign select_ln70_2_fu_247_p3 = ((and_ln68_fu_221_p2[0:0] == 1'b1) ? add_ln70_fu_227_p2 : select_ln68_1_fu_201_p3);

assign select_ln70_3_fu_399_p3 = ((and_ln68_reg_511_pp0_iter3_reg[0:0] == 1'b1) ? add_ln70_1_fu_386_p2 : select_ln68_fu_365_p3);

assign select_ln70_4_fu_293_p3 = ((icmp_ln70_fu_195_p2[0:0] == 1'b1) ? 4'd1 : add_ln70_2_fu_287_p2);

assign select_ln70_fu_392_p3 = ((and_ln68_reg_511_pp0_iter3_reg[0:0] == 1'b1) ? add_ln70_1_fu_386_p2 : select_ln68_2_fu_372_p3);

assign tmp_fu_259_p3 = {{select_ln70_2_fu_247_p3}, {2'd0}};

assign x_in_Addr_A = x_in_Addr_A_orig << 32'd0;

assign x_in_Addr_A_orig = zext_ln74_3_fu_346_p1;

assign x_in_Din_A = 8'd0;

assign x_in_WEN_A = 1'd0;

assign xor_ln68_fu_209_p2 = (icmp_ln70_fu_195_p2 ^ 1'd1);

assign zext_ln72_fu_406_p1 = select_ln70_fu_392_p3;

assign zext_ln74_1_fu_267_p1 = tmp_fu_259_p3;

assign zext_ln74_3_fu_346_p0 = grp_fu_432_p4;

assign zext_ln74_3_fu_346_p1 = $unsigned(zext_ln74_3_fu_346_p0);

assign zext_ln74_fu_255_p1 = select_ln70_2_fu_247_p3;

endmodule //BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3
