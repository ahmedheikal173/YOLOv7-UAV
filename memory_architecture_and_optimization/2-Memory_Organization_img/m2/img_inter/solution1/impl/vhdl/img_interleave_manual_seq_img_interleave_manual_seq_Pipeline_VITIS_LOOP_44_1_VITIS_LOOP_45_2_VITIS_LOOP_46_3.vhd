-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity img_interleave_manual_seq_img_interleave_manual_seq_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    y_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    y_EN_A : OUT STD_LOGIC;
    y_WEN_A : OUT STD_LOGIC_VECTOR (0 downto 0);
    y_Din_A : OUT STD_LOGIC_VECTOR (7 downto 0);
    y_Dout_A : IN STD_LOGIC_VECTOR (7 downto 0);
    tmpy_V_address0 : OUT STD_LOGIC_VECTOR (16 downto 0);
    tmpy_V_ce0 : OUT STD_LOGIC;
    tmpy_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of img_interleave_manual_seq_img_interleave_manual_seq_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv17_12C00 : STD_LOGIC_VECTOR (16 downto 0) := "10010110000000000";
    constant ap_const_lv17_1 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000001";
    constant ap_const_lv17_6400 : STD_LOGIC_VECTOR (16 downto 0) := "00110010000000000";
    constant ap_const_lv16_6400 : STD_LOGIC_VECTOR (15 downto 0) := "0110010000000000";
    constant ap_const_lv6_28 : STD_LOGIC_VECTOR (5 downto 0) := "101000";
    constant ap_const_lv17_28 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000101000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";

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
    signal icmp_ln44_fu_178_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln45_fu_211_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln45_reg_540 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln44_fu_245_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln44_reg_546 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln45_1_fu_279_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln45_1_reg_551 : STD_LOGIC_VECTOR (5 downto 0);
    signal idx_5_cast_fu_295_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln47_3_fu_466_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_fu_76 : STD_LOGIC_VECTOR (5 downto 0);
    signal add_ln46_fu_306_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal idx_fu_80 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln48_fu_300_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal i_fu_84 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln45_2_fu_392_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal idx_1_fu_88 : STD_LOGIC_VECTOR (16 downto 0);
    signal select_ln45_3_fu_287_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal indvar_flatten23_fu_92 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln45_4_fu_318_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal k_fu_96 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln44_3_fu_375_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal indvars_iv555_fu_100 : STD_LOGIC_VECTOR (16 downto 0);
    signal select_ln44_4_fu_251_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal indvar_flatten39_fu_104 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln44_2_fu_184_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal y_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln44_1_fu_205_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal icmp_ln46_fu_239_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln44_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln44_fu_217_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln45_1_fu_259_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal select_ln44_2_fu_225_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal or_ln45_fu_273_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln45_fu_265_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln45_2_fu_312_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln44_fu_362_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln44_1_fu_368_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln45_fu_386_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_fu_399_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_1_fu_411_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln47_fu_407_p1 : STD_LOGIC_VECTOR (61 downto 0);
    signal zext_ln47_1_fu_419_p1 : STD_LOGIC_VECTOR (61 downto 0);
    signal add_ln47_fu_423_p2 : STD_LOGIC_VECTOR (61 downto 0);
    signal zext_ln47_2_fu_429_p1 : STD_LOGIC_VECTOR (61 downto 0);
    signal add_ln47_1_fu_432_p2 : STD_LOGIC_VECTOR (61 downto 0);
    signal trunc_ln47_1_fu_442_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl4_cast_fu_446_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal trunc_ln47_fu_438_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sub_ln47_fu_454_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln45_fu_382_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln47_2_fu_460_p2 : STD_LOGIC_VECTOR (16 downto 0);
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


    i_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    i_fu_84 <= ap_const_lv10_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    i_fu_84 <= select_ln45_2_fu_392_p3;
                end if;
            end if; 
        end if;
    end process;

    idx_1_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    idx_1_fu_88 <= ap_const_lv17_0;
                elsif (((icmp_ln44_fu_178_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    idx_1_fu_88 <= select_ln45_3_fu_287_p3;
                end if;
            end if; 
        end if;
    end process;

    idx_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    idx_fu_80 <= ap_const_lv17_0;
                elsif (((icmp_ln44_fu_178_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    idx_fu_80 <= add_ln48_fu_300_p2;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten23_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten23_fu_92 <= ap_const_lv16_0;
                elsif (((icmp_ln44_fu_178_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten23_fu_92 <= select_ln45_4_fu_318_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten39_fu_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten39_fu_104 <= ap_const_lv17_0;
                elsif (((icmp_ln44_fu_178_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten39_fu_104 <= add_ln44_2_fu_184_p2;
                end if;
            end if; 
        end if;
    end process;

    indvars_iv555_fu_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvars_iv555_fu_100 <= ap_const_lv17_0;
                elsif (((icmp_ln44_fu_178_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvars_iv555_fu_100 <= select_ln44_4_fu_251_p3;
                end if;
            end if; 
        end if;
    end process;

    j_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_76 <= ap_const_lv6_0;
                elsif (((icmp_ln44_fu_178_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j_fu_76 <= add_ln46_fu_306_p2;
                end if;
            end if; 
        end if;
    end process;

    k_fu_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    k_fu_96 <= ap_const_lv2_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    k_fu_96 <= select_ln44_3_fu_375_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln44_fu_178_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                and_ln44_reg_546 <= and_ln44_fu_245_p2;
                icmp_ln45_reg_540 <= icmp_ln45_fu_211_p2;
                select_ln45_1_reg_551 <= select_ln45_1_fu_279_p3;
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
    add_ln44_1_fu_205_p2 <= std_logic_vector(unsigned(indvars_iv555_fu_100) + unsigned(ap_const_lv17_6400));
    add_ln44_2_fu_184_p2 <= std_logic_vector(unsigned(indvar_flatten39_fu_104) + unsigned(ap_const_lv17_1));
    add_ln44_fu_362_p2 <= std_logic_vector(unsigned(k_fu_96) + unsigned(ap_const_lv2_1));
    add_ln45_1_fu_259_p2 <= std_logic_vector(unsigned(select_ln44_fu_217_p3) + unsigned(ap_const_lv17_28));
    add_ln45_2_fu_312_p2 <= std_logic_vector(unsigned(indvar_flatten23_fu_92) + unsigned(ap_const_lv16_1));
    add_ln45_fu_386_p2 <= std_logic_vector(unsigned(select_ln44_1_fu_368_p3) + unsigned(ap_const_lv10_1));
    add_ln46_fu_306_p2 <= std_logic_vector(unsigned(select_ln45_1_fu_279_p3) + unsigned(ap_const_lv6_1));
    add_ln47_1_fu_432_p2 <= std_logic_vector(unsigned(add_ln47_fu_423_p2) + unsigned(zext_ln47_2_fu_429_p1));
    add_ln47_2_fu_460_p2 <= std_logic_vector(unsigned(sub_ln47_fu_454_p2) + unsigned(zext_ln45_fu_382_p1));
    add_ln47_fu_423_p2 <= std_logic_vector(unsigned(zext_ln47_fu_407_p1) + unsigned(zext_ln47_1_fu_419_p1));
    add_ln48_fu_300_p2 <= std_logic_vector(unsigned(select_ln45_fu_265_p3) + unsigned(ap_const_lv17_1));
    and_ln44_fu_245_p2 <= (xor_ln44_fu_233_p2 and icmp_ln46_fu_239_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln44_fu_178_p2)
    begin
        if (((icmp_ln44_fu_178_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    icmp_ln44_fu_178_p2 <= "1" when (indvar_flatten39_fu_104 = ap_const_lv17_12C00) else "0";
    icmp_ln45_fu_211_p2 <= "1" when (indvar_flatten23_fu_92 = ap_const_lv16_6400) else "0";
    icmp_ln46_fu_239_p2 <= "1" when (j_fu_76 = ap_const_lv6_28) else "0";
    idx_5_cast_fu_295_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln45_fu_265_p3),64));
    or_ln45_fu_273_p2 <= (icmp_ln45_fu_211_p2 or and_ln44_fu_245_p2);
    p_shl4_cast_fu_446_p3 <= (trunc_ln47_1_fu_442_p1 & ap_const_lv2_0);
    select_ln44_1_fu_368_p3 <= 
        ap_const_lv10_0 when (icmp_ln45_reg_540(0) = '1') else 
        i_fu_84;
    select_ln44_2_fu_225_p3 <= 
        add_ln44_1_fu_205_p2 when (icmp_ln45_fu_211_p2(0) = '1') else 
        idx_fu_80;
    select_ln44_3_fu_375_p3 <= 
        add_ln44_fu_362_p2 when (icmp_ln45_reg_540(0) = '1') else 
        k_fu_96;
    select_ln44_4_fu_251_p3 <= 
        add_ln44_1_fu_205_p2 when (icmp_ln45_fu_211_p2(0) = '1') else 
        indvars_iv555_fu_100;
    select_ln44_fu_217_p3 <= 
        add_ln44_1_fu_205_p2 when (icmp_ln45_fu_211_p2(0) = '1') else 
        idx_1_fu_88;
    select_ln45_1_fu_279_p3 <= 
        ap_const_lv6_0 when (or_ln45_fu_273_p2(0) = '1') else 
        j_fu_76;
    select_ln45_2_fu_392_p3 <= 
        add_ln45_fu_386_p2 when (and_ln44_reg_546(0) = '1') else 
        select_ln44_1_fu_368_p3;
    select_ln45_3_fu_287_p3 <= 
        add_ln45_1_fu_259_p2 when (and_ln44_fu_245_p2(0) = '1') else 
        select_ln44_fu_217_p3;
    select_ln45_4_fu_318_p3 <= 
        ap_const_lv16_1 when (icmp_ln45_fu_211_p2(0) = '1') else 
        add_ln45_2_fu_312_p2;
    select_ln45_fu_265_p3 <= 
        add_ln45_1_fu_259_p2 when (and_ln44_fu_245_p2(0) = '1') else 
        select_ln44_2_fu_225_p3;
    sub_ln47_fu_454_p2 <= std_logic_vector(unsigned(p_shl4_cast_fu_446_p3) - unsigned(trunc_ln47_fu_438_p1));
    tmp_1_fu_411_p3 <= (select_ln45_2_fu_392_p3 & ap_const_lv3_0);
    tmp_fu_399_p3 <= (select_ln45_2_fu_392_p3 & ap_const_lv5_0);
    tmpy_V_address0 <= idx_5_cast_fu_295_p1(17 - 1 downto 0);

    tmpy_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            tmpy_V_ce0 <= ap_const_logic_1;
        else 
            tmpy_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln47_1_fu_442_p1 <= add_ln47_1_fu_432_p2(15 - 1 downto 0);
    trunc_ln47_fu_438_p1 <= add_ln47_1_fu_432_p2(17 - 1 downto 0);
    xor_ln44_fu_233_p2 <= (icmp_ln45_fu_211_p2 xor ap_const_lv1_1);
    y_Addr_A <= std_logic_vector(shift_left(unsigned(y_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_0(31-1 downto 0)))));
    y_Addr_A_orig <= zext_ln47_3_fu_466_p1(32 - 1 downto 0);
    y_Din_A <= tmpy_V_q0;

    y_EN_A_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            y_EN_A <= ap_const_logic_1;
        else 
            y_EN_A <= ap_const_logic_0;
        end if; 
    end process;


    y_WEN_A_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            y_WEN_A <= ap_const_lv1_1;
        else 
            y_WEN_A <= ap_const_lv1_0;
        end if; 
    end process;

    zext_ln45_fu_382_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln44_3_fu_375_p3),17));
    zext_ln47_1_fu_419_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_411_p3),62));
    zext_ln47_2_fu_429_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln45_1_reg_551),62));
    zext_ln47_3_fu_466_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln47_2_fu_460_p2),64));
    zext_ln47_fu_407_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_399_p3),62));
end behav;
