// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xinterleave.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XInterleave_CfgInitialize(XInterleave *InstancePtr, XInterleave_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XInterleave_Start(XInterleave *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XInterleave_IsDone(XInterleave *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XInterleave_IsIdle(XInterleave *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XInterleave_IsReady(XInterleave *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XInterleave_Continue(XInterleave *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XInterleave_EnableAutoRestart(XInterleave *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XInterleave_DisableAutoRestart(XInterleave *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_AP_CTRL, 0);
}

void XInterleave_Set_load(XInterleave *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_LOAD_DATA, Data);
}

u32 XInterleave_Get_load(XInterleave *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_LOAD_DATA);
    return Data;
}

void XInterleave_InterruptGlobalEnable(XInterleave *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_GIE, 1);
}

void XInterleave_InterruptGlobalDisable(XInterleave *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_GIE, 0);
}

void XInterleave_InterruptEnable(XInterleave *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_IER);
    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_IER, Register | Mask);
}

void XInterleave_InterruptDisable(XInterleave *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_IER);
    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XInterleave_InterruptClear(XInterleave *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_ISR, Mask);
}

u32 XInterleave_InterruptGetEnabled(XInterleave *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_IER);
}

u32 XInterleave_InterruptGetStatus(XInterleave *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInterleave_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_CONTROL_ADDR_ISR);
}

