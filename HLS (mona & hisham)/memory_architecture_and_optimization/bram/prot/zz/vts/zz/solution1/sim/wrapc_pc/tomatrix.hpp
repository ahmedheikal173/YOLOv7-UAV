#include "../include/ap_int.h"
#include "./RAM.h"

// #define NUM_ROWS 9
// #define NUM_COLS 9
// #define NUM_DEPTH 44
// #define NUM_WORDS 3564

// typedef ap_int<8>  mtype[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// typedef ap_int<16>  mtypeI[NUM_ROWS][NUM_COLS/9][NUM_DEPTH];



// ap_int<8> mm_out[NUM_WORDS];
// ap_int<8> m_in[NUM_WORDS];
// mtypeI m_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mm_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];

// ap_int<8> mmI_out[NUM_WORDS/9];
// ap_int<8> mI_in[NUM_WORDS/9];
// mtypeI mI_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mmI_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];


void frommatrixI(imtype mm_in, ap_int<8> mm_out[iNUM_WORDS]);
void tomatrixI(ap_int<8> m_in[iNUM_WORDS],imtype m_out);


void frommatrixF(ftype mmI_in, ap_int<8> mmI_out[fNUM_WORDS]);
void tomatrixF(ap_int<8> mI_in[fNUM_WORDS],ftype mI_out);