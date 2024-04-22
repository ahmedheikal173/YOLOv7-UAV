//#include "LRN.h"
#include "arch.h"
#include "ap_fixed.h"
#include <cmath>
#include <algorithm>

int max(int a, int b) {
    return (a > b) ? a : b;
}

int min(int a, int b) {
    return (a < b) ? a : b;
}
void LRN(fptype input[width1][length1][features_number1],fptype output_LRN[width1][length1][features_number1])
{
	int n=5;
    fptype k = 2;
    int beta = 0.75;   // Change to float or double if beta should be a floating-point number
    int alpha = 0.0001; // Change to float or double if alpha should be a floating-point number
    //int sum=0;
   // n=5;
  //  int input[width1][length1][features_number1];
	for (int i = 0; i < width1; i++)
	{
		for (int j = 0; j < width1; j++)
		{
			LRN_label1:for(int m=0;m<features_number1;m++)
			{

				fptype sum = 0;
				int x= min(features_number1 - 1, m + n/ 2);
				int y=max(0, m - n / 2);
				LRN_label0:for (int l = y; l <=x; l++) {
					sum +=(fptype) input[i][j][l] * input[i][j][l];
				}
				// Apply the normalization
				output_LRN[i][j][m] = input[i][j][m] / static_cast<int>(pow(static_cast<double>(k + alpha * sum), static_cast<double>(beta)));

			}
		}
	}

}
