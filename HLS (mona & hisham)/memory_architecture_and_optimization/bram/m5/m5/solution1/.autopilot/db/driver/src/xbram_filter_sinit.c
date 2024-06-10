// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xbram_filter.h"

extern XBram_filter_Config XBram_filter_ConfigTable[];

XBram_filter_Config *XBram_filter_LookupConfig(u16 DeviceId) {
	XBram_filter_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBRAM_FILTER_NUM_INSTANCES; Index++) {
		if (XBram_filter_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBram_filter_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBram_filter_Initialize(XBram_filter *InstancePtr, u16 DeviceId) {
	XBram_filter_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBram_filter_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBram_filter_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

