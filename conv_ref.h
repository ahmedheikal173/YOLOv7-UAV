#ifndef CONV_REF_H
#define CONV_REF_H
#include <cmath>
#include <iostream>
#include "ap_fixed.h"
typedef ap_fixed <8, 0> fptype; // Example: 16 total bits with 8 fractional bits

// Define the fixed-point type
// Define the dimensions of the matrices

// Define the data types for matrices
#define width1 5
#define length1 5
#define filtersize311 3
#define input_depth1 3
#define features_output1 2

void conv_ref(fptype image[width1][length1][input_depth1], fptype weights[filtersize311][filtersize311][input_depth1][features_output1], fptype output_conv[width1][length1][features_output1],fptype image_padded[7][7][input_depth1]) ;
#endif // CONV_INT_H
