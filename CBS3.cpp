#include "arch.h"

void CBS3(fptype image[width3][length3][features_input3],fptype weights[filtersize311][filtersize311][features_output3],fptype output_CBS[width3][length3][features_output3])
{
	//int outputOfconv[width1][length1][features_output1]; // Declare outputOfconv
	//int outputOfLRN[width1][length1][features_output1]; // Declare outputOfLRN
    convCBS3(image, weights, output_CBS);
    LRNCBS3(output_CBS, output_CBS);
    reluCBS3(output_CBS, output_CBS);
}


