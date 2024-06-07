#ifndef __WRITE_MEM_RND__
#define __WRITE_MEM_RND__

#include "../include/ap_int.h"

template <typename T, int N>
void interleave_mem_rnd<T, N>::write_rnd(ap_int<ADDRESS_BITWIDTH> i,
                                 T x_in[N]) {
                                  
#pragma HLS BIND_STORAGE variable=x_in type=RAM_T2P impl=BRAM

  T tmp = x_in[i];
  switch (i % 9) {
    case 0:
      x0[i / 9] = tmp;
      break;
    case 1:
      x1[i / 9] = tmp;
      break;
    case 2:
      x2[i / 9] = tmp;
      break;
      
    case 3:
      x3[i / 9] = tmp;
      break;
    case 4:
      x4[i / 9] = tmp;
      break;
    case 5:
      x5[i / 9] = tmp;
      break;
      
    case 6:
      x6[i / 9] = tmp;
      break;
    case 7:
      x7[i / 9] = tmp;
      break;
    case 8:
      x8[i / 9] = tmp;
      break;
  }
}

#endif
