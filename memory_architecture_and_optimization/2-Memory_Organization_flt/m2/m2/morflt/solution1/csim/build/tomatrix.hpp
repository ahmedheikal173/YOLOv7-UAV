#include "../include/ap_int.h"

#define NUM_ROWS 9
#define NUM_COLS 9
#define NUM_DEPTH 44
#define NUM_WORDS 3564

typedef ap_int<8>  mtype[NUM_ROWS][NUM_COLS][NUM_DEPTH];
typedef ap_int<16>  mtypeI[NUM_ROWS][NUM_COLS/9][NUM_DEPTH];



// ap_uint<8> mm_out[NUM_WORDS];
// ap_uint<8> m_in[NUM_WORDS];
// mtypeI m_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mm_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];

// ap_uint<8> mmI_out[NUM_WORDS/9];
// ap_uint<8> mI_in[NUM_WORDS/9];
// mtypeI mI_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mmI_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];


void frommatrix(mtype mm_in, ap_uint<8> mm_out[NUM_WORDS]);
void tomatrix(ap_uint<8> m_in[NUM_WORDS],mtype m_out);


void frommatrixI(mtypeI mmI_in, ap_uint<16> mmI_out[NUM_WORDS/9]);
void tomatrixI(ap_uint<16> mI_in[NUM_WORDS/9],mtypeI mI_out);