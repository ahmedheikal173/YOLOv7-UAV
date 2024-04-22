#include "arch.h"

void CBS1(fptype image[width1][length1][input_depth1],fptype weights[filtersize311][filtersize311][input_depth1][features_output1],fptype output_CBS[width1][length1][features_output1])
{
	//int outputOfconv[width1][length1][features_output1]; // Declare outputOfconv
	//int outputOfLRN[width1][length1][features_output1]; // Declare outputOfLRN
    conv_ref(image, weights, output_CBS);
    LRN(output_CBS, output_CBS);
    relu(output_CBS, output_CBS);
}


