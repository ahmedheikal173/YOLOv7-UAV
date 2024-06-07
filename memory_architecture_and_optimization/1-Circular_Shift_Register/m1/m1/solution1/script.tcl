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
add_files -tb ../tb/tb_shift_reg.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_export -output D:/gam3a/zzzzzzzzzz/1-Circular_Shift_Register/output
source "./m1/solution1/directives.tcl"
csim_design -argv {in} -setup
csynth_design
cosim_design -setup -O
export_design -rtl verilog -format ip_catalog -output D:/gam3a/zzzzzzzzzz/1-Circular_Shift_Register/output
