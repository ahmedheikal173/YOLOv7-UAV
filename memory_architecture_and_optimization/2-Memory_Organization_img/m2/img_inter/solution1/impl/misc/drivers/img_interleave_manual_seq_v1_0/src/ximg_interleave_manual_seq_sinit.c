// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "ximg_interleave_manual_seq.h"

extern XImg_interleave_manual_seq_Config XImg_interleave_manual_seq_ConfigTable[];

XImg_interleave_manual_seq_Config *XImg_interleave_manual_seq_LookupConfig(u16 DeviceId) {
	XImg_interleave_manual_seq_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XIMG_INTERLEAVE_MANUAL_SEQ_NUM_INSTANCES; Index++) {
		if (XImg_interleave_manual_seq_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XImg_interleave_manual_seq_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XImg_interleave_manual_seq_Initialize(XImg_interleave_manual_seq *InstancePtr, u16 DeviceId) {
	XImg_interleave_manual_seq_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XImg_interleave_manual_seq_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XImg_interleave_manual_seq_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

