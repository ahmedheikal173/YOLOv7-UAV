#include "./RAM.h"


void BRAM_image(imtype x_in, imtype out, bool load) {
    #pragma HLS interface mode=BRAM port=x_in
    #pragma HLS interface mode=BRAM port=out

    bram_img x;
    #pragma HLS BIND_STORAGE variable=x type=RAM_T2P impl=BRAM
    //#pragma HLS interface mode=BRAM port=x

    if(load){
        x.img_load(x_in);
    }
    else{
        x.img_read(out);
    }



}
