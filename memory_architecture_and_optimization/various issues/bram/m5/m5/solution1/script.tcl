############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project m5
set_top BRAM_filter
add_files ../src/BRAM_flt.cpp
add_files ../src/BRAM_flt.hpp
add_files ../src/BRAM_img.cpp
add_files ../src/BRAM_img.hpp
add_files ../src/RAM.h
add_files ../src/tomatrix.cpp
add_files ../src/tomatrix.hpp
add_files -tb ../tb/tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
source "./m5/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -setup -O
export_design -format ip_catalog
