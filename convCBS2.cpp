//#include "conv_ref.h"
#include "arch.h"
void padding_r2(fptype im[outputWidth2][outputLength2][features_input2],fptype image_padded_uram[322][322][22],fptype image_padded_bram[322][322][2])
{
#pragma HLS array_partition variable=image_padded_uram complete dim=3
/*	padding_r_label3:for (int m = 0; m <features_input2; m++) {
		    		for (int i = 0; i < width2+2; i++) {
		    			padding_r_label1:for (int j = 0; j < length2+2; j++) {
		    				image_padded[i][j][m] =(fptype) 0;
		    			}
		    		}
		    }
	padding_r_label2:for (int m = 0; m < features_input2; m++) {
	    		for (int i = 0; i < width2; i++) {
	    			padding_r_label0:for (int j = 0; j < length2; j++) {
	    				image_padded[i +1][j + 1][m] =(fptype) im[i][j][m];
	    			}
	    		}
	    }*/
	for (int m = 0; m < features_input2_bram; m++) {
	        for (int i = 0; i < width2 + 2; i++) {
	            padding_r2_label0:for (int j = 0; j < length2 + 2; j++) {
	                image_padded_bram[i][j][m] = (fptype)0;
	            }
	        }
	    }

	    // Padding logic for URAM allocation
	    for (int m = 0; m < features_input2_uram; m++) {
	        for (int i = 0; i < width2 + 2; i++) {
	            padding_r2_label1:for (int j = 0; j < length2 + 2; j++) {
	                image_padded_uram[i][j][m] = (fptype)0;
	            }
	        }
	    }

	    // Copy input data to both BRAM and URAM partitions
	    for (int m = 0; m < features_input2; m++) {
	        for (int i = 0; i < outputWidth2; i++) {
	            for (int j = 0; j < outputLength2; j++) {
	            	if(features_input2<22)
		                image_padded_uram[i + 1][j + 1][m] = (fptype)im[i][j][m];
	            	if(features_input2>=22)
	            		image_padded_bram[i + 1][j + 1][m-12] = (fptype)im[i][j][m];	            }
	        }
	    }
}

void convCBS2(fptype input[outputWidth2][outputLength2][features_input2],fptype weights[filtersize311][filtersize311][features_output2], fptype output_conv[outputWidth2][outputLength2][features_output2])
{
    // Perform convolution
   // fptype image_padded[322][322][features_input2] = {0};
    fptype image_padded_uram[322][322][22];
    fptype image_padded_bram[322][322][2];

//#pragma HLS RESOURCE variable=image_padded core=RAM_1P_BRAM uram
#pragma HLS RESOURCE variable=image_padded_bram core=XPM_MEMORY uram

	//image_padded={0};
	padding_r2(input,image_padded_uram,image_padded_bram);
	fptype sum=0;
	conv_ref_label3:for(int p=0;p<features_output2;p++)
	{
		for(int i=0;i<outputWidth2;i++)
		{
			for(int j=0;j<outputLength2;j++)
			{
				sum=0;
				conv_ref_label2:for(int r=0;r<filtersize311;r++)
				{
					conv_ref_label1:for(int s=0;s<filtersize311;s++)
					{
						for(int d=0;d<features_input2;d++){
							if(features_input2>=2)
								sum+=(fptype)image_padded_bram[i+r][j+s][d-8]*weights[r][s][p];
							if(features_input2<2)
								sum+=(fptype)image_padded_uram[i+r][j+s][d]*weights[r][s][p];

						}
					}

				}
				output_conv[i][j][p] += sum; // Accumulate sum for each filter
			 }

		}
	}

}
