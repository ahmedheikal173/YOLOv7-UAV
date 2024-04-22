#include "arch.h"

void MaxPoolingMP1(fptype image[widthMP1][lengthMP1][features_numberMP1], fptype output[outputWidthMP1][outputLengthMP1][features_numberMP1])
{
	fptype max=0;
	int l=0;
	int k=0;
	for(int p=0;p<features_numberMP1;p++)
	{
		l=0;
		k=0;
		for(int i=0;i<widthMP1;i=i+2)
		{
			for(int j=0;j<lengthMP1;j=j+2)
			{
				max=0;
				MaxPoolingMP1_label4:for(int r=0;r<filtersizeofMP;r++)
				{
					for(int s=0;s<filtersizeofMP;s++)
					{   	if(image[i+r][j+s][p]>max)
							max=image[i+r][j+s][p];
					}
				}
				output[l][k][p] = max; // Accumulate sum for each filter
				k++;
			}
			k=0;
			l++;

		}
	}
}
