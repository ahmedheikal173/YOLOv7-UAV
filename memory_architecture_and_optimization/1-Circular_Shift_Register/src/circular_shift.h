#ifndef __SHIFT__
#define __SHIFT__

#include "../include/ap_int.h"
#include <cmath>

//#define ADDRESS_BITWIDTH (21) //1228800 locations
#define ADDRESS_BITWIDTH (4) //1228800 locations

//#define ADDRESS_BITWIDTH (24) //9830400 locations


template <typename T, int N>
class circular_shift {
 private:
  T mem[N];
  ap_int<ADDRESS_BITWIDTH+1> wptr;
  ap_int<ADDRESS_BITWIDTH+1> rptr;

 public:
  circular_shift() {
//#pragma HLS RESOURCE variable=mem core=RAM_1P_BRAM
#pragma HLS BIND_STORAGE variable=mem type=RAM_T2P impl=BRAM

	T dummy;
    wptr = 0;
    rptr = 0;
    for (int i = 0; i < N; i++){
//      #pragma HLS unroll
	#pragma HLS pipeline
     mem[i] = dummy;
    }
  }

  void operator<<(T data) {
    mem[wptr] = data;
    wptr++;
    if (wptr == N) wptr = 0;
  }

  T operator[](ap_uint<ADDRESS_BITWIDTH> idx) {
    rptr = (wptr - 1 - idx);
    if (rptr < 0) rptr = rptr + N;
    return mem[rptr];
  }

};
#endif
