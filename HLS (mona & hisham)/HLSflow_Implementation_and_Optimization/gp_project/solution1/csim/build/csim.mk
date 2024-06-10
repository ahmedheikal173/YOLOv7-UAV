# ==============================================================
# File generated on Thu Jun 06 03:12:11 +0200 2024
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../CBS1_tb.cpp ../../../CBS1.cpp ../../../CBS2.cpp ../../../CBS3.cpp ../../../CBSELAN1.cpp ../../../CBSInput_ELAN1.cpp ../../../ELAN1.cpp ../../../LRN.cpp ../../../LRNCBS2.cpp ../../../LRNCBS3.cpp ../../../MP1.cpp ../../../MaxPoolingMP1.cpp ../../../catELAN1.cpp ../../../conv1_test.cpp ../../../convCBS2.cpp ../../../convCBS3.cpp ../../../convMP1.cpp ../../../conv_ref.cpp ../../../conv_test.cpp ../../../maxpooling.cpp ../../../relu.cpp ../../../reluCBS2.cpp ../../../reluCBS3.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := F:/xilinx-/Vivado/2018.3
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := F:/xilinx-/Vivado/2018.3/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += 
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/CBS1_tb.o: ../../../CBS1_tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../CBS1_tb.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/CBS1_tb.d

$(ObjDir)/CBS1.o: ../../../CBS1.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../CBS1.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/CBS1.d

$(ObjDir)/CBS2.o: ../../../CBS2.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../CBS2.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/CBS2.d

$(ObjDir)/CBS3.o: ../../../CBS3.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../CBS3.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/CBS3.d

$(ObjDir)/CBSELAN1.o: ../../../CBSELAN1.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../CBSELAN1.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/CBSELAN1.d

$(ObjDir)/CBSInput_ELAN1.o: ../../../CBSInput_ELAN1.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../CBSInput_ELAN1.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/CBSInput_ELAN1.d

$(ObjDir)/ELAN1.o: ../../../ELAN1.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../ELAN1.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/ELAN1.d

$(ObjDir)/LRN.o: ../../../LRN.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../LRN.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/LRN.d

$(ObjDir)/LRNCBS2.o: ../../../LRNCBS2.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../LRNCBS2.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/LRNCBS2.d

$(ObjDir)/LRNCBS3.o: ../../../LRNCBS3.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../LRNCBS3.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/LRNCBS3.d

$(ObjDir)/MP1.o: ../../../MP1.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../MP1.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/MP1.d

$(ObjDir)/MaxPoolingMP1.o: ../../../MaxPoolingMP1.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../MaxPoolingMP1.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/MaxPoolingMP1.d

$(ObjDir)/catELAN1.o: ../../../catELAN1.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../catELAN1.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/catELAN1.d

$(ObjDir)/conv1_test.o: ../../../conv1_test.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../conv1_test.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/conv1_test.d

$(ObjDir)/convCBS2.o: ../../../convCBS2.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../convCBS2.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/convCBS2.d

$(ObjDir)/convCBS3.o: ../../../convCBS3.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../convCBS3.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/convCBS3.d

$(ObjDir)/convMP1.o: ../../../convMP1.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../convMP1.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/convMP1.d

$(ObjDir)/conv_ref.o: ../../../conv_ref.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../conv_ref.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/conv_ref.d

$(ObjDir)/conv_test.o: ../../../conv_test.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../conv_test.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/conv_test.d

$(ObjDir)/maxpooling.o: ../../../maxpooling.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../maxpooling.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/maxpooling.d

$(ObjDir)/relu.o: ../../../relu.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../relu.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/relu.d

$(ObjDir)/reluCBS2.o: ../../../reluCBS2.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../reluCBS2.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/reluCBS2.d

$(ObjDir)/reluCBS3.o: ../../../reluCBS3.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../reluCBS3.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/reluCBS3.d
