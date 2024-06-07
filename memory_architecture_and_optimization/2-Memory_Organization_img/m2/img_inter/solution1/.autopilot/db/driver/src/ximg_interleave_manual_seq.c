// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "ximg_interleave_manual_seq.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XImg_interleave_manual_seq_CfgInitialize(XImg_interleave_manual_seq *InstancePtr, XImg_interleave_manual_seq_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XImg_interleave_manual_seq_Start(XImg_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL) & 0x80;
    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XImg_interleave_manual_seq_IsDone(XImg_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XImg_interleave_manual_seq_IsIdle(XImg_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XImg_interleave_manual_seq_IsReady(XImg_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XImg_interleave_manual_seq_Continue(XImg_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL) & 0x80;
    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XImg_interleave_manual_seq_EnableAutoRestart(XImg_interleave_manual_seq *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XImg_interleave_manual_seq_DisableAutoRestart(XImg_interleave_manual_seq *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_AP_CTRL, 0);
}

void XImg_interleave_manual_seq_Set_load(XImg_interleave_manual_seq *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_LOAD_DATA, Data);
}

u32 XImg_interleave_manual_seq_Get_load(XImg_interleave_manual_seq *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_LOAD_DATA);
    return Data;
}

void XImg_interleave_manual_seq_InterruptGlobalEnable(XImg_interleave_manual_seq *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_GIE, 1);
}

void XImg_interleave_manual_seq_InterruptGlobalDisable(XImg_interleave_manual_seq *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_GIE, 0);
}

void XImg_interleave_manual_seq_InterruptEnable(XImg_interleave_manual_seq *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER);
    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER, Register | Mask);
}

void XImg_interleave_manual_seq_InterruptDisable(XImg_interleave_manual_seq *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER);
    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER, Register & (~Mask));
}

void XImg_interleave_manual_seq_InterruptClear(XImg_interleave_manual_seq *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImg_interleave_manual_seq_WriteReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_ISR, Mask);
}

u32 XImg_interleave_manual_seq_InterruptGetEnabled(XImg_interleave_manual_seq *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_IER);
}

u32 XImg_interleave_manual_seq_InterruptGetStatus(XImg_interleave_manual_seq *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImg_interleave_manual_seq_ReadReg(InstancePtr->Control_BaseAddress, XIMG_INTERLEAVE_MANUAL_SEQ_CONTROL_ADDR_ISR);
}

