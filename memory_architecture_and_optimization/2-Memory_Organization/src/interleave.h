#ifndef __INTERLEAVE_H__
#define __INTERLEAVE_H__

#define NUM_WORDS 1228800
#include "./tomatrix.hpp"

#include "../include/ap_int.h"

void interleave(ap_int<8> x_in[NUM_WORDS], ap_int<8> y[NUM_WORDS / 3],
                bool load);
void interleave_manual_rnd(mtype x_in, mtypeI y,
                       bool load);
void interleave_manual_seq(mtype x_in, mtypeI y,
                       bool load);



#endif
