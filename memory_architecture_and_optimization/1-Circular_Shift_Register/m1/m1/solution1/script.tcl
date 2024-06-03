############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project m1
set_top circular_shift_reg
add_files ../src/circular_shift.h
add_files ../src/shift_reg.cpp
add_files ../src/shift_reg.h
add_files -tb ../tb/tb_shift_reg.cpp
open_solution "solution1" -flow_target vitis
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./m1/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design
export_design -format ip_catalog
