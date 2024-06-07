set moduleName read_seq
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {read_seq}
set C_modelType { int 8 }
set C_modelArgList {
	{ i int 17 regular  }
	{ offset int 4 regular  }
	{ x_x0_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x1_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x2_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x3_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x4_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x5_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x6_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x7_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x8_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x9_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x10_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x11_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x12_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x13_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x14_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
	{ x_x15_V int 8 regular {array 76800 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "offset", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "x_x0_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x1_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x2_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x3_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x4_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x5_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x6_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x7_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x8_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x9_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x10_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x11_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x12_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x13_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x14_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_x15_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ i sc_in sc_lv 17 signal 0 } 
	{ offset sc_in sc_lv 4 signal 1 } 
	{ x_x0_V_address0 sc_out sc_lv 17 signal 2 } 
	{ x_x0_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ x_x0_V_q0 sc_in sc_lv 8 signal 2 } 
	{ x_x1_V_address0 sc_out sc_lv 17 signal 3 } 
	{ x_x1_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_x1_V_q0 sc_in sc_lv 8 signal 3 } 
	{ x_x2_V_address0 sc_out sc_lv 17 signal 4 } 
	{ x_x2_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_x2_V_q0 sc_in sc_lv 8 signal 4 } 
	{ x_x3_V_address0 sc_out sc_lv 17 signal 5 } 
	{ x_x3_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_x3_V_q0 sc_in sc_lv 8 signal 5 } 
	{ x_x4_V_address0 sc_out sc_lv 17 signal 6 } 
	{ x_x4_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ x_x4_V_q0 sc_in sc_lv 8 signal 6 } 
	{ x_x5_V_address0 sc_out sc_lv 17 signal 7 } 
	{ x_x5_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_x5_V_q0 sc_in sc_lv 8 signal 7 } 
	{ x_x6_V_address0 sc_out sc_lv 17 signal 8 } 
	{ x_x6_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_x6_V_q0 sc_in sc_lv 8 signal 8 } 
	{ x_x7_V_address0 sc_out sc_lv 17 signal 9 } 
	{ x_x7_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_x7_V_q0 sc_in sc_lv 8 signal 9 } 
	{ x_x8_V_address0 sc_out sc_lv 17 signal 10 } 
	{ x_x8_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_x8_V_q0 sc_in sc_lv 8 signal 10 } 
	{ x_x9_V_address0 sc_out sc_lv 17 signal 11 } 
	{ x_x9_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ x_x9_V_q0 sc_in sc_lv 8 signal 11 } 
	{ x_x10_V_address0 sc_out sc_lv 17 signal 12 } 
	{ x_x10_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ x_x10_V_q0 sc_in sc_lv 8 signal 12 } 
	{ x_x11_V_address0 sc_out sc_lv 17 signal 13 } 
	{ x_x11_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ x_x11_V_q0 sc_in sc_lv 8 signal 13 } 
	{ x_x12_V_address0 sc_out sc_lv 17 signal 14 } 
	{ x_x12_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ x_x12_V_q0 sc_in sc_lv 8 signal 14 } 
	{ x_x13_V_address0 sc_out sc_lv 17 signal 15 } 
	{ x_x13_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ x_x13_V_q0 sc_in sc_lv 8 signal 15 } 
	{ x_x14_V_address0 sc_out sc_lv 17 signal 16 } 
	{ x_x14_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ x_x14_V_q0 sc_in sc_lv 8 signal 16 } 
	{ x_x15_V_address0 sc_out sc_lv 17 signal 17 } 
	{ x_x15_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ x_x15_V_q0 sc_in sc_lv 8 signal 17 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "offset", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "offset", "role": "default" }} , 
 	{ "name": "x_x0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x0_V", "role": "address0" }} , 
 	{ "name": "x_x0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x0_V", "role": "ce0" }} , 
 	{ "name": "x_x0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x0_V", "role": "q0" }} , 
 	{ "name": "x_x1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x1_V", "role": "address0" }} , 
 	{ "name": "x_x1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x1_V", "role": "ce0" }} , 
 	{ "name": "x_x1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x1_V", "role": "q0" }} , 
 	{ "name": "x_x2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x2_V", "role": "address0" }} , 
 	{ "name": "x_x2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x2_V", "role": "ce0" }} , 
 	{ "name": "x_x2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x2_V", "role": "q0" }} , 
 	{ "name": "x_x3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x3_V", "role": "address0" }} , 
 	{ "name": "x_x3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x3_V", "role": "ce0" }} , 
 	{ "name": "x_x3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x3_V", "role": "q0" }} , 
 	{ "name": "x_x4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x4_V", "role": "address0" }} , 
 	{ "name": "x_x4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x4_V", "role": "ce0" }} , 
 	{ "name": "x_x4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x4_V", "role": "q0" }} , 
 	{ "name": "x_x5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x5_V", "role": "address0" }} , 
 	{ "name": "x_x5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x5_V", "role": "ce0" }} , 
 	{ "name": "x_x5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x5_V", "role": "q0" }} , 
 	{ "name": "x_x6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x6_V", "role": "address0" }} , 
 	{ "name": "x_x6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x6_V", "role": "ce0" }} , 
 	{ "name": "x_x6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x6_V", "role": "q0" }} , 
 	{ "name": "x_x7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x7_V", "role": "address0" }} , 
 	{ "name": "x_x7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x7_V", "role": "ce0" }} , 
 	{ "name": "x_x7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x7_V", "role": "q0" }} , 
 	{ "name": "x_x8_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x8_V", "role": "address0" }} , 
 	{ "name": "x_x8_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x8_V", "role": "ce0" }} , 
 	{ "name": "x_x8_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x8_V", "role": "q0" }} , 
 	{ "name": "x_x9_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x9_V", "role": "address0" }} , 
 	{ "name": "x_x9_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x9_V", "role": "ce0" }} , 
 	{ "name": "x_x9_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x9_V", "role": "q0" }} , 
 	{ "name": "x_x10_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x10_V", "role": "address0" }} , 
 	{ "name": "x_x10_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x10_V", "role": "ce0" }} , 
 	{ "name": "x_x10_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x10_V", "role": "q0" }} , 
 	{ "name": "x_x11_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x11_V", "role": "address0" }} , 
 	{ "name": "x_x11_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x11_V", "role": "ce0" }} , 
 	{ "name": "x_x11_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x11_V", "role": "q0" }} , 
 	{ "name": "x_x12_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x12_V", "role": "address0" }} , 
 	{ "name": "x_x12_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x12_V", "role": "ce0" }} , 
 	{ "name": "x_x12_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x12_V", "role": "q0" }} , 
 	{ "name": "x_x13_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x13_V", "role": "address0" }} , 
 	{ "name": "x_x13_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x13_V", "role": "ce0" }} , 
 	{ "name": "x_x13_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x13_V", "role": "q0" }} , 
 	{ "name": "x_x14_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x14_V", "role": "address0" }} , 
 	{ "name": "x_x14_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x14_V", "role": "ce0" }} , 
 	{ "name": "x_x14_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x14_V", "role": "q0" }} , 
 	{ "name": "x_x15_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "x_x15_V", "role": "address0" }} , 
 	{ "name": "x_x15_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_x15_V", "role": "ce0" }} , 
 	{ "name": "x_x15_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_x15_V", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "x_x15_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		x_x15_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	i { ap_none {  { i in_data 0 17 } } }
	offset { ap_none {  { offset in_data 0 4 } } }
	x_x0_V { ap_memory {  { x_x0_V_address0 mem_address 1 17 }  { x_x0_V_ce0 mem_ce 1 1 }  { x_x0_V_q0 in_data 0 8 } } }
	x_x1_V { ap_memory {  { x_x1_V_address0 mem_address 1 17 }  { x_x1_V_ce0 mem_ce 1 1 }  { x_x1_V_q0 in_data 0 8 } } }
	x_x2_V { ap_memory {  { x_x2_V_address0 mem_address 1 17 }  { x_x2_V_ce0 mem_ce 1 1 }  { x_x2_V_q0 in_data 0 8 } } }
	x_x3_V { ap_memory {  { x_x3_V_address0 mem_address 1 17 }  { x_x3_V_ce0 mem_ce 1 1 }  { x_x3_V_q0 in_data 0 8 } } }
	x_x4_V { ap_memory {  { x_x4_V_address0 mem_address 1 17 }  { x_x4_V_ce0 mem_ce 1 1 }  { x_x4_V_q0 in_data 0 8 } } }
	x_x5_V { ap_memory {  { x_x5_V_address0 mem_address 1 17 }  { x_x5_V_ce0 mem_ce 1 1 }  { x_x5_V_q0 in_data 0 8 } } }
	x_x6_V { ap_memory {  { x_x6_V_address0 mem_address 1 17 }  { x_x6_V_ce0 mem_ce 1 1 }  { x_x6_V_q0 in_data 0 8 } } }
	x_x7_V { ap_memory {  { x_x7_V_address0 mem_address 1 17 }  { x_x7_V_ce0 mem_ce 1 1 }  { x_x7_V_q0 in_data 0 8 } } }
	x_x8_V { ap_memory {  { x_x8_V_address0 mem_address 1 17 }  { x_x8_V_ce0 mem_ce 1 1 }  { x_x8_V_q0 in_data 0 8 } } }
	x_x9_V { ap_memory {  { x_x9_V_address0 mem_address 1 17 }  { x_x9_V_ce0 mem_ce 1 1 }  { x_x9_V_q0 in_data 0 8 } } }
	x_x10_V { ap_memory {  { x_x10_V_address0 mem_address 1 17 }  { x_x10_V_ce0 mem_ce 1 1 }  { x_x10_V_q0 in_data 0 8 } } }
	x_x11_V { ap_memory {  { x_x11_V_address0 mem_address 1 17 }  { x_x11_V_ce0 mem_ce 1 1 }  { x_x11_V_q0 in_data 0 8 } } }
	x_x12_V { ap_memory {  { x_x12_V_address0 mem_address 1 17 }  { x_x12_V_ce0 mem_ce 1 1 }  { x_x12_V_q0 in_data 0 8 } } }
	x_x13_V { ap_memory {  { x_x13_V_address0 mem_address 1 17 }  { x_x13_V_ce0 mem_ce 1 1 }  { x_x13_V_q0 in_data 0 8 } } }
	x_x14_V { ap_memory {  { x_x14_V_address0 mem_address 1 17 }  { x_x14_V_ce0 mem_ce 1 1 }  { x_x14_V_q0 in_data 0 8 } } }
	x_x15_V { ap_memory {  { x_x15_V_address0 mem_address 1 17 }  { x_x15_V_ce0 mem_ce 1 1 }  { x_x15_V_q0 in_data 0 8 } } }
}
