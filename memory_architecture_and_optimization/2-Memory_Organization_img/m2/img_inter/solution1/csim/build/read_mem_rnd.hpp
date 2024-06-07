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
      tmp = x0[i / 16];
      break;
    case 1:
      tmp = x1[i / 16];
      break;
    case 2:
      tmp = x2[i / 16];
      break;
    case 3:
      tmp = x3[i / 16];
      break;
      
    case 4:
      tmp = x0[i / 16];
      break;
    case 5:
      tmp = x1[i / 16];
      break;
    case 6:
      tmp = x2[i / 16];
      break;
    case 7:
      tmp = x2[i / 16];
      break;
      
    case 8:
      tmp = x0[i / 16];
      break;
    case 9:
      tmp = x1[i / 16];
      break;
    case 10:
      tmp = x2[i / 16];
      break;
    case 11:
      tmp = x2[i / 16];
      break;
      
    case 12:
      tmp = x0[i / 16];
      break;
    case 13:
      tmp = x1[i / 16];
      break;
    case 14:
      tmp = x2[i / 16];
      break;
    case 15:
      tmp = x2[i / 16];
      break;
      
  }
  return tmp;
}

#endif
