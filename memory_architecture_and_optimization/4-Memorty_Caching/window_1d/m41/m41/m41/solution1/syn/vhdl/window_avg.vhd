-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity window_avg is
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


architecture behav of window_avg is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "window_avg_window_avg,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.372500,HLS_SYN_LAT=1228804,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=110,HLS_SYN_LUT=275,HLS_VERSION=2021_2}";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv21_12C001 : STD_LOGIC_VECTOR (20 downto 0) := "100101100000000000001";
    constant ap_const_lv21_1 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000001";
    constant ap_const_lv21_12C000 : STD_LOGIC_VECTOR (20 downto 0) := "100101100000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv21_1FFFFF : STD_LOGIC_VECTOR (20 downto 0) := "111111111111111111111";
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
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
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
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln43_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal i_1_reg_261 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln43_reg_269 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln50_fu_123_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln50_reg_278 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln43_fu_118_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln51_fu_227_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal shift_reg_regs_V_1_fu_60 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_fu_64 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln43_fu_112_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR (20 downto 0);
    signal r_V_1_fu_68 : STD_LOGIC_VECTOR (7 downto 0);
    signal shift_reg_regs_V_fu_145_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal din_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal dout_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln45_fu_140_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln11_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln13_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal lhs_fu_158_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal r_V_fu_179_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln1245_1_fu_191_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1245_fu_187_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal rhs_1_fu_171_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ret_V_fu_195_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1245_2_fu_201_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal ret_V_1_fu_205_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln51_fu_222_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_156 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component window_avg_control_s_axi IS
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


    component window_avg_flow_control_loop_pipe IS
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
    control_s_axi_U : component window_avg_control_s_axi
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

    flow_control_loop_pipe_U : component window_avg_flow_control_loop_pipe
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter1_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
                if (((ap_loop_exit_ready = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_loop_exit_ready_pp0_iter1_reg <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then 
                    ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
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

    i_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_156)) then
                if ((icmp_ln43_fu_106_p2 = ap_const_lv1_0)) then 
                    i_fu_64 <= add_ln43_fu_112_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_64 <= ap_const_lv21_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                i_1_reg_261 <= ap_sig_allocacmp_i_1;
                icmp_ln43_reg_269 <= icmp_ln43_fu_106_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln43_fu_106_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln50_reg_278 <= icmp_ln50_fu_123_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln43_reg_269 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                r_V_1_fu_68 <= shift_reg_regs_V_fu_145_p3;
                shift_reg_regs_V_1_fu_60 <= r_V_1_fu_68;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln43_fu_112_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_1) + unsigned(ap_const_lv21_1));
    add_ln51_fu_222_p2 <= std_logic_vector(unsigned(i_1_reg_261) + unsigned(ap_const_lv21_1FFFFF));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_done_reg, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_done_reg, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_done_reg = ap_const_logic_1) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_done_reg)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_done_reg = ap_const_logic_1);
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_156_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
                ap_condition_156 <= ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, icmp_ln43_fu_106_p2, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln43_fu_106_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_done_reg, ap_block_pp0_stage0_subdone, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0))) then 
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

    ap_local_block <= ap_const_logic_0;
    ap_local_deadlock <= ap_const_lv1_0;
    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_64, ap_loop_init, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_1 <= ap_const_lv21_0;
        else 
            ap_sig_allocacmp_i_1 <= i_fu_64;
        end if; 
    end process;

    din_Addr_A <= std_logic_vector(shift_left(unsigned(din_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_0(31-1 downto 0)))));
    din_Addr_A_orig <= zext_ln43_fu_118_p1(32 - 1 downto 0);
    din_Clk_A <= ap_clk;
    din_Din_A <= ap_const_lv8_0;

    din_EN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1))) then 
            din_EN_A <= ap_const_logic_1;
        else 
            din_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    din_Rst_A <= ap_rst_n_inv;
    din_WEN_A <= ap_const_lv1_0;
    dout_Addr_A <= std_logic_vector(shift_left(unsigned(dout_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_0(31-1 downto 0)))));
    dout_Addr_A_orig <= zext_ln51_fu_227_p1(32 - 1 downto 0);
    dout_Clk_A <= ap_clk;
    dout_Din_A <= ret_V_1_fu_205_p2(9 downto 2);

    dout_EN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            dout_EN_A <= ap_const_logic_1;
        else 
            dout_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    dout_Rst_A <= ap_rst_n_inv;

    dout_WEN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, icmp_ln43_reg_269, icmp_ln50_reg_278)
    begin
        if (((icmp_ln50_reg_278 = ap_const_lv1_0) and (icmp_ln43_reg_269 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            dout_WEN_A <= ap_const_lv1_1;
        else 
            dout_WEN_A <= ap_const_lv1_0;
        end if; 
    end process;

    icmp_ln11_fu_153_p2 <= "1" when (i_1_reg_261 = ap_const_lv21_1) else "0";
    icmp_ln13_fu_166_p2 <= "1" when (i_1_reg_261 = ap_const_lv21_12C000) else "0";
    icmp_ln43_fu_106_p2 <= "1" when (ap_sig_allocacmp_i_1 = ap_const_lv21_12C001) else "0";
    icmp_ln45_fu_140_p2 <= "1" when (unsigned(i_1_reg_261) < unsigned(ap_const_lv21_12C000)) else "0";
    icmp_ln50_fu_123_p2 <= "1" when (ap_sig_allocacmp_i_1 = ap_const_lv21_0) else "0";
    lhs_fu_158_p3 <= 
        r_V_1_fu_68 when (icmp_ln11_fu_153_p2(0) = '1') else 
        shift_reg_regs_V_1_fu_60;
    r_V_fu_179_p3 <= (r_V_1_fu_68 & ap_const_lv1_0);
    ret_V_1_fu_205_p2 <= std_logic_vector(unsigned(ret_V_fu_195_p2) + unsigned(zext_ln1245_2_fu_201_p1));
    ret_V_fu_195_p2 <= std_logic_vector(unsigned(zext_ln1245_1_fu_191_p1) + unsigned(zext_ln1245_fu_187_p1));
    rhs_1_fu_171_p3 <= 
        r_V_1_fu_68 when (icmp_ln13_fu_166_p2(0) = '1') else 
        shift_reg_regs_V_fu_145_p3;
    shift_reg_regs_V_fu_145_p3 <= 
        din_Dout_A when (icmp_ln45_fu_140_p2(0) = '1') else 
        r_V_1_fu_68;
    zext_ln1245_1_fu_191_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_fu_179_p3),10));
    zext_ln1245_2_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(rhs_1_fu_171_p3),10));
    zext_ln1245_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lhs_fu_158_p3),10));
    zext_ln43_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_1),64));
    zext_ln51_fu_227_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln51_fu_222_p2),64));
end behav;