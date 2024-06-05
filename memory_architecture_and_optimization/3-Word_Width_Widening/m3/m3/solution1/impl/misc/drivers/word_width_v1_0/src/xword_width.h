// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XWORD_WIDTH_H
#define XWORD_WIDTH_H

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
#include "xword_width_hw.h"

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
} XWord_width_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XWord_width;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XWord_width_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XWord_width_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XWord_width_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XWord_width_ReadReg(BaseAddress, RegOffset) \
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
int XWord_width_Initialize(XWord_width *InstancePtr, u16 DeviceId);
XWord_width_Config* XWord_width_LookupConfig(u16 DeviceId);
int XWord_width_CfgInitialize(XWord_width *InstancePtr, XWord_width_Config *ConfigPtr);
#else
int XWord_width_Initialize(XWord_width *InstancePtr, const char* InstanceName);
int XWord_width_Release(XWord_width *InstancePtr);
#endif

void XWord_width_Start(XWord_width *InstancePtr);
u32 XWord_width_IsDone(XWord_width *InstancePtr);
u32 XWord_width_IsIdle(XWord_width *InstancePtr);
u32 XWord_width_IsReady(XWord_width *InstancePtr);
void XWord_width_Continue(XWord_width *InstancePtr);
void XWord_width_EnableAutoRestart(XWord_width *InstancePtr);
void XWord_width_DisableAutoRestart(XWord_width *InstancePtr);

void XWord_width_Set_load(XWord_width *InstancePtr, u32 Data);
u32 XWord_width_Get_load(XWord_width *InstancePtr);

void XWord_width_InterruptGlobalEnable(XWord_width *InstancePtr);
void XWord_width_InterruptGlobalDisable(XWord_width *InstancePtr);
void XWord_width_InterruptEnable(XWord_width *InstancePtr, u32 Mask);
void XWord_width_InterruptDisable(XWord_width *InstancePtr, u32 Mask);
void XWord_width_InterruptClear(XWord_width *InstancePtr, u32 Mask);
u32 XWord_width_InterruptGetEnabled(XWord_width *InstancePtr);
u32 XWord_width_InterruptGetStatus(XWord_width *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
