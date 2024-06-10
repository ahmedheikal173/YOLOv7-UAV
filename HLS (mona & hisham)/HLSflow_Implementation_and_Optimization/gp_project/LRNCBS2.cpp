//#include "LRN.h"
#include "arch.h"
#include "ap_fixed.h"
#include <cmath>
#include <algorithm>

int max2(int a, int b) {
    return (a > b) ? a : b;
}

int min2(int a, int b) {
    return (a < b) ? a : b;
}
void LRNCBS2(fptype input[outputWidth2][outputLength2][features_number2],fptype output_LRN[outputWidth2][outputLength2][features_number2])
{
	int n=5;
    fptype k = 2;
    int beta = 0.75;
    int alpha = 0.0001;
	LRNCBS2_label3:for (int i = 0; i < outputWidth2; i++)
	{
		for (int j = 0; j < outputLength2; j++)
		{
			LRN_label1:for(int m=0;m<features_number2;m++)
			{

				fptype sum = 0;
				int x= min2(features_number2 - 1, m + n/ 2);
				int y=max2(0, m - n / 2);
				LRN_label0:for (int l = y; l <=x; l++) {
					sum +=(fptype) input[i][j][l] * input[i][j][l];
				}
				// Apply the normalization
				output_LRN[i][j][m] = input[i][j][m] / static_cast<int>(pow(static_cast<double>(k + alpha * sum), static_cast<double>(beta)));

			}
		}
	}

}
