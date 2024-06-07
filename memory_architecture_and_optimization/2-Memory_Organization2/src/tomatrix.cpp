#include "./tomatrix.hpp"

void tomatrix(ap_uint<8> m_in[NUM_WORDS],mtype m_out){
int idx=0;
  for (int k = 0; k < NUM_DEPTH; k += 1){
    for (int i = 0; i < NUM_ROWS; i += 1){
      for (int j = 0; j < NUM_COLS; j += 1){
          m_out[i][j][k]=m_in[idx];
          idx++;
      }
    }
  }
}