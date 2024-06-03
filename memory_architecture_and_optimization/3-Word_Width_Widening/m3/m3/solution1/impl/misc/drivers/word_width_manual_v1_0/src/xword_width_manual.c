// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xword_width_manual.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XWord_width_manual_CfgInitialize(XWord_width_manual *InstancePtr, XWord_width_manual_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XWord_width_manual_Start(XWord_width_manual *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XWord_width_manual_IsDone(XWord_width_manual *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XWord_width_manual_IsIdle(XWord_width_manual *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XWord_width_manual_IsReady(XWord_width_manual *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XWord_width_manual_Continue(XWord_width_manual *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XWord_width_manual_EnableAutoRestart(XWord_width_manual *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XWord_width_manual_DisableAutoRestart(XWord_width_manual *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_AP_CTRL, 0);
}

void XWord_width_manual_Set_x_in(XWord_width_manual *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_X_IN_DATA, (u32)(Data));
    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_X_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XWord_width_manual_Get_x_in(XWord_width_manual *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_X_IN_DATA);
    Data += (u64)XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_X_IN_DATA + 4) << 32;
    return Data;
}

void XWord_width_manual_Set_y(XWord_width_manual *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_Y_DATA, (u32)(Data));
    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_Y_DATA + 4, (u32)(Data >> 32));
}

u64 XWord_width_manual_Get_y(XWord_width_manual *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_Y_DATA);
    Data += (u64)XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_Y_DATA + 4) << 32;
    return Data;
}

void XWord_width_manual_Set_load(XWord_width_manual *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_LOAD_DATA, Data);
}

u32 XWord_width_manual_Get_load(XWord_width_manual *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_LOAD_DATA);
    return Data;
}

void XWord_width_manual_InterruptGlobalEnable(XWord_width_manual *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_GIE, 1);
}

void XWord_width_manual_InterruptGlobalDisable(XWord_width_manual *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_GIE, 0);
}

void XWord_width_manual_InterruptEnable(XWord_width_manual *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_IER);
    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_IER, Register | Mask);
}

void XWord_width_manual_InterruptDisable(XWord_width_manual *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_IER);
    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XWord_width_manual_InterruptClear(XWord_width_manual *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWord_width_manual_WriteReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_ISR, Mask);
}

u32 XWord_width_manual_InterruptGetEnabled(XWord_width_manual *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_IER);
}

u32 XWord_width_manual_InterruptGetStatus(XWord_width_manual *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWord_width_manual_ReadReg(InstancePtr->Control_BaseAddress, XWORD_WIDTH_MANUAL_CONTROL_ADDR_ISR);
}

