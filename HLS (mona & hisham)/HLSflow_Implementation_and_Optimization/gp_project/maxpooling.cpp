#include "arch.h"

void maxpooling(fptype image[width2][length2][features_number2], fptype output[outputWidth2][outputLength2][features_number2])
{
	//Take the most important pixels to downsample its dimensions
	fptype max=0;
	int l=0;
	int k=0;
	for(int p=0;p<features_number2;p++)
	{
		l=0;
		k=0;
		for(int i=0;i<width2;i=i+2)
		{
			for(int j=0;j<length2;j=j+2)
			{
				max=0;
				for(int r=0;r<filtersizeofMP;r++)
				{
					maxpooling_label2:for(int s=0;s<filtersizeofMP;s++)
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
