#ifndef __READ_MEM_RND__
#define __READ_MEM_RND__

#include "../include/ap_int.h"

template <typename T, int N>
T interleave_mem_rnd<T, N>::read_rnd(ap_uint<ADDRESS_BITWIDTH> i,
                             int offset) {

	// Force function being merged into the FSM of WRITE
#pragma HLS INLINE

  T tmp = 0;
  switch (offset) {
    case 0:
      tmp = x0[i / 9];
      break;
    case 1:
      tmp = x1[i / 9];
      break;
    case 2:
      tmp = x2[i / 9];
      break;
      
    case 3:
      tmp = x3[i / 9];
      break;
    case 4:
      tmp = x4[i / 9];
      break;
    case 5:
      tmp = x5[i / 9];
      break;
      
    case 6:
      tmp = x6[i / 9];
      break;
    case 7:
      tmp = x7[i / 9];
      break;
    case 8:
      tmp = x8[i / 9];
      break;
  }
  return tmp;
}

#endif
