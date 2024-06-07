set moduleName interleave_manual_seq_Pipeline_LOAD
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
set C_modelName {interleave_manual_seq_Pipeline_LOAD}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_idx_V_load int 21 regular  }
	{ x_sel_V_load int 2 regular  }
	{ x_in int 8 regular {bram 1228800 { 1 3 } 1 1 }  }
	{ x_idx_V_flag_0_out int 1 regular {pointer 1}  }
	{ x_idx_V_new_0_out int 21 regular {pointer 1}  }
	{ t_V_out int 2 regular {pointer 1}  }
	{ x_x0_V int 8 regular {array 409600 { 0 3 } 0 1 } {global 1}  }
	{ x_x1_V int 8 regular {array 409600 { 0 3 } 0 1 } {global 1}  }
	{ x_x2_V int 8 regular {array 409600 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_idx_V_load", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} , 
 	{ "Name" : "x_sel_V_load", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "x_in", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "x_idx_V_flag_0_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_idx_V_new_0_out", "interface" : "wire", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_V_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_x0_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "x_x2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_idx_V_load sc_in sc_lv 21 signal 0 } 
	{ x_sel_V_load sc_in sc_lv 2 signal 1 } 
	{ x_in_Addr_A sc_out sc_lv 32 signal 2 } 
	{ x_in_EN_A sc_out sc_logic 1 signal 2 } 
	{ x_in_WEN_A sc_out sc_lv 1 signal 2 } 
	{ x_in_Din_A sc_out sc_lv 8 signal 2 } 
	{ x_in_Dout_A sc_in sc_lv 8 signal 2 } 
	{ x_idx_V_flag_0_out sc_out sc_lv 1 signal 3 } 
	{ x_idx_V_flag_0_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ x_idx_V_new_0_out sc_out sc_lv 21 signal 4 } 
	{ x_idx_V_new_0_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ t_V_out sc_out sc_lv 2 signal 5 } 
	{ t_V_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ x_x0_V_address0 sc_out sc_lv 19 signal 6 } 
	{ x_x0_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ x_x0_V_we0 sc_out sc_logic 1 signal 6 } 
	{ x_x0_V_d0 sc_out sc_lv 8 signal 6 } 
	{ x_x1_V_address0 sc_out sc_lv 19 signal 7 } 
	{ x_x1_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_x1_V_we0 sc_out sc_logic 1 signal 7 } 
	{ x_x1_V_d0 sc_out sc_lv 8 signal 7 } 
	{ x_x2_V_address0 sc_out sc_lv 19 signal 8 } 
	{ x_x2_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_x2_V_we0 sc_out sc_logic 1 signal 8 } 
	{ x_x2_V_d0 sc_out sc_lv 8 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_idx_V_load", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "x_idx_V_load", "role": "default" }} , 
 	{ "name": "x_sel_V_load", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "x_sel_V_load", "role": "default" }} , 
 	{ "name": "x_in_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_in", "role": "Addr_A" }} , 
 	{ "name": "x_in_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "EN_A" }} , 
 	{ "name": "x_in_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "WEN_A" }} , 
 	{ "name": "x_in_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_in", "role": "Din_A" }} , 
 	{ "name": "x_in_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_in", "role": "Dout_A" }} , 
 	{ "name": "x_idx_V_flag_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_idx_V_flag_0_out", "role": "default" }} , 
 	{ "name": "x_idx_V_flag_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_idx_V_flag_0_out", "role": "ap_vld" }} , 
 	{ "name": "x_idx_V_new_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "x_idx_V_new_0_out", "role": "default" }} , 
 	{ "name": "x_idx_V_new_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_idx_V_new_0_out", "role": "ap_vld" }} , 
 	{ "name": "t_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "t_V_out", "role": "default" }} , 
 	{ "name": "t_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_V_out", "role": "ap_vld" }} , 
 	{ "name": "x_x0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "x_x0_V", "role": "address0" }} , 
 	{ "name": "x_x0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x0_V", "role": "ce0" }} , 
 	{ "name": "x_x0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x0_V", "role": "we0" }} , 
 	{ "name": "x_x0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x0_V", "role": "d0" }} , 
 	{ "name": "x_x1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "x_x1_V", "role": "address0" }} , 
 	{ "name": "x_x1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x1_V", "role": "ce0" }} , 
 	{ "name": "x_x1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x1_V", "role": "we0" }} , 
 	{ "name": "x_x1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x1_V", "role": "d0" }} , 
 	{ "name": "x_x2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "x_x2_V", "role": "address0" }} , 
 	{ "name": "x_x2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x2_V", "role": "ce0" }} , 
 	{ "name": "x_x2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x2_V", "role": "we0" }} , 
 	{ "name": "x_x2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x2_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "interleave_manual_seq_Pipeline_LOAD",
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
			{"Name" : "x_in", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "x_idx_V_flag_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_idx_V_new_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_x0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_x2_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "LOAD", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	interleave_manual_seq_Pipeline_LOAD {
		x_idx_V_load {Type I LastRead 0 FirstWrite -1}
		x_sel_V_load {Type I LastRead 0 FirstWrite -1}
		x_in {Type I LastRead 1 FirstWrite -1}
		x_idx_V_flag_0_out {Type O LastRead -1 FirstWrite 1}
		x_idx_V_new_0_out {Type O LastRead -1 FirstWrite 1}
		t_V_out {Type O LastRead -1 FirstWrite 1}
		x_x0_V {Type O LastRead -1 FirstWrite 2}
		x_x1_V {Type O LastRead -1 FirstWrite 2}
		x_x2_V {Type O LastRead -1 FirstWrite 2}}}

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
	x_sel_V_load { ap_none {  { x_sel_V_load in_data 0 2 } } }
	x_in { bram {  { x_in_Addr_A MemPortADDR2 1 32 }  { x_in_EN_A MemPortCE2 1 1 }  { x_in_WEN_A MemPortWE2 1 1 }  { x_in_Din_A MemPortDIN2 1 8 }  { x_in_Dout_A in_data 0 8 } } }
	x_idx_V_flag_0_out { ap_vld {  { x_idx_V_flag_0_out out_data 1 1 }  { x_idx_V_flag_0_out_ap_vld out_vld 1 1 } } }
	x_idx_V_new_0_out { ap_vld {  { x_idx_V_new_0_out out_data 1 21 }  { x_idx_V_new_0_out_ap_vld out_vld 1 1 } } }
	t_V_out { ap_vld {  { t_V_out out_data 1 2 }  { t_V_out_ap_vld out_vld 1 1 } } }
	x_x0_V { ap_memory {  { x_x0_V_address0 mem_address 1 19 }  { x_x0_V_ce0 mem_ce 1 1 }  { x_x0_V_we0 mem_we 1 1 }  { x_x0_V_d0 mem_din 1 8 } } }
	x_x1_V { ap_memory {  { x_x1_V_address0 mem_address 1 19 }  { x_x1_V_ce0 mem_ce 1 1 }  { x_x1_V_we0 mem_we 1 1 }  { x_x1_V_d0 mem_din 1 8 } } }
	x_x2_V { ap_memory {  { x_x2_V_address0 mem_address 1 19 }  { x_x2_V_ce0 mem_ce 1 1 }  { x_x2_V_we0 mem_we 1 1 }  { x_x2_V_d0 mem_din 1 8 } } }
}
