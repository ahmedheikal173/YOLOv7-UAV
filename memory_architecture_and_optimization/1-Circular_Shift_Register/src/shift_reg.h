#ifndef __SHIFT_REG_H__
#define __SHIFT_REG_H__

//#define N_REGS 16 
#define N_REGS 8
// #define N_REGS 1228800 //1228800 = 640*640*3 pixels/mem locations
//#define N_REGS 9830400 //9830400 = 640*640*3 pixels * 8 bits

//#define N_REGS 2097152 //2^21, 1228800 = 640*640*3 pixels/mem locations
//#define N_REGS 16777216 //9830400 = 640*640*3 pixels * 8 bits

typedef int dType;

void circular_shift_reg(dType din, dType dout[N_REGS]);

#endif
