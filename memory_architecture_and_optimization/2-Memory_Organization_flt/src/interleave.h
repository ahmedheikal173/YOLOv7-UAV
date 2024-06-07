#ifndef __INTERLEAVE_H__
#define __INTERLEAVE_H__

#define NUM_WORDS 3564 //9*9*44
#include "./tomatrix.hpp"

#include "../include/ap_int.h"

void interleave(ap_int<8> x_in[NUM_WORDS], ap_int<16> y[NUM_WORDS / 9],
                bool load);
void flt_interleave_manual_rnd(mtype x_in, mtypeI y,
                       bool load);
void flt_interleave_manual_seq(mtype x_in, mtypeI y,
                       bool load);



#endif
