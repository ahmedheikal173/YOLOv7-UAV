#include "./tomatrix.hpp"




// ap_int<8> mm_out[NUM_WORDS];
// ap_int<8> m_in[NUM_WORDS];
// mtypeI m_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mm_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];

// ap_int<8> mmI_out[NUM_WORDS/9];
// ap_int<8> mI_in[NUM_WORDS/9];
// mtypeI mI_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mmI_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];



void tomatrix(ap_int<8> m_in[NUM_WORDS],mtype m_out){
  
//#pragma HLS BIND_STORAGE variable=m_in type=RAM_T2P impl=BRAM
//#pragma HLS BIND_STORAGE variable=m_out type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=m_in //[OPTIONS]
#pragma HLS interface mode=BRAM port=m_out //[OPTIONS]
int idx=0;
  for (int k = 0; k < NUM_DEPTH; k += 1){
    //#pragma HLS PIPELINE II=1
    for (int i = 0; i < NUM_ROWS; i += 1){
     // #pragma HLS PIPELINE II=1
      for (int j = 0; j < NUM_COLS; j += 1){
          #pragma HLS PIPELINE II=1
          m_out[i][j][k]=m_in[idx];
          idx++;
      }
    }
  }
}

void frommatrix(mtype mm_in, ap_int<8> mm_out[NUM_WORDS]){
//#pragma HLS BIND_STORAGE variable=mm_in type=RAM_T2P impl=BRAM
//#pragma HLS BIND_STORAGE variable=mm_out type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=mm_in //[OPTIONS]
#pragma HLS interface mode=BRAM port=mm_out //[OPTIONS]
int idx=0;
  for (int k = 0; k < NUM_DEPTH; k += 1){
    //#pragma HLS PIPELINE II=1
    for (int i = 0; i < NUM_ROWS; i += 1){
     // #pragma HLS PIPELINE II=1
      for (int j = 0; j < NUM_COLS; j += 1){
          #pragma HLS PIPELINE II=1
          mm_out[idx]=mm_in[i][j][k];
          idx++;
      }
    }
  }
}

void tomatrixI(ap_int<16> mI_in[NUM_WORDS/9],mtypeI mI_out){
//#pragma HLS BIND_STORAGE variable=mI_in type=RAM_T2P impl=BRAM
//#pragma HLS BIND_STORAGE variable=mI_out type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=mI_in //[OPTIONS]
#pragma HLS interface mode=BRAM port=mI_out //[OPTIONS]
int idx=0;
  for (int k = 0; k < NUM_DEPTH; k += 1){
    //#pragma HLS PIPELINE II=1
    for (int i = 0; i < NUM_ROWS; i += 1){
      //#pragma HLS PIPELINE II=1
      for (int j = 0; j < NUM_COLS/9; j += 1){
          #pragma HLS PIPELINE II=1
          mI_out[i][j][k]=mI_in[idx];
          idx++;
      }
    }
  }
}

void frommatrixI(mtypeI mmI_in, ap_int<16> mmI_out[NUM_WORDS/9]){
//#pragma HLS BIND_STORAGE variable=mmI_in type=RAM_T2P impl=BRAM
//#pragma HLS BIND_STORAGE variable=mmI_out type=RAM_T2P impl=BRAM
#pragma HLS interface mode=BRAM port=mmI_in //[OPTIONS]
#pragma HLS interface mode=BRAM port=mmI_out //[OPTIONS]
int idx=0;
  for (int k = 0; k < NUM_DEPTH; k += 1){
   // #pragma HLS PIPELINE II=1
    for (int i = 0; i < NUM_ROWS; i += 1){
      //#pragma HLS PIPELINE II=1
      for (int j = 0; j < NUM_COLS/9; j += 1){
          #pragma HLS PIPELINE II=1
          mmI_out[idx]=mmI_in[i][j][k];
          idx++;
      }
    }
  }
}