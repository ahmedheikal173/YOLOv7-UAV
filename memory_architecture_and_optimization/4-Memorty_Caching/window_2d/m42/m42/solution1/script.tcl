############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project m42
set_top avg
add_files ../src/singleport_ram.hpp
add_files ../src/window_2d.cpp
add_files ../src/window_2d.h
add_files ../src/window_2d_poor_arch.cpp
add_files -tb ../tb/test_window_2d.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
#source "./m42/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design -setup -O
export_design -format ip_catalog
