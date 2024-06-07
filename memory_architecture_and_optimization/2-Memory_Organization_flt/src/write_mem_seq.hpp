#ifndef __WRITE_MEM_SEQ__
#define __WRITE_MEM_SEQ__

#include "../include/ap_int.h"

template <typename T, int N>
void interleave_mem_seq<T, N>::write_seq(ap_int<ADDRESS_BITWIDTH> i,
                                         T x_in[N]) {
                                          
#pragma HLS BIND_STORAGE variable=x_in type=RAM_T2P impl=BRAM

  int tmp = x_in[i];
  switch (sel++) {
    case 0:
      x0[idx] = tmp;
      break;
    case 1:
      x1[idx] = tmp;
      break;
    case 2:
      x2[idx] = tmp;
      break;
      
    case 3:
      x3[idx] = tmp;
      break;
    case 4:
      x4[idx] = tmp;
      break;
    case 5:
      x5[idx] = tmp;
      break;
      
    case 6:
      x6[idx] = tmp;
      break;
    case 7:
      x7[idx] = tmp;
      break;
    case 8:
      x8[idx++] = tmp;
      break;
  }

  if (idx == N / 9) idx = 0;
  if (sel == 9) sel = 0;
}

#endif
