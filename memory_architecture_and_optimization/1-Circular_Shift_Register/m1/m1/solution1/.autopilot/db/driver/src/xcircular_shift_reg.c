// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcircular_shift_reg.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCircular_shift_reg_CfgInitialize(XCircular_shift_reg *InstancePtr, XCircular_shift_reg_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCircular_shift_reg_Start(XCircular_shift_reg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCircular_shift_reg_IsDone(XCircular_shift_reg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCircular_shift_reg_IsIdle(XCircular_shift_reg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCircular_shift_reg_IsReady(XCircular_shift_reg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCircular_shift_reg_Continue(XCircular_shift_reg *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XCircular_shift_reg_EnableAutoRestart(XCircular_shift_reg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCircular_shift_reg_DisableAutoRestart(XCircular_shift_reg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_AP_CTRL, 0);
}

void XCircular_shift_reg_Set_din(XCircular_shift_reg *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_DIN_DATA, Data);
}

u32 XCircular_shift_reg_Get_din(XCircular_shift_reg *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_DIN_DATA);
    return Data;
}

void XCircular_shift_reg_InterruptGlobalEnable(XCircular_shift_reg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_GIE, 1);
}

void XCircular_shift_reg_InterruptGlobalDisable(XCircular_shift_reg *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_GIE, 0);
}

void XCircular_shift_reg_InterruptEnable(XCircular_shift_reg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_IER);
    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_IER, Register | Mask);
}

void XCircular_shift_reg_InterruptDisable(XCircular_shift_reg *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_IER);
    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCircular_shift_reg_InterruptClear(XCircular_shift_reg *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCircular_shift_reg_WriteReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_ISR, Mask);
}

u32 XCircular_shift_reg_InterruptGetEnabled(XCircular_shift_reg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_IER);
}

u32 XCircular_shift_reg_InterruptGetStatus(XCircular_shift_reg *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCircular_shift_reg_ReadReg(InstancePtr->Control_BaseAddress, XCIRCULAR_SHIFT_REG_CONTROL_ADDR_ISR);
}

