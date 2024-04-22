//#include "relu.h"
#include "arch.h"
#include "math.h"


void reluCBS2(fptype image[outputWidth2][outputLength2][features_number2], fptype output_relu[outputWidth2][outputLength2][features_number2]) {
	for(int m=0;m<features_number2;m++)
	{
		relu_label0:for (int i = 0; i < outputWidth2; i++) {
			relu_label2:for (int j = 0; j < outputLength2; j++) {
				if(image[i][j][m]>0)
					output_relu[i][j][m]=image[i][j][m];
				else
					output_relu[i][j][m]= 0; // Multiply with input
			}
		}
	}
}
