-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shift_reg_shift_reg_Pipeline_SHIFT is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    din : IN STD_LOGIC_VECTOR (7 downto 0);
    regs_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    regs_V_ce0 : OUT STD_LOGIC;
    regs_V_we0 : OUT STD_LOGIC;
    regs_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    regs_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of shift_reg_shift_reg_Pipeline_SHIFT is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal tmp_fu_90_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal i_2_reg_140 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_reg_145 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cast1_fu_98_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_cast1_reg_149 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln28_fu_106_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln28_reg_154 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln31_fu_118_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_48 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln27_fu_123_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_2 : STD_LOGIC_VECTOR (4 downto 0);
    signal empty_16_fu_102_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln31_fu_112_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component shift_reg_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component shift_reg_flow_control_loop_pipe_sequential_init
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
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                i_fu_48 <= ap_const_lv5_8;
            elsif (((tmp_reg_145 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_fu_48 <= add_ln27_fu_123_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                i_2_reg_140 <= ap_sig_allocacmp_i_2;
                tmp_reg_145 <= ap_sig_allocacmp_i_2(4 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_fu_90_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    i_cast1_reg_149(4 downto 0) <= i_cast1_fu_98_p1(4 downto 0);
                icmp_ln28_reg_154 <= icmp_ln28_fu_106_p2;
            end if;
        end if;
    end process;
    i_cast1_reg_149(63 downto 5) <= "00000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, tmp_fu_90_p3, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((tmp_fu_90_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln27_fu_123_p2 <= std_logic_vector(unsigned(i_2_reg_140) + unsigned(ap_const_lv5_1F));
    add_ln31_fu_112_p2 <= std_logic_vector(unsigned(empty_16_fu_102_p1) + unsigned(ap_const_lv4_F));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, tmp_fu_90_p3, ap_start_int)
    begin
        if (((tmp_fu_90_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_2_assign_proc : process(ap_CS_fsm_state1, i_fu_48, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_2 <= ap_const_lv5_8;
        else 
            ap_sig_allocacmp_i_2 <= i_fu_48;
        end if; 
    end process;

    empty_16_fu_102_p1 <= ap_sig_allocacmp_i_2(4 - 1 downto 0);
    i_cast1_fu_98_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_2),64));
    icmp_ln28_fu_106_p2 <= "1" when (ap_sig_allocacmp_i_2 = ap_const_lv5_0) else "0";

    regs_V_address0_assign_proc : process(ap_CS_fsm_state1, tmp_fu_90_p3, ap_CS_fsm_state2, tmp_reg_145, i_cast1_reg_149, icmp_ln28_fu_106_p2, icmp_ln28_reg_154, zext_ln31_fu_118_p1)
    begin
        if (((icmp_ln28_reg_154 = ap_const_lv1_0) and (tmp_reg_145 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            regs_V_address0 <= i_cast1_reg_149(4 - 1 downto 0);
        elsif (((icmp_ln28_fu_106_p2 = ap_const_lv1_1) and (tmp_fu_90_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            regs_V_address0 <= ap_const_lv4_0;
        elsif (((icmp_ln28_fu_106_p2 = ap_const_lv1_0) and (tmp_fu_90_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            regs_V_address0 <= zext_ln31_fu_118_p1(4 - 1 downto 0);
        else 
            regs_V_address0 <= "XXXX";
        end if; 
    end process;


    regs_V_ce0_assign_proc : process(ap_CS_fsm_state1, tmp_fu_90_p3, ap_CS_fsm_state2, tmp_reg_145, icmp_ln28_fu_106_p2, icmp_ln28_reg_154, ap_start_int)
    begin
        if ((((icmp_ln28_fu_106_p2 = ap_const_lv1_1) and (tmp_fu_90_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1)) or ((icmp_ln28_reg_154 = ap_const_lv1_0) and (tmp_reg_145 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((icmp_ln28_fu_106_p2 = ap_const_lv1_0) and (tmp_fu_90_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1)))) then 
            regs_V_ce0 <= ap_const_logic_1;
        else 
            regs_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    regs_V_d0_assign_proc : process(ap_CS_fsm_state1, tmp_fu_90_p3, ap_CS_fsm_state2, din, regs_V_q0, tmp_reg_145, icmp_ln28_fu_106_p2, icmp_ln28_reg_154)
    begin
        if (((icmp_ln28_reg_154 = ap_const_lv1_0) and (tmp_reg_145 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            regs_V_d0 <= regs_V_q0;
        elsif (((icmp_ln28_fu_106_p2 = ap_const_lv1_1) and (tmp_fu_90_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            regs_V_d0 <= din;
        else 
            regs_V_d0 <= "XXXXXXXX";
        end if; 
    end process;


    regs_V_we0_assign_proc : process(ap_CS_fsm_state1, tmp_fu_90_p3, ap_CS_fsm_state2, tmp_reg_145, icmp_ln28_fu_106_p2, icmp_ln28_reg_154, ap_start_int)
    begin
        if ((((icmp_ln28_fu_106_p2 = ap_const_lv1_1) and (tmp_fu_90_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1)) or ((icmp_ln28_reg_154 = ap_const_lv1_0) and (tmp_reg_145 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            regs_V_we0 <= ap_const_logic_1;
        else 
            regs_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_90_p3 <= ap_sig_allocacmp_i_2(4 downto 4);
    zext_ln31_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln31_fu_112_p2),64));
end behav;