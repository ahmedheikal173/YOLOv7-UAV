#include "arch.h"
void convMP1(fptype input[outputWidthMP1][outputLengthMP1][features_numberMP1],fptype weights[features_numberMP1], fptype output_conv[outputWidthMP1][outputLengthMP1][features_outputMP1])
{
    // Perform convolution
	fptype sum=0;
	conv_ref_label3:for(int p=0;p<features_outputMP1;p++)
	{
		for(int i=0;i<outputWidthMP1;i++)
		{
			for(int j=0;j<outputLengthMP1;j++)
			{
				sum=0;
				convMP1_label5:for(int d=0;d<features_inputMP1;d++){
						 sum+=(fptype)input[i][j][d]*weights[p];
				}
				output_conv[i][j][p] += sum; // Accumulate sum for each filter
			 }

		}
	}

}
