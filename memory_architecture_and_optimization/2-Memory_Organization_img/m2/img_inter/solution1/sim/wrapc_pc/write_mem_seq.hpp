#ifndef __WRITE_MEM_SEQ__
#define __WRITE_MEM_SEQ__

#include "../include/ap_int.h"

template <typename T, int N>
void interleave_mem_seq<T, N>::write_seq(ap_uint<ADDRESS_BITWIDTH> i,
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
      x8[idx] = tmp;
      break;
    case 9:
      x9[idx] = tmp;
      break;
    case 10:
      x10[idx] = tmp;
      break;
    case 11:
      x11[idx] = tmp;
      break;
      
    case 12:
      x12[idx] = tmp;
      break;
    case 13:
      x13[idx] = tmp;
      break;
    case 14:
      x14[idx] = tmp;
      break;
    case 15:
      x15[idx++] = tmp;
      break;
      
  }

  if (idx == N / 16) idx = 0;
  if (sel == 16) sel = 0;
}

#endif
