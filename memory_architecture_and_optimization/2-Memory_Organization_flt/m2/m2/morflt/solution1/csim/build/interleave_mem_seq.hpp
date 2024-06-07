#ifndef __INTERLEAVE_MEM_SEQ__
#define __INTERLEAVE_MEM_SEQ__

#define ADDRESS_BITWIDTH (12)

#include "../include/ap_int.h"

template <typename T, int N>
class interleave_mem_seq {
 public:
  T x0[N / 9];
  T x1[N / 9];
  T x2[N / 9];

  T x3[N / 9];
  T x4[N / 9];
  T x5[N / 9];

  T x6[N / 9];
  T x7[N / 9];
  T x8[N / 9];
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
	idx = 0;
    sel = 0;
  }

  void write_seq(ap_uint<ADDRESS_BITWIDTH> i, T x_in[N]);
  T read_seq(ap_uint<ADDRESS_BITWIDTH> i, int offset);
};
#include "./read_mem_seq.hpp"
#include "./write_mem_seq.hpp"

#endif
