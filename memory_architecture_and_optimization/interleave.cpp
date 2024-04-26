#include "./interleave.h"
#include "./include/ac_int.h"

template<int NUM_WORDS>

void interleave(ac_int<8> x_in[NUM_WORDS], ac_int<8> y[NUM_WORDS/3], bool load){

    static ac_int<8> x[NUM_WORDS];
    int idx = 0;

    if(load)
        for(int i=0;i<NUM_WORDS;i+=1)
            x[i] = x_in[i];
    else
        for(int i=0;i<NUM_WORDS;i+=3)
            y[idx++] = x[i]+x[i+1]+x[i+2];
}