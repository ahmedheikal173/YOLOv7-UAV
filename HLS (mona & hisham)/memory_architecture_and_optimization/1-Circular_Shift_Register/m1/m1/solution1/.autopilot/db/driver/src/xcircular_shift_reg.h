// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCIRCULAR_SHIFT_REG_H
#define XCIRCULAR_SHIFT_REG_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcircular_shift_reg_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XCircular_shift_reg_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCircular_shift_reg;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCircular_shift_reg_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCircular_shift_reg_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCircular_shift_reg_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCircular_shift_reg_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCircular_shift_reg_Initialize(XCircular_shift_reg *InstancePtr, u16 DeviceId);
XCircular_shift_reg_Config* XCircular_shift_reg_LookupConfig(u16 DeviceId);
int XCircular_shift_reg_CfgInitialize(XCircular_shift_reg *InstancePtr, XCircular_shift_reg_Config *ConfigPtr);
#else
int XCircular_shift_reg_Initialize(XCircular_shift_reg *InstancePtr, const char* InstanceName);
int XCircular_shift_reg_Release(XCircular_shift_reg *InstancePtr);
#endif

void XCircular_shift_reg_Start(XCircular_shift_reg *InstancePtr);
u32 XCircular_shift_reg_IsDone(XCircular_shift_reg *InstancePtr);
u32 XCircular_shift_reg_IsIdle(XCircular_shift_reg *InstancePtr);
u32 XCircular_shift_reg_IsReady(XCircular_shift_reg *InstancePtr);
void XCircular_shift_reg_Continue(XCircular_shift_reg *InstancePtr);
void XCircular_shift_reg_EnableAutoRestart(XCircular_shift_reg *InstancePtr);
void XCircular_shift_reg_DisableAutoRestart(XCircular_shift_reg *InstancePtr);

void XCircular_shift_reg_Set_din(XCircular_shift_reg *InstancePtr, u32 Data);
u32 XCircular_shift_reg_Get_din(XCircular_shift_reg *InstancePtr);

void XCircular_shift_reg_InterruptGlobalEnable(XCircular_shift_reg *InstancePtr);
void XCircular_shift_reg_InterruptGlobalDisable(XCircular_shift_reg *InstancePtr);
void XCircular_shift_reg_InterruptEnable(XCircular_shift_reg *InstancePtr, u32 Mask);
void XCircular_shift_reg_InterruptDisable(XCircular_shift_reg *InstancePtr, u32 Mask);
void XCircular_shift_reg_InterruptClear(XCircular_shift_reg *InstancePtr, u32 Mask);
u32 XCircular_shift_reg_InterruptGetEnabled(XCircular_shift_reg *InstancePtr);
u32 XCircular_shift_reg_InterruptGetStatus(XCircular_shift_reg *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
