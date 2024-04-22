//#include "relu.h"
#include "arch.h"
#include "math.h"


void relu(fptype image[width1][length1][features_number1], fptype output_relu[width1][length1][features_number1]) {
	for(int m=0;m<features_number1;m++)
	{
		relu_label0:for (int i = 0; i < width1; i++) {
			relu_label2:for (int j = 0; j < length1; j++) {
				if(image[i][j][m]>0)
					output_relu[i][j][m]=image[i][j][m];
				else
					output_relu[i][j][m]= 0; // Multiply with input
			}
		}
	}
}
