#include "../include/ap_int.h"

#define NUM_ROWS 640
#define NUM_COLS 640
#define NUM_DEPTH 3
#define NUM_WORDS 1228800

typedef ap_int<8>  mtype[NUM_ROWS][NUM_COLS][NUM_DEPTH];
typedef ap_int<24>  mtypeI[NUM_ROWS][NUM_COLS/16][NUM_DEPTH];



// ap_int<8> mm_out[NUM_WORDS];
// ap_int<8> m_in[NUM_WORDS];
// mtypeI m_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mm_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];

// ap_int<8> mmI_out[NUM_WORDS/16];
// ap_int<8> mI_in[NUM_WORDS/16];
// mtypeI mI_out; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];
// mtype mmI_in; //[NUM_ROWS][NUM_COLS][NUM_DEPTH];


void frommatrix(mtype mm_in, ap_int<8> mm_out[NUM_WORDS]);
void tomatrix(ap_int<8> m_in[NUM_WORDS],mtype m_out);


void frommatrixI(mtypeI mmI_in, ap_int<23> mmI_out[NUM_WORDS/16]);
void tomatrixI(ap_int<23> mI_in[NUM_WORDS/16],mtypeI mI_out);