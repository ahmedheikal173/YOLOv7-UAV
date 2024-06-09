// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XWORD_WIDTH_MANUAL_H
#define XWORD_WIDTH_MANUAL_H

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
#include "xword_width_manual_hw.h"

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
} XWord_width_manual_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XWord_width_manual;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XWord_width_manual_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XWord_width_manual_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XWord_width_manual_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XWord_width_manual_ReadReg(BaseAddress, RegOffset) \
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
int XWord_width_manual_Initialize(XWord_width_manual *InstancePtr, u16 DeviceId);
XWord_width_manual_Config* XWord_width_manual_LookupConfig(u16 DeviceId);
int XWord_width_manual_CfgInitialize(XWord_width_manual *InstancePtr, XWord_width_manual_Config *ConfigPtr);
#else
int XWord_width_manual_Initialize(XWord_width_manual *InstancePtr, const char* InstanceName);
int XWord_width_manual_Release(XWord_width_manual *InstancePtr);
#endif

void XWord_width_manual_Start(XWord_width_manual *InstancePtr);
u32 XWord_width_manual_IsDone(XWord_width_manual *InstancePtr);
u32 XWord_width_manual_IsIdle(XWord_width_manual *InstancePtr);
u32 XWord_width_manual_IsReady(XWord_width_manual *InstancePtr);
void XWord_width_manual_Continue(XWord_width_manual *InstancePtr);
void XWord_width_manual_EnableAutoRestart(XWord_width_manual *InstancePtr);
void XWord_width_manual_DisableAutoRestart(XWord_width_manual *InstancePtr);

void XWord_width_manual_Set_load(XWord_width_manual *InstancePtr, u32 Data);
u32 XWord_width_manual_Get_load(XWord_width_manual *InstancePtr);

void XWord_width_manual_InterruptGlobalEnable(XWord_width_manual *InstancePtr);
void XWord_width_manual_InterruptGlobalDisable(XWord_width_manual *InstancePtr);
void XWord_width_manual_InterruptEnable(XWord_width_manual *InstancePtr, u32 Mask);
void XWord_width_manual_InterruptDisable(XWord_width_manual *InstancePtr, u32 Mask);
void XWord_width_manual_InterruptClear(XWord_width_manual *InstancePtr, u32 Mask);
u32 XWord_width_manual_InterruptGetEnabled(XWord_width_manual *InstancePtr);
u32 XWord_width_manual_InterruptGetStatus(XWord_width_manual *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
