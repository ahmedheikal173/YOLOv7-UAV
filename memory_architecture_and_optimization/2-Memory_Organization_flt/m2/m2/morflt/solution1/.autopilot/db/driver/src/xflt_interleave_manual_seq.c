// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xflt_interleave_manual_seq.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFlt_interleave_manual_seq_CfgInitialize(XFlt_interleave_manual_seq *InstancePtr, XFlt_interleave_manual_seq_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFlt_interleave_manual_seq_Start(XFlt_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFlt_interleave_manual_seq_IsDone(XFlt_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFlt_interleave_manual_seq_IsIdle(XFlt_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFlt_interleave_manual_seq_IsReady(XFlt_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFlt_interleave_manual_seq_Continue(XFlt_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XFlt_interleave_manual_seq_EnableAutoRestart(XFlt_interleave_manual_seq *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFlt_interleave_manual_seq_DisableAutoRestart(XFlt_interleave_manual_seq *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL, 0);
}

void XFlt_interleave_manual_seq_Set_load(XFlt_interleave_manual_seq *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_LOAD_DATA, Data);
}

u32 XFlt_interleave_manual_seq_Get_load(XFlt_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_LOAD_DATA);
    return Data;
}

void XFlt_interleave_manual_seq_InterruptGlobalEnable(XFlt_interleave_manual_seq *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_GIE, 1);
}

void XFlt_interleave_manual_seq_InterruptGlobalDisable(XFlt_interleave_manual_seq *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_GIE, 0);
}

void XFlt_interleave_manual_seq_InterruptEnable(XFlt_interleave_manual_seq *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER);
    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER, Register | Mask);
}

void XFlt_interleave_manual_seq_InterruptDisable(XFlt_interleave_manual_seq *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER);
    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFlt_interleave_manual_seq_InterruptClear(XFlt_interleave_manual_seq *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFlt_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_ISR, Mask);
}

u32 XFlt_interleave_manual_seq_InterruptGetEnabled(XFlt_interleave_manual_seq *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER);
}

u32 XFlt_interleave_manual_seq_InterruptGetStatus(XFlt_interleave_manual_seq *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFlt_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XFLT_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_ISR);
}

