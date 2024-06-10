// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xword_width_manual.h"

extern XWord_width_manual_Config XWord_width_manual_ConfigTable[];

XWord_width_manual_Config *XWord_width_manual_LookupConfig(u16 DeviceId) {
	XWord_width_manual_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XWORD_WIDTH_MANUAL_NUM_INSTANCES; Index++) {
		if (XWord_width_manual_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XWord_width_manual_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XWord_width_manual_Initialize(XWord_width_manual *InstancePtr, u16 DeviceId) {
	XWord_width_manual_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XWord_width_manual_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XWord_width_manual_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

