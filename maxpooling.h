#ifndef MAXPOOLING_H
#define MAXPOOLING_H
#include <cmath>
#include "ap_fixed.h"
typedef ap_fixed <8,0,AP_RND> fptype;
using namespace std;
// Define the dimensions of the matrices

// Define the data types for matrices
#define width1 6
#define length1 6
#define filtersize 2
#define features_number1 2
#define width_output1 3
#define length_output1 3
void maxpooling(int image[width1][length1][features_number1],int output[width_output1][length_output1][features_number1]);
#endif // MAXPOOLING_H
