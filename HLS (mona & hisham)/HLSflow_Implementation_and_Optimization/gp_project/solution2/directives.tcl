############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "conv_ref/conv_ref_label0"
set_directive_pipeline "conv_ref/conv_ref_label1"
set_directive_pipeline -II 9 "conv_ref/conv_ref_label2"
set_directive_pipeline "maxpooling/maxpooling_label2"
set_directive_pipeline "reluCBS2/relu_label2"
set_directive_pipeline "LRNCBS3/LRN_label1"
set_directive_pipeline "reluCBS3/relu_label2"
set_directive_pipeline "relu/relu_label2"
set_directive_pipeline "LRN/LRN_label0"
set_directive_pipeline "LRNCBS2/LRN_label0"
set_directive_pipeline "convCBS2/convCBS2_label1"
set_directive_pipeline "convCBS2/conv_ref_label1"
set_directive_pipeline "convCBS3/convCBS3_label0"
set_directive_pipeline "convCBS3/conv_ref_label1"
set_directive_pipeline "convCBS2/convCBS2_label0"
set_directive_pipeline "CBSELAN1/convCBS3_label0"
set_directive_pipeline "CBSELAN1/CBSELAN1_label3"
set_directive_pipeline "CBSELAN1/CBSELAN1_label4"
set_directive_pipeline "CBSELAN1/CBSELAN1_label5"
set_directive_pipeline "CBSELAN1/conv_ref_label1"
set_directive_pipeline "MaxPoolingMP1/MaxPoolingMP1_label4"
set_directive_pipeline "convMP1/convMP1_label5"
set_directive_pipeline "convMP1/convMP1_label2"
set_directive_resource -core XPM_MEMORY -memory_style uram "ELAN1" output1
set_directive_resource -core XPM_MEMORY -memory_style uram "ELAN1" output2
set_directive_resource -core XPM_MEMORY -memory_style uram "ELAN1" output3
set_directive_pipeline "catELAN1/catELAN1_label0"
set_directive_pipeline "catELAN1/catELAN1_label1"
set_directive_pipeline "catELAN1/catELAN1_label2"
set_directive_pipeline "catELAN1/catELAN1_label3"
set_directive_pipeline "CBSInput_ELAN1/conv_ref_label1"
set_directive_pipeline "CBSInput_ELAN1/CBSInput_ELAN1_label2"
set_directive_pipeline "CBSInput_ELAN1/CBSInput_ELAN1_label4"
