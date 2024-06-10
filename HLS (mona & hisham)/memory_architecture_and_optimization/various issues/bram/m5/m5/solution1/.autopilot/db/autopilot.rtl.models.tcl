set SynModuleInfo {
  {SRCNAME BRAM_filter_Pipeline_VITIS_LOOP_27_2 MODELNAME BRAM_filter_Pipeline_VITIS_LOOP_27_2 RTLNAME BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_27_2
    SUBMODULES {
      {MODELNAME BRAM_filter_flow_control_loop_pipe_sequential_init RTLNAME BRAM_filter_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME BRAM_filter_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME BRAM_filter_Pipeline_VITIS_LOOP_20_1 MODELNAME BRAM_filter_Pipeline_VITIS_LOOP_20_1 RTLNAME BRAM_filter_BRAM_filter_Pipeline_VITIS_LOOP_20_1}
  {SRCNAME BRAM_filter MODELNAME BRAM_filter RTLNAME BRAM_filter IS_TOP 1
    SUBMODULES {
      {MODELNAME BRAM_filter_x_mems_V_RAM_1P_BRAM_1R1W RTLNAME BRAM_filter_x_mems_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME BRAM_filter_control_s_axi RTLNAME BRAM_filter_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
