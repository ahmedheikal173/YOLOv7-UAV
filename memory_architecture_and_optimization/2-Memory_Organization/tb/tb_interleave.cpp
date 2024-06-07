#include <cstdio>
#include "../src/interleave.h"
#include "../include/ap_int.h"
#include "../src/tomatrix.hpp"

#define AUTO 0
#define RND 1
#define SEQ 0

int main(int argc, char **argv){

	ap_int<8> in[NUM_WORDS];
	ap_int<8> sw_out[NUM_WORDS/3];
	ap_int<8> hw_out[NUM_WORDS/3];

	// Generate Input
	for (int i=0; i<NUM_WORDS; i++)
		in[i] = rand();

	// Generate sw_out
	for (int i=0; i<NUM_WORDS/3; i++)
		sw_out[i] = in[i*3] +
					in[i*3 + 1] +
					in[i*3 + 2] ;

	mtype hw_in;
	tomatrix(in,hw_in);	
	mtypeI hw_out_tmp;			

	// Execution
#if AUTO
	interleave(in, hw_out, true);
	interleave(in, hw_out, false);
#endif

#if RND
	interleave_manual_rnd(hw_in, hw_out_tmp, true);
		//frommatrixI(hw_out_tmp,hw_out);
	interleave_manual_rnd(hw_in, hw_out_tmp, false);
		frommatrixI(hw_out_tmp,hw_out);
#endif

#if SEQ
	interleave_manual_seq(hw_in, hw_out_tmp, true);
		//frommatrixI(hw_out_tmp,hw_out);
	interleave_manual_seq(hw_in, hw_out_tmp, false);
		frommatrixI(hw_out_tmp,hw_out);
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
