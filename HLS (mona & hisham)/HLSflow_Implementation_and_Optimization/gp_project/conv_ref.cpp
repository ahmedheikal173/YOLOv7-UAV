#include "arch.h"

void conv_ref(fptype image[width1][length1][input_depth1], fptype weights[filtersize311][filtersize311][input_depth1][features_output1], fptype output_conv[width1][length1][features_output1]) {


    // Perform convolution
    fptype image_padded[642][642][input_depth1] = {0}; //Defining image_padded that would store image after being padded
	padding_r_label3:for (int m = 0; m < input_depth1; m++) {
		    		for (int i = 0; i < width1+2; i++) {
		    			padding_r_label1:for (int j = 0; j < length1+2; j++) {
		    				image_padded[i][j][m] =(fptype) 0; //Adding zeros at the borders
		    			}
		    		}
		    }
	padding_r_label2:for (int m = 0; m < input_depth1; m++) {
	    		for (int i = 0; i < width1; i++) {
	    			padding_r_label0:for (int j = 0; j < length1; j++) {
	    				image_padded[i +1][j + 1][m] =(fptype) image[i][j][m]; //applying image in-between zero borders of image_padded
	    			}
	    		}
	    }
	fptype sum=0;
	conv_ref_label3:for(int p=0;p<features_output1;p++)
	{
		for(int i=0;i<width1;i++)
		{
			for(int j=0;j<length1;j++)
			{

					sum=0;
					conv_ref_label2:for(int r=0;r<filtersize311;r++)
					{
						conv_ref_label1:for(int s=0;s<filtersize311;s++)
						{
							conv_ref_label0:for(int d=0;d<input_depth1;d++)
							{

								sum+=(fptype)image_padded[i+r][j+s][d]*weights[r][s][d][p];  //applying dot operation on image after being padded and filter and accumulate 9 numbers to sum
							}
						}
					}
					output_conv[i][j][p] += sum; // Accumulate sum for each filter
				 }

			}
	}
}
