// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_r_Addr_A,
        out_r_EN_A,
        out_r_WEN_A,
        out_r_Din_A,
        out_r_Dout_A,
        outt_V_address0,
        outt_V_ce0,
        outt_V_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] out_r_Addr_A;
output   out_r_EN_A;
output  [0:0] out_r_WEN_A;
output  [7:0] out_r_Din_A;
input  [7:0] out_r_Dout_A;
output  [11:0] outt_V_address0;
output   outt_V_ce0;
input  [7:0] outt_V_q0;

reg ap_idle;
reg out_r_EN_A;
reg[0:0] out_r_WEN_A;
reg outt_V_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln49_fu_176_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln51_fu_197_p2;
reg   [0:0] icmp_ln51_reg_505;
reg   [0:0] icmp_ln51_reg_505_pp0_iter1_reg;
wire   [0:0] and_ln49_fu_223_p2;
reg   [0:0] and_ln49_reg_513;
reg   [0:0] and_ln49_reg_513_pp0_iter1_reg;
wire   [63:0] zext_ln53_fu_399_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_3_fu_430_p1;
reg   [3:0] j_fu_74;
wire   [3:0] add_ln53_fu_283_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_j_load;
reg   [11:0] idx_fu_78;
wire   [11:0] add_ln56_fu_404_p2;
reg   [3:0] i_fu_82;
wire   [3:0] select_ln51_2_fu_249_p3;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [11:0] idx_2_fu_86;
wire   [11:0] select_ln51_3_fu_392_p3;
reg   [7:0] indvar_flatten23_fu_90;
wire   [7:0] select_ln51_4_fu_295_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten23_load;
reg   [5:0] k_fu_94;
wire   [5:0] select_ln49_3_fu_361_p3;
reg   [11:0] indvars_iv91_fu_98;
wire   [11:0] select_ln49_4_fu_372_p3;
reg   [11:0] indvar_flatten39_fu_102;
wire   [11:0] add_ln49_2_fu_182_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten39_load;
wire   [31:0] out_r_Addr_A_orig;
wire   [0:0] icmp_ln53_fu_217_p2;
wire   [0:0] xor_ln49_fu_211_p2;
wire   [3:0] select_ln49_1_fu_203_p3;
wire   [0:0] or_ln51_fu_235_p2;
wire   [3:0] add_ln51_fu_229_p2;
wire   [6:0] tmp_fu_261_p3;
wire   [11:0] zext_ln55_1_fu_269_p1;
wire   [11:0] zext_ln55_fu_257_p1;
wire   [3:0] select_ln51_1_fu_241_p3;
wire   [7:0] add_ln51_2_fu_289_p2;
wire   [11:0] add_ln49_1_fu_341_p2;
wire   [5:0] add_ln49_fu_335_p2;
wire   [11:0] select_ln49_fu_347_p3;
wire   [11:0] add_ln51_1_fu_379_p2;
wire   [11:0] select_ln49_2_fu_354_p3;
wire   [11:0] select_ln51_fu_385_p3;
wire  signed [11:0] zext_ln55_3_fu_430_p0;
wire   [11:0] grp_fu_434_p4;
wire  signed [7:0] grp_fu_434_p0;
wire   [3:0] grp_fu_434_p1;
wire   [5:0] grp_fu_434_p2;
wire   [5:0] grp_fu_434_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire  signed [11:0] grp_fu_434_p00;
wire   [11:0] grp_fu_434_p10;
wire   [11:0] grp_fu_434_p30;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
end

BRAM_filter_ama_addmuladd_8s_4ns_6ns_6ns_12_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 4 ),
    .din2_WIDTH( 6 ),
    .din3_WIDTH( 6 ),
    .dout_WIDTH( 12 ))
