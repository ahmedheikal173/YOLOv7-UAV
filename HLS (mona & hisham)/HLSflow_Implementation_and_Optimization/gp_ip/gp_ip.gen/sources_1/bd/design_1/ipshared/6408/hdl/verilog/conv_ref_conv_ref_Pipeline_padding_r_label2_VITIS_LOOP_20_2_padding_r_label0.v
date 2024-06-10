// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module conv_ref_conv_ref_Pipeline_padding_r_label2_VITIS_LOOP_20_2_padding_r_label0 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        image_r_address0,
        image_r_ce0,
        image_r_q0,
        image_padded_V_address0,
        image_padded_V_ce0,
        image_padded_V_we0,
        image_padded_V_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [20:0] image_r_address0;
output   image_r_ce0;
input  [7:0] image_r_q0;
output  [20:0] image_padded_V_address0;
output   image_padded_V_ce0;
output   image_padded_V_we0;
output  [7:0] image_padded_V_d0;

reg ap_idle;
reg image_r_ce0;
reg image_padded_V_ce0;
reg image_padded_V_we0;

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
wire   [0:0] icmp_ln19_fu_156_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_174_p2;
reg   [0:0] icmp_ln20_reg_477;
reg   [0:0] icmp_ln20_reg_477_pp0_iter2_reg;
wire   [9:0] select_ln20_fu_226_p3;
reg   [9:0] select_ln20_reg_482;
reg   [9:0] select_ln20_reg_482_pp0_iter2_reg;
wire   [9:0] select_ln20_1_fu_234_p3;
reg   [9:0] select_ln20_1_reg_487;
reg   [9:0] select_ln20_1_reg_487_pp0_iter2_reg;
wire   [9:0] add_ln22_fu_260_p2;
reg   [9:0] add_ln22_reg_498;
reg   [9:0] add_ln22_reg_498_pp0_iter2_reg;
wire   [20:0] zext_ln19_fu_316_p1;
reg   [20:0] zext_ln19_reg_503;
wire   [63:0] zext_ln22_4_fu_385_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln22_7_fu_423_p1;
reg   [9:0] j_fu_72;
wire    ap_loop_init;
reg   [9:0] i_fu_76;
reg   [19:0] indvar_flatten21_fu_80;
wire   [19:0] select_ln20_3_fu_272_p3;
reg   [1:0] m_fu_84;
wire   [1:0] select_ln19_1_fu_309_p3;
reg   [20:0] indvar_flatten39_fu_88;
wire   [20:0] add_ln19_1_fu_162_p2;
wire   [9:0] indvars_iv_next283_fu_150_p2;
wire   [0:0] icmp_ln21_fu_202_p2;
wire   [0:0] xor_ln19_fu_196_p2;
wire   [9:0] select_ln19_fu_180_p3;
wire   [0:0] and_ln19_fu_208_p2;
wire   [0:0] or_ln20_fu_220_p2;
wire   [9:0] indvars_iv_next283_dup_fu_214_p2;
wire   [9:0] indvars_iv_next283_mid1_fu_242_p2;
wire   [9:0] select_ln19_2_fu_188_p3;
wire   [9:0] select_ln20_2_fu_248_p3;
wire   [19:0] add_ln20_fu_266_p2;
wire   [1:0] add_ln19_fu_303_p2;
wire   [18:0] tmp_fu_320_p3;
wire   [16:0] tmp_1_fu_331_p3;
wire   [61:0] zext_ln22_fu_327_p1;
wire   [61:0] zext_ln22_1_fu_338_p1;
wire   [61:0] add_ln22_1_fu_342_p2;
wire   [61:0] zext_ln22_3_fu_348_p1;
wire   [61:0] add_ln22_2_fu_351_p2;
wire   [18:0] trunc_ln22_1_fu_361_p1;
wire   [20:0] p_shl3_cast_fu_365_p3;
wire   [20:0] trunc_ln22_fu_357_p1;
wire   [20:0] sub_ln22_fu_373_p2;
wire   [20:0] add_ln22_3_fu_379_p2;
wire   [19:0] grp_fu_428_p3;
wire   [18:0] trunc_ln22_2_fu_401_p1;
wire   [20:0] p_shl2_cast_fu_404_p3;
wire   [20:0] zext_ln22_6_fu_398_p1;
wire   [20:0] sub_ln22_1_fu_412_p2;
wire   [20:0] add_ln22_5_fu_418_p2;
wire   [9:0] grp_fu_428_p0;
wire   [9:0] grp_fu_428_p1;
wire   [9:0] grp_fu_428_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [19:0] grp_fu_428_p00;
wire   [19:0] grp_fu_428_p20;
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

