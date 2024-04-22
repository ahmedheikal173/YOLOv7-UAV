#ifndef __WRITE_MEM__
#define __WRITE_MEM__

#include "./include/ac_int.h"
#include "./interleave_mem.hpp"

template<typename T, int N>

void interleave_mem<T,N>::write(ac_int<ac::log2_ceil<N>::val,false> i, T x_in[N]){
        T tmp = x_in[i];
        switch(i%3){
            case 0:
                x0[i/3] = tmp;
                break;
            case 1:
                x1[i/3] = tmp;
                break;
            case 2:
                x2[i/3] = tmp;
                break;
        }
}
#endif