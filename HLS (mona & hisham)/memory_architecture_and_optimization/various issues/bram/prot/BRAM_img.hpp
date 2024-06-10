#ifndef __BRAM_IMG__
#define __BRAM_IMG__

//#include "../include/"
#include "../include/ap_int.h"
//#include "./tomatrix.hpp"

#define iADDRESS_BITWIDTH 21
#define iNUM_ROWS 640
#define iNUM_COLS 640
#define iNUM_DEPTH 3
#define iNUM_WORDS 1228800

typedef ap_int<8>  imtype[iNUM_ROWS][iNUM_COLS][iNUM_DEPTH];



//template <typename T>
class bram_img {
    public:
        imtype mems;
    public:
        bram_img(){
            #pragma HLS BIND_STORAGE variable=mems type=RAM_T2P impl=BRAM
        }

        void img_load(imtype x_in){ // write to mem LOAD
            //#pragma HLS BIND_STORAGE variable=x_in type=RAM_T2P impl=BRAM
            for (int k = 0; k < iNUM_DEPTH; k += 1){
                for (int i = 0; i < iNUM_ROWS; i += 1){
                    for (int j = 0; j < iNUM_COLS; j += 1){
                        //#pragma HLS PIPELINE II=1
                        #pragma HLS LOOP_FLATTEN
                        mems[i][j][k]=x_in[i][j][k];
                    }
                }
            }
        }

        void img_read(imtype x_out){ //read from mem 
          // #pragma HLS BIND_STORAGE variable=x_out type=RAM_T2P impl=BRAM
           
            for (int k = 0; k < iNUM_DEPTH; k += 1){
                for (int i = 0; i < iNUM_ROWS; i += 1){
                    for (int j = 0; j < iNUM_COLS; j += 1){
                        //#pragma HLS PIPELINE II=1
                        #pragma HLS LOOP_FLATTEN
                        x_out[i][j][k]=mems[i][j][k];
                    }
                }
            }
            //x_out = mems;
        
        }

};


#endif