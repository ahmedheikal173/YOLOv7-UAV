#include <cstdio>
#include "../src/shift_reg.h"

int main(int argc, char **argv){

	dType sw_out[N_REGS];
	dType hw_out[N_REGS];

	bool pass = true;
	for (int i = 0; i < 100; i++){
		dType in = i;

		// Software Shift
		for (int i = N_REGS-1; i>=0; i--){
			if (i == 0) sw_out[i] = in;
			else sw_out[i] = sw_out[i-1];
		}

		// Hardware Shift
		circular_shift_reg(in, hw_out);


		if (i > N_REGS){
			// Compare
			for (int i = 0; i < N_REGS; i++){
				pass &= (sw_out[i] == hw_out[i]);
			}

			// Fail or Not
			if (!pass) {
				printf("Test Fail!\n");
				return -1;
			}
		}

	}

	printf("Test Pass!\n");
	return 0;
}

