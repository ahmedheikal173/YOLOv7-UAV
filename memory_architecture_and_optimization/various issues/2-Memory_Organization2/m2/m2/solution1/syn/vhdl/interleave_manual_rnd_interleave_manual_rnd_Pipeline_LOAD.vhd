-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity interleave_manual_rnd_interleave_manual_rnd_Pipeline_LOAD is
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
    x_x0_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
    x_x0_V_ce0 : OUT STD_LOGIC;
    x_x0_V_we0 : OUT STD_LOGIC;
    x_x0_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    x_x1_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
    x_x1_V_ce0 : OUT STD_LOGIC;
    x_x1_V_we0 : OUT STD_LOGIC;
    x_x1_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    x_x2_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
    x_x2_V_ce0 : OUT STD_LOGIC;
    x_x2_V_we0 : OUT STD_LOGIC;
    x_x2_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of interleave_manual_rnd_interleave_manual_rnd_Pipeline_LOAD is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv42_0 : STD_LOGIC_VECTOR (41 downto 0) := "000000000000000000000000000000000000000000";
    constant ap_const_lv21_12C000 : STD_LOGIC_VECTOR (20 downto 0) := "100101100000000000000";
    constant ap_const_lv21_1 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000001";
    constant ap_const_lv21_3 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000011";
    constant ap_const_lv42_2AAAAB : STD_LOGIC_VECTOR (41 downto 0) := "000000000000000000001010101010101010101011";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
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
    signal icmp_ln24_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal trunc_ln1559_fu_185_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln1559_reg_353 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln587_fu_180_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln587_3_fu_259_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln587_2_fu_274_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln587_1_fu_289_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ret_fu_62 : STD_LOGIC_VECTOR (20 downto 0);
    signal select_ln24_fu_204_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal phi_mul9_fu_66 : STD_LOGIC_VECTOR (41 downto 0);
    signal add_ln13_2_fu_243_p2 : STD_LOGIC_VECTOR (41 downto 0);
    signal phi_mul7_fu_70 : STD_LOGIC_VECTOR (41 downto 0);
    signal add_ln13_1_fu_237_p2 : STD_LOGIC_VECTOR (41 downto 0);
    signal phi_mul_fu_74 : STD_LOGIC_VECTOR (41 downto 0);
    signal add_ln13_fu_231_p2 : STD_LOGIC_VECTOR (41 downto 0);
    signal i_V_fu_78 : STD_LOGIC_VECTOR (20 downto 0);
    signal i_fu_171_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal x_in_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln24_1_fu_192_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal icmp_ln24_1_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_249_p4 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_1_fu_264_p4 : STD_LOGIC_VECTOR (18 downto 0);
    signal tmp_fu_279_p4 : STD_LOGIC_VECTOR (18 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component interleave_manual_rnd_flow_control_loop_pipe_sequential_init IS
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
    flow_control_loop_pipe_sequential_init_U : component interleave_manual_rnd_flow_control_loop_pipe_sequential_init
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


    i_V_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_fu_78 <= ap_const_lv21_0;
                elsif (((icmp_ln24_fu_165_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_V_fu_78 <= i_fu_171_p2;
                end if;
            end if; 
        end if;
    end process;

    phi_mul7_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    phi_mul7_fu_70 <= ap_const_lv42_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    phi_mul7_fu_70 <= add_ln13_1_fu_237_p2;
                end if;
            end if; 
        end if;
    end process;

    phi_mul9_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    phi_mul9_fu_66 <= ap_const_lv42_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    phi_mul9_fu_66 <= add_ln13_2_fu_243_p2;
                end if;
            end if; 
        end if;
    end process;

    phi_mul_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    phi_mul_fu_74 <= ap_const_lv42_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    phi_mul_fu_74 <= add_ln13_fu_231_p2;
                end if;
            end if; 
        end if;
    end process;

    ret_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    ret_fu_62 <= ap_const_lv21_0;
                elsif (((icmp_ln24_fu_165_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    ret_fu_62 <= select_ln24_fu_204_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln24_fu_165_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                trunc_ln1559_reg_353 <= trunc_ln1559_fu_185_p1;
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
    add_ln13_1_fu_237_p2 <= std_logic_vector(unsigned(phi_mul7_fu_70) + unsigned(ap_const_lv42_2AAAAB));
    add_ln13_2_fu_243_p2 <= std_logic_vector(unsigned(phi_mul9_fu_66) + unsigned(ap_const_lv42_2AAAAB));
    add_ln13_fu_231_p2 <= std_logic_vector(unsigned(phi_mul_fu_74) + unsigned(ap_const_lv42_2AAAAB));
    add_ln24_1_fu_192_p2 <= std_logic_vector(unsigned(ret_fu_62) + unsigned(ap_const_lv21_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln24_fu_165_p2)
    begin
        if (((icmp_ln24_fu_165_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    i_fu_171_p2 <= std_logic_vector(unsigned(i_V_fu_78) + unsigned(ap_const_lv21_1));
    icmp_ln24_1_fu_198_p2 <= "1" when (unsigned(add_ln24_1_fu_192_p2) < unsigned(ap_const_lv21_3)) else "0";
    icmp_ln24_fu_165_p2 <= "1" when (i_V_fu_78 = ap_const_lv21_12C000) else "0";
    select_ln24_fu_204_p3 <= 
        add_ln24_1_fu_192_p2 when (icmp_ln24_1_fu_198_p2(0) = '1') else 
        ap_const_lv21_0;
    tmp_1_fu_264_p4 <= phi_mul9_fu_66(41 downto 23);
    tmp_2_fu_249_p4 <= phi_mul7_fu_70(41 downto 23);
    tmp_fu_279_p4 <= phi_mul_fu_74(41 downto 23);
    trunc_ln1559_fu_185_p1 <= ret_fu_62(2 - 1 downto 0);
    x_in_Addr_A <= std_logic_vector(shift_left(unsigned(x_in_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_0(31-1 downto 0)))));
    x_in_Addr_A_orig <= zext_ln587_fu_180_p1(32 - 1 downto 0);
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
    x_x0_V_address0 <= zext_ln587_1_fu_289_p1(19 - 1 downto 0);

    x_x0_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_x0_V_ce0 <= ap_const_logic_1;
        else 
            x_x0_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    x_x0_V_d0 <= x_in_Dout_A;

    x_x0_V_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, trunc_ln1559_reg_353)
    begin
        if ((not((trunc_ln1559_reg_353 = ap_const_lv2_2)) and not((trunc_ln1559_reg_353 = ap_const_lv2_1)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_x0_V_we0 <= ap_const_logic_1;
        else 
            x_x0_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    x_x1_V_address0 <= zext_ln587_3_fu_259_p1(19 - 1 downto 0);

    x_x1_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_x1_V_ce0 <= ap_const_logic_1;
        else 
            x_x1_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    x_x1_V_d0 <= x_in_Dout_A;

    x_x1_V_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, trunc_ln1559_reg_353)
    begin
        if (((trunc_ln1559_reg_353 = ap_const_lv2_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_x1_V_we0 <= ap_const_logic_1;
        else 
            x_x1_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    x_x2_V_address0 <= zext_ln587_2_fu_274_p1(19 - 1 downto 0);

    x_x2_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_x2_V_ce0 <= ap_const_logic_1;
        else 
            x_x2_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    x_x2_V_d0 <= x_in_Dout_A;

    x_x2_V_we0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, trunc_ln1559_reg_353)
    begin
        if (((trunc_ln1559_reg_353 = ap_const_lv2_2) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            x_x2_V_we0 <= ap_const_logic_1;
        else 
            x_x2_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln587_1_fu_289_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_279_p4),64));
    zext_ln587_2_fu_274_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_264_p4),64));
    zext_ln587_3_fu_259_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_249_p4),64));
    zext_ln587_fu_180_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_V_fu_78),64));
end behav;
