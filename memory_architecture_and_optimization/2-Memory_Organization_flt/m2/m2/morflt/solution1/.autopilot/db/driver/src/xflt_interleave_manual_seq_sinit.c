// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xflt_interleave_manual_seq.h"

extern XFlt_interleave_manual_seq_Config XFlt_interleave_manual_seq_ConfigTable[];

XFlt_interleave_manual_seq_Config *XFlt_interleave_manual_seq_LookupConfig(u16 DeviceId) {
	XFlt_interleave_manual_seq_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFLT_INTERLEAVE_MANUAL_SEQ_NUM_INSTANCES; Index++) {
		if (XFlt_interleave_manual_seq_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFlt_interleave_manual_seq_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFlt_interleave_manual_seq_Initialize(XFlt_interleave_manual_seq *InstancePtr, u16 DeviceId) {
	XFlt_interleave_manual_seq_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFlt_interleave_manual_seq_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFlt_interleave_manual_seq_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

