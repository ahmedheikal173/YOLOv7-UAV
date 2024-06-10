set moduleName interleave_manual_seq_Pipeline_WRITE
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
set C_modelName {interleave_manual_seq_Pipeline_WRITE}
set C_modelType { void 0 }
set C_modelArgList {
	{ y int 8 regular {bram 409600 { 0 3 } 0 1 }  }
	{ x_x0_V int 8 regular {array 409600 { 1 } 1 1 } {global 0}  }
	{ x_x1_V int 8 regular {array 409600 { 1 } 1 1 } {global 0}  }
	{ x_x2_V int 8 regular {array 409600 { 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y", "interface" : "bram", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_x0_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_Addr_A sc_out sc_lv 32 signal 0 } 
	{ y_EN_A sc_out sc_logic 1 signal 0 } 
	{ y_WEN_A sc_out sc_lv 1 signal 0 } 
	{ y_Din_A sc_out sc_lv 8 signal 0 } 
	{ y_Dout_A sc_in sc_lv 8 signal 0 } 
	{ x_x0_V_address0 sc_out sc_lv 19 signal 1 } 
	{ x_x0_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ x_x0_V_q0 sc_in sc_lv 8 signal 1 } 
	{ x_x1_V_address0 sc_out sc_lv 19 signal 2 } 
	{ x_x1_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_x1_V_q0 sc_in sc_lv 8 signal 2 } 
	{ x_x2_V_address0 sc_out sc_lv 19 signal 3 } 
	{ x_x2_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_x2_V_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "Addr_A" }} , 
 	{ "name": "y_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "EN_A" }} , 
 	{ "name": "y_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "WEN_A" }} , 
 	{ "name": "y_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "Din_A" }} , 
 	{ "name": "y_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "y", "role": "Dout_A" }} , 
 	{ "name": "x_x0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "x_x0_V", "role": "address0" }} , 
 	{ "name": "x_x0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x0_V", "role": "ce0" }} , 
 	{ "name": "x_x0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x0_V", "role": "q0" }} , 
 	{ "name": "x_x1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "x_x1_V", "role": "address0" }} , 
 	{ "name": "x_x1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x1_V", "role": "ce0" }} , 
 	{ "name": "x_x1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x1_V", "role": "q0" }} , 
 	{ "name": "x_x2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "x_x2_V", "role": "address0" }} , 
 	{ "name": "x_x2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x2_V", "role": "ce0" }} , 
 	{ "name": "x_x2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x2_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "interleave_manual_seq_Pipeline_WRITE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "409602", "EstimateLatencyMax" : "409602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "y", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "x_x0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_x2_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "WRITE", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	interleave_manual_seq_Pipeline_WRITE {
		y {Type O LastRead -1 FirstWrite 1}
		x_x0_V {Type I LastRead 0 FirstWrite -1}
		x_x1_V {Type I LastRead 0 FirstWrite -1}
		x_x2_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "409602", "Max" : "409602"}
	, {"Name" : "Interval", "Min" : "409602", "Max" : "409602"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	y { bram {  { y_Addr_A MemPortADDR2 1 32 }  { y_EN_A MemPortCE2 1 1 }  { y_WEN_A MemPortWE2 1 1 }  { y_Din_A MemPortDIN2 1 8 }  { y_Dout_A MemPortDOUT2 0 8 } } }
	x_x0_V { ap_memory {  { x_x0_V_address0 mem_address 1 19 }  { x_x0_V_ce0 mem_ce 1 1 }  { x_x0_V_q0 in_data 0 8 } } }
	x_x1_V { ap_memory {  { x_x1_V_address0 mem_address 1 19 }  { x_x1_V_ce0 mem_ce 1 1 }  { x_x1_V_q0 in_data 0 8 } } }
	x_x2_V { ap_memory {  { x_x2_V_address0 mem_address 1 19 }  { x_x2_V_ce0 mem_ce 1 1 }  { x_x2_V_q0 in_data 0 8 } } }
}
