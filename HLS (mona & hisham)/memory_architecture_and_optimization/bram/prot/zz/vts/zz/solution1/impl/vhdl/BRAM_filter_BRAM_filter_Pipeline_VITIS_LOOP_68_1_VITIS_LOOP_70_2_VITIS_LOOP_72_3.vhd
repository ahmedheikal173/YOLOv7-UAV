-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x_in_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    x_in_EN_A : OUT STD_LOGIC;
    x_in_WEN_A : OUT STD_LOGIC_VECTOR (0 downto 0);
    x_in_Din_A : OUT STD_LOGIC_VECTOR (7 downto 0);
    x_in_Dout_A : IN STD_LOGIC_VECTOR (7 downto 0);
    inn_V_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    inn_V_ce0 : OUT STD_LOGIC;
    inn_V_we0 : OUT STD_LOGIC;
    inn_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv9_18C : STD_LOGIC_VECTOR (8 downto 0) := "110001100";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv9_9 : STD_LOGIC_VECTOR (8 downto 0) := "000001001";
    constant ap_const_lv9_3 : STD_LOGIC_VECTOR (8 downto 0) := "000000011";
    constant ap_const_lv9_2C : STD_LOGIC_VECTOR (8 downto 0) := "000101100";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln68_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln70_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln70_reg_503 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln70_reg_503_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln70_reg_503_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln70_reg_503_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln68_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln68_reg_511 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln68_reg_511_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln68_reg_511_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln68_reg_511_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln74_3_fu_346_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln72_fu_406_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_72 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln72_fu_281_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (1 downto 0);
    signal idx_1_fu_76 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln75_fu_411_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_fu_80 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln70_2_fu_247_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (1 downto 0);
    signal idx_fu_84 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln70_3_fu_399_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal indvar_flatten_fu_88 : STD_LOGIC_VECTOR (3 downto 0);
    signal select_ln70_4_fu_293_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (3 downto 0);
    signal k_fu_92 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln68_3_fu_330_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal indvars_iv89_fu_96 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln68_4_fu_379_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal indvar_flatten15_fu_100 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln68_2_fu_180_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_allocacmp_indvar_flatten15_load : STD_LOGIC_VECTOR (8 downto 0);
    signal x_in_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln72_fu_215_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln68_fu_209_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln68_1_fu_201_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal or_ln70_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln70_fu_227_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_fu_259_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln74_1_fu_267_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln74_fu_255_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln70_1_fu_239_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln70_2_fu_287_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln68_fu_324_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln74_3_fu_346_p0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_432_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln68_1_fu_359_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln68_fu_365_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln70_1_fu_386_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln68_2_fu_372_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal select_ln70_fu_392_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_432_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_fu_432_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_fu_432_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_432_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal grp_fu_432_p00 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_432_p10 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_432_p30 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component BRAM_filter_ama_addmuladd_5s_2ns_6ns_6ns_9_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (1 downto 0);
        din2 : IN STD_LOGIC_VECTOR (5 downto 0);
        din3 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (8 downto 0) );
    end component;


    component BRAM_filter_flow_control_loop_pipe_sequential_init IS
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
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    ama_addmuladd_5s_2ns_6ns_6ns_9_4_1_U1 : component BRAM_filter_ama_addmuladd_5s_2ns_6ns_6ns_9_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 5,
        din1_WIDTH => 2,
        din2_WIDTH => 6,
        din3_WIDTH => 6,
        dout_WIDTH => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_432_p0,
        din1 => grp_fu_432_p1,
        din2 => grp_fu_432_p2,
        din3 => grp_fu_432_p3,
        ce => ap_const_logic_1,
        dout => grp_fu_432_p4);

    flow_control_loop_pipe_sequential_init_U : component BRAM_filter_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    i_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln68_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    i_fu_80 <= select_ln70_2_fu_247_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_80 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    idx_1_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    idx_1_fu_76 <= ap_const_lv9_0;
                elsif ((ap_enable_reg_pp0_iter4 = ap_const_logic_1)) then 
                    idx_1_fu_76 <= add_ln75_fu_411_p2;
                end if;
            end if; 
        end if;
    end process;

    idx_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    idx_fu_84 <= ap_const_lv9_0;
                elsif ((ap_enable_reg_pp0_iter4 = ap_const_logic_1)) then 
                    idx_fu_84 <= select_ln70_3_fu_399_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten15_fu_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln68_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten15_fu_100 <= add_ln68_2_fu_180_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten15_fu_100 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln68_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten_fu_88 <= select_ln70_4_fu_293_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_88 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    indvars_iv89_fu_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    indvars_iv89_fu_96 <= ap_const_lv9_0;
                elsif ((ap_enable_reg_pp0_iter4 = ap_const_logic_1)) then 
                    indvars_iv89_fu_96 <= select_ln68_4_fu_379_p3;
                end if;
            end if; 
        end if;
    end process;

    j_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln68_fu_174_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    j_fu_72 <= add_ln72_fu_281_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_72 <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;

    k_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    k_fu_92 <= ap_const_lv6_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    k_fu_92 <= select_ln68_3_fu_330_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln68_fu_174_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                and_ln68_reg_511 <= and_ln68_fu_221_p2;
                icmp_ln70_reg_503 <= icmp_ln70_fu_195_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                and_ln68_reg_511_pp0_iter1_reg <= and_ln68_reg_511;
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln70_reg_503_pp0_iter1_reg <= icmp_ln70_reg_503;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                and_ln68_reg_511_pp0_iter2_reg <= and_ln68_reg_511_pp0_iter1_reg;
                and_ln68_reg_511_pp0_iter3_reg <= and_ln68_reg_511_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                icmp_ln70_reg_503_pp0_iter2_reg <= icmp_ln70_reg_503_pp0_iter1_reg;
                icmp_ln70_reg_503_pp0_iter3_reg <= icmp_ln70_reg_503_pp0_iter2_reg;
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
    add_ln68_1_fu_359_p2 <= std_logic_vector(unsigned(indvars_iv89_fu_96) + unsigned(ap_const_lv9_9));
    add_ln68_2_fu_180_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten15_load) + unsigned(ap_const_lv9_1));
    add_ln68_fu_324_p2 <= std_logic_vector(unsigned(k_fu_92) + unsigned(ap_const_lv6_1));
    add_ln70_1_fu_386_p2 <= std_logic_vector(unsigned(select_ln68_fu_365_p3) + unsigned(ap_const_lv9_3));
    add_ln70_2_fu_287_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv4_1));
    add_ln70_fu_227_p2 <= std_logic_vector(unsigned(select_ln68_1_fu_201_p3) + unsigned(ap_const_lv2_1));
    add_ln72_fu_281_p2 <= std_logic_vector(unsigned(select_ln70_1_fu_239_p3) + unsigned(ap_const_lv2_1));
    add_ln75_fu_411_p2 <= std_logic_vector(unsigned(select_ln70_fu_392_p3) + unsigned(ap_const_lv9_1));
    and_ln68_fu_221_p2 <= (xor_ln68_fu_209_p2 and icmp_ln72_fu_215_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln68_fu_174_p2)
    begin
        if (((icmp_ln68_fu_174_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter3_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, i_fu_80)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_80;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten15_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten15_fu_100)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten15_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_indvar_flatten15_load <= indvar_flatten15_fu_100;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_88)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_88;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, j_fu_72, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv2_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_72;
        end if; 
    end process;

    grp_fu_432_p0 <= grp_fu_432_p00(5 - 1 downto 0);
    grp_fu_432_p00 <= std_logic_vector(unsigned(zext_ln74_1_fu_267_p1) - unsigned(zext_ln74_fu_255_p1));
    grp_fu_432_p1 <= grp_fu_432_p10(2 - 1 downto 0);
    grp_fu_432_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln70_1_fu_239_p3),9));
    grp_fu_432_p2 <= ap_const_lv9_2C(6 - 1 downto 0);
    grp_fu_432_p3 <= grp_fu_432_p30(6 - 1 downto 0);
    grp_fu_432_p30 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln68_3_fu_330_p3),9));
    icmp_ln68_fu_174_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten15_load = ap_const_lv9_18C) else "0";
    icmp_ln70_fu_195_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv4_9) else "0";
    icmp_ln72_fu_215_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv2_3) else "0";
    inn_V_address0 <= zext_ln72_fu_406_p1(9 - 1 downto 0);

    inn_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            inn_V_ce0 <= ap_const_logic_1;
        else 
            inn_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    inn_V_d0 <= x_in_Dout_A;

    inn_V_we0_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            inn_V_we0 <= ap_const_logic_1;
        else 
            inn_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    or_ln70_fu_233_p2 <= (icmp_ln70_fu_195_p2 or and_ln68_fu_221_p2);
    select_ln68_1_fu_201_p3 <= 
        ap_const_lv2_0 when (icmp_ln70_fu_195_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    select_ln68_2_fu_372_p3 <= 
        add_ln68_1_fu_359_p2 when (icmp_ln70_reg_503_pp0_iter3_reg(0) = '1') else 
        idx_1_fu_76;
    select_ln68_3_fu_330_p3 <= 
        add_ln68_fu_324_p2 when (icmp_ln70_reg_503_pp0_iter1_reg(0) = '1') else 
        k_fu_92;
    select_ln68_4_fu_379_p3 <= 
        add_ln68_1_fu_359_p2 when (icmp_ln70_reg_503_pp0_iter3_reg(0) = '1') else 
        indvars_iv89_fu_96;
    select_ln68_fu_365_p3 <= 
        add_ln68_1_fu_359_p2 when (icmp_ln70_reg_503_pp0_iter3_reg(0) = '1') else 
        idx_fu_84;
    select_ln70_1_fu_239_p3 <= 
        ap_const_lv2_0 when (or_ln70_fu_233_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    select_ln70_2_fu_247_p3 <= 
        add_ln70_fu_227_p2 when (and_ln68_fu_221_p2(0) = '1') else 
        select_ln68_1_fu_201_p3;
    select_ln70_3_fu_399_p3 <= 
        add_ln70_1_fu_386_p2 when (and_ln68_reg_511_pp0_iter3_reg(0) = '1') else 
        select_ln68_fu_365_p3;
    select_ln70_4_fu_293_p3 <= 
        ap_const_lv4_1 when (icmp_ln70_fu_195_p2(0) = '1') else 
        add_ln70_2_fu_287_p2;
    select_ln70_fu_392_p3 <= 
        add_ln70_1_fu_386_p2 when (and_ln68_reg_511_pp0_iter3_reg(0) = '1') else 
        select_ln68_2_fu_372_p3;
    tmp_fu_259_p3 <= (select_ln70_2_fu_247_p3 & ap_const_lv2_0);
    x_in_Addr_A <= std_logic_vector(shift_left(unsigned(x_in_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_0(31-1 downto 0)))));
    x_in_Addr_A_orig <= zext_ln74_3_fu_346_p1(32 - 1 downto 0);
    x_in_Din_A <= ap_const_lv8_0;

    x_in_EN_A_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            x_in_EN_A <= ap_const_logic_1;
        else 
            x_in_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    x_in_WEN_A <= ap_const_lv1_0;
    xor_ln68_fu_209_p2 <= (icmp_ln70_fu_195_p2 xor ap_const_lv1_1);
    zext_ln72_fu_406_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln70_fu_392_p3),64));
    zext_ln74_1_fu_267_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_259_p3),9));
    zext_ln74_3_fu_346_p0 <= grp_fu_432_p4;
    zext_ln74_3_fu_346_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln74_3_fu_346_p0),64));
    zext_ln74_fu_255_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln70_2_fu_247_p3),9));
end behav;
