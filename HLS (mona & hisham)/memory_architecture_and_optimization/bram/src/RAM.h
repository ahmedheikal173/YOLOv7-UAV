#include "./BRAM_flt.hpp"
#include "./BRAM_img.hpp"

#define fADDRESS_BITWIDTH 9
#define fNUM_ROWS 3
#define fNUM_COLS 3
#define fNUM_DEPTH 44
#define fNUM_WORDS 396

typedef ap_int<8>  ftype[fNUM_ROWS][fNUM_COLS][fNUM_DEPTH];




#define iADDRESS_BITWIDTH 21
#define iNUM_ROWS 640
#define iNUM_COLS 640
#define iNUM_DEPTH 3
#define iNUM_WORDS 1228800

typedef ap_int<8>  imtype[iNUM_ROWS][iNUM_COLS][iNUM_DEPTH];




void BRAM_filter(ap_int<8> x_in[fNUM_WORDS], ap_int<8> out[fNUM_WORDS], bool load);
void BRAM_image(ap_int<8> x_in[iNUM_WORDS], ap_int<8> out[iNUM_WORDS], bool load);