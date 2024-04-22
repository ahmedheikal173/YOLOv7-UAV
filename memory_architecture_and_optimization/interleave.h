#include "./include/ac_int.h"

template<int NUM_WORDS>

void interleave(ac_int<8> x_in[NUM_WORDS], ac_int<8> y[NUM_WORDS/3], bool load);