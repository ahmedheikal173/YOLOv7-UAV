############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project morgb
set_top interleave_manual_seq
add_files ../../src/interleave.cpp
add_files ../../src/interleave.h
add_files ../../src/interleave_manual_rnd.cpp
add_files ../../src/interleave_manual_seq.cpp
add_files ../../src/interleave_mem_rnd.hpp
add_files ../../src/interleave_mem_seq.hpp
add_files ../../src/read_mem_rnd.hpp
add_files ../../src/read_mem_seq.hpp
add_files ../../src/write_mem_rnd.hpp
add_files ../../src/write_mem_seq.hpp
add_files -tb ../../tb/tb_interleave.cpp
open_solution "solution1" -flow_target vitis
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
source "./morgb/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -setup -O
export_design -format ip_catalog
