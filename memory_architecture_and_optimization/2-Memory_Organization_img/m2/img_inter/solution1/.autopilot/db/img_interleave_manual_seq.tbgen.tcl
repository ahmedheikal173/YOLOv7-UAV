set moduleName img_interleave_manual_seq
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {img_interleave_manual_seq}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_in int 8 regular {bram 1228800 { 1 3 } 1 1 }  }
	{ y int 24 regular {bram 76800 { 0 3 } 0 1 }  }
	{ load uint 1 regular {axi_slave 0}  }
	{ ap_local_deadlock int 1 unused {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_in", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "bram", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "load", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "ap_local_deadlock", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":0}, "offset_end" : {"out":4294967295}} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ x_in_Addr_A sc_out sc_lv 32 signal 0 } 
	{ x_in_EN_A sc_out sc_logic 1 signal 0 } 
	{ x_in_WEN_A sc_out sc_lv 1 signal 0 } 
	{ x_in_Din_A sc_out sc_lv 8 signal 0 } 
	{ x_in_Dout_A sc_in sc_lv 8 signal 0 } 
	{ x_in_Clk_A sc_out sc_logic 1 signal 0 } 
	{ x_in_Rst_A sc_out sc_logic 1 signal 0 } 
	{ y_Addr_A sc_out sc_lv 32 signal 1 } 
	{ y_EN_A sc_out sc_logic 1 signal 1 } 
	{ y_WEN_A sc_out sc_lv 4 signal 1 } 
	{ y_Din_A sc_out sc_lv 32 signal 1 } 
	{ y_Dout_A sc_in sc_lv 32 signal 1 } 
	{ y_Clk_A sc_out sc_logic 1 signal 1 } 
	{ y_Rst_A sc_out sc_logic 1 signal 1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"img_interleave_manual_seq","role":"start","value":"0","valid_bit":"0"},{"name":"img_interleave_manual_seq","role":"continue","value":"0","valid_bit":"4"},{"name":"img_interleave_manual_seq","role":"auto_start","value":"0","valid_bit":"7"},{"name":"load","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"img_interleave_manual_seq","role":"start","value":"0","valid_bit":"0"},{"name":"img_interleave_manual_seq","role":"done","value":"0","valid_bit":"1"},{"name":"img_interleave_manual_seq","role":"idle","value":"0","valid_bit":"2"},{"name":"img_interleave_manual_seq","role":"ready","value":"0","valid_bit":"3"},{"name":"img_interleave_manual_seq","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ap_local_deadlock","role":"data","value":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "x_in_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_in", "role": "Addr_A" }} , 
 	{ "name": "x_in_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "EN_A" }} , 
 	{ "name": "x_in_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "WEN_A" }} , 
 	{ "name": "x_in_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_in", "role": "Din_A" }} , 
 	{ "name": "x_in_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_in", "role": "Dout_A" }} , 
 	{ "name": "x_in_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "Clk_A" }} , 
 	{ "name": "x_in_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "Rst_A" }} , 
 	{ "name": "y_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "Addr_A" }} , 
 	{ "name": "y_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "EN_A" }} , 
 	{ "name": "y_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y", "role": "WEN_A" }} , 
 	{ "name": "y_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "Din_A" }} , 
 	{ "name": "y_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "Dout_A" }} , 
 	{ "name": "y_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "Clk_A" }} , 
 	{ "name": "y_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "Rst_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "21", "22", "24", "26"],
		"CDFG" : "img_interleave_manual_seq",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2534411", "EstimateLatencyMax" : "4992008",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3_fu_180", "Port" : "x_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "y", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3_fu_283", "Port" : "y", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "load", "Type" : "None", "Direction" : "I"},
			{"Name" : "guard_variable_for_img_interleave_manual_seq_ap_int_8_640_3_ap_int_24_40_3_bool_x", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "x_sel_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "x_idx_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "x_x0_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x0_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x0_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x1_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x1_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x2_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x2_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x3_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x3_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x3_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x4_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x4_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x4_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x5_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x5_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x5_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x6_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x6_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x6_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x7_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x7_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x7_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x8_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x8_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x8_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x9_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x9_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x9_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x10_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x10_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x10_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x11_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x11_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x11_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x12_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x12_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x12_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x13_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x13_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x13_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x14_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x14_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x14_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "x_x15_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_read_seq_fu_188", "Port" : "x_x15_V", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "22", "SubInstance" : "grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Port" : "x_x15_V", "Inst_start_state" : "35", "Inst_end_state" : "36"}]},
			{"Name" : "ap_local_deadlock", "Type" : "None", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "WRITE", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "38", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state34"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state37"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x3_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x4_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x5_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x6_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x7_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x8_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x9_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x10_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x11_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x12_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x13_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x14_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_x15_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmpy_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmpx_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_img_interleave_manual_seq_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3_fu_180", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "img_interleave_manual_seq_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3",
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
			{"Name" : "x_in", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "tmpx_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_img_interleave_manual_seq_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3_fu_180.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_read_seq_fu_188", "Parent" : "0",
		"CDFG" : "read_seq",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_x0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x6_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x7_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x8_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x9_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x10_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x11_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x12_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x13_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x14_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x15_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242", "Parent" : "0", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_img_interleave_manual_seq_Pipeline_LOAD_fu_242.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_img_interleave_manual_seq_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3_fu_283", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "img_interleave_manual_seq_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "76802", "EstimateLatencyMax" : "76802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "tmpy_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_img_interleave_manual_seq_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3_fu_283.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	img_interleave_manual_seq {
		x_in {Type I LastRead 1 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 2}
		load {Type I LastRead 1 FirstWrite -1}
		guard_variable_for_img_interleave_manual_seq_ap_int_8_640_3_ap_int_24_40_3_bool_x {Type IO LastRead -1 FirstWrite -1}
		x_sel_V {Type IO LastRead -1 FirstWrite -1}
		x_idx_V {Type IO LastRead -1 FirstWrite -1}
		x_x0_V {Type IO LastRead -1 FirstWrite -1}
		x_x1_V {Type IO LastRead -1 FirstWrite -1}
		x_x2_V {Type IO LastRead -1 FirstWrite -1}
		x_x3_V {Type IO LastRead -1 FirstWrite -1}
		x_x4_V {Type IO LastRead -1 FirstWrite -1}
		x_x5_V {Type IO LastRead -1 FirstWrite -1}
		x_x6_V {Type IO LastRead -1 FirstWrite -1}
		x_x7_V {Type IO LastRead -1 FirstWrite -1}
		x_x8_V {Type IO LastRead -1 FirstWrite -1}
		x_x9_V {Type IO LastRead -1 FirstWrite -1}
		x_x10_V {Type IO LastRead -1 FirstWrite -1}
		x_x11_V {Type IO LastRead -1 FirstWrite -1}
		x_x12_V {Type IO LastRead -1 FirstWrite -1}
		x_x13_V {Type IO LastRead -1 FirstWrite -1}
		x_x14_V {Type IO LastRead -1 FirstWrite -1}
		x_x15_V {Type IO LastRead -1 FirstWrite -1}
		ap_local_deadlock {Type O LastRead -1 FirstWrite -1}}
	img_interleave_manual_seq_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3 {
		x_in {Type I LastRead 1 FirstWrite -1}
		tmpx_V {Type O LastRead -1 FirstWrite 2}}
	read_seq {
		i {Type I LastRead 0 FirstWrite -1}
		offset {Type I LastRead 0 FirstWrite -1}
		x_x0_V {Type I LastRead 0 FirstWrite -1}
		x_x1_V {Type I LastRead 0 FirstWrite -1}
		x_x2_V {Type I LastRead 0 FirstWrite -1}
		x_x3_V {Type I LastRead 0 FirstWrite -1}
		x_x4_V {Type I LastRead 0 FirstWrite -1}
		x_x5_V {Type I LastRead 0 FirstWrite -1}
		x_x6_V {Type I LastRead 0 FirstWrite -1}
		x_x7_V {Type I LastRead 0 FirstWrite -1}
		x_x8_V {Type I LastRead 0 FirstWrite -1}
		x_x9_V {Type I LastRead 0 FirstWrite -1}
		x_x10_V {Type I LastRead 0 FirstWrite -1}
		x_x11_V {Type I LastRead 0 FirstWrite -1}
		x_x12_V {Type I LastRead 0 FirstWrite -1}
		x_x13_V {Type I LastRead 0 FirstWrite -1}
		x_x14_V {Type I LastRead 0 FirstWrite -1}
		x_x15_V {Type I LastRead 0 FirstWrite -1}}
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
		x_x15_V {Type O LastRead -1 FirstWrite 2}}
	img_interleave_manual_seq_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3 {
		y {Type O LastRead -1 FirstWrite 2}
		tmpy_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2534411", "Max" : "4992008"}
	, {"Name" : "Interval", "Min" : "2534412", "Max" : "4992009"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x_in { bram {  { x_in_Addr_A MemPortADDR2 1 32 }  { x_in_EN_A MemPortCE2 1 1 }  { x_in_WEN_A MemPortWE2 1 1 }  { x_in_Din_A MemPortDIN2 1 8 }  { x_in_Dout_A MemPortDOUT2 0 8 }  { x_in_Clk_A mem_clk 1 1 }  { x_in_Rst_A mem_rst 1 1 } } }
	y { bram {  { y_Addr_A MemPortADDR2 1 32 }  { y_EN_A MemPortCE2 1 1 }  { y_WEN_A MemPortWE2 1 4 }  { y_Din_A MemPortDIN2 1 32 }  { y_Dout_A MemPortDOUT2 0 32 }  { y_Clk_A mem_clk 1 1 }  { y_Rst_A mem_rst 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
