# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name tmpx_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename tmpx_V \
    op interface \
    ports { tmpx_V_address0 { O 21 vector } tmpx_V_ce0 { O 1 bit } tmpx_V_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmpx_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name x_x0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x0_V \
    op interface \
    ports { x_x0_V_address0 { O 17 vector } x_x0_V_ce0 { O 1 bit } x_x0_V_we0 { O 1 bit } x_x0_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name x_x1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x1_V \
    op interface \
    ports { x_x1_V_address0 { O 17 vector } x_x1_V_ce0 { O 1 bit } x_x1_V_we0 { O 1 bit } x_x1_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name x_x2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x2_V \
    op interface \
    ports { x_x2_V_address0 { O 17 vector } x_x2_V_ce0 { O 1 bit } x_x2_V_we0 { O 1 bit } x_x2_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name x_x3_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x3_V \
    op interface \
    ports { x_x3_V_address0 { O 17 vector } x_x3_V_ce0 { O 1 bit } x_x3_V_we0 { O 1 bit } x_x3_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name x_x4_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x4_V \
    op interface \
    ports { x_x4_V_address0 { O 17 vector } x_x4_V_ce0 { O 1 bit } x_x4_V_we0 { O 1 bit } x_x4_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name x_x5_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x5_V \
    op interface \
    ports { x_x5_V_address0 { O 17 vector } x_x5_V_ce0 { O 1 bit } x_x5_V_we0 { O 1 bit } x_x5_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x5_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name x_x6_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x6_V \
    op interface \
    ports { x_x6_V_address0 { O 17 vector } x_x6_V_ce0 { O 1 bit } x_x6_V_we0 { O 1 bit } x_x6_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x6_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name x_x7_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x7_V \
    op interface \
    ports { x_x7_V_address0 { O 17 vector } x_x7_V_ce0 { O 1 bit } x_x7_V_we0 { O 1 bit } x_x7_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x7_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name x_x8_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x8_V \
    op interface \
    ports { x_x8_V_address0 { O 17 vector } x_x8_V_ce0 { O 1 bit } x_x8_V_we0 { O 1 bit } x_x8_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x8_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name x_x9_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x9_V \
    op interface \
    ports { x_x9_V_address0 { O 17 vector } x_x9_V_ce0 { O 1 bit } x_x9_V_we0 { O 1 bit } x_x9_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x9_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name x_x10_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x10_V \
    op interface \
    ports { x_x10_V_address0 { O 17 vector } x_x10_V_ce0 { O 1 bit } x_x10_V_we0 { O 1 bit } x_x10_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x10_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name x_x11_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x11_V \
    op interface \
    ports { x_x11_V_address0 { O 17 vector } x_x11_V_ce0 { O 1 bit } x_x11_V_we0 { O 1 bit } x_x11_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x11_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name x_x12_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x12_V \
    op interface \
    ports { x_x12_V_address0 { O 17 vector } x_x12_V_ce0 { O 1 bit } x_x12_V_we0 { O 1 bit } x_x12_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x12_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name x_x13_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x13_V \
    op interface \
    ports { x_x13_V_address0 { O 17 vector } x_x13_V_ce0 { O 1 bit } x_x13_V_we0 { O 1 bit } x_x13_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x13_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name x_x14_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x14_V \
    op interface \
    ports { x_x14_V_address0 { O 17 vector } x_x14_V_ce0 { O 1 bit } x_x14_V_we0 { O 1 bit } x_x14_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x14_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name x_x15_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename x_x15_V \
    op interface \
    ports { x_x15_V_address0 { O 17 vector } x_x15_V_ce0 { O 1 bit } x_x15_V_we0 { O 1 bit } x_x15_V_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'x_x15_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name x_idx_V_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_idx_V_load \
    op interface \
    ports { x_idx_V_load { I 21 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name x_sel_V_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_sel_V_load \
    op interface \
    ports { x_sel_V_load { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name x_idx_V_flag_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_idx_V_flag_0_out \
    op interface \
    ports { x_idx_V_flag_0_out { O 1 vector } x_idx_V_flag_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name x_idx_V_new_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x_idx_V_new_0_out \
    op interface \
    ports { x_idx_V_new_0_out { O 21 vector } x_idx_V_new_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName img_interleave_manual_seq_flow_control_loop_pipe_sequential_init_U
set CompName img_interleave_manual_seq_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix img_interleave_manual_seq_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


