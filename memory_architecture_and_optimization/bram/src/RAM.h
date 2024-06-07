#include "./BRAM_flt.hpp"
#include "./BRAM_img.hpp"

#define fADDRESS_BITWIDTH 12
#define fNUM_ROWS 9
#define fNUM_COLS 9
#define fNUM_DEPTH 44
#define fNUM_WORDS 3564

typedef ap_int<8>  ftype[fNUM_ROWS][fNUM_COLS][fNUM_DEPTH];




#define iADDRESS_BITWIDTH 21
#define iNUM_ROWS 640
#define iNUM_COLS 640
#define iNUM_DEPTH 3
#define iNUM_WORDS 1228800

typedef ap_int<8>  imtype[iNUM_ROWS][iNUM_COLS][iNUM_DEPTH];




void BRAM_filter(ftype x_in, ftype out, bool load);
void BRAM_image(imtype x_in, imtype out, bool load);