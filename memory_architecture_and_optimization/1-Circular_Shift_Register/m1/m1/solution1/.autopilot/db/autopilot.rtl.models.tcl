set SynModuleInfo {
  {SRCNAME circular_shift_reg MODELNAME circular_shift_reg RTLNAME circular_shift_reg IS_TOP 1
    SUBMODULES {
      {MODELNAME circular_shift_reg_regs_mem_V_RAM_T2P_BRAM_1R1W RTLNAME circular_shift_reg_regs_mem_V_RAM_T2P_BRAM_1R1W BINDTYPE storage TYPE ram_t2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME circular_shift_reg_control_s_axi RTLNAME circular_shift_reg_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME circular_shift_reg_gmem_m_axi RTLNAME circular_shift_reg_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
