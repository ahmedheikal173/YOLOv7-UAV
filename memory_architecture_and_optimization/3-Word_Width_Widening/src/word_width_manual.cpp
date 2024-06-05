#include "./word_width.h"
#include "./word_width_mem.hpp"

void word_width_manual(ap_int<8> x_in[NUM_WORDS], ap_int<8> y[NUM_WORDS / 3],
                       bool load) {
// #pragma HLS RESOURCE variable=x_in core=RAM_1P_BRAM
//#pragma HLS BIND_STORAGE variable=x_in type=RAM_T2P impl=BRAM
// #pragma HLS RESOURCE variable=y core=RAM_1P_BRAM
//#pragma HLS BIND_STORAGE variable=y type=RAM_T2P impl=BRAM

#pragma HLS interface mode=BRAM port=x_in //[OPTIONS]
#pragma HLS interface mode=BRAM port=y //[OPTIONS]

  static word_width_mem<8, NUM_WORDS> x;

  int idx = 0;

  if (load)
LOAD:
    for (int i = 0; i < NUM_WORDS; i += 1)
#pragma HLS PIPELINE II=1
    	x.write(i, x_in);
  else
WRITE:
    for (int i = 0; i < NUM_WORDS / 3; i += 1){
#pragma HLS PIPELINE II=1
    	y[idx++] = x.read(i, 0) + x.read(i, 1) + x.read(i, 2);
    }
}
