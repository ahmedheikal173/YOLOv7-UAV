#include "arch.h"

//Concatenation is done by defining an output with number of feature maps equal to the summation of feature maps of all input
void catELAN1(fptype image1[widthELAN1][lengthELAN1][features_inputELAN1],
              fptype image2[widthELAN1][lengthELAN1][features_inputELAN1],
              fptype image3[widthELAN1][lengthELAN1][features_inputELAN1],
              fptype image4[widthELAN1][lengthELAN1][features_inputELAN1],
              fptype output[widthELAN1][lengthELAN1][features_numberELAN1]) {
    // Concatenate image1
    for (int m = 0; m < features_inputELAN1; m++) {
        for (int i = 0; i < widthELAN1; i++) {
            catELAN1_label3:for (int j = 0; j < lengthELAN1; j++) {
                output[i][j][m] = image1[i][j][m];
            }
        }
    }

    // Concatenate image2
    for (int m = 0; m < features_inputELAN1; m++) {
        for (int i = 0; i < widthELAN1; i++) {
            catELAN1_label2:for (int j = 0; j < lengthELAN1; j++) {
                output[i][j][m + features_inputELAN1] = image2[i][j][m];
            }
        }
    }

    // Concatenate image3
    for (int m = 0; m < features_inputELAN1; m++) {
        for (int i = 0; i < widthELAN1; i++) {
            catELAN1_label1:for (int j = 0; j < lengthELAN1; j++) {
                output[i][j][m + 2 * features_inputELAN1] = image3[i][j][m];
            }
        }
    }

    // Concatenate image4
    for (int m = 0; m < features_inputELAN1; m++) {
        for (int i = 0; i < widthELAN1; i++) {
            catELAN1_label0:for (int j = 0; j < lengthELAN1; j++) {
                output[i][j][m + 3 * features_inputELAN1] = image4[i][j][m];
            }
        }
    }
}
