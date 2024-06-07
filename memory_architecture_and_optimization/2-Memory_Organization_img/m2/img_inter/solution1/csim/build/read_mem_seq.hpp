#ifndef __READ_MEM_SEQ__
#define __READ_MEM_SEQ__

#include "../include/ap_int.h"

template <typename T, int N>
T interleave_mem_seq<T, N>::read_seq(ap_uint<ADDRESS_BITWIDTH> i,
                                     int offset) {
  T tmp = 0;
  switch (offset) {
    case 0:
      tmp = x0[i];
      break;
    case 1:
      tmp = x1[i];
      break;
    case 2:
      tmp = x2[i];
      break;
    case 3:
      tmp = x3[i];
      break;
      
    case 4:
      tmp = x4[i];
      break;
    case 5:
      tmp = x5[i];
      break;
    case 6:
      tmp = x6[i];
      break;
    case 7:
      tmp = x7[i];
      break;
      
    case 8:
      tmp = x8[i];
      break;
    case 9:
      tmp = x9[i];
      break;
    case 10:
      tmp = x10[i];
      break;
    case 11:
      tmp = x11[i];
      break;
      
    case 12:
      tmp = x12[i];
      break;
    case 13:
      tmp = x13[i];
      break;
    case 14:
      tmp = x14[i];
      break;
    case 15:
      tmp = x15[i];
      break;
      
  }

  return tmp;
}

#endif
