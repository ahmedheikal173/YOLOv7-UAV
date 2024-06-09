// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xinterleave.h"

extern XInterleave_Config XInterleave_ConfigTable[];

XInterleave_Config *XInterleave_LookupConfig(u16 DeviceId) {
	XInterleave_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XINTERLEAVE_NUM_INSTANCES; Index++) {
		if (XInterleave_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XInterleave_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XInterleave_Initialize(XInterleave *InstancePtr, u16 DeviceId) {
	XInterleave_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XInterleave_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XInterleave_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

