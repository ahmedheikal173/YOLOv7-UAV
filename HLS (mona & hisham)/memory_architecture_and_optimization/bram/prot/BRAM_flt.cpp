#include "./RAM.h"


void BRAM_filter(ftype x_in, ftype out, bool load) {
    #pragma HLS interface mode=BRAM port=x_in
    #pragma HLS interface mode=BRAM port=out

    bram_flt x;
    //#pragma HLS BIND_STORAGE variable=x type=RAM_T2P impl=BRAM
    //#pragma HLS interface mode=BRAM port=x

    if(load){
        x.flt_load(x_in);
    }
    else{
        x.flt_read(out);
    }



}
