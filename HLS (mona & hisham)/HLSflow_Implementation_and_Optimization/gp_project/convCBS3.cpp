#include "arch.h"

void convCBS3(fptype input[width3][length3][features_input3],
              fptype weights[filtersize311][filtersize311][features_output3],
              fptype output_conv[width3][length3][features_output3]) {

    fptype sum = 0;

    conv_ref_label3:for (int p = 0; p < features_output3; p++) {
        for (int i = 0; i < width3; i++) {
            for (int j = 0; j < length3; j++) {
                sum = 0;
                conv_ref_label2:for (int r = 0; r < filtersize311; r++) {
                    int row = i + r - 1; // account for padding
                    conv_ref_label1:for (int s = 0; s < filtersize311; s++) {
                        int col = j + s - 1; // account for padding
                        convCBS3_label0:for (int d = 0; d < features_input3; d++) {
                            fptype padded_val;
                            if (row < 0 || row >= width3 || col < 0 || col >= length3) {
                                padded_val = 0; // Padding value
                            } else {
                                padded_val = input[row][col][d];
                            }
                            sum += padded_val * weights[r][s][p];
                        }
                    }
                }
                output_conv[i][j][p] += sum; // Accumulate sum for each filter
            }
        }
    }
}
