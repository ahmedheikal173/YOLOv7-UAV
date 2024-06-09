#include "./RAM.h"
#include "./tomatrix.hpp"


void BRAM_image(imtype x_in, imtype out, bool load) {
    #pragma HLS interface mode=BRAM port=x_in
    #pragma HLS interface mode=BRAM port=out

    static bram_img x;
    //#pragma HLS BIND_STORAGE variable=x type=RAM_1P impl=BRAM
    //#pragma HLS interface mode=BRAM port=x
    ap_int<8> inn[iNUM_WORDS];
    #pragma HLS BIND_STORAGE variable=inn type=RAM_1P impl=BRAM
    ap_int<8> outt[iNUM_WORDS];
    #pragma HLS BIND_STORAGE variable=outt type=RAM_1P impl=BRAM

    frommatrixI(x_in,inn);
    int idx=0;
    if(load){
        for(int i=0; i<iNUM_WORDS;i+=1){
            //#pragma HLS PIPELINE II=1
            x.img_load(inn,i);
        }

    }
    else{
        for(int i=0; i<iNUM_WORDS;i+=1){
            //#pragma HLS PIPELINE II=1
            outt[idx++] = x.img_read(i);
        }
        tomatrixI(outt,out);
    }



}