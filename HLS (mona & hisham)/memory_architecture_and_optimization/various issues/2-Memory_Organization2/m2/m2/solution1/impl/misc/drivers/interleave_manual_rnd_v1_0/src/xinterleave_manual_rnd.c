// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xinterleave_manual_rnd.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XInterleave_manual_rnd_CfgInitialize(XInterleave_manual_rnd *InstancePtr, XInterleave_manual_rnd_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XInterleave_manual_rnd_Start(XInterleave_manual_rnd *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL) & 0x80;
    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XInterleave_manual_rnd_IsDone(XInterleave_manual_rnd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XInterleave_manual_rnd_IsIdle(XInterleave_manual_rnd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XInterleave_manual_rnd_IsReady(XInterleave_manual_rnd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XInterleave_manual_rnd_Continue(XInterleave_manual_rnd *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL) & 0x80;
    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XInterleave_manual_rnd_EnableAutoRestart(XInterleave_manual_rnd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XInterleave_manual_rnd_DisableAutoRestart(XInterleave_manual_rnd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL, 0);
}

void XInterleave_manual_rnd_Set_load(XInterleave_manual_rnd *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_LOAD_DATA, Data);
}

u32 XInterleave_manual_rnd_Get_load(XInterleave_manual_rnd *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_LOAD_DATA);
    return Data;
}

void XInterleave_manual_rnd_InterruptGlobalEnable(XInterleave_manual_rnd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_GIE, 1);
}

void XInterleave_manual_rnd_InterruptGlobalDisable(XInterleave_manual_rnd *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_GIE, 0);
}

void XInterleave_manual_rnd_InterruptEnable(XInterleave_manual_rnd *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_IER);
    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_IER, Register | Mask);
}

void XInterleave_manual_rnd_InterruptDisable(XInterleave_manual_rnd *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_IER);
    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_IER, Register & (~Mask));
}

void XInterleave_manual_rnd_InterruptClear(XInterleave_manual_rnd *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInterleave_manual_rnd_WriteReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_ISR, Mask);
}

u32 XInterleave_manual_rnd_InterruptGetEnabled(XInterleave_manual_rnd *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_IER);
}

u32 XInterleave_manual_rnd_InterruptGetStatus(XInterleave_manual_rnd *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInterleave_manual_rnd_ReadReg(InstancePtr->Control_BaseAddress, XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_ISR);
}

