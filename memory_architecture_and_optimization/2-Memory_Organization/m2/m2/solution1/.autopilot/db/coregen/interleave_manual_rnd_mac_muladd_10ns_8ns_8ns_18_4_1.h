// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1__HH__
#define __interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1__HH__
#include "interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0 interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U;

    SC_CTOR(interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1):  interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U ("interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U") {
        interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U.clk(clk);
        interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U.rst(reset);
        interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U.ce(ce);
        interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U.in0(din0);
        interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U.in1(din1);
        interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U.in2(din2);
        interleave_manual_rnd_mac_muladd_10ns_8ns_8ns_18_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
