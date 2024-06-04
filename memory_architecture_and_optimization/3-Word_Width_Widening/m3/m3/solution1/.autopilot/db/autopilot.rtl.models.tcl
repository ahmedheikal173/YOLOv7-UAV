set SynModuleInfo {
  {SRCNAME word_width_Pipeline_WRITE MODELNAME word_width_Pipeline_WRITE RTLNAME word_width_word_width_Pipeline_WRITE
    SUBMODULES {
      {MODELNAME word_width_flow_control_loop_pipe_sequential_init RTLNAME word_width_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME word_width_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME word_width_Pipeline_LOAD MODELNAME word_width_Pipeline_LOAD RTLNAME word_width_word_width_Pipeline_LOAD}
  {SRCNAME word_width MODELNAME word_width RTLNAME word_width IS_TOP 1
    SUBMODULES {
      {MODELNAME word_width_word_width_ap_int_8_ap_int_8_bool_x_RAM_T2P_BRAM_1R1W RTLNAME word_width_word_width_ap_int_8_ap_int_8_bool_x_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME word_width_control_s_axi RTLNAME word_width_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME word_width_gmem_m_axi RTLNAME word_width_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
