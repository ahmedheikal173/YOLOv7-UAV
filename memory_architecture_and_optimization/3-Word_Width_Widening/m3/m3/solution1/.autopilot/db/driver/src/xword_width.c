// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xword_width.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XWord_width_CfgInitialize(XWord_width *InstancePtr, XWord_width_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XWord_width_Start(XWord_width *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XWord_width_IsDone(XWord_width *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XWord_width_IsIdle(XWord_width *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XWord_width_IsReady(XWord_width *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XWord_width_Continue(XWord_width *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XWord_width_EnableAutoRestart(XWord_width *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XWord_width_DisableAutoRestart(XWord_width *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_AP_CTRL, 0);
}

void XWord_width_Set_load(XWord_width *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_LOAD_DATA, Data);
}

u32 XWord_width_Get_load(XWord_width *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_LOAD_DATA);
    return Data;
}

void XWord_width_InterruptGlobalEnable(XWord_width *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_GIE, 1);
}

void XWord_width_InterruptGlobalDisable(XWord_width *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_GIE, 0);
}

void XWord_width_InterruptEnable(XWord_width *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_IER);
    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_IER, Register | Mask);
}

void XWord_width_InterruptDisable(XWord_width *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_IER);
    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_IER, Register & (~Mask));
}

void XWord_width_InterruptClear(XWord_width *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_ISR, Mask);
}

u32 XWord_width_InterruptGetEnabled(XWord_width *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_IER);
}

u32 XWord_width_InterruptGetStatus(XWord_width *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWord_width_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_CONTROL_ADDR_ISR);
}

