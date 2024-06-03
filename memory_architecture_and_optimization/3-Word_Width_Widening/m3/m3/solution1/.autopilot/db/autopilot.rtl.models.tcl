set SynModuleInfo {
  {SRCNAME word_width_manual_Pipeline_WRITE MODELNAME word_width_manual_Pipeline_WRITE RTLNAME word_width_manual_word_width_manual_Pipeline_WRITE
    SUBMODULES {
      {MODELNAME word_width_manual_flow_control_loop_pipe_sequential_init RTLNAME word_width_manual_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME word_width_manual_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME word_width_manual_Pipeline_LOAD MODELNAME word_width_manual_Pipeline_LOAD RTLNAME word_width_manual_word_width_manual_Pipeline_LOAD}
  {SRCNAME word_width_manual MODELNAME word_width_manual RTLNAME word_width_manual IS_TOP 1
    SUBMODULES {
      {MODELNAME word_width_manual_x_x_V_RAM_1P_BRAM_1R1W RTLNAME word_width_manual_x_x_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME word_width_manual_control_s_axi RTLNAME word_width_manual_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME word_width_manual_gmem_m_axi RTLNAME word_width_manual_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
