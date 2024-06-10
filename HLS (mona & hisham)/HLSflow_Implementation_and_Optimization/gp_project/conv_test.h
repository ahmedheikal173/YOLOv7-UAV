#ifndef CONV_TEST_H
#define CONV_TEST_H

#include <cmath>
#include <iostream>
#include <ap_fixed.h>

// Define the fixed-point type
typedef ap_fixed<8, 0> fptype; // Example: 16 total bits with 8 fractional bits
// Define the data types for matrices
#define width1 640
#define length1 640
#define filtersize311 3
#define input_depth1 1
#define features_output1 1

//This Functions are used to enable reading a large matrix 640x640 and be able to test convolutional layer
void conv_test(int ***image, int ****weights, int ***output_conv);
void padding_r_test(int ***im, int ***image_padded);

#endif // CONV_TEST_H
