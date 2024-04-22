#include <iostream>
#include <string>
#include "arch.h"
#include <fstream>
#include <stdio.h>
#include <stdlib.h>

using namespace std;
void load_filter(int filter[features_numberMP1])
{
	ifstream file("C:/Users/DELL/AppData/Roaming/Xilinx/Vivado/gp_project/filteConvMp1.txt");
	string value;
	for(int m=0;m<features_outputMP1;++m)
	{
		        file >>value;
				filter[m]=stof(value);
	}
//	file.close();
}
void load_image(int im[outputWidthMP1][outputLengthMP1][features_numberMP1])
{
	ifstream file("C:/Users/DELL/AppData/Roaming/Xilinx/Vivado/gp_project/imageConvMp1.txt");
	string value;
	for(int i=0;i<features_numberMP1;i++)
	{
		for(int j=0;j<outputWidthMP1;j++)
		{
			for(int k=0;k<outputLengthMP1;k++)
			{
				file>>value;
				im[j][k][i]=stof(value);
			}
		}
	}
//	file.close();
}

int main()
{
	int imageInput[5][5][2]={};
	//int image_padded[7][7][3]={};
	int output_conv[outputWidthMP1][outputLengthMP1][features_outputMP1]={};
	int filter[features_outputMP1]={};
	load_filter(filter);
	load_image(imageInput);

    //padding(imageInput,image_padded);
	convMP1(imageInput,filter,output_conv);
	for(int m=0;m<features_inputMP1;m++)
		{
				cout<<filter[m]<<" ";

			cout<<endl;
		}

	//int image_padded[7][7][2] = {0};
	//image_padded={0};

	/*for(int m=0;m<features_output1;m++)
		{
		for(int i=0;i<input_depth1;i++)
		{
			for(int j=0;j<3;j++)
			{
				for(int k=0;k<3;k++)
				{
					cout<<filter[j][k][i][m]<<" ";
				}
				cout<<endl;
			}
			cout<<endl;
		}
		}*/
	return 0;
}
