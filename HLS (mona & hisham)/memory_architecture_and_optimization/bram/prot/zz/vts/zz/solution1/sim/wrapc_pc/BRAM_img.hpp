#ifndef __BRAM_IMG__
#define __BRAM_IMG__

//#include "../include/"
#include "../include/ap_int.h"
#include "./RAM.h"
//#include "./tomatrix.hpp"




//template <typename T>
class bram_img {
    public:
        ap_int<8> mems[iNUM_WORDS];
    public:
        bram_img(){
            #pragma HLS BIND_STORAGE variable=mems type=RAM_1P impl=BRAM
        }

        void img_load(ap_int<8> x_in[iNUM_WORDS],ap_uint<iADDRESS_BITWIDTH> i){ // write to mem LOAD
          // #pragma HLS BIND_STORAGE variable=x_in type=RAM_1P impl=BRAM
                mems[i]=x_in[i];
        }

        ap_int<8> img_read(ap_uint<iADDRESS_BITWIDTH> i){ //read from mem 
          // #pragma HLS BIND_STORAGE variable=x_out type=RAM_1P impl=BRAM
            
        return mems[i];
                    
        }

        
           

};


#endif