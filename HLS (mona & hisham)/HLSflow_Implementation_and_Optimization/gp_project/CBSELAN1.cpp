#include "arch.h"
#include <cmath>
#include <algorithm>
int maxELAN12(int a, int b) {
    return (a > b) ? a : b;
}

int minELAN12(int a, int b) {
    return (a < b) ? a : b;
}
void CBSELAN1(fptype input[widthELAN1][lengthELAN1][features_inputCBSELAN1],
              fptype weights[filtersize311][filtersize311][features_outputELAN1],
              fptype output_conv[widthELAN1][lengthELAN1][features_outputELAN1]) {

    fptype sum = 0;
    //Performing on the fly-padding not storing it to optimize utilization of BRAM

    conv_ref_label3: for (int p = 0; p < features_outputELAN1; p++) {
        for (int i = 0; i < widthELAN1; i++) {
            for (int j = 0; j < lengthELAN1; j++) {
                sum = 0;
                conv_ref_label2: for (int r = 0; r < filtersize311; r++) {
                    int row = i + r - 1; // account for padding
                    conv_ref_label1: for (int s = 0; s < filtersize311; s++) {
                        int col = j + s - 1; // account for padding
                        CBSELAN1_label3:for (int d = 0; d < features_inputCBSELAN1; d++) {
                            fptype padded_val;
                            if (row < 0 || row >= widthELAN1 || col < 0 || col >= lengthELAN1) {
                                padded_val = 0; // Padding value
                            } else {
                                if (d < 26) {
                                    padded_val = input[row][col][d]; // BRAM
                                } else {
                                    padded_val = input[row][col][d]; // URAM
                                }
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
			for(int m=0;m<features_outputELAN1;m++)
			{

				fptype sum = 0;
				int x= minELAN12(features_outputELAN1 - 1, m + n/ 2);
				int y=maxELAN12(0, m - n / 2);
				CBSELAN1_label4:for (int l = y; l <=x; l++) {
					sum +=(fptype)output_conv[i][j][l] *output_conv[i][j][l];
				}
				// Apply the normalization
				output_conv[i][j][m] = output_conv[i][j][m] / static_cast<int>(pow(static_cast<double>(k + alpha * sum), static_cast<double>(beta)));

			}
		}
	}
	for(int m=0;m<features_outputELAN1;m++)
	{
		for (int i = 0; i < widthELAN1; i++) {
			CBSELAN1_label5:for (int j = 0; j < lengthELAN1; j++) {
				if(output_conv[i][j][m]<0)
					output_conv[i][j][m]= 0; //If pixel of input is negative, let ouptut positive
			}
		}
	}
}
