set moduleName conv_ref
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv_ref}
set C_modelType { void 0 }
set C_modelArgList {
	{ image_V int 8 regular {array 1228800 { 1 3 } 1 1 }  }
	{ weights_V int 8 regular {array 648 { 1 1 } 1 1 }  }
	{ output_conv_V int 8 regular {array 9830400 { 2 3 } 3 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "image.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 639,"step" : 1},{"low" : 0,"up" : 639,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "weights_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "weights.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}]} , 
 	{ "Name" : "output_conv_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "output_conv.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 639,"step" : 1},{"low" : 0,"up" : 639,"step" : 1},{"low" : 0,"up" : 23,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ image_V_address0 sc_out sc_lv 21 signal 0 } 
	{ image_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ image_V_q0 sc_in sc_lv 8 signal 0 } 
	{ weights_V_address0 sc_out sc_lv 10 signal 1 } 
	{ weights_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights_V_q0 sc_in sc_lv 8 signal 1 } 
	{ weights_V_address1 sc_out sc_lv 10 signal 1 } 
	{ weights_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights_V_q1 sc_in sc_lv 8 signal 1 } 
	{ output_conv_V_address0 sc_out sc_lv 24 signal 2 } 
	{ output_conv_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_conv_V_we0 sc_out sc_logic 1 signal 2 } 
	{ output_conv_V_d0 sc_out sc_lv 8 signal 2 } 
	{ output_conv_V_q0 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "image_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "image_V", "role": "address0" }} , 
 	{ "name": "image_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V", "role": "ce0" }} , 
 	{ "name": "image_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "image_V", "role": "q0" }} , 
 	{ "name": "weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_V", "role": "address0" }} , 
 	{ "name": "weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_V", "role": "ce0" }} , 
 	{ "name": "weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_V", "role": "q0" }} , 
 	{ "name": "weights_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights_V", "role": "address1" }} , 
 	{ "name": "weights_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_V", "role": "ce1" }} , 
 	{ "name": "weights_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_V", "role": "q1" }} , 
 	{ "name": "output_conv_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "output_conv_V", "role": "address0" }} , 
 	{ "name": "output_conv_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_conv_V", "role": "ce0" }} , 
 	{ "name": "output_conv_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_conv_V", "role": "we0" }} , 
 	{ "name": "output_conv_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_conv_V", "role": "d0" }} , 
 	{ "name": "output_conv_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_conv_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "conv_ref",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "239631400", "EstimateLatencyMax" : "239631400",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "image_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_conv_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_padded_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mul_mul_cud_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mul_mul_dEe_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mac_mulaeOg_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mac_mulaeOg_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mac_mulaeOg_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mac_mulaeOg_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mac_mulaeOg_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mac_mulaeOg_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mac_mulaeOg_U9", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mac_mulaeOg_U10", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_ref_mac_mulaeOg_U11", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_ref {
		image_V {Type I LastRead 4 FirstWrite -1}
		weights_V {Type I LastRead 8 FirstWrite -1}
		output_conv_V {Type IO LastRead 3 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "239631400", "Max" : "239631400"}
	, {"Name" : "Interval", "Min" : "239631401", "Max" : "239631401"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	image_V { ap_memory {  { image_V_address0 mem_address 1 21 }  { image_V_ce0 mem_ce 1 1 }  { image_V_q0 mem_dout 0 8 } } }
	weights_V { ap_memory {  { weights_V_address0 mem_address 1 10 }  { weights_V_ce0 mem_ce 1 1 }  { weights_V_q0 mem_dout 0 8 }  { weights_V_address1 MemPortADDR2 1 10 }  { weights_V_ce1 MemPortCE2 1 1 }  { weights_V_q1 MemPortDOUT2 0 8 } } }
	output_conv_V { ap_memory {  { output_conv_V_address0 mem_address 1 24 }  { output_conv_V_ce0 mem_ce 1 1 }  { output_conv_V_we0 mem_we 1 1 }  { output_conv_V_d0 mem_din 1 8 }  { output_conv_V_q0 mem_dout 0 8 } } }
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
	{ output_conv_V 3 }
}
