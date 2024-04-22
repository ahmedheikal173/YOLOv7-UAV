#include "arch.h"
void padding_r3(fptype im[width3][length3][features_input3],fptype image_padded_uram[322][322][22],fptype image_padded_bram[322][322][2])
{
#pragma HLS array_partition variable=image_padded_uram complete dim=3
	for (int m = 0; m < features_input3_bram; m++) {
	        for (int i = 0; i < width3 + 2; i++) {
	            padding_r3_label0:for (int j = 0; j < length3 + 2; j++) {
	                image_padded_bram[i][j][m] = (fptype)0;
	            }
	        }
	    }

	    // Padding logic for URAM allocation
	    for (int m = 0; m < features_input3_uram; m++) {
	        for (int i = 0; i < width3 + 2; i++) {
	            padding_r3_label1:for (int j = 0; j < length3 + 2; j++) {
	                image_padded_uram[i][j][m] = (fptype)0;
	            }
	        }
	    }

	    // Copy input data to both BRAM and URAM partitions
	    for (int m = 0; m < features_input3; m++) {
	        for (int i = 0; i < width3; i++) {
	            for (int j = 0; j < length3; j++) {
	            	if(features_input3<22)
		                image_padded_uram[i + 1][j + 1][m] = (fptype)im[i][j][m];
	            	if(features_input3>=22)
	            		image_padded_bram[i + 1][j + 1][m-12] = (fptype)im[i][j][m];	            }
	        }
	    }
}
void convCBS3(fptype input[width3][length3][features_input3],fptype weights[filtersize311][filtersize311][features_output3], fptype output_conv[width3][length3][features_output3])
{
	 // Perform convolution
		 fptype image_padded_uram[322][322][22];
		 fptype image_padded_bram[322][322][2];

		//#pragma HLS RESOURCE variable=image_padded core=RAM_1P_BRAM uram
		#pragma HLS RESOURCE variable=image_padded_bram core=XPM_MEMORY uram
		//image_padded={0};
		padding_r3(input,image_padded_uram,image_padded_bram);
		fptype sum=0;
		conv_ref_label3:for(int p=0;p<features_output3;p++)
		{
			for(int i=0;i<width3;i++)
			{
				for(int j=0;j<length3;j++)
				{
					sum=0;
					conv_ref_label2:for(int r=0;r<filtersize311;r++)
					{
						conv_ref_label1:for(int s=0;s<filtersize311;s++)
						{
							for(int d=0;d<features_input3;d++){
								if(features_input3>=2)
									sum+=(fptype)image_padded_bram[i+r][j+s][d-8]*weights[r][s][p];
								if(features_input3<2)
									sum+=(fptype)image_padded_uram[i+r][j+s][d]*weights[r][s][p];
							}
						}

					}
					output_conv[i][j][p] += sum; // Accumulate sum for each filter
				 }

			}
		}
}
