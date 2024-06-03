############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project m42
set_top window_avg
add_files ../src/singleport_ram.hpp
add_files ../src/window_2d.cpp
add_files ../src/window_2d.h
add_files -tb ../tb/test_singleport_ram.cpp
add_files -tb ../tb/test_window_2d.cpp
open_solution "solution1" -flow_target vitis
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./m42/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design
export_design -format ip_catalog
