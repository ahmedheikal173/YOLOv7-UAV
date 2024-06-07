-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity img_interleave_manual_seq_img_interleave_manual_seq_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3 is
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
    tmpx_V_address0 : OUT STD_LOGIC_VECTOR (20 downto 0);
    tmpx_V_ce0 : OUT STD_LOGIC;
    tmpx_V_we0 : OUT STD_LOGIC;
    tmpx_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of img_interleave_manual_seq_img_interleave_manual_seq_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv20_0 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv21_12C000 : STD_LOGIC_VECTOR (20 downto 0) := "100101100000000000000";
    constant ap_const_lv21_1 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv20_64000 : STD_LOGIC_VECTOR (19 downto 0) := "01100100000000000000";
    constant ap_const_lv10_280 : STD_LOGIC_VECTOR (9 downto 0) := "1010000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv20_1 : STD_LOGIC_VECTOR (19 downto 0) := "00000000000000000001";
    constant ap_const_lv21_64000 : STD_LOGIC_VECTOR (20 downto 0) := "001100100000000000000";
    constant ap_const_lv21_280 : STD_LOGIC_VECTOR (20 downto 0) := "000000000001010000000";
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
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln32_fu_182_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln33_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln33_reg_543 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln32_fu_250_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln32_reg_550 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln35_3_fu_352_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal idx_1_cast_fu_458_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_80 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln34_fu_357_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal idx_1_fu_84 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln36_fu_463_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal i_fu_88 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln33_2_fu_276_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal idx_fu_92 : STD_LOGIC_VECTOR (20 downto 0);
    signal select_ln33_3_fu_451_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal indvar_flatten_fu_96 : STD_LOGIC_VECTOR (19 downto 0);
    signal select_ln33_4_fu_369_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal k_fu_100 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln32_3_fu_226_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal indvars_iv559_fu_104 : STD_LOGIC_VECTOR (20 downto 0);
    signal select_ln32_4_fu_431_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal indvar_flatten15_fu_108 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln32_2_fu_188_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal x_in_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln32_fu_206_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln34_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln32_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln32_1_fu_218_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal or_ln33_fu_262_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln33_fu_256_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_fu_284_p3 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_2_fu_296_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln35_fu_292_p1 : STD_LOGIC_VECTOR (61 downto 0);
    signal zext_ln35_1_fu_304_p1 : STD_LOGIC_VECTOR (61 downto 0);
    signal select_ln33_1_fu_268_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln35_fu_308_p2 : STD_LOGIC_VECTOR (61 downto 0);
    signal zext_ln35_2_fu_314_p1 : STD_LOGIC_VECTOR (61 downto 0);
    signal add_ln35_1_fu_318_p2 : STD_LOGIC_VECTOR (61 downto 0);
    signal trunc_ln35_1_fu_328_p1 : STD_LOGIC_VECTOR (18 downto 0);
    signal p_shl_cast_fu_332_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal trunc_ln35_fu_324_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal sub_ln35_fu_340_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal zext_ln33_fu_234_p1 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln35_2_fu_346_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln33_2_fu_363_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal add_ln32_1_fu_411_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal select_ln32_fu_417_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln33_1_fu_438_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal select_ln32_2_fu_424_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal select_ln33_fu_444_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component img_interleave_manual_seq_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component img_interleave_manual_seq_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_88 <= ap_const_lv10_0;
                elsif (((icmp_ln32_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_fu_88 <= select_ln33_2_fu_276_p3;
                end if;
            end if; 
        end if;
    end process;

    idx_1_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    idx_1_fu_84 <= ap_const_lv21_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    idx_1_fu_84 <= add_ln36_fu_463_p2;
                end if;
            end if; 
        end if;
    end process;

    idx_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    idx_fu_92 <= ap_const_lv21_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    idx_fu_92 <= select_ln33_3_fu_451_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten15_fu_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten15_fu_108 <= ap_const_lv21_0;
                elsif (((icmp_ln32_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten15_fu_108 <= add_ln32_2_fu_188_p2;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_96 <= ap_const_lv20_0;
                elsif (((icmp_ln32_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten_fu_96 <= select_ln33_4_fu_369_p3;
                end if;
            end if; 
        end if;
    end process;

    indvars_iv559_fu_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    indvars_iv559_fu_104 <= ap_const_lv21_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    indvars_iv559_fu_104 <= select_ln32_4_fu_431_p3;
                end if;
            end if; 
        end if;
    end process;

    j_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_80 <= ap_const_lv10_0;
                elsif (((icmp_ln32_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j_fu_80 <= add_ln34_fu_357_p2;
                end if;
            end if; 
        end if;
    end process;

    k_fu_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    k_fu_100 <= ap_const_lv2_0;
                elsif (((icmp_ln32_fu_182_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    k_fu_100 <= select_ln32_3_fu_226_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln32_fu_182_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                and_ln32_reg_550 <= and_ln32_fu_250_p2;
                icmp_ln33_reg_543 <= icmp_ln33_fu_212_p2;
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
    add_ln32_1_fu_411_p2 <= std_logic_vector(unsigned(indvars_iv559_fu_104) + unsigned(ap_const_lv21_64000));
    add_ln32_2_fu_188_p2 <= std_logic_vector(unsigned(indvar_flatten15_fu_108) + unsigned(ap_const_lv21_1));
    add_ln32_fu_206_p2 <= std_logic_vector(unsigned(k_fu_100) + unsigned(ap_const_lv2_1));
    add_ln33_1_fu_438_p2 <= std_logic_vector(unsigned(select_ln32_fu_417_p3) + unsigned(ap_const_lv21_280));
    add_ln33_2_fu_363_p2 <= std_logic_vector(unsigned(indvar_flatten_fu_96) + unsigned(ap_const_lv20_1));
    add_ln33_fu_256_p2 <= std_logic_vector(unsigned(select_ln32_1_fu_218_p3) + unsigned(ap_const_lv10_1));
    add_ln34_fu_357_p2 <= std_logic_vector(unsigned(select_ln33_1_fu_268_p3) + unsigned(ap_const_lv10_1));
    add_ln35_1_fu_318_p2 <= std_logic_vector(unsigned(add_ln35_fu_308_p2) + unsigned(zext_ln35_2_fu_314_p1));
    add_ln35_2_fu_346_p2 <= std_logic_vector(unsigned(sub_ln35_fu_340_p2) + unsigned(zext_ln33_fu_234_p1));
    add_ln35_fu_308_p2 <= std_logic_vector(unsigned(zext_ln35_fu_292_p1) + unsigned(zext_ln35_1_fu_304_p1));
    add_ln36_fu_463_p2 <= std_logic_vector(unsigned(select_ln33_fu_444_p3) + unsigned(ap_const_lv21_1));
    and_ln32_fu_250_p2 <= (xor_ln32_fu_238_p2 and icmp_ln34_fu_244_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln32_fu_182_p2)
    begin
        if (((icmp_ln32_fu_182_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln32_fu_182_p2 <= "1" when (indvar_flatten15_fu_108 = ap_const_lv21_12C000) else "0";
    icmp_ln33_fu_212_p2 <= "1" when (indvar_flatten_fu_96 = ap_const_lv20_64000) else "0";
    icmp_ln34_fu_244_p2 <= "1" when (j_fu_80 = ap_const_lv10_280) else "0";
    idx_1_cast_fu_458_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln33_fu_444_p3),64));
    or_ln33_fu_262_p2 <= (icmp_ln33_fu_212_p2 or and_ln32_fu_250_p2);
    p_shl_cast_fu_332_p3 <= (trunc_ln35_1_fu_328_p1 & ap_const_lv2_0);
    select_ln32_1_fu_218_p3 <= 
        ap_const_lv10_0 when (icmp_ln33_fu_212_p2(0) = '1') else 
        i_fu_88;
    select_ln32_2_fu_424_p3 <= 
        add_ln32_1_fu_411_p2 when (icmp_ln33_reg_543(0) = '1') else 
        idx_1_fu_84;
    select_ln32_3_fu_226_p3 <= 
        add_ln32_fu_206_p2 when (icmp_ln33_fu_212_p2(0) = '1') else 
        k_fu_100;
    select_ln32_4_fu_431_p3 <= 
        add_ln32_1_fu_411_p2 when (icmp_ln33_reg_543(0) = '1') else 
        indvars_iv559_fu_104;
    select_ln32_fu_417_p3 <= 
        add_ln32_1_fu_411_p2 when (icmp_ln33_reg_543(0) = '1') else 
        idx_fu_92;
    select_ln33_1_fu_268_p3 <= 
        ap_const_lv10_0 when (or_ln33_fu_262_p2(0) = '1') else 
        j_fu_80;
    select_ln33_2_fu_276_p3 <= 
        add_ln33_fu_256_p2 when (and_ln32_fu_250_p2(0) = '1') else 
        select_ln32_1_fu_218_p3;
    select_ln33_3_fu_451_p3 <= 
        add_ln33_1_fu_438_p2 when (and_ln32_reg_550(0) = '1') else 
        select_ln32_fu_417_p3;
    select_ln33_4_fu_369_p3 <= 
        ap_const_lv20_1 when (icmp_ln33_fu_212_p2(0) = '1') else 
        add_ln33_2_fu_363_p2;
    select_ln33_fu_444_p3 <= 
        add_ln33_1_fu_438_p2 when (and_ln32_reg_550(0) = '1') else 
        select_ln32_2_fu_424_p3;
    sub_ln35_fu_340_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_332_p3) - unsigned(trunc_ln35_fu_324_p1));
    tmp_2_fu_296_p3 <= (select_ln33_2_fu_276_p3 & ap_const_lv7_0);
    tmp_fu_284_p3 <= (select_ln33_2_fu_276_p3 & ap_const_lv9_0);
    tmpx_V_address0 <= idx_1_cast_fu_458_p1(21 - 1 downto 0);

    tmpx_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            tmpx_V_ce0 <= ap_const_logic_1;
        else 
            tmpx_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmpx_V_d0 <= x_in_Dout_A;

    tmpx_V_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            tmpx_V_we0 <= ap_const_logic_1;
        else 
            tmpx_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln35_1_fu_328_p1 <= add_ln35_1_fu_318_p2(19 - 1 downto 0);
    trunc_ln35_fu_324_p1 <= add_ln35_1_fu_318_p2(21 - 1 downto 0);
    x_in_Addr_A <= std_logic_vector(shift_left(unsigned(x_in_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_0(31-1 downto 0)))));
    x_in_Addr_A_orig <= zext_ln35_3_fu_352_p1(32 - 1 downto 0);
    x_in_Din_A <= ap_const_lv8_0;

    x_in_EN_A_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_in_EN_A <= ap_const_logic_1;
        else 
            x_in_EN_A <= ap_const_logic_0;
        end if; 
    end process;

    x_in_WEN_A <= ap_const_lv1_0;
    xor_ln32_fu_238_p2 <= (icmp_ln33_fu_212_p2 xor ap_const_lv1_1);
    zext_ln33_fu_234_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln32_3_fu_226_p3),21));
    zext_ln35_1_fu_304_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_296_p3),62));
    zext_ln35_2_fu_314_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln33_1_fu_268_p3),62));
    zext_ln35_3_fu_352_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln35_2_fu_346_p2),64));
    zext_ln35_fu_292_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_284_p3),62));
end behav;
