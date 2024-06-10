set moduleName BRAM_filter
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {BRAM_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ x_in int 8 regular {bram 396 { 1 3 } 1 1 }  }
	{ out_r int 8 regular {bram 396 { 0 3 } 0 1 }  }
	{ load uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "x_in", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "bram", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "load", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_in_Addr_A sc_out sc_lv 32 signal 0 } 
	{ x_in_EN_A sc_out sc_logic 1 signal 0 } 
	{ x_in_WEN_A sc_out sc_lv 1 signal 0 } 
	{ x_in_Din_A sc_out sc_lv 8 signal 0 } 
	{ x_in_Dout_A sc_in sc_lv 8 signal 0 } 
	{ x_in_Clk_A sc_out sc_logic 1 signal 0 } 
	{ x_in_Rst_A sc_out sc_logic 1 signal 0 } 
	{ out_r_Addr_A sc_out sc_lv 32 signal 1 } 
	{ out_r_EN_A sc_out sc_logic 1 signal 1 } 
	{ out_r_WEN_A sc_out sc_lv 1 signal 1 } 
	{ out_r_Din_A sc_out sc_lv 8 signal 1 } 
	{ out_r_Dout_A sc_in sc_lv 8 signal 1 } 
	{ out_r_Clk_A sc_out sc_logic 1 signal 1 } 
	{ out_r_Rst_A sc_out sc_logic 1 signal 1 } 
	{ load sc_in sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_in_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_in", "role": "Addr_A" }} , 
 	{ "name": "x_in_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "EN_A" }} , 
 	{ "name": "x_in_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "WEN_A" }} , 
 	{ "name": "x_in_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_in", "role": "Din_A" }} , 
 	{ "name": "x_in_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "x_in", "role": "Dout_A" }} , 
 	{ "name": "x_in_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "Clk_A" }} , 
 	{ "name": "x_in_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_in", "role": "Rst_A" }} , 
 	{ "name": "out_r_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "Addr_A" }} , 
 	{ "name": "out_r_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "EN_A" }} , 
 	{ "name": "out_r_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "WEN_A" }} , 
 	{ "name": "out_r_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "Din_A" }} , 
 	{ "name": "out_r_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "Dout_A" }} , 
 	{ "name": "out_r_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "Clk_A" }} , 
 	{ "name": "out_r_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "Rst_A" }} , 
 	{ "name": "load", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "load", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7", "9", "12"],
		"CDFG" : "BRAM_filter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "803", "EstimateLatencyMax" : "1203",
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
					{"ID" : "4", "SubInstance" : "grp_BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3_fu_60", "Port" : "x_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "out_r", "Type" : "Bram", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3_fu_75", "Port" : "out_r", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "load", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_mems_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_BRAM_filter_Pipeline_VITIS_LOOP_27_2_fu_68", "Port" : "x_mems_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "12", "SubInstance" : "grp_BRAM_filter_Pipeline_VITIS_LOOP_20_1_fu_82", "Port" : "x_mems_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_mems_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inn_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outt_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3_fu_60", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "401", "EstimateLatencyMax" : "401",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_in", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "inn_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3_fu_60.ama_addmuladd_5s_2ns_6ns_6ns_9_4_1_U1", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_27_2_fu_68", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "BRAM_filter_Pipeline_VITIS_LOOP_27_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "398", "EstimateLatencyMax" : "398",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outt_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_mems_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_27_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_27_2_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3_fu_75", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "400", "EstimateLatencyMax" : "400",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_r", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "outt_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3_fu_75.ama_addmuladd_5s_2ns_6ns_6ns_9_4_1_U6", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3_fu_75.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_20_1_fu_82", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "BRAM_filter_Pipeline_VITIS_LOOP_20_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "398", "EstimateLatencyMax" : "398",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inn_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_mems_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_20_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_BRAM_filter_Pipeline_VITIS_LOOP_20_1_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	BRAM_filter {
		x_in {Type I LastRead 3 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 3}
		load {Type I LastRead 1 FirstWrite -1}
		x_mems_V {Type IO LastRead -1 FirstWrite -1}}
	BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3 {
		x_in {Type I LastRead 3 FirstWrite -1}
		inn_V {Type O LastRead -1 FirstWrite 4}}
	BRAM_filter_Pipeline_VITIS_LOOP_27_2 {
		outt_V {Type O LastRead -1 FirstWrite 1}
		x_mems_V {Type I LastRead 0 FirstWrite -1}}
	BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3 {
		out_r {Type O LastRead -1 FirstWrite 3}
		outt_V {Type I LastRead 2 FirstWrite -1}}
	BRAM_filter_Pipeline_VITIS_LOOP_20_1 {
		inn_V {Type I LastRead 0 FirstWrite -1}
		x_mems_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "803", "Max" : "1203"}
	, {"Name" : "Interval", "Min" : "804", "Max" : "1204"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x_in { bram {  { x_in_Addr_A MemPortADDR2 1 32 }  { x_in_EN_A MemPortCE2 1 1 }  { x_in_WEN_A MemPortWE2 1 1 }  { x_in_Din_A MemPortDIN2 1 8 }  { x_in_Dout_A MemPortDOUT2 0 8 }  { x_in_Clk_A mem_clk 1 1 }  { x_in_Rst_A mem_rst 1 1 } } }
	out_r { bram {  { out_r_Addr_A MemPortADDR2 1 32 }  { out_r_EN_A MemPortCE2 1 1 }  { out_r_WEN_A MemPortWE2 1 1 }  { out_r_Din_A MemPortDIN2 1 8 }  { out_r_Dout_A MemPortDOUT2 0 8 }  { out_r_Clk_A mem_clk 1 1 }  { out_r_Rst_A mem_rst 1 1 } } }
	load { ap_none {  { load in_data 0 1 } } }
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
