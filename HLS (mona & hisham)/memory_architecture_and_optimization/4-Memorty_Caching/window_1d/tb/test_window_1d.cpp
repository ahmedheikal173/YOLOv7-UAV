#include <iostream>
#include "../src/window_1d.h"

using namespace std;

static inline int clip(int i) {
    int tmp = i;
    if (tmp < 0)
        tmp = 0;
    else if (tmp > NUM_WORDS - 1)
        tmp = NUM_WORDS - 1;
    return tmp;
}

int main(int argc, char *argv[]) {
	ap_uint<8> din[NUM_WORDS];
	ap_uint<8> dout[NUM_WORDS];
	ap_uint<8> answer[NUM_WORDS];

	for (int i = 0; i < NUM_WORDS; i++) {
		din[i] = rand();
	}



	
	// din = {0, 1, 2, 3}
	// dout = {0.25, 1, 2, 2.75}

	ap_ufixed<13, 11> tmp;
	ap_ufixed<3, 1> coeffs[3] = {0.25, 0.5, 0.25};
	for (int i = 0; i < NUM_WORDS; i++) {
		tmp = din[clip(i - 1)] * coeffs[0] + din[i] * coeffs[1] + din[clip(i + 1)] * coeffs[2];
		answer[i] = tmp.to_uint();
	}

	window_avg(din, dout);

	int pass = 1;
	for (int i = 0; i < NUM_WORDS; i++) {
		cout << "dout[" << i << "]: " << dout[i] << ", answer: " << tmp.to_float() << "\n";
		if (dout[i] != answer[i]) {
			pass = 0;
		}
	}

	if(!pass) {
		cout << ">> Test failed!" << endl;
		return 1;
	}

	cout << ">> Test passed!" << endl;
	cout << "------------------------" << endl;
	return 0;
}

