#ifndef __WRITE_MEM_RND__
#define __WRITE_MEM_RND__

#include "../include/ap_int.h"

template <typename T, int N>
void interleave_mem_rnd<T, N>::write_rnd(ap_uint<ADDRESS_BITWIDTH> i,
                                 T x_in[N]) {
                                  
#pragma HLS BIND_STORAGE variable=x_in type=RAM_T2P impl=BRAM

  T tmp = x_in[i];
  switch (i % 16) {
    case 0:
      x0[i / 16] = tmp;
      break;
    case 1:
      x1[i / 16] = tmp;
      break;
    case 2:
      x2[i / 16] = tmp;
      break;
    case 3:
      x3[i / 16] = tmp;
      break;
    
    case 4:
      x4[i / 16] = tmp;
      break;
    case 5:
      x5[i / 16] = tmp;
      break;
    case 6:
      x6[i / 16] = tmp;
      break;
    case 7:
      x7[i / 16] = tmp;
      break;
    
    case 8:
      x8[i / 16] = tmp;
      break;
    case 9:
      x9[i / 16] = tmp;
      break;
    case 10:
      x10[i / 16] = tmp;
      break;
    case 11:
      x11[i / 16] = tmp;
      break;
    
    case 12:
      x12[i / 16] = tmp;
      break;
    case 13:
      x13[i / 16] = tmp;
      break;
    case 14:
      x14[i / 16] = tmp;
      break;
    case 15:
      x15[i / 16] = tmp;
      break;
    
  }
}

#endif
