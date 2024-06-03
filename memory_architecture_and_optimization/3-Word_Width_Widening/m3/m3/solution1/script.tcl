############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project m3
set_top word_width
add_files ../src/word_width.cpp
add_files ../src/word_width.h
add_files ../src/word_width_manual.cpp
add_files ../src/word_width_mem.hpp
add_files ../src/ww_read_mem.hpp
add_files ../src/ww_write_mem.hpp
add_files -tb ../tb/tb_word_width.cpp
open_solution "solution1" -flow_target vitis
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./m3/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design
export_design -format ip_catalog
