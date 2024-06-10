#include "arch.h"

void CBS3(fptype image[width3][length3][features_input3],fptype weights[filtersize311][filtersize311][features_output3],fptype output_CBS[width3][length3][features_output3])
{
	//implementing CBS3 as a cascaded blocks conv, LRN, relu
    convCBS3(image, weights, output_CBS);
    LRNCBS3(output_CBS, output_CBS);
    reluCBS3(output_CBS, output_CBS);
}


