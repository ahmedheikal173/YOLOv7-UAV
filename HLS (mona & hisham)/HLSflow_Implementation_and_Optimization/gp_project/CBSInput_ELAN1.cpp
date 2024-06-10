#include "arch.h"
#include <cmath>
#include <algorithm>
int maxELAN1(int a, int b) {
    return (a > b) ? a : b;
}

int minELAN1(int a, int b) {
    return (a < b) ? a : b;
}
void CBSInput_ELAN1(fptype input[widthELAN1][lengthELAN1][features_inputELAN1],
              fptype weights[filtersize311][filtersize311][features_inputELAN1],
              fptype output_conv[widthELAN1][lengthELAN1][features_inputELAN1]) {

    fptype sum = 0;

    //Performing on the fly-padding not storing it to optimize utilization of BRAM
    conv_ref_label3:for (int p = 0; p < features_inputELAN1; p++) {
        for (int i = 0; i < widthELAN1; i++) {
            for (int j = 0; j < lengthELAN1; j++) {
                sum = 0;
                conv_ref_label2:for (int r = 0; r < filtersize311; r++) {
                    int row = i + r - 1; // account for padding
                    conv_ref_label1:for (int s = 0; s < filtersize311; s++) {
                        int col = j + s - 1; // account for padding
                        convCBS3_label0:for (int d = 0; d < features_inputELAN1; d++) {
                            fptype padded_val;
                            if (row < 0 || row >= widthELAN1 || col < 0 || col >= lengthELAN1) {
                                padded_val = 0; // Padding value
                            } else {
                                padded_val = input[row][col][d];
                            }
                            sum += padded_val * weights[r][s][p];
                        }
                    }
                }
                output_conv[i][j][p] += sum; // Accumulate sum for each filter
            }
        }
    }
    int n=5;
	fptype k = 2;
	int beta = 0.75;
	int alpha = 0.0001;
	for (int i = 0; i < widthELAN1; i++)
	{
		for (int j = 0; j < lengthELAN1; j++)
		{
		    CBSInput_ELAN1_label2:for(int m=0;m<features_inputELAN1;m++)
			{

				fptype sum = 0;
				int x= minELAN1(features_inputELAN1 - 1, m + n/ 2);
				int y=maxELAN1(0, m - n / 2);
				CBSInput_ELAN1_label0:for (int l = y; l <=x; l++) {
					sum +=(fptype)output_conv[i][j][l] *output_conv[i][j][l];
				}
				// Apply the normalization
				output_conv[i][j][m] = output_conv[i][j][m] / static_cast<int>(pow(static_cast<double>(k + alpha * sum), static_cast<double>(beta)));

			}
		}
	}
	for(int m=0;m<features_inputELAN1;m++)
	{
		CBSInput_ELAN1_label4:for (int i = 0; i < widthELAN1; i++) {
			CBSInput_ELAN1_label1:for (int j = 0; j < lengthELAN1; j++) {
				if(output_conv[i][j][m]<0)
					output_conv[i][j][m]= 0; //if input pixel is negative, let output is positive
			}
		}
	}

}
