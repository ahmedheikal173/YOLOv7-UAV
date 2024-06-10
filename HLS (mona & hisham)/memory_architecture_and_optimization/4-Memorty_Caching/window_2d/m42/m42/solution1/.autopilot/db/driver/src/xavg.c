// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xavg.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAvg_CfgInitialize(XAvg *InstancePtr, XAvg_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAvg_Start(XAvg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAvg_ReadReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAvg_WriteReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAvg_IsDone(XAvg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAvg_ReadReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAvg_IsIdle(XAvg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAvg_ReadReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAvg_IsReady(XAvg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAvg_ReadReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAvg_Continue(XAvg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAvg_ReadReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAvg_WriteReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XAvg_EnableAutoRestart(XAvg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAvg_WriteReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAvg_DisableAutoRestart(XAvg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAvg_WriteReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_AP_CTRL, 0);
}

void XAvg_InterruptGlobalEnable(XAvg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAvg_WriteReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_GIE, 1);
}

void XAvg_InterruptGlobalDisable(XAvg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAvg_WriteReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_GIE, 0);
}

void XAvg_InterruptEnable(XAvg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAvg_ReadReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_IER);
    XAvg_WriteReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_IER, Register | Mask);
}

void XAvg_InterruptDisable(XAvg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAvg_ReadReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_IER);
    XAvg_WriteReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAvg_InterruptClear(XAvg *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAvg_WriteReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_ISR, Mask);
}

u32 XAvg_InterruptGetEnabled(XAvg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAvg_ReadReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_IER);
}

u32 XAvg_InterruptGetStatus(XAvg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAvg_ReadReg(InstancePtr->Control_BaseAddress, XAVG_CONTROL_ADDR_ISR);
}

