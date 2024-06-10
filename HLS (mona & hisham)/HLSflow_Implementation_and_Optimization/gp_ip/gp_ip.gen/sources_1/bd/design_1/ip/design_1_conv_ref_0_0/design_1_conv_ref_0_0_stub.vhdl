-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu May 30 19:55:55 2024
-- Host        : DESKTOP-KVLS732 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/verilog/trials/gp_ip/gp_ip.gen/sources_1/bd/design_1/ip/design_1_conv_ref_0_0/design_1_conv_ref_0_0_stub.vhdl
-- Design      : design_1_conv_ref_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_conv_ref_0_0 is
  Port ( 
    ap_local_block : out STD_LOGIC;
    ap_local_deadlock : out STD_LOGIC;
    image_r_ce0 : out STD_LOGIC;
    weights_ce0 : out STD_LOGIC;
    weights_ce1 : out STD_LOGIC;
    output_conv_ce0 : out STD_LOGIC;
    output_conv_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    image_r_address0 : out STD_LOGIC_VECTOR ( 20 downto 0 );
    image_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    weights_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    weights_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    weights_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    weights_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    output_conv_address0 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    output_conv_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    output_conv_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_conv_ref_0_0;

architecture stub of design_1_conv_ref_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_local_block,ap_local_deadlock,image_r_ce0,weights_ce0,weights_ce1,output_conv_ce0,output_conv_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,image_r_address0[20:0],image_r_q0[7:0],weights_address0[9:0],weights_q0[7:0],weights_address1[9:0],weights_q1[7:0],output_conv_address0[23:0],output_conv_d0[7:0],output_conv_q0[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "conv_ref,Vivado 2021.2";
begin
end;
