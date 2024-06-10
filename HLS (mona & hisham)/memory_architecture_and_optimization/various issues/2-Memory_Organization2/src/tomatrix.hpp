#include "../include/ap_int.h"

#define NUM_ROWS 640
#define NUM_COLS 640
#define NUM_DEPTH 3
#define NUM_WORDS 1228800

typedef ap_uint<8>  mtype[NUM_ROWS][NUM_COLS][NUM_DEPTH];




ap_uint<8> m_in[NUM_WORDS];
mtype m_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];



void tomatrix(ap_uint<8> m_in[NUM_WORDS],mtype m_out);