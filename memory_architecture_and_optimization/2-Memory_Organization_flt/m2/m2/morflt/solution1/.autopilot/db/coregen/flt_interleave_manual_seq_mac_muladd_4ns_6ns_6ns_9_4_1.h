// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1__HH__
#define __flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1__HH__
#include "flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1 flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U;

    SC_CTOR(flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1):  flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U ("flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U") {
        flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U.clk(clk);
        flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U.rst(reset);
        flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U.ce(ce);
        flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U.in0(din0);
        flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U.in1(din1);
        flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U.in2(din2);
        flt_interleave_manual_seq_mac_muladd_4ns_6ns_6ns_9_4_1_DSP48_1_U.dout(dout);

    }

};

#endif //
