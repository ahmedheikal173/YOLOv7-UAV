#include "./interleave.h"

void interleave(
		ap_int<8> x_in[NUM_WORDS],
		ap_int<23> y[NUM_WORDS / 16],
		bool load) {
// #pragma HLS RESOURCE variable=x_in core=RAM_1P_BRAM
// // #pragma HLS RESOURCE variable=y core=RAM_1P_BRAM
// #pragma HLS BIND_STORAGE variable=x_in type=RAM_T2P impl=BRAM
// #pragma HLS BIND_STORAGE variable=y type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=x_in //[OPTIONS]
#pragma HLS interface mode=BRAM port=y //[OPTIONS]

  static ap_int<8> x[NUM_WORDS];
// #pragma HLS RESOURCE variable=x core=RAM_1P_BRAM
#pragma HLS BIND_STORAGE variable=x type=RAM_T2P impl=BRAM
#pragma HLS ARRAY_PARTITION variable=x cyclic factor=16 dim=1

  int idx = 0;

  if (load)
LOAD:
    for (int i = 0; i < NUM_WORDS; i += 1){
#pragma HLS PIPELINE II=1
    	x[i] = x_in[i];
    }
  else
WRITE:
    for (int i = 0; i < NUM_WORDS; i += 16){
#pragma HLS PIPELINE II=1
    	y[idx++] =  x[i] + x[i + 1] + x[i + 2] + x[i + 3]
                + x[i + 4] + x[i + 5] + x[i + 6] + x[i + 7]
                + x[i + 8] + x[i + 9] + x[i + 10] + x[i + 11]
                + x[i + 12] + x[i + 13] + x[i + 14] + x[i + 15];
    }
}
