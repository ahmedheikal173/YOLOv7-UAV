#ifndef LRN_H
#define LRN_H

#include "ap_fixed.h"
using namespace std;
typedef ap_fixed <8,0,AP_RND> fptype;
// Define the dimensions of the matrices
#define features_number1 24
#define width1 640
#define length1 640
// Define the data types for matrices
void LRN(fptype input[width1][length1][features_number1],fptype output_LRN[width1][length1][features_number1]);
int max(int a,int b);
int min(int a,int b);
#endif // NL_H
