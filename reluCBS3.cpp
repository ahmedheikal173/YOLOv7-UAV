//#include "relu.h"
#include "arch.h"
#include "math.h"


void reluCBS3(fptype image[width3][length3][features_number3], fptype output_relu[width3][length3][features_number3])
{for(int m=0;m<features_number3;m++)
	{
		relu_label0:for (int i = 0; i < width3; i++) {
			relu_label2:for (int j = 0; j < length3; j++) {
				if(image[i][j][m]>0)
					output_relu[i][j][m]=image[i][j][m];
				else
					output_relu[i][j][m]= 0; // Multiply with input
			}
		}
	}
}
