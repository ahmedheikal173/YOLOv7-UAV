#include <iostream>
#include <string>
#include <fstream>
#include <cstdlib>
#include "conv_test.h"

using namespace std;

//Reading filter from text file
void load_filter(int ****filter) {
    ifstream file("C:/Users/DELL/AppData/Roaming/Xilinx/Vivado/gp_project/filter.txt");
    string value;
    for (int m = 0; m < 1; ++m) {
        for (int k = 0; k < 1; k++) {
            for (int i = 0; i < filtersize311; i++) {
                for (int j = 0; j < filtersize311; j++) {
                    file >> value;
                    filter[i][j][k][m] = stoi(value); // Change stof to stoi if values are integers
                }
            }
        }
    }
}

//Reading image from text file
void load_image(int ***im) {
    ifstream file("C:/Users/DELL/AppData/Roaming/Xilinx/Vivado/gp_project/mem_640x640.txt");
    string value;
    for (int i = 0; i < 1; i++) {
        for (int j = 0; j < width1; j++) {
            for (int k = 0; k < length1; k++) {
                file >> value;
                im[j][k][i] = stoi(value); // Change stof to stoi if values are integers
            }
        }
    }
}

//writing the output to a text file
void write_output_to_file(int ***output_conv) {
    ofstream outputFile("C:/Users/DELL/AppData/Roaming/Xilinx/Vivado/gp_project/output_CBS1.txt");
    if (!outputFile.is_open()) {
        cout << "Error opening output_conv.txt for writing!" << endl;
        return;
    }

    for (int m = 0; m < 1; ++m) {
        for (int i = 0; i < width1; ++i) {
            for (int j = 0; j < length1; ++j) {
                outputFile << output_conv[i][j][m] << " ";
            }
            outputFile << endl;
        }
        outputFile << endl;
    }

    outputFile.close();
}

void print_image(int ***image, int width, int length, int depth) {
    for (int m = 0; m < depth; ++m) {
        for (int i = 0; i < width; ++i) {
            for (int j = 0; j < length; ++j) {
                cout << image[i][j][m] << " ";
            }
            cout << endl;
        }
        cout << endl;
    }
}

void print_output(int ***output, int width, int length, int depth) {
    for (int m = 0; m < depth; ++m) {
        for (int i = 0; i < width; ++i) {
            for (int j = 0; j < length; ++j) {
                cout << output[i][j][m] << " ";
            }
            cout << endl;
        }
        cout << endl;
    }
}

int main() {
    // Allocate memory for image, filter, and output_conv
    int ***imageInput = (int ***)malloc(width1 * sizeof(int **));
    for (int i = 0; i < width1; i++) {
        imageInput[i] = (int **)malloc(length1 * sizeof(int *));
        for (int j = 0; j < length1; j++) {
            imageInput[i][j] = (int *)malloc(input_depth1 * sizeof(int));
        }
    }

    int ***output_conv = (int ***)malloc(width1 * sizeof(int **));
    for (int i = 0; i < width1; i++) {
        output_conv[i] = (int **)malloc(length1 * sizeof(int *));
        for (int j = 0; j < length1; j++) {
            output_conv[i][j] = (int *)malloc(features_output1 * sizeof(int));
            // Initialize output_conv to 0
            for (int k = 0; k < features_output1; k++) {
                output_conv[i][j][k] = 0;
            }
        }
    }

    int ****filter = (int ****)malloc(filtersize311 * sizeof(int ***));
    for (int i = 0; i < filtersize311; i++) {
        filter[i] = (int ***)malloc(filtersize311 * sizeof(int **));
        for (int j = 0; j < filtersize311; j++) {
            filter[i][j] = (int **)malloc(input_depth1 * sizeof(int *));
            for (int k = 0; k < input_depth1; k++) {
                filter[i][j][k] = (int *)malloc(features_output1 * sizeof(int));
            }
        }
    }

    // Load filter and image from files
    load_filter(filter);
    load_image(imageInput);

    // Print the loaded image
    cout << "Loaded Image:" << endl;
    print_image(imageInput, width1, length1, input_depth1);

    // Perform convolution
    conv_test(imageInput, filter, output_conv);

    // Write the output_conv array to a file
    write_output_to_file(output_conv);

    // Print the convolution output
    cout << "Convolution Output:" << endl;
    print_output(output_conv, width1, length1, features_output1);

    // Free allocated memory for imageInput
    for (int i = 0; i < width1; i++) {
        for (int j = 0; j < length1; j++) {
            free(imageInput[i][j]);
        }
        free(imageInput[i]);
    }
    free(imageInput);

    // Free allocated memory for output_conv
    for (int i = 0; i < width1; i++) {
        for (int j = 0; j < length1; j++) {
            free(output_conv[i][j]);
        }
        free(output_conv[i]);
    }
    free(output_conv);

    // Free allocated memory for filter
    for (int i = 0; i < filtersize311; i++) {
        for (int j = 0; j < filtersize311; j++) {
            for (int k = 0; k < input_depth1; k++) {
                free(filter[i][j][k]);
            }
            free(filter[i][j]);
        }
        free(filter[i]);
    }
    free(filter);

    return 0;
}
