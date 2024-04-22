//#include "LRN.h"
#include "arch.h"
#include "ap_fixed.h"
#include <cmath>
#include <algorithm>

int max3(int a, int b) {
    return (a > b) ? a : b;
}

int min3(int a, int b) {
    return (a < b) ? a : b;
}
void LRNCBS3(fptype input[width3][length3][features_number3],fptype output_LRN[width3][length3][features_number3])
{
	int n=5;
    fptype k = 2;
    int beta = 0.75;   // Change to float or double if beta should be a floating-point number
    int alpha = 0.0001; // Change to float or double if alpha should be a floating-point number
    //int sum=0;
   // n=5;
  //  int input[width1][length1][features_number1];
	for (int i = 0; i < width3; i++)
	{
		for (int j = 0; j < length3; j++)
		{
			LRN_label1:for(int m=0;m<features_number3;m++)
			{

				fptype sum = 0;
				int x= min3(features_number3 - 1, m + n/ 2);
				int y=max3(0, m - n / 2);
				LRN_label0:for (int l = y; l <=x; l++) {
					sum +=(fptype) input[i][j][l] * input[i][j][l];
				}
				// Apply the normalization
				output_LRN[i][j][m] = input[i][j][m] / static_cast<int>(pow(static_cast<double>(k + alpha * sum), static_cast<double>(beta)));

			}
		}
	}

}
