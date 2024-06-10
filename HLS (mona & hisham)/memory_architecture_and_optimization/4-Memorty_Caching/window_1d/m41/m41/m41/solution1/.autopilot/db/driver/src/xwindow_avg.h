// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XWINDOW_AVG_H
#define XWINDOW_AVG_H

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
#include "xwindow_avg_hw.h"

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
} XWindow_avg_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XWindow_avg;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XWindow_avg_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XWindow_avg_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XWindow_avg_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XWindow_avg_ReadReg(BaseAddress, RegOffset) \
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
int XWindow_avg_Initialize(XWindow_avg *InstancePtr, u16 DeviceId);
XWindow_avg_Config* XWindow_avg_LookupConfig(u16 DeviceId);
int XWindow_avg_CfgInitialize(XWindow_avg *InstancePtr, XWindow_avg_Config *ConfigPtr);
#else
int XWindow_avg_Initialize(XWindow_avg *InstancePtr, const char* InstanceName);
int XWindow_avg_Release(XWindow_avg *InstancePtr);
#endif

void XWindow_avg_Start(XWindow_avg *InstancePtr);
u32 XWindow_avg_IsDone(XWindow_avg *InstancePtr);
u32 XWindow_avg_IsIdle(XWindow_avg *InstancePtr);
u32 XWindow_avg_IsReady(XWindow_avg *InstancePtr);
void XWindow_avg_Continue(XWindow_avg *InstancePtr);
void XWindow_avg_EnableAutoRestart(XWindow_avg *InstancePtr);
void XWindow_avg_DisableAutoRestart(XWindow_avg *InstancePtr);

void XWindow_avg_Set_din(XWindow_avg *InstancePtr, u64 Data);
u64 XWindow_avg_Get_din(XWindow_avg *InstancePtr);
void XWindow_avg_Set_dout(XWindow_avg *InstancePtr, u64 Data);
u64 XWindow_avg_Get_dout(XWindow_avg *InstancePtr);

void XWindow_avg_InterruptGlobalEnable(XWindow_avg *InstancePtr);
void XWindow_avg_InterruptGlobalDisable(XWindow_avg *InstancePtr);
void XWindow_avg_InterruptEnable(XWindow_avg *InstancePtr, u32 Mask);
void XWindow_avg_InterruptDisable(XWindow_avg *InstancePtr, u32 Mask);
void XWindow_avg_InterruptClear(XWindow_avg *InstancePtr, u32 Mask);
u32 XWindow_avg_InterruptGetEnabled(XWindow_avg *InstancePtr);
u32 XWindow_avg_InterruptGetStatus(XWindow_avg *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
