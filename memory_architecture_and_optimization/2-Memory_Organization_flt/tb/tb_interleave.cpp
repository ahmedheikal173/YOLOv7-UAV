#include <cstdio>
#include "../src/interleave.h"
#include "../include/ap_int.h"
#include "../src/tomatrix.hpp"

#define AUTO 0
#define RND 0
#define SEQ 1

int main(int argc, char **argv){

	ap_int<8> in[NUM_WORDS];
	ap_int<16> sw_out[NUM_WORDS/9];
	ap_int<16> hw_out[NUM_WORDS/9];

	// Generate Input
	for (int i=0; i<NUM_WORDS; i++)
		in[i] = i; //rand();

	// Generate sw_out
	for (int i=0; i<NUM_WORDS; i++){
		sw_out[i] = in[i] + in[i + 1] + in[i + 2]
		          + in[i + 3] + in[i + 4] + in[i + 5]
		          + in[i + 6] + in[i + 7] + in[i + 8];
	}

	mtype hw_in;
	tomatrix(in,hw_in);	
	mtypeI hw_out_tmp;			

	// Execution
#if AUTO
	interleave(in, hw_out, true);
	interleave(in, hw_out, false);
#endif

#if RND
	flt_interleave_manual_rnd(hw_in, hw_out_tmp, true);
		//frommatrixI(hw_out_tmp,hw_out);
	flt_interleave_manual_rnd(hw_in, hw_out_tmp, false);
		frommatrixI(hw_out_tmp,hw_out);
#endif

#if SEQ
	flt_interleave_manual_seq(hw_in, hw_out_tmp, true);
		//frommatrixI(hw_out_tmp,hw_out);
	flt_interleave_manual_seq(hw_in, hw_out_tmp, false);
		frommatrixI(hw_out_tmp,hw_out);



#endif

	// Compare
	bool pass = true;
	for (int i=0; i<NUM_WORDS/9; i++){
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
