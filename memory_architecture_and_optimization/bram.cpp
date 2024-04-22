#include "./bram.h"

void bram_write(unsigned char A[N]){
	
	#pragma HLS INTERFACE mode=ap_ctrl_hs port=return
	#pragma HLS INTERFACE mode=ap_memory port=A
	
	for (unsigned char i=0; i<SIZE; i++){		
		#pragma HLS PIPELINE rewind
		#pragma HLS UNROLL FACTOR=3
		A[i] = i+1;
	}
}


void bram_read(unsigned char A[N], unsigned char &B){
	
	#pragma HLS INTERFACE mode=ap_ctrl_hs port=return
	#pragma HLS INTERFACE mode=ap_memory port=A
	#pragma HLS INTERFACE mode=ap_none port=B
	
	unsigned char t=0;
	for (unsigned char i=0; i<SIZE; i++){		
		#pragma HLS PIPELINE rewind
		#pragma HLS UNROLL FACTOR=3
		t += A[i];
	}
	B=t;
}
