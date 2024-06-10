#ifndef CONV_REF_H
#define CONV_REF_H
#include <cmath>
#include <iostream>
#include "ap_fixed.h"

// Define the fixed-point type
typedef ap_fixed <8, 0> fptype; // Example: 16 total bits with 8 fractional bits

// Define the dimensions of the matrices
#define width1 640
#define length1 640
#define filtersize311 3
#define input_depth1 3
#define features_output1 2

//Defining Function conv_ref that contains kernal=3, stride=1, padding=1

void conv_ref(fptype image[width1][length1][input_depth1], fptype weights[filtersize311][filtersize311][input_depth1][features_output1], fptype output_conv[width1][length1][features_output1]) ;
#endif // CONV_INT_H