conv_ref_mac_muladd_10ns_10ns_10ns_20_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 10 ),
    .din2_WIDTH( 10 ),
    .dout_WIDTH( 20 ))
mac_muladd_10ns_10ns_10ns_20_4_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_428_p0),
    .din1(grp_fu_428_p1),
    .din2(grp_fu_428_p2),
    .ce(1'b1),
    .dout(grp_fu_428_p3)
);

conv_ref_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((ap_loop_init == 1'b1)) begin
            i_fu_76 <= 10'd0;
        end else if (((icmp_ln19_fu_156_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            i_fu_76 <= select_ln20_1_fu_234_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten21_fu_80 <= 20'd0;
        end else if (((icmp_ln19_fu_156_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten21_fu_80 <= select_ln20_3_fu_272_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten39_fu_88 <= 21'd0;
        end else if (((icmp_ln19_fu_156_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten39_fu_88 <= add_ln19_1_fu_162_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_72 <= 10'd0;
        end else if (((icmp_ln19_fu_156_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            j_fu_72 <= add_ln22_fu_260_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            m_fu_84 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            m_fu_84 <= select_ln19_1_fu_309_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln19_fu_156_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln22_reg_498 <= add_ln22_fu_260_p2;
        icmp_ln20_reg_477 <= icmp_ln20_fu_174_p2;
        select_ln20_1_reg_487 <= select_ln20_1_fu_234_p3;
        select_ln20_reg_482 <= select_ln20_fu_226_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln22_reg_498_pp0_iter2_reg <= add_ln22_reg_498;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        icmp_ln20_reg_477_pp0_iter2_reg <= icmp_ln20_reg_477;
        select_ln20_1_reg_487_pp0_iter2_reg <= select_ln20_1_reg_487;
        select_ln20_reg_482_pp0_iter2_reg <= select_ln20_reg_482;
        zext_ln19_reg_503[1 : 0] <= zext_ln19_fu_316_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
    end
end

always @ (*) begin
    if (((icmp_ln19_fu_156_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        image_padded_V_ce0 = 1'b1;
    end else begin
        image_padded_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        image_padded_V_we0 = 1'b1;
    end else begin
        image_padded_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        image_r_ce0 = 1'b1;
    end else begin
        image_r_ce0 = 1'b0;
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

assign add_ln19_1_fu_162_p2 = (indvar_flatten39_fu_88 + 21'd1);

assign add_ln19_fu_303_p2 = (m_fu_84 + 2'd1);

assign add_ln20_fu_266_p2 = (indvar_flatten21_fu_80 + 20'd1);

assign add_ln22_1_fu_342_p2 = (zext_ln22_fu_327_p1 + zext_ln22_1_fu_338_p1);

assign add_ln22_2_fu_351_p2 = (add_ln22_1_fu_342_p2 + zext_ln22_3_fu_348_p1);

assign add_ln22_3_fu_379_p2 = (sub_ln22_fu_373_p2 + zext_ln19_fu_316_p1);

assign add_ln22_5_fu_418_p2 = (sub_ln22_1_fu_412_p2 + zext_ln19_reg_503);

assign add_ln22_fu_260_p2 = (select_ln20_fu_226_p3 + 10'd1);

assign and_ln19_fu_208_p2 = (xor_ln19_fu_196_p2 & icmp_ln21_fu_202_p2);

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

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign grp_fu_428_p0 = grp_fu_428_p00;

assign grp_fu_428_p00 = select_ln20_2_fu_248_p3;

assign grp_fu_428_p1 = 20'd642;

assign grp_fu_428_p2 = grp_fu_428_p20;

assign grp_fu_428_p20 = add_ln22_reg_498_pp0_iter2_reg;

assign icmp_ln19_fu_156_p2 = ((indvar_flatten39_fu_88 == 21'd1228800) ? 1'b1 : 1'b0);

assign icmp_ln20_fu_174_p2 = ((indvar_flatten21_fu_80 == 20'd409600) ? 1'b1 : 1'b0);

assign icmp_ln21_fu_202_p2 = ((j_fu_72 == 10'd640) ? 1'b1 : 1'b0);

assign image_padded_V_address0 = zext_ln22_7_fu_423_p1;

assign image_padded_V_d0 = image_r_q0;

assign image_r_address0 = zext_ln22_4_fu_385_p1;

assign indvars_iv_next283_dup_fu_214_p2 = (select_ln19_fu_180_p3 + 10'd1);

assign indvars_iv_next283_fu_150_p2 = (i_fu_76 + 10'd1);

assign indvars_iv_next283_mid1_fu_242_p2 = (select_ln19_fu_180_p3 + 10'd2);

assign or_ln20_fu_220_p2 = (icmp_ln20_fu_174_p2 | and_ln19_fu_208_p2);

assign p_shl2_cast_fu_404_p3 = {{trunc_ln22_2_fu_401_p1}, {2'd0}};

assign p_shl3_cast_fu_365_p3 = {{trunc_ln22_1_fu_361_p1}, {2'd0}};

assign select_ln19_1_fu_309_p3 = ((icmp_ln20_reg_477_pp0_iter2_reg[0:0] == 1'b1) ? add_ln19_fu_303_p2 : m_fu_84);

assign select_ln19_2_fu_188_p3 = ((icmp_ln20_fu_174_p2[0:0] == 1'b1) ? 10'd1 : indvars_iv_next283_fu_150_p2);

assign select_ln19_fu_180_p3 = ((icmp_ln20_fu_174_p2[0:0] == 1'b1) ? 10'd0 : i_fu_76);

assign select_ln20_1_fu_234_p3 = ((and_ln19_fu_208_p2[0:0] == 1'b1) ? indvars_iv_next283_dup_fu_214_p2 : select_ln19_fu_180_p3);

assign select_ln20_2_fu_248_p3 = ((and_ln19_fu_208_p2[0:0] == 1'b1) ? indvars_iv_next283_mid1_fu_242_p2 : select_ln19_2_fu_188_p3);

assign select_ln20_3_fu_272_p3 = ((icmp_ln20_fu_174_p2[0:0] == 1'b1) ? 20'd1 : add_ln20_fu_266_p2);

assign select_ln20_fu_226_p3 = ((or_ln20_fu_220_p2[0:0] == 1'b1) ? 10'd0 : j_fu_72);

assign sub_ln22_1_fu_412_p2 = (p_shl2_cast_fu_404_p3 - zext_ln22_6_fu_398_p1);

assign sub_ln22_fu_373_p2 = (p_shl3_cast_fu_365_p3 - trunc_ln22_fu_357_p1);

assign tmp_1_fu_331_p3 = {{select_ln20_1_reg_487_pp0_iter2_reg}, {7'd0}};

assign tmp_fu_320_p3 = {{select_ln20_1_reg_487_pp0_iter2_reg}, {9'd0}};

assign trunc_ln22_1_fu_361_p1 = add_ln22_2_fu_351_p2[18:0];

assign trunc_ln22_2_fu_401_p1 = grp_fu_428_p3[18:0];

assign trunc_ln22_fu_357_p1 = add_ln22_2_fu_351_p2[20:0];

assign xor_ln19_fu_196_p2 = (icmp_ln20_fu_174_p2 ^ 1'd1);

assign zext_ln19_fu_316_p1 = select_ln19_1_fu_309_p3;

assign zext_ln22_1_fu_338_p1 = tmp_1_fu_331_p3;

assign zext_ln22_3_fu_348_p1 = select_ln20_reg_482_pp0_iter2_reg;

assign zext_ln22_4_fu_385_p1 = add_ln22_3_fu_379_p2;

assign zext_ln22_6_fu_398_p1 = grp_fu_428_p3;

assign zext_ln22_7_fu_423_p1 = add_ln22_5_fu_418_p2;

assign zext_ln22_fu_327_p1 = tmp_fu_320_p3;

always @ (posedge ap_clk) begin
    zext_ln19_reg_503[20:2] <= 19'b0000000000000000000;
end

endmodule //conv_ref_conv_ref_Pipeline_padding_r_label2_VITIS_LOOP_20_2_padding_r_label0
