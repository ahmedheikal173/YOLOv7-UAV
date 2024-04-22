#ifndef __READ_MEM_SEQ__
#define __READ_MEM_SEQ__


#include "./include/ac_int.h"
//#include "./interleave_mem.hpp"
#include "./interleave_mem_sequential.hpp"


template<typename T, int N>
T interleave_mem_seq<T,N>::read(ac_int<ac::log2_ceil<N>::val,false> i, int offset){
    T tmp=0;
    switch(offset){
        case 0:
            tmp = x0[i];
            break;
        case 1:
            tmp = x1[i];
            break;
        case 2:
            tmp = x2[i];
            break;
    }
    return tmp;
}
#endif
