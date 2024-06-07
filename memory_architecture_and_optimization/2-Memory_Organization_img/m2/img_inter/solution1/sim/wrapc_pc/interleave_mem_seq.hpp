#ifndef __INTERLEAVE_MEM_SEQ__
#define __INTERLEAVE_MEM_SEQ__

#define ADDRESS_BITWIDTH (21)

#include "../include/ap_int.h"

template <typename T, int N>
class interleave_mem_seq {
 public:
  T x0[N / 16];  T x1[N / 16];  T x2[N / 16];  T x3[N / 16];
  T x4[N / 16];  T x5[N / 16];  T x6[N / 16];  T x7[N / 16];
  T x8[N / 16];  T x9[N / 16];  T x10[N / 16]; T x11[N / 16];
  T x12[N / 16]; T x13[N / 16]; T x14[N / 16]; T x15[N / 16]; 
  ap_uint<ADDRESS_BITWIDTH> idx;
  ap_uint<4> sel;

 public:
  interleave_mem_seq() {
// #pragma HLS RESOURCE variable = x0 core = RAM_1P_BRAM
// #pragma HLS RESOURCE variable = x1 core = RAM_1P_BRAM
// #pragma HLS RESOURCE variable = x2 core = RAM_1P_BRAM
#pragma HLS BIND_STORAGE variable=x0 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x1 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x2 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x3 type=RAM_T2P impl=BRAM

#pragma HLS BIND_STORAGE variable=x4 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x5 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x6 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x7 type=RAM_T2P impl=BRAM

#pragma HLS BIND_STORAGE variable=x8 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x9 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x10 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x11 type=RAM_T2P impl=BRAM

#pragma HLS BIND_STORAGE variable=x12 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x13 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x14 type=RAM_T2P impl=BRAM
#pragma HLS BIND_STORAGE variable=x15 type=RAM_T2P impl=BRAM

	idx = 0;
    sel = 0;
  }

  void write_seq(ap_uint<ADDRESS_BITWIDTH> i, T x_in[N]);
  T read_seq(ap_uint<ADDRESS_BITWIDTH> i, int offset);
};
#include "./read_mem_seq.hpp"
#include "./write_mem_seq.hpp"

#endif
