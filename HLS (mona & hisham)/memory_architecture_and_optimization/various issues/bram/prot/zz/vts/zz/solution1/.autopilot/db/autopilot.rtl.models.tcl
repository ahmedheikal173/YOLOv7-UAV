set SynModuleInfo {
  {SRCNAME BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3 MODELNAME BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3 RTLNAME BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_70_2_VITIS_LOOP_72_3
    SUBMODULES {
      {MODELNAME BRAM_filter_ama_addmuladd_5s_2ns_6ns_6ns_9_4_1 RTLNAME BRAM_filter_ama_addmuladd_5s_2ns_6ns_6ns_9_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME BRAM_filter_flow_control_loop_pipe_sequential_init RTLNAME BRAM_filter_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME BRAM_filter_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME BRAM_filter_Pipeline_VITIS_LOOP_27_2 MODELNAME BRAM_filter_Pipeline_VITIS_LOOP_27_2 RTLNAME BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_27_2}
  {SRCNAME BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3 MODELNAME BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3 RTLNAME BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_49_1_VITIS_LOOP_51_2_VITIS_LOOP_53_3}
  {SRCNAME BRAM_filter_Pipeline_VITIS_LOOP_20_1 MODELNAME BRAM_filter_Pipeline_VITIS_LOOP_20_1 RTLNAME BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_20_1}
  {SRCNAME BRAM_filter MODELNAME BRAM_filter RTLNAME BRAM_filter IS_TOP 1
    SUBMODULES {
      {MODELNAME BRAM_filter_x_mems_V_RAM_1P_BRAM_1R1W RTLNAME BRAM_filter_x_mems_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BRAM_filter_inn_V_RAM_1P_BRAM_1R1W RTLNAME BRAM_filter_inn_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
