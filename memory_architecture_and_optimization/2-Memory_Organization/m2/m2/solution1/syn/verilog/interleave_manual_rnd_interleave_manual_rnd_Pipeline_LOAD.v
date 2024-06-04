// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module interleave_manual_rnd_interleave_manual_rnd_Pipeline_LOAD (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RFIFONUM,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        sext_ln16,
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
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [63:0] m_axi_gmem_AWADDR;
output  [0:0] m_axi_gmem_AWID;
output  [31:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [0:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [511:0] m_axi_gmem_WDATA;
output  [63:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [0:0] m_axi_gmem_WID;
output  [0:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [63:0] m_axi_gmem_ARADDR;
output  [0:0] m_axi_gmem_ARID;
output  [31:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [0:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [511:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [0:0] m_axi_gmem_RID;
input  [8:0] m_axi_gmem_RFIFONUM;
input  [0:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [0:0] m_axi_gmem_BID;
input  [0:0] m_axi_gmem_BUSER;
input  [57:0] sext_ln16;
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
reg m_axi_gmem_RREADY;
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
reg   [0:0] icmp_ln16_reg_439;
reg   [0:0] icmp_ln9_reg_443;
reg    ap_predicate_op35_read_state2;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln16_fu_206_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    gmem_blk_n_R;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln16_reg_439_pp0_iter1_reg;
wire   [0:0] icmp_ln9_fu_222_p2;
reg   [0:0] icmp_ln9_reg_443_pp0_iter1_reg;
reg   [511:0] gmem_addr_read_reg_447;
reg    ap_condition_exit_pp0_iter1_stage0;
reg   [511:0] ap_phi_mux_empty_25_phi_fu_163_p4;
wire   [511:0] ap_phi_reg_pp0_iter2_empty_25_reg_160;
wire   [511:0] zext_ln16_fu_242_p1;
wire   [63:0] zext_ln587_2_fu_308_p1;
wire   [1:0] trunc_ln1559_fu_276_p1;
wire   [63:0] zext_ln587_1_fu_323_p1;
wire   [63:0] zext_ln587_fu_338_p1;
reg   [20:0] ret_fu_86;
wire   [20:0] select_ln16_fu_358_p3;
wire    ap_loop_init;
reg   [41:0] phi_mul7_fu_90;
wire   [41:0] add_ln10_2_fu_292_p2;
reg   [41:0] phi_mul5_fu_94;
wire   [41:0] add_ln10_1_fu_286_p2;
reg   [41:0] phi_mul_fu_98;
wire   [41:0] add_ln10_fu_280_p2;
reg   [503:0] shiftreg_fu_102;
reg   [20:0] i_V_fu_106;
wire   [20:0] i_fu_212_p2;
reg   [20:0] ap_sig_allocacmp_i_V_1;
wire   [7:0] trunc_ln9_fu_259_p1;
wire   [5:0] trunc_ln16_fu_218_p1;
wire   [18:0] tmp_2_fu_298_p4;
wire   [18:0] tmp_1_fu_313_p4;
wire   [18:0] tmp_fu_328_p4;
wire   [20:0] add_ln16_1_fu_346_p2;
wire   [0:0] icmp_ln16_1_fu_352_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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

interleave_manual_rnd_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln16_fu_206_p2 == 1'd0))) begin
            i_V_fu_106 <= i_fu_212_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_V_fu_106 <= 21'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            phi_mul5_fu_94 <= 42'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            phi_mul5_fu_94 <= add_ln10_1_fu_286_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            phi_mul7_fu_90 <= 42'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            phi_mul7_fu_90 <= add_ln10_2_fu_292_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            phi_mul_fu_98 <= 42'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            phi_mul_fu_98 <= add_ln10_fu_280_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ret_fu_86 <= 21'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            ret_fu_86 <= select_ln16_fu_358_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            shiftreg_fu_102 <= 504'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            shiftreg_fu_102 <= {{ap_phi_mux_empty_25_phi_fu_163_p4[511:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln16_reg_439 <= icmp_ln16_fu_206_p2;
        icmp_ln16_reg_439_pp0_iter1_reg <= icmp_ln16_reg_439;
        icmp_ln9_reg_443_pp0_iter1_reg <= icmp_ln9_reg_443;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op35_read_state2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gmem_addr_read_reg_447 <= m_axi_gmem_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln16_fu_206_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln9_reg_443 <= icmp_ln9_fu_222_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln16_fu_206_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln16_reg_439 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if ((icmp_ln16_reg_439_pp0_iter1_reg == 1'd0)) begin
        if ((icmp_ln9_reg_443_pp0_iter1_reg == 1'd0)) begin
            ap_phi_mux_empty_25_phi_fu_163_p4 = zext_ln16_fu_242_p1;
        end else if ((icmp_ln9_reg_443_pp0_iter1_reg == 1'd1)) begin
            ap_phi_mux_empty_25_phi_fu_163_p4 = gmem_addr_read_reg_447;
        end else begin
            ap_phi_mux_empty_25_phi_fu_163_p4 = ap_phi_reg_pp0_iter2_empty_25_reg_160;
        end
    end else begin
        ap_phi_mux_empty_25_phi_fu_163_p4 = ap_phi_reg_pp0_iter2_empty_25_reg_160;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_V_1 = 21'd0;
    end else begin
        ap_sig_allocacmp_i_V_1 = i_V_fu_106;
    end
end

always @ (*) begin
    if (((ap_predicate_op35_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        gmem_blk_n_R = m_axi_gmem_RVALID;
    end else begin
        gmem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op35_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_gmem_RREADY = 1'b1;
    end else begin
        m_axi_gmem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        x_x0_V_ce0 = 1'b1;
    end else begin
        x_x0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~(trunc_ln1559_fu_276_p1 == 2'd2) & ~(trunc_ln1559_fu_276_p1 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        x_x0_V_we0 = 1'b1;
    end else begin
        x_x0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        x_x1_V_ce0 = 1'b1;
    end else begin
        x_x1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln1559_fu_276_p1 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        x_x1_V_we0 = 1'b1;
    end else begin
        x_x1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        x_x2_V_ce0 = 1'b1;
    end else begin
        x_x2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln1559_fu_276_p1 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001))) begin
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

assign add_ln10_1_fu_286_p2 = (phi_mul5_fu_94 + 42'd2796203);

assign add_ln10_2_fu_292_p2 = (phi_mul7_fu_90 + 42'd2796203);

assign add_ln10_fu_280_p2 = (phi_mul_fu_98 + 42'd2796203);

assign add_ln16_1_fu_346_p2 = (ret_fu_86 + 21'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_predicate_op35_read_state2 == 1'b1) & (m_axi_gmem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_predicate_op35_read_state2 == 1'b1) & (m_axi_gmem_RVALID == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((ap_predicate_op35_read_state2 == 1'b1) & (m_axi_gmem_RVALID == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter2_empty_25_reg_160 = 'bx;

always @ (*) begin
    ap_predicate_op35_read_state2 = ((icmp_ln9_reg_443 == 1'd1) & (icmp_ln16_reg_439 == 1'd0));
end

assign i_fu_212_p2 = (ap_sig_allocacmp_i_V_1 + 21'd1);

assign icmp_ln16_1_fu_352_p2 = ((add_ln16_1_fu_346_p2 < 21'd3) ? 1'b1 : 1'b0);

assign icmp_ln16_fu_206_p2 = ((ap_sig_allocacmp_i_V_1 == 21'd1228800) ? 1'b1 : 1'b0);

assign icmp_ln9_fu_222_p2 = ((trunc_ln16_fu_218_p1 == 6'd0) ? 1'b1 : 1'b0);

assign m_axi_gmem_ARADDR = 64'd0;

assign m_axi_gmem_ARBURST = 2'd0;

assign m_axi_gmem_ARCACHE = 4'd0;

assign m_axi_gmem_ARID = 1'd0;

assign m_axi_gmem_ARLEN = 32'd0;

assign m_axi_gmem_ARLOCK = 2'd0;

assign m_axi_gmem_ARPROT = 3'd0;

assign m_axi_gmem_ARQOS = 4'd0;

assign m_axi_gmem_ARREGION = 4'd0;

assign m_axi_gmem_ARSIZE = 3'd0;

assign m_axi_gmem_ARUSER = 1'd0;

assign m_axi_gmem_ARVALID = 1'b0;

assign m_axi_gmem_AWADDR = 64'd0;

assign m_axi_gmem_AWBURST = 2'd0;

assign m_axi_gmem_AWCACHE = 4'd0;

assign m_axi_gmem_AWID = 1'd0;

assign m_axi_gmem_AWLEN = 32'd0;

assign m_axi_gmem_AWLOCK = 2'd0;

assign m_axi_gmem_AWPROT = 3'd0;

assign m_axi_gmem_AWQOS = 4'd0;

assign m_axi_gmem_AWREGION = 4'd0;

assign m_axi_gmem_AWSIZE = 3'd0;

assign m_axi_gmem_AWUSER = 1'd0;

assign m_axi_gmem_AWVALID = 1'b0;

assign m_axi_gmem_BREADY = 1'b0;

assign m_axi_gmem_WDATA = 512'd0;

assign m_axi_gmem_WID = 1'd0;

assign m_axi_gmem_WLAST = 1'b0;

assign m_axi_gmem_WSTRB = 64'd0;

assign m_axi_gmem_WUSER = 1'd0;

assign m_axi_gmem_WVALID = 1'b0;

assign select_ln16_fu_358_p3 = ((icmp_ln16_1_fu_352_p2[0:0] == 1'b1) ? add_ln16_1_fu_346_p2 : 21'd0);

assign tmp_1_fu_313_p4 = {{phi_mul7_fu_90[41:23]}};

assign tmp_2_fu_298_p4 = {{phi_mul5_fu_94[41:23]}};

assign tmp_fu_328_p4 = {{phi_mul_fu_98[41:23]}};

assign trunc_ln1559_fu_276_p1 = ret_fu_86[1:0];

assign trunc_ln16_fu_218_p1 = ap_sig_allocacmp_i_V_1[5:0];

assign trunc_ln9_fu_259_p1 = ap_phi_mux_empty_25_phi_fu_163_p4[7:0];

assign x_x0_V_address0 = zext_ln587_fu_338_p1;

assign x_x0_V_d0 = trunc_ln9_fu_259_p1;

assign x_x1_V_address0 = zext_ln587_2_fu_308_p1;

assign x_x1_V_d0 = trunc_ln9_fu_259_p1;

assign x_x2_V_address0 = zext_ln587_1_fu_323_p1;

assign x_x2_V_d0 = trunc_ln9_fu_259_p1;

assign zext_ln16_fu_242_p1 = shiftreg_fu_102;

assign zext_ln587_1_fu_323_p1 = tmp_1_fu_313_p4;

assign zext_ln587_2_fu_308_p1 = tmp_2_fu_298_p4;

assign zext_ln587_fu_338_p1 = tmp_fu_328_p4;

endmodule //interleave_manual_rnd_interleave_manual_rnd_Pipeline_LOAD
