#ifndef __WINDOW_1D__
#define __WINDOW_1D__

#include "../include/ap_int.h"
#include "../include/ap_fixed.h"
#include "./shift_class.hpp"

//#define NUM_WORDS 1228800 // el depth da bye3mel azma
#define NUM_WORDS 409600 //640*640


void window_avg(ap_uint<8> din[NUM_WORDS], ap_uint<8> dout[NUM_WORDS]);

void clip_window(shift_class<ap_uint<8>, 3> shift_reg,int i, ap_uint<8> window[3]);

#endif
