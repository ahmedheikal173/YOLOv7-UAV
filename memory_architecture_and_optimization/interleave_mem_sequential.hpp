#ifndef __INTERLEAVE_MEM_SEQ__
#define __INTERLEAVE_MEM_SEQ__
#include "./interleave.h"

template<typename T, int N>
class interleave_mem_seq{
    int x0[N/3];
    int x1[N/3];
    int x2[N/3];
    ac_int<ac::log2_ceil<N>::val,false> idx;
    ac_int<2,false> sel;
    
    public:
        interleave_mem_seq(){
            idx=0;
            sel = 0;
        }
    
        void write(ac_int<ac::log2_ceil<N>::val,false> i, T x_in[N]);
        T read(ac_int<ac::log2_ceil<N>::val,false> i, int offset);
};


//#include "./write_mem_sequential.hpp"
//#include "./read_mem_sequential.hpp"
#endif