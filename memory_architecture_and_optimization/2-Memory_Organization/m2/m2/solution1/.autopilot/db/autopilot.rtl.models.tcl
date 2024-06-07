set SynModuleInfo {
  {SRCNAME interleave_manual_rnd_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3 MODELNAME interleave_manual_rnd_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3 RTLNAME interleave_manual_rnd_interleave_manual_rnd_Pipeline_VITIS_LOOP_32_1_VITIS_LOOP_33_2_VITIS_LOOP_34_3
    SUBMODULES {
      {MODELNAME interleave_manual_rnd_flow_control_loop_pipe_sequential_init RTLNAME interleave_manual_rnd_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME interleave_manual_rnd_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME interleave_manual_rnd_Pipeline_WRITE MODELNAME interleave_manual_rnd_Pipeline_WRITE RTLNAME interleave_manual_rnd_interleave_manual_rnd_Pipeline_WRITE}
  {SRCNAME interleave_manual_rnd_Pipeline_LOAD MODELNAME interleave_manual_rnd_Pipeline_LOAD RTLNAME interleave_manual_rnd_interleave_manual_rnd_Pipeline_LOAD}
  {SRCNAME interleave_manual_rnd_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3 MODELNAME interleave_manual_rnd_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3 RTLNAME interleave_manual_rnd_interleave_manual_rnd_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_VITIS_LOOP_46_3
    SUBMODULES {
      {MODELNAME interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1 RTLNAME interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME interleave_manual_rnd MODELNAME interleave_manual_rnd RTLNAME interleave_manual_rnd IS_TOP 1
    SUBMODULES {
      {MODELNAME interleave_manual_rnd_x_x0_V_RAM_T2P_BRAM_1R1W RTLNAME interleave_manual_rnd_x_x0_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME interleave_manual_rnd_temp_V_RAM_AUTO_1R1W RTLNAME interleave_manual_rnd_temp_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME interleave_manual_rnd_tmpx_V_RAM_T2P_BRAM_1R1W RTLNAME interleave_manual_rnd_tmpx_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME interleave_manual_rnd_control_s_axi RTLNAME interleave_manual_rnd_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
