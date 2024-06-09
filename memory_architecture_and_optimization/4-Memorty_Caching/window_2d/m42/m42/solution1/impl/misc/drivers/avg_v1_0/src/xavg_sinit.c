// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xavg.h"

extern XAvg_Config XAvg_ConfigTable[];

XAvg_Config *XAvg_LookupConfig(u16 DeviceId) {
	XAvg_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAVG_NUM_INSTANCES; Index++) {
		if (XAvg_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAvg_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAvg_Initialize(XAvg *InstancePtr, u16 DeviceId) {
	XAvg_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAvg_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAvg_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