ama_addmuladd_8s_4ns_6ns_6ns_12_4_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_434_p0),
    .din1(grp_fu_434_p1),
    .din2(grp_fu_434_p2),
    .din3(grp_fu_434_p3),
    .ce(1'b1),
    .dout(grp_fu_434_p4)
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln49_fu_176_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_82 <= select_ln51_2_fu_249_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_82 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            idx_2_fu_86 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            idx_2_fu_86 <= select_ln51_3_fu_392_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            idx_fu_78 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            idx_fu_78 <= add_ln56_fu_404_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln49_fu_176_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten23_fu_90 <= select_ln51_4_fu_295_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten23_fu_90 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln49_fu_176_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten39_fu_102 <= add_ln49_2_fu_182_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten39_fu_102 <= 12'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            indvars_iv91_fu_98 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            indvars_iv91_fu_98 <= select_ln49_4_fu_372_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln49_fu_176_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_74 <= add_ln53_fu_283_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_74 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            k_fu_94 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            k_fu_94 <= select_ln49_3_fu_361_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln49_fu_176_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln49_reg_513 <= and_ln49_fu_223_p2;
        icmp_ln51_reg_505 <= icmp_ln51_fu_197_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln49_reg_513_pp0_iter1_reg <= and_ln49_reg_513;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln51_reg_505_pp0_iter1_reg <= icmp_ln51_reg_505;
    end
end

always @ (*) begin
    if (((icmp_ln49_fu_176_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_82;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten23_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_load = indvar_flatten23_fu_90;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten39_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten39_load = indvar_flatten39_fu_102;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 4'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_74;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        out_r_EN_A = 1'b1;
    end else begin
        out_r_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        out_r_WEN_A = 1'd1;
    end else begin
        out_r_WEN_A = 1'd0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        outt_V_ce0 = 1'b1;
    end else begin
        outt_V_ce0 = 1'b0;
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

assign add_ln49_1_fu_341_p2 = (indvars_iv91_fu_98 + 12'd81);

assign add_ln49_2_fu_182_p2 = (ap_sig_allocacmp_indvar_flatten39_load + 12'd1);

assign add_ln49_fu_335_p2 = (k_fu_94 + 6'd1);

assign add_ln51_1_fu_379_p2 = (select_ln49_fu_347_p3 + 12'd9);

assign add_ln51_2_fu_289_p2 = (ap_sig_allocacmp_indvar_flatten23_load + 8'd1);

assign add_ln51_fu_229_p2 = (select_ln49_1_fu_203_p3 + 4'd1);

assign add_ln53_fu_283_p2 = (select_ln51_1_fu_241_p3 + 4'd1);

assign add_ln56_fu_404_p2 = (select_ln51_fu_385_p3 + 12'd1);

assign and_ln49_fu_223_p2 = (xor_ln49_fu_211_p2 & icmp_ln53_fu_217_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_434_p0 = grp_fu_434_p00;

assign grp_fu_434_p00 = (zext_ln55_1_fu_269_p1 + zext_ln55_fu_257_p1);

assign grp_fu_434_p1 = grp_fu_434_p10;

assign grp_fu_434_p10 = select_ln51_1_fu_241_p3;

assign grp_fu_434_p2 = 12'd44;

assign grp_fu_434_p3 = grp_fu_434_p30;

assign grp_fu_434_p30 = select_ln49_3_fu_361_p3;

assign icmp_ln49_fu_176_p2 = ((ap_sig_allocacmp_indvar_flatten39_load == 12'd3564) ? 1'b1 : 1'b0);

assign icmp_ln51_fu_197_p2 = ((ap_sig_allocacmp_indvar_flatten23_load == 8'd81) ? 1'b1 : 1'b0);

assign icmp_ln53_fu_217_p2 = ((ap_sig_allocacmp_j_load == 4'd9) ? 1'b1 : 1'b0);

assign or_ln51_fu_235_p2 = (icmp_ln51_fu_197_p2 | and_ln49_fu_223_p2);

assign out_r_Addr_A = out_r_Addr_A_orig << 32'd0;

assign out_r_Addr_A_orig = zext_ln55_3_fu_430_p1;

assign out_r_Din_A = outt_V_q0;

assign outt_V_address0 = zext_ln53_fu_399_p1;

assign select_ln49_1_fu_203_p3 = ((icmp_ln51_fu_197_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_i_load);

assign select_ln49_2_fu_354_p3 = ((icmp_ln51_reg_505_pp0_iter1_reg[0:0] == 1'b1) ? add_ln49_1_fu_341_p2 : idx_fu_78);

assign select_ln49_3_fu_361_p3 = ((icmp_ln51_reg_505_pp0_iter1_reg[0:0] == 1'b1) ? add_ln49_fu_335_p2 : k_fu_94);

assign select_ln49_4_fu_372_p3 = ((icmp_ln51_reg_505_pp0_iter1_reg[0:0] == 1'b1) ? add_ln49_1_fu_341_p2 : indvars_iv91_fu_98);

assign select_ln49_fu_347_p3 = ((icmp_ln51_reg_505_pp0_iter1_reg[0:0] == 1'b1) ? add_ln49_1_fu_341_p2 : idx_2_fu_86);

assign select_ln51_1_fu_241_p3 = ((or_ln51_fu_235_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_j_load);

assign select_ln51_2_fu_249_p3 = ((and_ln49_fu_223_p2[0:0] == 1'b1) ? add_ln51_fu_229_p2 : select_ln49_1_fu_203_p3);

assign select_ln51_3_fu_392_p3 = ((and_ln49_reg_513_pp0_iter1_reg[0:0] == 1'b1) ? add_ln51_1_fu_379_p2 : select_ln49_fu_347_p3);

assign select_ln51_4_fu_295_p3 = ((icmp_ln51_fu_197_p2[0:0] == 1'b1) ? 8'd1 : add_ln51_2_fu_289_p2);

assign select_ln51_fu_385_p3 = ((and_ln49_reg_513_pp0_iter1_reg[0:0] == 1'b1) ? add_ln51_1_fu_379_p2 : select_ln49_2_fu_354_p3);

assign tmp_fu_261_p3 = {{select_ln51_2_fu_249_p3}, {3'd0}};

assign xor_ln49_fu_211_p2 = (icmp_ln51_fu_197_p2 ^ 1'd1);

assign zext_ln53_fu_399_p1 = select_ln51_fu_385_p3;

assign zext_ln55_1_fu_269_p1 = tmp_fu_261_p3;

assign zext_ln55_3_fu_430_p0 = grp_fu_434_p4;

assign zext_ln55_3_fu_430_p1 = $unsigned(zext_ln55_3_fu_430_p0);

assign zext_ln55_fu_257_p1 = select_ln51_2_fu_249_p3;

endmodule //BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3
