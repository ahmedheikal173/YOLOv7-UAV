// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XBRAM_FILTER_H
#define XBRAM_FILTER_H

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
#include "xbram_filter_hw.h"

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
} XBram_filter_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XBram_filter;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBram_filter_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBram_filter_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBram_filter_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBram_filter_ReadReg(BaseAddress, RegOffset) \
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
int XBram_filter_Initialize(XBram_filter *InstancePtr, u16 DeviceId);
XBram_filter_Config* XBram_filter_LookupConfig(u16 DeviceId);
int XBram_filter_CfgInitialize(XBram_filter *InstancePtr, XBram_filter_Config *ConfigPtr);
#else
int XBram_filter_Initialize(XBram_filter *InstancePtr, const char* InstanceName);
int XBram_filter_Release(XBram_filter *InstancePtr);
#endif

void XBram_filter_Start(XBram_filter *InstancePtr);
u32 XBram_filter_IsDone(XBram_filter *InstancePtr);
u32 XBram_filter_IsIdle(XBram_filter *InstancePtr);
u32 XBram_filter_IsReady(XBram_filter *InstancePtr);
void XBram_filter_Continue(XBram_filter *InstancePtr);
void XBram_filter_EnableAutoRestart(XBram_filter *InstancePtr);
void XBram_filter_DisableAutoRestart(XBram_filter *InstancePtr);

void XBram_filter_Set_load(XBram_filter *InstancePtr, u32 Data);
u32 XBram_filter_Get_load(XBram_filter *InstancePtr);

void XBram_filter_InterruptGlobalEnable(XBram_filter *InstancePtr);
void XBram_filter_InterruptGlobalDisable(XBram_filter *InstancePtr);
void XBram_filter_InterruptEnable(XBram_filter *InstancePtr, u32 Mask);
void XBram_filter_InterruptDisable(XBram_filter *InstancePtr, u32 Mask);
void XBram_filter_InterruptClear(XBram_filter *InstancePtr, u32 Mask);
u32 XBram_filter_InterruptGetEnabled(XBram_filter *InstancePtr);
u32 XBram_filter_InterruptGetStatus(XBram_filter *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
