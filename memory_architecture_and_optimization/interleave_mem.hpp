#ifndef __INTERLEAVE_MEM__
#define __INTERLEAVE_MEM__
#include "./include/ac_int.h"

template<typename T, int N>
class interleave_mem{
    T x0[N/3];
    T x1[N/3];
    T x2[N/3];
    
    public:
        interleave_mem(){
        }
        
        void write(ac_int<ac::log2_ceil<N>::val,false> i, T x_in[N]);
        
        T read(ac_int<ac::log2_ceil<N>::val,false> i, int offset);
};

//#include "./read_mem.hpp"
//#include "./write_mem.hpp"
#endif
