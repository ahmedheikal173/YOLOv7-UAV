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
add_files -tb ../tb/tb.cpp
open_solution "solution1" -flow_target vitis
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./m5/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -setup -O
export_design -format ip_catalog
