// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XIMG_INTERLEAVE_MANUAL_SEQ_H
#define XIMG_INTERLEAVE_MANUAL_SEQ_H

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
#include "ximg_interleave_manual_seq_hw.h"

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
} XImg_interleave_manual_seq_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XImg_interleave_manual_seq;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XImg_interleave_manual_seq_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XImg_interleave_manual_seq_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XImg_interleave_manual_seq_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XImg_interleave_manual_seq_ReadReg(BaseAddress, RegOffset) \
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
int XImg_interleave_manual_seq_Initialize(XImg_interleave_manual_seq *InstancePtr, u16 DeviceId);
XImg_interleave_manual_seq_Config* XImg_interleave_manual_seq_LookupConfig(u16 DeviceId);
int XImg_interleave_manual_seq_CfgInitialize(XImg_interleave_manual_seq *InstancePtr, XImg_interleave_manual_seq_Config *ConfigPtr);
#else
int XImg_interleave_manual_seq_Initialize(XImg_interleave_manual_seq *InstancePtr, const char* InstanceName);
int XImg_interleave_manual_seq_Release(XImg_interleave_manual_seq *InstancePtr);
#endif

void XImg_interleave_manual_seq_Start(XImg_interleave_manual_seq *InstancePtr);
u32 XImg_interleave_manual_seq_IsDone(XImg_interleave_manual_seq *InstancePtr);
u32 XImg_interleave_manual_seq_IsIdle(XImg_interleave_manual_seq *InstancePtr);
u32 XImg_interleave_manual_seq_IsReady(XImg_interleave_manual_seq *InstancePtr);
void XImg_interleave_manual_seq_Continue(XImg_interleave_manual_seq *InstancePtr);
void XImg_interleave_manual_seq_EnableAutoRestart(XImg_interleave_manual_seq *InstancePtr);
void XImg_interleave_manual_seq_DisableAutoRestart(XImg_interleave_manual_seq *InstancePtr);

void XImg_interleave_manual_seq_Set_load(XImg_interleave_manual_seq *InstancePtr, u32 Data);
u32 XImg_interleave_manual_seq_Get_load(XImg_interleave_manual_seq *InstancePtr);

void XImg_interleave_manual_seq_InterruptGlobalEnable(XImg_interleave_manual_seq *InstancePtr);
void XImg_interleave_manual_seq_InterruptGlobalDisable(XImg_interleave_manual_seq *InstancePtr);
void XImg_interleave_manual_seq_InterruptEnable(XImg_interleave_manual_seq *InstancePtr, u32 Mask);
void XImg_interleave_manual_seq_InterruptDisable(XImg_interleave_manual_seq *InstancePtr, u32 Mask);
void XImg_interleave_manual_seq_InterruptClear(XImg_interleave_manual_seq *InstancePtr, u32 Mask);
u32 XImg_interleave_manual_seq_InterruptGetEnabled(XImg_interleave_manual_seq *InstancePtr);
u32 XImg_interleave_manual_seq_InterruptGetStatus(XImg_interleave_manual_seq *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
