#ifndef __BRAM_FLT__
#define __BRAM_FLT__

//#include "../include/"
#include "../include/ap_int.h"
#include "./RAM.h"
//#include "./tomatrix.hpp"





//template <typename T>
class bram_flt {
    public:
        ap_int<8> mems[fNUM_WORDS];
    public:
        bram_flt(){
            #pragma HLS BIND_STORAGE variable=mems type=RAM_1P impl=BRAM
        }

        void flt_load(ap_int<8> x_in[fNUM_WORDS],ap_int<fADDRESS_BITWIDTH> i){ // write to mem LOAD
          // #pragma HLS BIND_STORAGE variable=x_in type=RAM_1P impl=BRAM
                mems[i]=x_in[i];
        }

        ap_int<8> flt_read(ap_int<fADDRESS_BITWIDTH> i){ //read from mem 
          // #pragma HLS BIND_STORAGE variable=x_out type=RAM_1P impl=BRAM
            
        return mems[i];
                    
        }

        
           

};


#endif