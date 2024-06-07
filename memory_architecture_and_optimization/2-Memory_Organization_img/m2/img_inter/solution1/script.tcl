############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project img_inter
set_top img_interleave_manual_seq
add_files ../src/write_mem_seq.hpp
add_files ../src/write_mem_rnd.hpp
add_files ../src/tomatrix.hpp
add_files ../src/tomatrix.cpp
add_files ../src/read_mem_seq.hpp
add_files ../src/read_mem_rnd.hpp
add_files ../src/interleave_mem_seq.hpp
add_files ../src/interleave_mem_rnd.hpp
add_files ../src/interleave_manual_seq.cpp
add_files ../src/interleave_manual_rnd.cpp
add_files ../src/interleave.h
add_files ../src/interleave.cpp
add_files -tb ../tb/tb_interleave.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
source "./img_inter/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -setup
export_design -format ip_catalog
