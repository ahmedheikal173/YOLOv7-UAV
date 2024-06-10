############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gp_project
set_top conv_ref
add_files gp_project/reluCBS3.cpp
add_files gp_project/reluCBS2.cpp
add_files gp_project/relu.cpp
add_files gp_project/maxpooling.cpp
add_files gp_project/conv_test.h
add_files gp_project/conv_test.cpp
add_files gp_project/conv_ref.cpp
add_files gp_project/convMP1.cpp
add_files gp_project/convCBS3.cpp
add_files gp_project/convCBS2.cpp
add_files gp_project/catELAN1.cpp
add_files gp_project/arch.h
add_files gp_project/MaxPoolingMP1.cpp
add_files gp_project/MP1.cpp
add_files gp_project/LRNCBS3.cpp
add_files gp_project/LRNCBS2.cpp
add_files gp_project/LRN.cpp
add_files gp_project/ELAN1.cpp
add_files gp_project/CBSInput_ELAN1.cpp
add_files gp_project/CBSELAN1.cpp
add_files gp_project/CBS3.cpp
add_files gp_project/CBS2.cpp
add_files gp_project/CBS1.cpp
add_files -tb gp_project/CBS1_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu7ev-ffvc1156-1lv-i}
create_clock -period 10 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_schedule -effort medium -enable_dsp_full_reg=0 -relax_ii_for_timing=0 -verbose=0
config_bind -effort medium
config_sdx -optimization_level none -target none
set_clock_uncertainty 12.5%
source "./gp_project/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
