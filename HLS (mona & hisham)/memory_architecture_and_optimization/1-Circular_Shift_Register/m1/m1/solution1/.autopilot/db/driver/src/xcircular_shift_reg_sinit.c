// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcircular_shift_reg.h"

extern XCircular_shift_reg_Config XCircular_shift_reg_ConfigTable[];

XCircular_shift_reg_Config *XCircular_shift_reg_LookupConfig(u16 DeviceId) {
	XCircular_shift_reg_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCIRCULAR_SHIFT_REG_NUM_INSTANCES; Index++) {
		if (XCircular_shift_reg_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCircular_shift_reg_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCircular_shift_reg_Initialize(XCircular_shift_reg *InstancePtr, u16 DeviceId) {
	XCircular_shift_reg_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCircular_shift_reg_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCircular_shift_reg_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

