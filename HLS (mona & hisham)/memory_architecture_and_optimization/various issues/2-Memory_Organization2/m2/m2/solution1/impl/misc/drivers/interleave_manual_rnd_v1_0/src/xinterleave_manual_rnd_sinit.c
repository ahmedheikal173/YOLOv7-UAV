// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xinterleave_manual_rnd.h"

extern XInterleave_manual_rnd_Config XInterleave_manual_rnd_ConfigTable[];

XInterleave_manual_rnd_Config *XInterleave_manual_rnd_LookupConfig(u16 DeviceId) {
	XInterleave_manual_rnd_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XINTERLEAVE_MANUAL_RND_NUM_INSTANCES; Index++) {
		if (XInterleave_manual_rnd_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XInterleave_manual_rnd_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XInterleave_manual_rnd_Initialize(XInterleave_manual_rnd *InstancePtr, u16 DeviceId) {
	XInterleave_manual_rnd_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XInterleave_manual_rnd_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XInterleave_manual_rnd_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

