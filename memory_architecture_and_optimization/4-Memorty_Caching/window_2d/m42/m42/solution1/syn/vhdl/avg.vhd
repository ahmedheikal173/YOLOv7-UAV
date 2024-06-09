-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity avg is
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 4;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32 );
port (
    ap_local_block : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    din_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    din_EN_A : OUT STD_LOGIC;
    din_WEN_A : OUT STD_LOGIC_VECTOR (0 downto 0);
    din_Din_A : OUT STD_LOGIC_VECTOR (7 downto 0);
    din_Dout_A : IN STD_LOGIC_VECTOR (7 downto 0);
    din_Clk_A : OUT STD_LOGIC;
    din_Rst_A : OUT STD_LOGIC;
    din_Addr_B : OUT STD_LOGIC_VECTOR (31 downto 0);
    din_EN_B : OUT STD_LOGIC;
    din_WEN_B : OUT STD_LOGIC_VECTOR (0 downto 0);
    din_Din_B : OUT STD_LOGIC_VECTOR (7 downto 0);
    din_Dout_B : IN STD_LOGIC_VECTOR (7 downto 0);
    din_Clk_B : OUT STD_LOGIC;
    din_Rst_B : OUT STD_LOGIC;
    dout_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    dout_EN_A : OUT STD_LOGIC;
    dout_WEN_A : OUT STD_LOGIC_VECTOR (0 downto 0);
    dout_Din_A : OUT STD_LOGIC_VECTOR (7 downto 0);
    dout_Dout_A : IN STD_LOGIC_VECTOR (7 downto 0);
    dout_Clk_A : OUT STD_LOGIC;
    dout_Rst_A : OUT STD_LOGIC;
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of avg is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "avg_avg,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.909250,HLS_SYN_LAT=819202,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=145,HLS_SYN_LUT=567,HLS_VERSION=2021_2}";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv19_0 : STD_LOGIC_VECTOR (18 downto 0) := "0000000000000000000";
    constant ap_const_lv11_7FF : STD_LOGIC_VECTOR (10 downto 0) := "11111111111";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv10_3FF : STD_LOGIC_VECTOR (9 downto 0) := "1111111111";
    constant ap_const_lv10_27F : STD_LOGIC_VECTOR (9 downto 0) := "1001111111";
    constant ap_const_lv19_64000 : STD_LOGIC_VECTOR (18 downto 0) := "1100100000000000000";
    constant ap_const_lv19_1 : STD_LOGIC_VECTOR (18 downto 0) := "0000000000000000001";
    constant ap_const_lv10_280 : STD_LOGIC_VECTOR (9 downto 0) := "1010000000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv10_2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

attribute shreg_extract : string;
    signal ap_local_deadlock : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_rst_reg_2 : STD_LOGIC := '1';
attribute shreg_extract of ap_rst_reg_2 : signal is "no";
    signal ap_rst_reg_1 : STD_LOGIC := '1';
attribute shreg_extract of ap_rst_reg_1 : signal is "no";
    signal ap_rst_n_inv : STD_LOGIC := '1';
attribute shreg_extract of ap_rst_n_inv : signal is "no";
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_continue : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_ready : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln22_fu_215_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal icmp_ln22_reg_511 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln455_5_fu_413_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln455_5_reg_520 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln455_5_fu_418_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal add_ln455_5_reg_530 : STD_LOGIC_VECTOR (18 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal tmp_13_reg_540 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_14_reg_545 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal zext_ln455_4_fu_402_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln455_6_fu_445_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal c_fu_84 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln24_fu_424_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_c_load : STD_LOGIC_VECTOR (9 downto 0);
    signal r_fu_88 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln22_1_fu_244_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_sig_allocacmp_r_1 : STD_LOGIC_VECTOR (9 downto 0);
    signal indvar_flatten_fu_92 : STD_LOGIC_VECTOR (18 downto 0);
    signal add_ln22_fu_221_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (18 downto 0);
    signal din_Addr_B_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal din_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal dout_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln22_fu_163_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal empty_fu_167_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_5_fu_179_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln7_fu_187_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal indvars_iv_next175_fu_173_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln9_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln24_fu_230_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_260_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_2_fu_252_p3 : STD_LOGIC_VECTOR (18 downto 0);
    signal zext_ln455_fu_268_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal zext_ln22_1_fu_278_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_mid1_fu_282_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_7_fu_294_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln7_fu_302_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_fu_193_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln22_2_fu_310_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_8_fu_326_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_4_fu_318_p3 : STD_LOGIC_VECTOR (18 downto 0);
    signal zext_ln455_1_fu_334_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal indvars_iv_next175_mid1_fu_288_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln9_1_fu_344_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln9_fu_350_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_6_fu_207_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln22_3_fu_358_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_s_fu_374_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_9_fu_366_p3 : STD_LOGIC_VECTOR (18 downto 0);
    signal zext_ln455_2_fu_382_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal select_ln22_fu_236_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln455_1_fu_338_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal zext_ln455_3_fu_392_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal add_ln455_3_fu_396_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal add_ln455_fu_272_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal add_ln455_4_fu_407_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal add_ln455_2_fu_386_p2 : STD_LOGIC_VECTOR (18 downto 0);
    signal r_V_fu_449_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln1245_1_fu_459_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1245_fu_456_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal ret_V_fu_463_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1245_2_fu_469_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal ret_V_1_fu_473_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_186 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component avg_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_continue : OUT STD_LOGIC;
        ap_idle : IN STD_LOGIC;
        ap_local_deadlock : IN STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component avg_flow_control_loop_pipe IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    control_s_axi_U : component avg_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_continue => ap_continue,
        ap_idle => ap_idle,
        ap_local_deadlock => ap_local_deadlock);

    flow_control_loop_pipe_U : component avg_flow_control_loop_pipe
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int,
        ap_continue => ap_continue);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ap_rst_n_inv_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_rst_n_inv <= ap_rst_reg_1;
        end if;
    end process;

    ap_rst_reg_1_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_rst_reg_1 <= ap_rst_reg_2;
        end if;
    end process;

    ap_rst_reg_2_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
                        ap_rst_reg_2 <= not(ap_rst_n);
        end if;
    end process;

    c_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_186)) then
                if ((icmp_ln22_fu_215_p2 = ap_const_lv1_0)) then 
                    c_fu_84 <= add_ln24_fu_424_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    c_fu_84 <= ap_const_lv10_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_186)) then
                if ((icmp_ln22_fu_215_p2 = ap_const_lv1_0)) then 
                    indvar_flatten_fu_92 <= add_ln22_fu_221_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_92 <= ap_const_lv19_0;
                end if;
            end if; 
        end if;
    end process;

    r_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_186)) then
                if ((icmp_ln22_fu_215_p2 = ap_const_lv1_0)) then 
                    r_fu_88 <= select_ln22_1_fu_244_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    r_fu_88 <= ap_const_lv10_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln22_fu_215_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                add_ln455_5_reg_530 <= add_ln455_5_fu_418_p2;
                    zext_ln455_5_reg_520(18 downto 0) <= zext_ln455_5_fu_413_p1(18 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln22_reg_511 <= icmp_ln22_fu_215_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln22_reg_511 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                tmp_13_reg_540 <= din_Dout_B;
                tmp_14_reg_545 <= din_Dout_A;
            end if;
        end if;
    end process;
    zext_ln455_5_reg_520(63 downto 19) <= "000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter0_stage0, ap_block_pp0_stage1_subdone, ap_idle_pp0_1to1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln22_fu_221_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv19_1));
    add_ln24_fu_424_p2 <= std_logic_vector(unsigned(select_ln22_fu_236_p3) + unsigned(ap_const_lv10_1));
    add_ln455_1_fu_338_p2 <= std_logic_vector(unsigned(tmp_4_fu_318_p3) + unsigned(zext_ln455_1_fu_334_p1));
    add_ln455_2_fu_386_p2 <= std_logic_vector(unsigned(tmp_9_fu_366_p3) + unsigned(zext_ln455_2_fu_382_p1));
    add_ln455_3_fu_396_p2 <= std_logic_vector(unsigned(add_ln455_1_fu_338_p2) + unsigned(zext_ln455_3_fu_392_p1));
    add_ln455_4_fu_407_p2 <= std_logic_vector(unsigned(add_ln455_fu_272_p2) + unsigned(zext_ln455_3_fu_392_p1));
    add_ln455_5_fu_418_p2 <= std_logic_vector(unsigned(add_ln455_2_fu_386_p2) + unsigned(zext_ln455_3_fu_392_p1));
    add_ln455_fu_272_p2 <= std_logic_vector(unsigned(tmp_2_fu_252_p3) + unsigned(zext_ln455_fu_268_p1));
    add_ln7_fu_187_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_r_1) + unsigned(ap_const_lv10_3FF));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter0, ap_done_reg)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, ap_done_reg)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_11001_assign_proc : process(ap_done_reg)
    begin
                ap_block_pp0_stage1_11001 <= (ap_done_reg = ap_const_logic_1);
    end process;


    ap_block_pp0_stage1_subdone_assign_proc : process(ap_done_reg)
    begin
                ap_block_pp0_stage1_subdone <= (ap_done_reg = ap_const_logic_1);
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_done_reg = ap_const_logic_1);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_186_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_186 <= ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln22_fu_215_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln22_fu_215_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_done_reg, ap_block_pp0_stage0_subdone, ap_loop_exit_ready)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_local_block <= ap_const_logic_0;
    ap_local_deadlock <= ap_const_lv1_0;
    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_c_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, c_fu_84, ap_loop_init)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_c_load <= ap_const_lv10_0;
        else 
            ap_sig_allocacmp_c_load <= c_fu_84;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_92)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv19_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_92;
        end if; 
    end process;


    ap_sig_allocacmp_r_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, ap_loop_init, r_fu_88)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_r_1 <= ap_const_lv10_0;
        else 
            ap_sig_allocacmp_r_1 <= r_fu_88;
        end if; 
    end process;

    din_Addr_A <= std_logic_vector(shift_left(unsigned(din_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_0(31-1 downto 0)))));

    din_Addr_A_orig_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, zext_ln455_5_fu_413_p1, ap_block_pp0_stage0, zext_ln455_6_fu_445_p1, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1))) then 
                din_Addr_A_orig <= zext_ln455_6_fu_445_p1(32 - 1 downto 0);
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
                din_Addr_A_orig <= zext_ln455_5_fu_413_p1(32 - 1 downto 0);
            else 
                din_Addr_A_orig <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            din_Addr_A_orig <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    din_Addr_B <= std_logic_vector(shift_left(unsigned(din_Addr_B_orig),to_integer(unsigned('0' & ap_const_lv32_0(31-1 downto 0)))));
    din_Addr_B_orig <= zext_ln455_4_fu_402_p1(32 - 1 downto 0);
    din_Clk_A <= ap_clk;
    din_Clk_B <= ap_clk;
    din_Din_A <= ap_const_lv8_0;
    din_Din_B <= ap_const_lv8_0;

    din_EN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then 
            din_EN_A <= ap_const_logic_1;
        else 
            din_EN_A <= ap_const_logic_0;
        end if; 
    end process;


    din_EN_B_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            din_EN_B <= ap_const_logic_1;
        else 
            din_EN_B <= ap_const_logic_0;
        end if; 
    end process;

    din_Rst_A <= ap_rst_n_inv;
    din_Rst_B <= ap_rst_n_inv;
    din_WEN_A <= ap_const_lv1_0;
    din_WEN_B <= ap_const_lv1_0;
    dout_Addr_A <= std_logic_vector(shift_left(unsigned(dout_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_0(31-1 downto 0)))));
    dout_Addr_A_orig <= zext_ln455_5_reg_520(32 - 1 downto 0);
    dout_Clk_A <= ap_clk;
    dout_Din_A <= ret_V_1_fu_473_p2(9 downto 2);

    dout_EN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            dout_EN_A <= ap_const_logic_1;
        else 
            dout_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    dout_Rst_A <= ap_rst_n_inv;

    dout_WEN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            dout_WEN_A <= ap_const_lv1_1;
        else 
            dout_WEN_A <= ap_const_lv1_0;
        end if; 
    end process;

    empty_fu_167_p2 <= std_logic_vector(unsigned(zext_ln22_fu_163_p1) + unsigned(ap_const_lv11_7FF));
    icmp_ln22_fu_215_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv19_64000) else "0";
    icmp_ln24_fu_230_p2 <= "1" when (ap_sig_allocacmp_c_load = ap_const_lv10_280) else "0";
    icmp_ln9_1_fu_344_p2 <= "1" when (unsigned(indvars_iv_next175_mid1_fu_288_p2) > unsigned(ap_const_lv10_27F)) else "0";
    icmp_ln9_fu_201_p2 <= "1" when (unsigned(indvars_iv_next175_fu_173_p2) > unsigned(ap_const_lv10_27F)) else "0";
    indvars_iv_next175_fu_173_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_r_1) + unsigned(ap_const_lv10_1));
    indvars_iv_next175_mid1_fu_288_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_r_1) + unsigned(ap_const_lv10_2));
    p_mid1_fu_282_p2 <= std_logic_vector(unsigned(zext_ln22_1_fu_278_p1) + unsigned(ap_const_lv11_7FF));
    r_V_fu_449_p3 <= (tmp_14_reg_545 & ap_const_lv1_0);
    ret_V_1_fu_473_p2 <= std_logic_vector(unsigned(ret_V_fu_463_p2) + unsigned(zext_ln1245_2_fu_469_p1));
    ret_V_fu_463_p2 <= std_logic_vector(unsigned(zext_ln1245_1_fu_459_p1) + unsigned(zext_ln1245_fu_456_p1));
    select_ln22_1_fu_244_p3 <= 
        indvars_iv_next175_fu_173_p2 when (icmp_ln24_fu_230_p2(0) = '1') else 
        ap_sig_allocacmp_r_1;
    select_ln22_2_fu_310_p3 <= 
        select_ln7_fu_302_p3 when (icmp_ln24_fu_230_p2(0) = '1') else 
        tmp_fu_193_p3;
    select_ln22_3_fu_358_p3 <= 
        select_ln9_fu_350_p3 when (icmp_ln24_fu_230_p2(0) = '1') else 
        tmp_6_fu_207_p3;
    select_ln22_fu_236_p3 <= 
        ap_const_lv10_0 when (icmp_ln24_fu_230_p2(0) = '1') else 
        ap_sig_allocacmp_c_load;
    select_ln7_fu_302_p3 <= 
        ap_const_lv10_0 when (tmp_7_fu_294_p3(0) = '1') else 
        ap_sig_allocacmp_r_1;
    select_ln9_fu_350_p3 <= 
        ap_const_lv10_27F when (icmp_ln9_1_fu_344_p2(0) = '1') else 
        indvars_iv_next175_mid1_fu_288_p2;
    tmp_2_fu_252_p3 <= (select_ln22_1_fu_244_p3 & ap_const_lv9_0);
    tmp_3_fu_260_p3 <= (select_ln22_1_fu_244_p3 & ap_const_lv7_0);
    tmp_4_fu_318_p3 <= (select_ln22_2_fu_310_p3 & ap_const_lv9_0);
    tmp_5_fu_179_p3 <= empty_fu_167_p2(10 downto 10);
    tmp_6_fu_207_p3 <= 
        ap_const_lv10_27F when (icmp_ln9_fu_201_p2(0) = '1') else 
        indvars_iv_next175_fu_173_p2;
    tmp_7_fu_294_p3 <= p_mid1_fu_282_p2(10 downto 10);
    tmp_8_fu_326_p3 <= (select_ln22_2_fu_310_p3 & ap_const_lv7_0);
    tmp_9_fu_366_p3 <= (select_ln22_3_fu_358_p3 & ap_const_lv9_0);
    tmp_fu_193_p3 <= 
        ap_const_lv10_0 when (tmp_5_fu_179_p3(0) = '1') else 
        add_ln7_fu_187_p2;
    tmp_s_fu_374_p3 <= (select_ln22_3_fu_358_p3 & ap_const_lv7_0);
    zext_ln1245_1_fu_459_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_fu_449_p3),10));
    zext_ln1245_2_fu_469_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(din_Dout_A),10));
    zext_ln1245_fu_456_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_13_reg_540),10));
    zext_ln22_1_fu_278_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(indvars_iv_next175_fu_173_p2),11));
    zext_ln22_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_r_1),11));
    zext_ln455_1_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_8_fu_326_p3),19));
    zext_ln455_2_fu_382_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_374_p3),19));
    zext_ln455_3_fu_392_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln22_fu_236_p3),19));
    zext_ln455_4_fu_402_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln455_3_fu_396_p2),64));
    zext_ln455_5_fu_413_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln455_4_fu_407_p2),64));
    zext_ln455_6_fu_445_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln455_5_reg_530),64));
    zext_ln455_fu_268_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_260_p3),19));
end behav;