#include "./include/ac_int.h"
#include "./interleave_mem.hpp"

#include "./interleave.h"

template<int NUM_WORDS>

void interleave_manual(ac_int<8> x_in[NUM_WORDS], ac_int<8> y[NUM_WORDS/3], bool load){
    
    static interleave_mem<ac_int<8>,NUM_WORDS> x;
    int idx = 0;
    if(load)
        for(int i=0;i<NUM_WORDS;i+=1)
            x.write(i,x_in);
    else
        for(int i=0;i<NUM_WORDS;i+=3)
            y[idx++] = x.read(i,0) + x.read(i,1) + x.read(i,2);
}
