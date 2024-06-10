set moduleName padding_r_test
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
set C_modelName {padding_r_test}
set C_modelType { void 0 }
set C_modelArgList {
	{ im int 32 regular {array 102400 { 1 3 } 1 1 }  }
	{ image_padded_0 int 32 regular {array 103684 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "im", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "image_padded_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ im_address0 sc_out sc_lv 17 signal 0 } 
	{ im_ce0 sc_out sc_logic 1 signal 0 } 
	{ im_q0 sc_in sc_lv 32 signal 0 } 
	{ image_padded_0_address0 sc_out sc_lv 17 signal 1 } 
	{ image_padded_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ image_padded_0_we0 sc_out sc_logic 1 signal 1 } 
	{ image_padded_0_d0 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "im_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "im", "role": "address0" }} , 
 	{ "name": "im_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "im", "role": "ce0" }} , 
 	{ "name": "im_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "im", "role": "q0" }} , 
 	{ "name": "image_padded_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "image_padded_0", "role": "address0" }} , 
 	{ "name": "image_padded_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_padded_0", "role": "ce0" }} , 
 	{ "name": "image_padded_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_padded_0", "role": "we0" }} , 
 	{ "name": "image_padded_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_padded_0", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "padding_r_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "309770", "EstimateLatencyMax" : "309770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "im", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "image_padded_0", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	padding_r_test {
		im {Type I LastRead 3 FirstWrite -1}
		image_padded_0 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "309770", "Max" : "309770"}
	, {"Name" : "Interval", "Min" : "309770", "Max" : "309770"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	im { ap_memory {  { im_address0 mem_address 1 17 }  { im_ce0 mem_ce 1 1 }  { im_q0 mem_dout 0 32 } } }
	image_padded_0 { ap_memory {  { image_padded_0_address0 mem_address 1 17 }  { image_padded_0_ce0 mem_ce 1 1 }  { image_padded_0_we0 mem_we 1 1 }  { image_padded_0_d0 mem_din 1 32 } } }
}
