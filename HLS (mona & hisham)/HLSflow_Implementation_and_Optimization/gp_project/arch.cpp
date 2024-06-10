#include "arch.h"
void arch(fptype input[width1][length1][input_depth1],fptype weightsCBS1[filtersize311][filtersize311][input_depth1][features_output1],fptype weightsCBS2[filtersize311][filtersize311][features_output2],fptype weightsCBS3[filtersize311][filtersize311][features_output3],fptype weightsMP1[features_numberMP1],fptype output_MP1[outputWidthMP1][outputLengthMP1][features_numberMP1])
{
	fptype outputCBS1[width1][length1][features_output1];
	fptype outputCBS2[outputWidth2][outputLength2][features_output2];
	fptype outputCBS3[width3][length3][features_output3];
	CBS1(input,weightsCBS1,outputCBS1);
	CBS2(outputCBS1,weightsCBS2,outputCBS2);
	CBS3(outputCBS2,weightsCBS3,outputCBS3);
	MP1(outputCBS3,output_MP1,weightsMP1);

}
