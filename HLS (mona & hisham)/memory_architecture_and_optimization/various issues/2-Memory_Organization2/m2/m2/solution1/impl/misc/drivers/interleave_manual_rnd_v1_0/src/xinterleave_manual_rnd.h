// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XINTERLEAVE_MANUAL_RND_H
#define XINTERLEAVE_MANUAL_RND_H

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
#include "xinterleave_manual_rnd_hw.h"

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
} XInterleave_manual_rnd_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XInterleave_manual_rnd;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XInterleave_manual_rnd_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XInterleave_manual_rnd_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XInterleave_manual_rnd_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XInterleave_manual_rnd_ReadReg(BaseAddress, RegOffset) \
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
int XInterleave_manual_rnd_Initialize(XInterleave_manual_rnd *InstancePtr, u16 DeviceId);
XInterleave_manual_rnd_Config* XInterleave_manual_rnd_LookupConfig(u16 DeviceId);
int XInterleave_manual_rnd_CfgInitialize(XInterleave_manual_rnd *InstancePtr, XInterleave_manual_rnd_Config *ConfigPtr);
#else
int XInterleave_manual_rnd_Initialize(XInterleave_manual_rnd *InstancePtr, const char* InstanceName);
int XInterleave_manual_rnd_Release(XInterleave_manual_rnd *InstancePtr);
#endif

void XInterleave_manual_rnd_Start(XInterleave_manual_rnd *InstancePtr);
u32 XInterleave_manual_rnd_IsDone(XInterleave_manual_rnd *InstancePtr);
u32 XInterleave_manual_rnd_IsIdle(XInterleave_manual_rnd *InstancePtr);
u32 XInterleave_manual_rnd_IsReady(XInterleave_manual_rnd *InstancePtr);
void XInterleave_manual_rnd_Continue(XInterleave_manual_rnd *InstancePtr);
void XInterleave_manual_rnd_EnableAutoRestart(XInterleave_manual_rnd *InstancePtr);
void XInterleave_manual_rnd_DisableAutoRestart(XInterleave_manual_rnd *InstancePtr);

void XInterleave_manual_rnd_Set_load(XInterleave_manual_rnd *InstancePtr, u32 Data);
u32 XInterleave_manual_rnd_Get_load(XInterleave_manual_rnd *InstancePtr);

void XInterleave_manual_rnd_InterruptGlobalEnable(XInterleave_manual_rnd *InstancePtr);
void XInterleave_manual_rnd_InterruptGlobalDisable(XInterleave_manual_rnd *InstancePtr);
void XInterleave_manual_rnd_InterruptEnable(XInterleave_manual_rnd *InstancePtr, u32 Mask);
void XInterleave_manual_rnd_InterruptDisable(XInterleave_manual_rnd *InstancePtr, u32 Mask);
void XInterleave_manual_rnd_InterruptClear(XInterleave_manual_rnd *InstancePtr, u32 Mask);
u32 XInterleave_manual_rnd_InterruptGetEnabled(XInterleave_manual_rnd *InstancePtr);
u32 XInterleave_manual_rnd_InterruptGetStatus(XInterleave_manual_rnd *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
