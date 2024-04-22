#ifndef __READ_MEM__
#define __READ_MEM__
#include "./include/ac_int.h"
#include "./interleave_mem.hpp"

template<typename T, int N>
T interleave_mem<T,N>::read(ac_int<ac::log2_ceil<N>::val,false> i, int offset){
    
    T tmp=0;
    switch(offset){
        case 0:
            tmp = x0[i/3];
            break;
        case 1:
            tmp = x1[i/3];
            break;
        case 2:
            tmp = x2[i/3];
            break;
    }
    return tmp;
}
#endif
