// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xwindow_avg.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XWindow_avg_CfgInitialize(XWindow_avg *InstancePtr, XWindow_avg_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XWindow_avg_Start(XWindow_avg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XWindow_avg_IsDone(XWindow_avg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XWindow_avg_IsIdle(XWindow_avg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XWindow_avg_IsReady(XWindow_avg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XWindow_avg_Continue(XWindow_avg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_AP_CTRL) & 0x80;
    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XWindow_avg_EnableAutoRestart(XWindow_avg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XWindow_avg_DisableAutoRestart(XWindow_avg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_AP_CTRL, 0);
}

void XWindow_avg_Set_din(XWindow_avg *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_DIN_DATA, (u32)(Data));
    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_DIN_DATA + 4, (u32)(Data >> 32));
}

u64 XWindow_avg_Get_din(XWindow_avg *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_DIN_DATA);
    Data += (u64)XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_DIN_DATA + 4) << 32;
    return Data;
}

void XWindow_avg_Set_dout(XWindow_avg *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_DOUT_DATA, (u32)(Data));
    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_DOUT_DATA + 4, (u32)(Data >> 32));
}

u64 XWindow_avg_Get_dout(XWindow_avg *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_DOUT_DATA);
    Data += (u64)XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_DOUT_DATA + 4) << 32;
    return Data;
}

void XWindow_avg_InterruptGlobalEnable(XWindow_avg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_GIE, 1);
}

void XWindow_avg_InterruptGlobalDisable(XWindow_avg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_GIE, 0);
}

void XWindow_avg_InterruptEnable(XWindow_avg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_IER);
    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_IER, Register | Mask);
}

void XWindow_avg_InterruptDisable(XWindow_avg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_IER);
    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_IER, Register & (~Mask));
}

void XWindow_avg_InterruptClear(XWindow_avg *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWindow_avg_WriteReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_ISR, Mask);
}

u32 XWindow_avg_InterruptGetEnabled(XWindow_avg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_IER);
}

u32 XWindow_avg_InterruptGetStatus(XWindow_avg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWindow_avg_ReadReg(InstancePtr->Control_BaseAddress, XWINDOW_AVG_CONTROL_ADDR_ISR);
}

