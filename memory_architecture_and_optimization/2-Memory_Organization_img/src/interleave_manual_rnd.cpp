#include "./interleave.h"
#include "./interleave_mem_rnd.hpp"
#include "./tomatrix.hpp"

void img_interleave_manual_rnd(mtype x_in,
                           mtypeI y, bool load) {
// #pragma HLS disaggregate variable = x_in
// #pragma HLS disaggregate variable = y


//#pragma HLS RESOURCE variable=x_in core=RAM_1P_BRAM
//#pragma HLS BIND_STORAGE variable=x_in type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=x_in //[OPTIONS]
//#pragma HLS RESOURCE variable=y core=RAM_1P_BRAM
//#pragma HLS BIND_STORAGE variable=y type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=y //[OPTIONS]



ap_int<23> temp[NUM_WORDS / 16];
ap_int<8> tmpx[NUM_WORDS];

frommatrix(x_in,tmpx);

  static interleave_mem_rnd<ap_int<8>, NUM_WORDS> x;
  
#pragma HLS BIND_STORAGE variable=x type=RAM_T2P impl=BRAM
  int idx = 0;

  if (load)
LOAD:
    for (int i = 0; i < NUM_WORDS; i += 1){
#pragma HLS PIPELINE II=1
    	x.write_rnd(i, tmpx);
    }
  else
WRITE:
    for (int i = 0; i < NUM_WORDS; i += 16){
#pragma HLS PIPELINE II=1
      temp[idx++] =   x.read_rnd(i, 0) + x.read_rnd(i, 1) + x.read_rnd(i, 2) + x.read_rnd(i, 3)
                    + x.read_rnd(i, 4) + x.read_rnd(i, 5) + x.read_rnd(i, 6) + x.read_rnd(i, 7)
                    + x.read_rnd(i, 8) + x.read_rnd(i, 9) + x.read_rnd(i, 10) + x.read_rnd(i, 11)
                    + x.read_rnd(i, 12) + x.read_rnd(i, 13) + x.read_rnd(i, 14) + x.read_rnd(i, 15);
    }
      tomatrixI(temp,y);
}
