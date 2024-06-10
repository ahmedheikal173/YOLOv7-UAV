# ==============================================================
# File generated on Thu Jun 06 02:15:25 +0200 2024
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../CBS1_tb.cpp -cflags { -Wno-unknown-pragmas}
add_files gp_project/reluCBS3.cpp
add_files gp_project/reluCBS2.cpp
add_files gp_project/relu.h
add_files gp_project/relu.cpp
add_files gp_project/maxpooling.h
add_files gp_project/maxpooling.cpp
add_files gp_project/conv_test.h
add_files gp_project/conv_test.cpp
add_files gp_project/conv_ref.h
add_files gp_project/conv_ref.cpp
add_files gp_project/convMP1.cpp
add_files gp_project/convCBS3.cpp
add_files gp_project/convCBS2.cpp
add_files gp_project/conv1_test.cpp
add_files gp_project/catELAN1.cpp
add_files gp_project/archConv1.h
add_files gp_project/arch.h
add_files gp_project/MaxPoolingMP1.cpp
add_files gp_project/MP1.cpp
add_files gp_project/LRNCBS3.cpp
add_files gp_project/LRNCBS2.cpp
add_files gp_project/LRN.h
add_files gp_project/LRN.cpp
add_files gp_project/ELAN1.cpp
add_files gp_project/CBSInput_ELAN1.cpp
add_files gp_project/CBSELAN1.cpp
add_files gp_project/CBS3.cpp
add_files gp_project/CBS2.cpp
add_files gp_project/CBS1.cpp
set_part xczu7ev-ffvc1156-1lv-i
create_clock -name default -period 10
set_clock_uncertainty 12.5% default
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_schedule -effort=medium
config_schedule -enable_dsp_full_reg=0
config_schedule -relax_ii_for_timing=0
config_schedule -verbose=0
config_bind -effort=medium
config_sdx -optimization_level=none
config_sdx -target=none
set_directive_pipeline conv_ref/conv_ref_label0 
set_directive_pipeline conv_ref/conv_ref_label1 
set_directive_pipeline conv_ref/conv_ref_label2 
set_directive_pipeline maxpooling/maxpooling_label2 
set_directive_pipeline reluCBS2/relu_label2 
set_directive_pipeline LRNCBS3/LRN_label1 
set_directive_pipeline reluCBS3/relu_label2 
set_directive_pipeline relu/relu_label2 
set_directive_pipeline LRN/LRN_label0 
set_directive_pipeline LRNCBS2/LRN_label0 
set_directive_pipeline convCBS2/convCBS2_label1 
set_directive_pipeline convCBS2/conv_ref_label1 
set_directive_pipeline convCBS3/convCBS3_label0 
set_directive_pipeline convCBS3/conv_ref_label1 
set_directive_pipeline convCBS2/convCBS2_label0 
set_directive_pipeline CBSELAN1/convCBS3_label0 
set_directive_pipeline CBSInput_ELAN1/convCBS3_label0 
set_directive_pipeline CBSInput_ELAN1/CBSInput_ELAN1_label0 
set_directive_pipeline CBSInput_ELAN1/CBSInput_ELAN1_label1 
set_directive_pipeline CBSELAN1/CBSELAN1_label3 
set_directive_pipeline CBSELAN1/CBSELAN1_label4 
set_directive_pipeline CBSELAN1/CBSELAN1_label5 
set_directive_pipeline CBSELAN1/conv_ref_label1 
set_directive_pipeline MaxPoolingMP1/MaxPoolingMP1_label4 
set_directive_pipeline convMP1/convMP1_label5 
set_directive_pipeline convMP1/convMP1_label2 
set_directive_resource ELAN1 
set_directive_resource ELAN1 
set_directive_resource ELAN1 
