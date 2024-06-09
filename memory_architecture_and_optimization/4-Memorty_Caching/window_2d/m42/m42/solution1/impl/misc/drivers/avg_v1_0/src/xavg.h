// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAVG_H
#define XAVG_H

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
#include "xavg_hw.h"

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
} XAvg_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAvg;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAvg_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAvg_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAvg_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAvg_ReadReg(BaseAddress, RegOffset) \
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
int XAvg_Initialize(XAvg *InstancePtr, u16 DeviceId);
XAvg_Config* XAvg_LookupConfig(u16 DeviceId);
int XAvg_CfgInitialize(XAvg *InstancePtr, XAvg_Config *ConfigPtr);
#else
int XAvg_Initialize(XAvg *InstancePtr, const char* InstanceName);
int XAvg_Release(XAvg *InstancePtr);
#endif

void XAvg_Start(XAvg *InstancePtr);
u32 XAvg_IsDone(XAvg *InstancePtr);
u32 XAvg_IsIdle(XAvg *InstancePtr);
u32 XAvg_IsReady(XAvg *InstancePtr);
void XAvg_Continue(XAvg *InstancePtr);
void XAvg_EnableAutoRestart(XAvg *InstancePtr);
void XAvg_DisableAutoRestart(XAvg *InstancePtr);


void XAvg_InterruptGlobalEnable(XAvg *InstancePtr);
void XAvg_InterruptGlobalDisable(XAvg *InstancePtr);
void XAvg_InterruptEnable(XAvg *InstancePtr, u32 Mask);
void XAvg_InterruptDisable(XAvg *InstancePtr, u32 Mask);
void XAvg_InterruptClear(XAvg *InstancePtr, u32 Mask);
u32 XAvg_InterruptGetEnabled(XAvg *InstancePtr);
u32 XAvg_InterruptGetStatus(XAvg *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
