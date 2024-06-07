#include <cstdio>
#include "../src/RAM.h"


#define selimg 0
#define selflt 1

int main(int argc, char **argv){

ftype in_flt;
imtype in_img;

//ftype sw_flt_out;
//imtype sw_img_out;

ftype hw_flt_out;
imtype hw_img_out;

//generate input img
for (int k = 0; k < iNUM_DEPTH; k += 1){
    for (int i = 0; i < iNUM_ROWS; i += 1){
      for (int j = 0; j < iNUM_COLS; j += 1){
          in_img[i][j][k]=rand();
    }
  }
}

//generate input flt
for (int k = 0; k < fNUM_DEPTH; k += 1){
    for (int i = 0; i < fNUM_ROWS; i += 1){
      for (int j = 0; j < fNUM_COLS; j += 1){
          in_flt[i][j][k]=rand();
      }
    }
  }


#if selflt
// Generate hw_flt_out
BRAM_filter(in_flt, hw_flt_out, true);
BRAM_filter(in_flt, hw_flt_out, false);

// compare
bool pass = true;
for (int k = 0; k < fNUM_DEPTH; k += 1){
    for (int i = 0; i < fNUM_ROWS; i += 1){
      for (int j = 0; j < fNUM_COLS; j += 1){
          printf("sw= %d, hw= %d\n", in_flt[i][j][k].to_int(), hw_flt_out[i][j][k].to_int());
          pass &= (in_flt[i][j][k] == hw_flt_out[i][j][k]);
      }
    }
  }
#endif    

#if selimg
// Generate hw_flt_out
BRAM_image(in_img, hw_img_out, true);
BRAM_image(in_img, hw_img_out, false);

// compare
bool pass = true;
for (int k = 0; k < iNUM_DEPTH; k += 1){
    for (int i = 0; i < iNUM_ROWS; i += 1){
      for (int j = 0; j < iNUM_COLS; j += 1){
          printf("sw= %d, hw= %d\n", in_img[i][j][k].to_int(), hw_img_out[i][j][k].to_int());
          pass &= (in_img[i][j][k] == hw_img_out[i][j][k]);
      }
    }
  }
#endif


	// Pass or Fail
	if (!pass){
		printf("Test Fail!\n");
		return -1;
	} else {
		printf("Test Pass!\n");
		return 0;
	}

}