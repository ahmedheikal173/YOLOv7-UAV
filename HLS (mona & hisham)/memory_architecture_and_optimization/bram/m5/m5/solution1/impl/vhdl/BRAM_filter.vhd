-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BRAM_filter is
generic (
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 5;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32 );
port (
    ap_local_block : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    x_in_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    x_in_EN_A : OUT STD_LOGIC;
    x_in_WEN_A : OUT STD_LOGIC_VECTOR (0 downto 0);
    x_in_Din_A : OUT STD_LOGIC_VECTOR (7 downto 0);
    x_in_Dout_A : IN STD_LOGIC_VECTOR (7 downto 0);
    x_in_Clk_A : OUT STD_LOGIC;
    x_in_Rst_A : OUT STD_LOGIC;
    x_in_Addr_B : OUT STD_LOGIC_VECTOR (31 downto 0);
    x_in_EN_B : OUT STD_LOGIC;
    x_in_WEN_B : OUT STD_LOGIC_VECTOR (0 downto 0);
    x_in_Din_B : OUT STD_LOGIC_VECTOR (7 downto 0);
    x_in_Dout_B : IN STD_LOGIC_VECTOR (7 downto 0);
    x_in_Clk_B : OUT STD_LOGIC;
    x_in_Rst_B : OUT STD_LOGIC;
    out_r_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_r_EN_A : OUT STD_LOGIC;
    out_r_WEN_A : OUT STD_LOGIC_VECTOR (0 downto 0);
    out_r_Din_A : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_r_Dout_A : IN STD_LOGIC_VECTOR (7 downto 0);
    out_r_Clk_A : OUT STD_LOGIC;
    out_r_Rst_A : OUT STD_LOGIC;
    out_r_Addr_B : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_r_EN_B : OUT STD_LOGIC;
    out_r_WEN_B : OUT STD_LOGIC_VECTOR (0 downto 0);
    out_r_Din_B : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_r_Dout_B : IN STD_LOGIC_VECTOR (7 downto 0);
    out_r_Clk_B : OUT STD_LOGIC;
    out_r_Rst_B : OUT STD_LOGIC;
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


architecture behav of BRAM_filter is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "BRAM_filter_BRAM_filter,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu11p-flga2577-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=55,HLS_SYN_LUT=55,HLS_VERSION=2021_2}";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

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
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal load : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component BRAM_filter_control_s_axi IS
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
        load : OUT STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_continue : OUT STD_LOGIC;
        ap_idle : IN STD_LOGIC;
        ap_local_deadlock : IN STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    control_s_axi_U : component BRAM_filter_control_s_axi
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
        load => load,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_continue => ap_continue,
        ap_idle => ap_idle,
        ap_local_deadlock => ap_local_deadlock);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
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

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, ap_done_reg)
    begin
        if (((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_local_block <= ap_const_logic_0;
    ap_local_deadlock <= ap_const_lv1_0;

    ap_ready_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    out_r_Addr_A <= ap_const_lv32_0;
    out_r_Addr_B <= ap_const_lv32_0;
    out_r_Clk_A <= ap_clk;
    out_r_Clk_B <= ap_clk;
    out_r_Din_A <= ap_const_lv8_0;
    out_r_Din_B <= ap_const_lv8_0;
    out_r_EN_A <= ap_const_logic_0;
    out_r_EN_B <= ap_const_logic_0;
    out_r_Rst_A <= ap_rst_n_inv;
    out_r_Rst_B <= ap_rst_n_inv;
    out_r_WEN_A <= ap_const_lv1_0;
    out_r_WEN_B <= ap_const_lv1_0;
    x_in_Addr_A <= ap_const_lv32_0;
    x_in_Addr_B <= ap_const_lv32_0;
    x_in_Clk_A <= ap_clk;
    x_in_Clk_B <= ap_clk;
    x_in_Din_A <= ap_const_lv8_0;
    x_in_Din_B <= ap_const_lv8_0;
    x_in_EN_A <= ap_const_logic_0;
    x_in_EN_B <= ap_const_logic_0;
    x_in_Rst_A <= ap_rst_n_inv;
    x_in_Rst_B <= ap_rst_n_inv;
    x_in_WEN_A <= ap_const_lv1_0;
    x_in_WEN_B <= ap_const_lv1_0;
end behav;
