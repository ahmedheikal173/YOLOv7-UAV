set SynModuleInfo {
  {SRCNAME buff MODELNAME buff RTLNAME window_avg_buff
    SUBMODULES {
      {MODELNAME window_avg_buff_buff1_ram_V_RAM_1P_BRAM_1R1W RTLNAME window_avg_buff_buff1_ram_V_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME window_avg MODELNAME window_avg RTLNAME window_avg IS_TOP 1
    SUBMODULES {
      {MODELNAME window_avg_control_s_axi RTLNAME window_avg_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME window_avg_gmem_m_axi RTLNAME window_avg_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME window_avg_flow_control_loop_pipe RTLNAME window_avg_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME window_avg_flow_control_loop_pipe_U}
    }
  }
}
