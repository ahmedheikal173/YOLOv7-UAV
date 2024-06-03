#include "./shift_reg.h"
#include "./circular_shift.h"


void circular_shift_reg(dType din, dType dout[N_REGS]) {

  static circular_shift<dType, N_REGS> regs;

SHIFT:
  regs << din;

WRITE:
  for (int i = 0; i < N_REGS; i++) {
	dout[i] = regs[i];
  }
}
