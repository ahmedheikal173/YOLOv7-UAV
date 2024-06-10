#include "arch.h"

void CBS2(fptype image[width2][length2][features_input2],fptype weights[filtersize311][filtersize311][features_output2],fptype output_MaxPooling[outputWidth2][outputLength2][features_output2])
{
	//implementing CBS2 as a cascaded blocks of max pooling to downsample the spatial dimensions, then applying conv, LRN, relu
	maxpooling(image,output_MaxPooling);
    convCBS2(output_MaxPooling, weights, output_MaxPooling);
    LRNCBS2(output_MaxPooling, output_MaxPooling);
    reluCBS2(output_MaxPooling, output_MaxPooling);
}


