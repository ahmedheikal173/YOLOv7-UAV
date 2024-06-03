// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xwindow_avg.h"

extern XWindow_avg_Config XWindow_avg_ConfigTable[];

XWindow_avg_Config *XWindow_avg_LookupConfig(u16 DeviceId) {
	XWindow_avg_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XWINDOW_AVG_NUM_INSTANCES; Index++) {
		if (XWindow_avg_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XWindow_avg_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XWindow_avg_Initialize(XWindow_avg *InstancePtr, u16 DeviceId) {
	XWindow_avg_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XWindow_avg_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XWindow_avg_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

