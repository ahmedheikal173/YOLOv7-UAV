#include <cstdio>
#include "../src/interleave.h"
#include "../include/ap_int.h"

#define AUTO 0
#define RND 0
#define SEQ 1

int main(int argc, char **argv){

	ap_int<8> in[NUM_WORDS];
	ap_int<8> sw_out[NUM_WORDS/3];
	ap_int<8> hw_out[NUM_WORDS/3];

	// Generate Input
	for (int i=0; i<NUM_WORDS; i++)
		in[i] = i;

	// Generate sw_out
	for (int i=0; i<NUM_WORDS/3; i++)
		sw_out[i] = in[i*3] +
					in[i*3 + 1] +
					in[i*3 + 2] ;

	// Execution
#if AUTO
	interleave(in, hw_out, true);
	interleave(in, hw_out, false);
#endif

#if RND
	interleave_manual_rnd(in, hw_out, true);
	interleave_manual_rnd(in, hw_out, false);
#endif

#if SEQ
	interleave_manual_seq(in, hw_out, true);
	interleave_manual_seq(in, hw_out, false);
#endif

	// Compare
	bool pass = true;
	for (int i=0; i<NUM_WORDS/3; i++){
		printf("sw= %d, hw= %d\n", sw_out[i].to_int(), hw_out[i].to_int());
		pass &= (sw_out[i] == hw_out[i]);
	}

	// Pass or Fail
	if (!pass){
		printf("Test Fail!\n");
		return -1;
	} else {
		printf("Test Pass!\n");
		return 0;
	}
}
