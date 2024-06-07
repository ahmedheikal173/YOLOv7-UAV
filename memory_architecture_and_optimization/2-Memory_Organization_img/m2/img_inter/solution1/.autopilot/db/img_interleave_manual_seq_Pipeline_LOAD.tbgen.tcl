set moduleName img_interleave_manual_seq_Pipeline_LOAD
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {img_interleave_manual_seq_Pipeline_LOAD}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_idx_V_load int 21 regular  }
	{ x_sel_V_load int 4 regular  }
	{ tmpx_V int 8 regular {array 1228800 { 1 3 } 1 1 }  }
	{ x_idx_V_flag_0_out int 1 regular {pointer 1}  }
	{ x_idx_V_new_0_out int 21 regular {pointer 1}  }
	{ x_x0_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x1_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x2_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x3_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x4_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x5_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x6_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x7_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x8_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x9_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x10_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x11_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x12_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x13_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x14_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
	{ x_x15_V int 8 regular {array 76800 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_idx_V_load", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} , 
 	{ "Name" : "x_sel_V_load", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "tmpx_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_idx_V_flag_0_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_idx_V_new_0_out", "interface" : "wire", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_x0_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x3_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x4_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x5_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x6_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x7_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x8_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x9_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x10_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x11_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x12_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x13_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x14_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x15_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 79
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_idx_V_load sc_in sc_lv 21 signal 0 } 
	{ x_sel_V_load sc_in sc_lv 4 signal 1 } 
	{ tmpx_V_address0 sc_out sc_lv 21 signal 2 } 
	{ tmpx_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ tmpx_V_q0 sc_in sc_lv 8 signal 2 } 
	{ x_idx_V_flag_0_out sc_out sc_lv 1 signal 3 } 
	{ x_idx_V_flag_0_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ x_idx_V_new_0_out sc_out sc_lv 21 signal 4 } 
	{ x_idx_V_new_0_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ x_x0_V_address0 sc_out sc_lv 17 signal 5 } 
	{ x_x0_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_x0_V_we0 sc_out sc_logic 1 signal 5 } 
	{ x_x0_V_d0 sc_out sc_lv 8 signal 5 } 
	{ x_x1_V_address0 sc_out sc_lv 17 signal 6 } 
	{ x_x1_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ x_x1_V_we0 sc_out sc_logic 1 signal 6 } 
	{ x_x1_V_d0 sc_out sc_lv 8 signal 6 } 
	{ x_x2_V_address0 sc_out sc_lv 17 signal 7 } 
	{ x_x2_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_x2_V_we0 sc_out sc_logic 1 signal 7 } 
	{ x_x2_V_d0 sc_out sc_lv 8 signal 7 } 
	{ x_x3_V_address0 sc_out sc_lv 17 signal 8 } 
	{ x_x3_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_x3_V_we0 sc_out sc_logic 1 signal 8 } 
	{ x_x3_V_d0 sc_out sc_lv 8 signal 8 } 
	{ x_x4_V_address0 sc_out sc_lv 17 signal 9 } 
	{ x_x4_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_x4_V_we0 sc_out sc_logic 1 signal 9 } 
	{ x_x4_V_d0 sc_out sc_lv 8 signal 9 } 
	{ x_x5_V_address0 sc_out sc_lv 17 signal 10 } 
	{ x_x5_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_x5_V_we0 sc_out sc_logic 1 signal 10 } 
	{ x_x5_V_d0 sc_out sc_lv 8 signal 10 } 
	{ x_x6_V_address0 sc_out sc_lv 17 signal 11 } 
	{ x_x6_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ x_x6_V_we0 sc_out sc_logic 1 signal 11 } 
	{ x_x6_V_d0 sc_out sc_lv 8 signal 11 } 
	{ x_x7_V_address0 sc_out sc_lv 17 signal 12 } 
	{ x_x7_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ x_x7_V_we0 sc_out sc_logic 1 signal 12 } 
	{ x_x7_V_d0 sc_out sc_lv 8 signal 12 } 
	{ x_x8_V_address0 sc_out sc_lv 17 signal 13 } 
	{ x_x8_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ x_x8_V_we0 sc_out sc_logic 1 signal 13 } 
	{ x_x8_V_d0 sc_out sc_lv 8 signal 13 } 
	{ x_x9_V_address0 sc_out sc_lv 17 signal 14 } 
	{ x_x9_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ x_x9_V_we0 sc_out sc_logic 1 signal 14 } 
	{ x_x9_V_d0 sc_out sc_lv 8 signal 14 } 
	{ x_x10_V_address0 sc_out sc_lv 17 signal 15 } 
	{ x_x10_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ x_x10_V_we0 sc_out sc_logic 1 signal 15 } 
	{ x_x10_V_d0 sc_out sc_lv 8 signal 15 } 
	{ x_x11_V_address0 sc_out sc_lv 17 signal 16 } 
	{ x_x11_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ x_x11_V_we0 sc_out sc_logic 1 signal 16 } 
	{ x_x11_V_d0 sc_out sc_lv 8 signal 16 } 
	{ x_x12_V_address0 sc_out sc_lv 17 signal 17 } 
	{ x_x12_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ x_x12_V_we0 sc_out sc_logic 1 signal 17 } 
	{ x_x12_V_d0 sc_out sc_lv 8 signal 17 } 
	{ x_x13_V_address0 sc_out sc_lv 17 signal 18 } 
	{ x_x13_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ x_x13_V_we0 sc_out sc_logic 1 signal 18 } 
	{ x_x13_V_d0 sc_out sc_lv 8 signal 18 } 
	{ x_x14_V_address0 sc_out sc_lv 17 signal 19 } 
	{ x_x14_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ x_x14_V_we0 sc_out sc_logic 1 signal 19 } 
	{ x_x14_V_d0 sc_out sc_lv 8 signal 19 } 
	{ x_x15_V_address0 sc_out sc_lv 17 signal 20 } 
	{ x_x15_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ x_x15_V_we0 sc_out sc_logic 1 signal 20 } 
	{ x_x15_V_d0 sc_out sc_lv 8 signal 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_idx_V_load", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "x_idx_V_load", "role": "default" }} , 
 	{ "name": "x_sel_V_load", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_sel_V_load", "role": "default" }} , 
 	{ "name": "tmpx_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "tmpx_V", "role": "address0" }} , 
 	{ "name": "tmpx_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmpx_V", "role": "ce0" }} , 
 	{ "name": "tmpx_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmpx_V", "role": "q0" }} , 
 	{ "name": "x_idx_V_flag_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_idx_V_flag_0_out", "role": "default" }} , 
 	{ "name": "x_idx_V_flag_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_idx_V_flag_0_out", "role": "ap_vld" }} , 
 	{ "name": "x_idx_V_new_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "x_idx_V_new_0_out", "role": "default" }} , 
 	{ "name": "x_idx_V_new_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_idx_V_new_0_out", "role": "ap_vld" }} , 
 	{ "name": "x_x0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x0_V", "role": "address0" }} , 
 	{ "name": "x_x0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x0_V", "role": "ce0" }} , 
 	{ "name": "x_x0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x0_V", "role": "we0" }} , 
 	{ "name": "x_x0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x0_V", "role": "d0" }} , 
 	{ "name": "x_x1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x1_V", "role": "address0" }} , 
 	{ "name": "x_x1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x1_V", "role": "ce0" }} , 
 	{ "name": "x_x1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x1_V", "role": "we0" }} , 
 	{ "name": "x_x1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x1_V", "role": "d0" }} , 
 	{ "name": "x_x2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x2_V", "role": "address0" }} , 
 	{ "name": "x_x2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x2_V", "role": "ce0" }} , 
 	{ "name": "x_x2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x2_V", "role": "we0" }} , 
 	{ "name": "x_x2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x2_V", "role": "d0" }} , 
 	{ "name": "x_x3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x3_V", "role": "address0" }} , 
 	{ "name": "x_x3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x3_V", "role": "ce0" }} , 
 	{ "name": "x_x3_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x3_V", "role": "we0" }} , 
 	{ "name": "x_x3_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x3_V", "role": "d0" }} , 
 	{ "name": "x_x4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x4_V", "role": "address0" }} , 
 	{ "name": "x_x4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x4_V", "role": "ce0" }} , 
 	{ "name": "x_x4_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x4_V", "role": "we0" }} , 
 	{ "name": "x_x4_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x4_V", "role": "d0" }} , 
 	{ "name": "x_x5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x5_V", "role": "address0" }} , 
 	{ "name": "x_x5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x5_V", "role": "ce0" }} , 
 	{ "name": "x_x5_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x5_V", "role": "we0" }} , 
 	{ "name": "x_x5_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x5_V", "role": "d0" }} , 
 	{ "name": "x_x6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x6_V", "role": "address0" }} , 
 	{ "name": "x_x6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x6_V", "role": "ce0" }} , 
 	{ "name": "x_x6_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x6_V", "role": "we0" }} , 
 	{ "name": "x_x6_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x6_V", "role": "d0" }} , 
 	{ "name": "x_x7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x7_V", "role": "address0" }} , 
 	{ "name": "x_x7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x7_V", "role": "ce0" }} , 
 	{ "name": "x_x7_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x7_V", "role": "we0" }} , 
 	{ "name": "x_x7_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x7_V", "role": "d0" }} , 
 	{ "name": "x_x8_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x8_V", "role": "address0" }} , 
 	{ "name": "x_x8_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x8_V", "role": "ce0" }} , 
 	{ "name": "x_x8_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x8_V", "role": "we0" }} , 
 	{ "name": "x_x8_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x8_V", "role": "d0" }} , 
 	{ "name": "x_x9_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x9_V", "role": "address0" }} , 
 	{ "name": "x_x9_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x9_V", "role": "ce0" }} , 
 	{ "name": "x_x9_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x9_V", "role": "we0" }} , 
 	{ "name": "x_x9_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x9_V", "role": "d0" }} , 
 	{ "name": "x_x10_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x10_V", "role": "address0" }} , 
 	{ "name": "x_x10_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x10_V", "role": "ce0" }} , 
 	{ "name": "x_x10_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x10_V", "role": "we0" }} , 
 	{ "name": "x_x10_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x10_V", "role": "d0" }} , 
 	{ "name": "x_x11_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x11_V", "role": "address0" }} , 
 	{ "name": "x_x11_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x11_V", "role": "ce0" }} , 
 	{ "name": "x_x11_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x11_V", "role": "we0" }} , 
 	{ "name": "x_x11_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x11_V", "role": "d0" }} , 
 	{ "name": "x_x12_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x12_V", "role": "address0" }} , 
 	{ "name": "x_x12_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x12_V", "role": "ce0" }} , 
 	{ "name": "x_x12_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x12_V", "role": "we0" }} , 
 	{ "name": "x_x12_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x12_V", "role": "d0" }} , 
 	{ "name": "x_x13_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x13_V", "role": "address0" }} , 
 	{ "name": "x_x13_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x13_V", "role": "ce0" }} , 
 	{ "name": "x_x13_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x13_V", "role": "we0" }} , 
 	{ "name": "x_x13_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x13_V", "role": "d0" }} , 
 	{ "name": "x_x14_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x14_V", "role": "address0" }} , 
 	{ "name": "x_x14_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x14_V", "role": "ce0" }} , 
 	{ "name": "x_x14_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x14_V", "role": "we0" }} , 
 	{ "name": "x_x14_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x14_V", "role": "d0" }} , 
 	{ "name": "x_x15_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x15_V", "role": "address0" }} , 
 	{ "name": "x_x15_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x15_V", "role": "ce0" }} , 
 	{ "name": "x_x15_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x15_V", "role": "we0" }} , 
 	{ "name": "x_x15_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x15_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "img_interleave_manual_seq_Pipeline_LOAD",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1228802", "EstimateLatencyMax" : "1228802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_idx_V_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_sel_V_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmpx_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_idx_V_flag_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_idx_V_new_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_x0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x4_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x5_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x6_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x7_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x8_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x9_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x10_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x11_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x12_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x13_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x14_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x15_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOAD", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	img_interleave_manual_seq_Pipeline_LOAD {
		x_idx_V_load {Type I LastRead 0 FirstWrite -1}
		x_sel_V_load {Type I LastRead 0 FirstWrite -1}
		tmpx_V {Type I LastRead 1 FirstWrite -1}
		x_idx_V_flag_0_out {Type O LastRead -1 FirstWrite 1}
		x_idx_V_new_0_out {Type O LastRead -1 FirstWrite 1}
		x_x0_V {Type O LastRead -1 FirstWrite 2}
		x_x1_V {Type O LastRead -1 FirstWrite 2}
		x_x2_V {Type O LastRead -1 FirstWrite 2}
		x_x3_V {Type O LastRead -1 FirstWrite 2}
		x_x4_V {Type O LastRead -1 FirstWrite 2}
		x_x5_V {Type O LastRead -1 FirstWrite 2}
		x_x6_V {Type O LastRead -1 FirstWrite 2}
		x_x7_V {Type O LastRead -1 FirstWrite 2}
		x_x8_V {Type O LastRead -1 FirstWrite 2}
		x_x9_V {Type O LastRead -1 FirstWrite 2}
		x_x10_V {Type O LastRead -1 FirstWrite 2}
		x_x11_V {Type O LastRead -1 FirstWrite 2}
		x_x12_V {Type O LastRead -1 FirstWrite 2}
		x_x13_V {Type O LastRead -1 FirstWrite 2}
		x_x14_V {Type O LastRead -1 FirstWrite 2}
		x_x15_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1228802", "Max" : "1228802"}
	, {"Name" : "Interval", "Min" : "1228802", "Max" : "1228802"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_idx_V_load { ap_none {  { x_idx_V_load in_data 0 21 } } }
	x_sel_V_load { ap_none {  { x_sel_V_load in_data 0 4 } } }
	tmpx_V { ap_memory {  { tmpx_V_address0 mem_address 1 21 }  { tmpx_V_ce0 mem_ce 1 1 }  { tmpx_V_q0 in_data 0 8 } } }
	x_idx_V_flag_0_out { ap_vld {  { x_idx_V_flag_0_out out_data 1 1 }  { x_idx_V_flag_0_out_ap_vld out_vld 1 1 } } }
	x_idx_V_new_0_out { ap_vld {  { x_idx_V_new_0_out out_data 1 21 }  { x_idx_V_new_0_out_ap_vld out_vld 1 1 } } }
	x_x0_V { ap_memory {  { x_x0_V_address0 mem_address 1 17 }  { x_x0_V_ce0 mem_ce 1 1 }  { x_x0_V_we0 mem_we 1 1 }  { x_x0_V_d0 mem_din 1 8 } } }
	x_x1_V { ap_memory {  { x_x1_V_address0 mem_address 1 17 }  { x_x1_V_ce0 mem_ce 1 1 }  { x_x1_V_we0 mem_we 1 1 }  { x_x1_V_d0 mem_din 1 8 } } }
	x_x2_V { ap_memory {  { x_x2_V_address0 mem_address 1 17 }  { x_x2_V_ce0 mem_ce 1 1 }  { x_x2_V_we0 mem_we 1 1 }  { x_x2_V_d0 mem_din 1 8 } } }
	x_x3_V { ap_memory {  { x_x3_V_address0 mem_address 1 17 }  { x_x3_V_ce0 mem_ce 1 1 }  { x_x3_V_we0 mem_we 1 1 }  { x_x3_V_d0 mem_din 1 8 } } }
	x_x4_V { ap_memory {  { x_x4_V_address0 mem_address 1 17 }  { x_x4_V_ce0 mem_ce 1 1 }  { x_x4_V_we0 mem_we 1 1 }  { x_x4_V_d0 mem_din 1 8 } } }
	x_x5_V { ap_memory {  { x_x5_V_address0 mem_address 1 17 }  { x_x5_V_ce0 mem_ce 1 1 }  { x_x5_V_we0 mem_we 1 1 }  { x_x5_V_d0 mem_din 1 8 } } }
	x_x6_V { ap_memory {  { x_x6_V_address0 mem_address 1 17 }  { x_x6_V_ce0 mem_ce 1 1 }  { x_x6_V_we0 mem_we 1 1 }  { x_x6_V_d0 mem_din 1 8 } } }
	x_x7_V { ap_memory {  { x_x7_V_address0 mem_address 1 17 }  { x_x7_V_ce0 mem_ce 1 1 }  { x_x7_V_we0 mem_we 1 1 }  { x_x7_V_d0 mem_din 1 8 } } }
	x_x8_V { ap_memory {  { x_x8_V_address0 mem_address 1 17 }  { x_x8_V_ce0 mem_ce 1 1 }  { x_x8_V_we0 mem_we 1 1 }  { x_x8_V_d0 mem_din 1 8 } } }
	x_x9_V { ap_memory {  { x_x9_V_address0 mem_address 1 17 }  { x_x9_V_ce0 mem_ce 1 1 }  { x_x9_V_we0 mem_we 1 1 }  { x_x9_V_d0 mem_din 1 8 } } }
	x_x10_V { ap_memory {  { x_x10_V_address0 mem_address 1 17 }  { x_x10_V_ce0 mem_ce 1 1 }  { x_x10_V_we0 mem_we 1 1 }  { x_x10_V_d0 mem_din 1 8 } } }
	x_x11_V { ap_memory {  { x_x11_V_address0 mem_address 1 17 }  { x_x11_V_ce0 mem_ce 1 1 }  { x_x11_V_we0 mem_we 1 1 }  { x_x11_V_d0 mem_din 1 8 } } }
	x_x12_V { ap_memory {  { x_x12_V_address0 mem_address 1 17 }  { x_x12_V_ce0 mem_ce 1 1 }  { x_x12_V_we0 mem_we 1 1 }  { x_x12_V_d0 mem_din 1 8 } } }
	x_x13_V { ap_memory {  { x_x13_V_address0 mem_address 1 17 }  { x_x13_V_ce0 mem_ce 1 1 }  { x_x13_V_we0 mem_we 1 1 }  { x_x13_V_d0 mem_din 1 8 } } }
	x_x14_V { ap_memory {  { x_x14_V_address0 mem_address 1 17 }  { x_x14_V_ce0 mem_ce 1 1 }  { x_x14_V_we0 mem_we 1 1 }  { x_x14_V_d0 mem_din 1 8 } } }
	x_x15_V { ap_memory {  { x_x15_V_address0 mem_address 1 17 }  { x_x15_V_ce0 mem_ce 1 1 }  { x_x15_V_we0 mem_we 1 1 }  { x_x15_V_d0 mem_din 1 8 } } }
}
