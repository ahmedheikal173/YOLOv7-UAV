#include "arch.h"

void convCBS2(fptype input[outputWidth2][outputLength2][features_input2],fptype weights[filtersize311][filtersize311][features_output2], fptype output_conv[outputWidth2][outputLength2][features_output2])
{

    fptype sum = 0;

    conv_ref_label3:for (int p = 0; p < features_output2; p++) {
        for (int i = 0; i < outputWidth2; i++) {
            for (int j = 0; j < outputLength2; j++) {
                sum = 0;
                conv_ref_label2:for (int r = 0; r < filtersize311; r++) {
                    int row = i + r - 1; // account for padding
                    conv_ref_label1:for (int s = 0; s < filtersize311; s++) {
                        int col = j + s - 1; // account for padding
                        convCBS2_label0:for (int d = 0; d < features_input2; d++) {
                            fptype padded_val;
                            if (row < 0 || row >= outputWidth2 || col < 0 || col >= outputLength2) {
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
