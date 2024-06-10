#ifndef ARCH_H
#define ARCH_H
#include "ap_fixed.h"
#include <iostream>
#include "ap_int.h"


//////// This .h file contains defintion of all usedd function
// Define the fixed-pofptype type
typedef ap_fixed <8, 0> fptype;

//Defining general parameter
#define filtersize311 3
#define filtersize101 1
//.////////////////////////////////////////////CBS 1/////////////////////////////////////////////////
//Defining used parameters in CBS1
#define features_number1 24
#define input_depth1 3
#define features_output1 24
#define width1 640
#define length1 640

//Defining functions implemented in CBS1
void conv_ref(fptype image[width1][length1][input_depth1], fptype weights[filtersize311][filtersize311][input_depth1][features_output1], fptype output_conv[width1][length1][features_output1]);
void LRN(fptype input[width1][length1][features_number1],fptype output_LRN[width1][length1][features_number1]);
void relu(fptype image[width1][length1][features_number1], fptype output_relu[width1][length1][features_number1]);
void CBS1(fptype image[width1][length1][input_depth1],fptype weights[filtersize311][filtersize311][input_depth1][features_output1], fptype output_CBS[width1][length1][features_output1]=NULL);

//////////////////////////////////////////////CBS 2//////////////////////////////////////////////////////////////
//Definng functions used in CBS2
#define features_input2 24
#define features_number2 24
#define features_output2 24
#define width2 640
#define length2 640
#define outputWidth2 320
#define filtersizeofMP 2
#define outputLength2 320
#define features_input2_bram  2 // Size for BRAM allocation
#define features_input2_uram  22 // Size for URAM allocation

//Defining functions implemented in CBS2
void convCBS2(fptype input[outputWidth2][outputLength2][features_input2],fptype weights[filtersize311][filtersize311][features_output2], fptype output_conv[outputWidth2][outputLength2][features_output2]);
void maxpooling(fptype image[width2][length2][features_number2], fptype output[outputWidth2][outputLength2][features_number2]);
void LRNCBS2(fptype input[outputWidth2][outputLength2][features_number2],fptype output_LRN[outputWidth2][outputLength2][features_number2]);
void reluCBS2(fptype image[outputWidth2][outputLength2][features_number2], fptype output_relu[outputWidth2][outputLength2][features_number2]) ;
void CBS2(fptype image[width2][length2][features_input2],fptype weights[filtersize311][filtersize311][features_output2],fptype output_MaxPooling[outputWidth2][outputLength2][features_output2]);


/////////////////////////////////////////////CBS3////////////////////////////////////////////////
//Defining parameters used in CBS3
#define features_input3 24
#define features_number3 24
#define features_output3 24
#define width3 320
#define length3 320
#define features_input3_bram  2 // Size for BRAM allocation
#define features_input3_uram  22 // Size for URAM allocation

//Defining functions implemented in CBS3
void convCBS3(fptype input[width3][length3][features_input3],fptype weights[filtersize311][filtersize311][features_output3], fptype output_conv[width3][length3][features_output3]);
void LRNCBS3(fptype input[width3][length3][features_number3],fptype output_LRN[width3][length3][features_number3]);
void reluCBS3(fptype image[width3][length3][features_number3], fptype output_relu[width3][length3][features_number3]) ;
void CBS3(fptype image[width3][length3][features_input3],fptype weights[filtersize311][filtersize311][features_output3],fptype output_CBS[width3][length3][features_output3]);

///////////////////////////////////////////////MP1////////////////////////////////////////////////
//Defining parameters used in MP1
#define features_inputMP1 128
#define features_numberMP1 128
#define features_outputMP1 128
#define widthMP1 320
#define lengthMP1 320
#define outputWidthMP1 320
#define outputLengthMP1 320

//Defining functions implemented in MP1
void MaxPoolingMP1(fptype image[widthMP1][lengthMP1][features_numberMP1], fptype output[outputWidthMP1][outputLengthMP1][features_numberMP1]);
void convMP1(fptype input[outputWidthMP1][outputLengthMP1][features_numberMP1],fptype weights[features_numberMP1], fptype output_conv[outputWidthMP1][outputLengthMP1][features_outputMP1]);
void MP1(fptype input[widthMP1][lengthMP1][features_numberMP1],fptype output_MP1[outputWidthMP1][outputLengthMP1][features_numberMP1],fptype weights[features_numberMP1]);
void arch(fptype input[width1][length1][input_depth1],fptype weightsCBS1[filtersize311][filtersize311][input_depth1][features_output1],fptype weightsCBS2[filtersize311][filtersize311][features_output2],fptype weightsCBS3[filtersize311][filtersize311][features_output3],fptype weightsMP1[features_numberMP1],fptype output_MP1[outputWidthMP1][outputLengthMP1][features_numberMP1]);

///////////////////////////////////////////////ELAN1///////////////////////////////////////////////
//Defining Parameters used in ELAN1
#define features_inputCBSELAN1 96
#define features_inputELAN1 24
#define features_numberELAN1 96
#define features_outputELAN1 128
#define widthELAN1 320
#define lengthELAN1 320

//Defining functions implemented in ELAN1
void CBSInput_ELAN1(fptype input[widthELAN1][lengthELAN1][features_inputELAN1],
              fptype weights[filtersize311][filtersize311][features_inputELAN1],
              fptype output_conv[widthELAN1][lengthELAN1][features_inputELAN1]);
void catELAN1(fptype image1[widthELAN1][lengthELAN1][features_inputELAN1],fptype image2[widthELAN1][lengthELAN1][features_inputELAN1],fptype image3[widthELAN1][lengthELAN1][features_inputELAN1],fptype image4[widthELAN1][lengthELAN1][features_inputELAN1],fptype output[widthELAN1][lengthELAN1][features_numberELAN1]);
void CBSELAN1(fptype input[widthELAN1][lengthELAN1][features_inputCBSELAN1],fptype weights[filtersize311][filtersize311][features_outputELAN1], fptype output_conv[widthELAN1][lengthELAN1][features_outputELAN1]);
void ELAN1(fptype image[widthELAN1][lengthELAN1][features_inputELAN1],fptype weights1[filtersize311][filtersize311][features_inputELAN1],fptype weights2[filtersize311][filtersize311][features_inputELAN1], fptype weights3[filtersize311][filtersize311][features_inputELAN1], fptype weights4[filtersize311][filtersize311][features_inputELAN1],fptype weights5[filtersize311][filtersize311][features_inputELAN1],fptype weights6[filtersize311][filtersize311][features_outputELAN1],fptype output[widthELAN1][lengthELAN1][features_outputELAN1]);
#endif // ARCH_H
