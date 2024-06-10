#ifndef __BRAM_FLT__
#define __BRAM_FLT__

//#include "../include/"
#include "../include/ap_int.h"
//#include "./tomatrix.hpp"

#define fADDRESS_BITWIDTH 12
#define fNUM_ROWS 9
#define fNUM_COLS 9
#define fNUM_DEPTH 44
#define fNUM_WORDS 3564

typedef ap_int<8>  ftype[fNUM_ROWS][fNUM_COLS][fNUM_DEPTH];



//template <typename T>
class bram_flt {
    public:
        ftype mems;
    public:
        bram_flt(){
            #pragma HLS BIND_STORAGE variable=mems type=RAM_T2P impl=BRAM
        }

        void flt_load(ftype x_in){ // write to mem LOAD
          // #pragma HLS BIND_STORAGE variable=x_in type=RAM_T2P impl=BRAM
            for (int k = 0; k < fNUM_DEPTH; k += 1){
                for (int i = 0; i < fNUM_ROWS; i += 1){
                    for (int j = 0; j < fNUM_COLS; j += 1){
                        //#pragma HLS PIPELINE II=1
                        #pragma HLS LOOP_FLATTEN
                        mems[i][j][k]=x_in[i][j][k];
                    }
                }
            }
        }

        void flt_read(ftype x_out){ //read from mem 
          // #pragma HLS BIND_STORAGE variable=x_out type=RAM_T2P impl=BRAM
            for (int k = 0; k < fNUM_DEPTH; k += 1){
                for (int i = 0; i < fNUM_ROWS; i += 1){
                    for (int j = 0; j < fNUM_COLS; j += 1){
                        //#pragma HLS PIPELINE II=1
                        #pragma HLS LOOP_FLATTEN
                        x_out[i][j][k]=mems[i][j][k];
                    }
                }
            }
        }

        
           

};


#endif