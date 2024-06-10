#include "./tomatrix.hpp"


void tomatrixI(ap_int<8> m_in[iNUM_WORDS],imtype m_out){
  
// #pragma HLS BIND_STORAGE variable=m_in type=RAM_1P impl=BRAM
 #pragma HLS BIND_STORAGE variable=m_out type=RAM_1P impl=BRAM
//#pragma HLS interface mode=BRAM port=m_in //[OPTIONS]
//#pragma HLS interface mode=BRAM port=m_out //[OPTIONS]
int idx=0;
  for (int k = 0; k < iNUM_DEPTH; k += 1){
    //#pragma HLS PIPELINE II=1
    for (int i = 0; i < iNUM_ROWS; i += 1){
     // #pragma HLS PIPELINE II=1
      for (int j = 0; j < iNUM_COLS; j += 1){
          #pragma HLS PIPELINE II=1
          m_out[i][j][k]=m_in[idx];
          idx++;
      }
    }
  }
}

void frommatrixI(imtype mm_in, ap_int<8> mm_out[iNUM_WORDS]){
 #pragma HLS BIND_STORAGE variable=mm_in type=RAM_1P impl=BRAM
// #pragma HLS BIND_STORAGE variable=mm_out type=RAM_1P impl=BRAM
//#pragma HLS interface mode=BRAM port=mm_in //[OPTIONS]
//#pragma HLS interface mode=BRAM port=mm_out //[OPTIONS]
int idx=0;
  for (int k = 0; k < iNUM_DEPTH; k += 1){
    //#pragma HLS PIPELINE II=1
    for (int i = 0; i < iNUM_ROWS; i += 1){
     // #pragma HLS PIPELINE II=1
      for (int j = 0; j < iNUM_COLS; j += 1){
          #pragma HLS PIPELINE II=1
          mm_out[idx]=mm_in[i][j][k];
          idx++;
      }
    }
  }
}

void tomatrixF(ap_int<8> mI_in[fNUM_WORDS],ftype mI_out){
// #pragma HLS BIND_STORAGE variable=mI_in type=RAM_1P impl=BRAM
 #pragma HLS BIND_STORAGE variable=mI_out type=RAM_1P impl=BRAM
//#pragma HLS interface mode=BRAM port=mI_in //[OPTIONS]
//#pragma HLS interface mode=BRAM port=mI_out //[OPTIONS]
int idx=0;
  for (int k = 0; k < fNUM_DEPTH; k += 1){
    //#pragma HLS PIPELINE II=1
    for (int i = 0; i < fNUM_ROWS; i += 1){
      //#pragma HLS PIPELINE II=1
      for (int j = 0; j < fNUM_COLS; j += 1){
          #pragma HLS PIPELINE II=1
          mI_out[i][j][k]=mI_in[idx];
          idx++;
      }
    }
  }
}

void frommatrixF(ftype mmI_in, ap_int<8> mmI_out[fNUM_WORDS]){
 #pragma HLS BIND_STORAGE variable=mmI_in type=RAM_1P impl=BRAM
// #pragma HLS BIND_STORAGE variable=mmI_out type=RAM_1P impl=BRAM
//#pragma HLS interface mode=BRAM port=mmI_in //[OPTIONS]
//#pragma HLS interface mode=BRAM port=mmI_out //[OPTIONS]
int idx=0;
  for (int k = 0; k < fNUM_DEPTH; k += 1){
   // #pragma HLS PIPELINE II=1
    for (int i = 0; i < fNUM_ROWS; i += 1){
      //#pragma HLS PIPELINE II=1
      for (int j = 0; j < fNUM_COLS; j += 1){
          #pragma HLS PIPELINE II=1
          mmI_out[idx]=mmI_in[i][j][k];
          idx++;
      }
    }
  }
}