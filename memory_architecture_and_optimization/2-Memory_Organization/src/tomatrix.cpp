#include "./tomatrix.hpp"




// ap_int<8> mm_out[NUM_WORDS];
// ap_int<8> m_in[NUM_WORDS];
// mtypeI m_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mm_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];

// ap_int<8> mmI_out[NUM_WORDS/3];
// ap_int<8> mI_in[NUM_WORDS/3];
// mtypeI mI_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mmI_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];



void tomatrix(ap_int<8> m_in[NUM_WORDS],mtype m_out){
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

void frommatrix(mtype mm_in, ap_int<8> mm_out[NUM_WORDS]){
int idx=0;
  for (int k = 0; k < NUM_DEPTH; k += 1){
    for (int i = 0; i < NUM_ROWS; i += 1){
      for (int j = 0; j < NUM_COLS; j += 1){
          mm_out[idx]=mm_in[i][j][k];
          idx++;
      }
    }
  }
}

void tomatrixI(ap_int<8> mI_in[NUM_WORDS/3],mtypeI mI_out){
int idx=0;
  for (int k = 0; k < NUM_DEPTH; k += 1){
    for (int i = 0; i < NUM_ROWS; i += 1){
      for (int j = 0; j < NUM_COLS/3; j += 1){
          mI_out[i][j][k]=mI_in[idx];
          idx++;
      }
    }
  }
}

void frommatrixI(mtypeI mmI_in, ap_int<8> mmI_out[NUM_WORDS/3]){
int idx=0;
  for (int k = 0; k < NUM_DEPTH; k += 1){
    for (int i = 0; i < NUM_ROWS; i += 1){
      for (int j = 0; j < NUM_COLS/3; j += 1){
          mmI_out[idx]=mmI_in[i][j][k];
          idx++;
      }
    }
  }
}