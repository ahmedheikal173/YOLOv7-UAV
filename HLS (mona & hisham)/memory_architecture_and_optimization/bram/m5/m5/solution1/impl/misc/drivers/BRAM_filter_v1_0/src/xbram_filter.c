// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xbram_filter.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBram_filter_CfgInitialize(XBram_filter *InstancePtr, XBram_filter_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBram_filter_Start(XBram_filter *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBram_filter_IsDone(XBram_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBram_filter_IsIdle(XBram_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBram_filter_IsReady(XBram_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBram_filter_Continue(XBram_filter *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XBram_filter_EnableAutoRestart(XBram_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XBram_filter_DisableAutoRestart(XBram_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_AP_CTRL, 0);
}

void XBram_filter_Set_load(XBram_filter *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_LOAD_DATA, Data);
}

u32 XBram_filter_Get_load(XBram_filter *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_LOAD_DATA);
    return Data;
}

void XBram_filter_InterruptGlobalEnable(XBram_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_GIE, 1);
}

void XBram_filter_InterruptGlobalDisable(XBram_filter *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_GIE, 0);
}

void XBram_filter_InterruptEnable(XBram_filter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_IER);
    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_IER, Register | Mask);
}

void XBram_filter_InterruptDisable(XBram_filter *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_IER);
    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XBram_filter_InterruptClear(XBram_filter *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBram_filter_WriteReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_ISR, Mask);
}

u32 XBram_filter_InterruptGetEnabled(XBram_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_IER);
}

u32 XBram_filter_InterruptGetStatus(XBram_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBram_filter_ReadReg(InstancePtr->Control_BaseAddress, XBRAM_FILTER_CONTROL_ADDR_ISR);
}

