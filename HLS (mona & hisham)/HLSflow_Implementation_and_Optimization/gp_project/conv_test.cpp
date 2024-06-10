#include "conv_test.h"
#include <iostream>
#include <cstdlib>



void padding_r_test(int ***im, int ***image_padded) {
    // Initialize padded image to 0
    for (int m = 0; m < input_depth1; m++) {
        for (int i = 0; i < width1 + 2; i++) {
            for (int j = 0; j < length1 + 2; j++) {
                image_padded[i][j][m] = 0;
            }
        }
    }

    // Copy original image into the center of the padded image
    for (int m = 0; m < input_depth1; m++) {
        for (int i = 0; i < width1; i++) {
            for (int j = 0; j < length1; j++) {
                image_padded[i + 1][j + 1][m] = im[i][j][m];
            }
        }
    }
}

void conv_test(int ***image, int ****weights, int ***output_conv) {
    int ***image_padded = (int ***)malloc((width1 + 2) * sizeof(int **));
    for (int i = 0; i < width1 + 2; i++) {
        image_padded[i] = (int **)malloc((length1 + 2) * sizeof(int *));
        for (int j = 0; j < length1 + 2; j++) {
            image_padded[i][j] = (int *)malloc(input_depth1 * sizeof(int)); //assign memory
        }
    }

    padding_r_test(image, image_padded);

    int sum = 0;
    for (int p = 0; p < features_output1; p++) {
        for (int i = 0; i < width1; i++) {
            for (int j = 0; j < length1; j++) {
                sum = 0;
                for (int r = 0; r < filtersize311; r++) {
                    for (int s = 0; s < filtersize311; s++) {
                        for (int d = 0; d < input_depth1; d++) {
                            sum += image_padded[i + r][j + s][d] * weights[r][s][d][p];
                        }
                    }
                }
                output_conv[i][j][p] += sum; // Accumulate sum for each filter
            }
        }
    }

    // Free allocated memory for padded image
    for (int i = 0; i < width1 + 2; i++) {
        for (int j = 0; j < length1 + 2; j++) {
            free(image_padded[i][j]);
        }
        free(image_padded[i]);
    }
    free(image_padded);
}
