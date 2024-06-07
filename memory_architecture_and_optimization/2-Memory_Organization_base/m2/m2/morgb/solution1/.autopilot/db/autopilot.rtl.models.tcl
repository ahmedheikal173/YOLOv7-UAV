set SynModuleInfo {
  {SRCNAME interleave_manual_seq_Pipeline_WRITE MODELNAME interleave_manual_seq_Pipeline_WRITE RTLNAME interleave_manual_seq_interleave_manual_seq_Pipeline_WRITE
    SUBMODULES {
      {MODELNAME interleave_manual_seq_flow_control_loop_pipe_sequential_init RTLNAME interleave_manual_seq_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME interleave_manual_seq_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME interleave_manual_seq_Pipeline_LOAD MODELNAME interleave_manual_seq_Pipeline_LOAD RTLNAME interleave_manual_seq_interleave_manual_seq_Pipeline_LOAD}
  {SRCNAME interleave_manual_seq MODELNAME interleave_manual_seq RTLNAME interleave_manual_seq IS_TOP 1
    SUBMODULES {
      {MODELNAME interleave_manual_seq_x_x0_V_RAM_T2P_BRAM_1R1W RTLNAME interleave_manual_seq_x_x0_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME interleave_manual_seq_control_s_axi RTLNAME interleave_manual_seq_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
