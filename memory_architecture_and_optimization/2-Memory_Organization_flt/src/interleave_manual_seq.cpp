#include "./interleave.h"
#include "./interleave_mem_seq.hpp"
#include "./tomatrix.hpp"

void flt_interleave_manual_seq(mtype x_in,
                           mtypeI y, bool load) {

//#pragma HLS RESOURCE variable=x_in core=RAM_1P_BRAM
//#pragma HLS BIND_STORAGE variable=x_in type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=x_in //[OPTIONS]
//#pragma HLS RESOURCE variable=y core=RAM_1P_BRAM
//#pragma HLS BIND_STORAGE variable=y type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=y //[OPTIONS]

ap_int<16> tmpy[NUM_WORDS / 9];
ap_int<8> tmpx[NUM_WORDS];

//#pragma HLS BIND_STORAGE variable=tmpy type=RAM_T2P impl=BRAM
//#pragma HLS BIND_STORAGE variable=tmpx type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=tmpy //[OPTIONS]
#pragma HLS interface mode=BRAM port=tmpx //[OPTIONS]
frommatrix(x_in,tmpx);

  static interleave_mem_seq<ap_int<8>, NUM_WORDS> x;
//#pragma HLS BIND_STORAGE variable=x type=RAM_T2P impl=BRAM
//#pragma HLS interface mode=BRAM port=x //[OPTIONS]
  int idx = 0;

  if (load)
LOAD:
    for (int i = 0; i < NUM_WORDS; i += 1){
#pragma HLS PIPELINE II=1
    	x.write_seq(i, tmpx);
    }
                           
  else
WRITE:
    for (int i = 0; i < NUM_WORDS / 9; i += 1){
#pragma HLS PIPELINE II=1

      tmpy[idx++] = x.read_seq(i, 0) + x.read_seq(i, 1) + x.read_seq(i, 2)
                  + x.read_seq(i, 3) + x.read_seq(i, 4) + x.read_seq(i, 5)
                  + x.read_seq(i, 6) + x.read_seq(i, 7) + x.read_seq(i, 8);
    }

      tomatrixI(tmpy,y);
}
