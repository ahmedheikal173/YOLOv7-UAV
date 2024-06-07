#include "./RAM.h"
#include "./tomatrix.hpp"


void BRAM_filter(ftype x_in, ftype out, bool load) {
    #pragma HLS interface mode=BRAM port=x_in
    #pragma HLS interface mode=BRAM port=out

    bram_flt x;
    #pragma HLS BIND_STORAGE variable=x type=RAM_T2P impl=BRAM
    //#pragma HLS interface mode=BRAM port=x
    ap_int<8> inn[fNUM_WORDS];
    #pragma HLS BIND_STORAGE variable=inn type=RAM_T2P impl=BRAM
    ap_int<8> outt[fNUM_WORDS];
    #pragma HLS BIND_STORAGE variable=outt type=RAM_T2P impl=BRAM

    frommatrixF(x_in,inn);

    if(load){
        for(int i=0; i<fNUM_WORDS;i+=1){
            #pragma HLS PIPELINE II=1
            x.flt_load(inn,i);
        }

    }
    else{
        for(int i=0; i<fNUM_WORDS;i+=1){
            #pragma HLS PIPELINE II=1
            outt[i] = x.flt_read(i);
        }
        tomatrixF(outt,out);
    }



}
