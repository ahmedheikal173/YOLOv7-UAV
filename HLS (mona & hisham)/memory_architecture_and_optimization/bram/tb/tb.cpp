#include <cstdio>
#include "../src/RAM.h"


#define selimg 0
#define selflt 1

int main(int argc, char **argv){


ap_int<8> in_flt[fNUM_WORDS] ;
ap_int<8> in_img[iNUM_WORDS] ;

//ftype sw_flt_out;
//imtype sw_img_out;

ap_int<8> hw_flt_out[fNUM_WORDS];
ap_int<8> hw_img_out[iNUM_WORDS];

//generate input img
for (int i = 0; i < iNUM_WORDS; i += 1){
          in_img[i]=rand();
  
}

//generate input flt
    for (int i = 0; i < fNUM_WORDS; i += 1){
          in_flt[i]=rand();
      
    }
  


#if selflt
// Generate hw_flt_out
BRAM_filter(in_flt, hw_flt_out, true);
BRAM_filter(in_flt, hw_flt_out, false);

// compare
bool pass = true;
    for (int i = 0; i < fNUM_WORDS; i += 1){
          printf("sw= %d, hw= %d\n", in_flt[i].to_int(), hw_flt_out[i].to_int());
          pass &= (in_flt[i] == hw_flt_out[i]);
    
    }

#endif    

#if selimg
// Generate hw_flt_out
BRAM_image(in_img, hw_img_out, true);
BRAM_image(in_img, hw_img_out, false);

// compare
bool pass = true;
    for (int i = 0; i < iNUM_WORDS; i += 1){
          printf("sw= %d, hw= %d\n", in_img[i].to_int(), hw_img_out[i].to_int());
          pass &= (in_img[i] == hw_img_out[i]);
      
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