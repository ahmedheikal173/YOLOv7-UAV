#include "arch.h"
void MP1(fptype input[widthMP1][lengthMP1][features_numberMP1],fptype output_MP1[outputWidthMP1][outputLengthMP1][features_numberMP1],fptype weights[features_numberMP1])
{
	//Implementing MP1 that is a cascade of Maxpooling and convolutional function
	MaxPoolingMP1(input,output_MP1);
	convMP1(output_MP1,weights,output_MP1);
}
