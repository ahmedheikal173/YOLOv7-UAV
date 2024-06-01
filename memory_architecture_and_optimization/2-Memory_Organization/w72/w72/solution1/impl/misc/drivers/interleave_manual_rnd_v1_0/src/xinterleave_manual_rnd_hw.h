// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (COR/TOW)
//        bit 1 - ap_ready (COR/TOW)
//        bit 5 - ap_local_deadlock (COR/TOW)
//        others - reserved
// 0x10 : Data signal of x_in
//        bit 31~0 - x_in[31:0] (Read/Write)
// 0x14 : Data signal of x_in
//        bit 31~0 - x_in[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of y
//        bit 31~0 - y[31:0] (Read/Write)
// 0x20 : Data signal of y
//        bit 31~0 - y[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of load
//        bit 0  - load[0] (Read/Write)
//        others - reserved
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_AP_CTRL   0x00
#define XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_GIE       0x04
#define XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_IER       0x08
#define XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_ISR       0x0c
#define XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_X_IN_DATA 0x10
#define XINTERLEAVE_MANUAL_RND_CONTROL_BITS_X_IN_DATA 64
#define XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_Y_DATA    0x1c
#define XINTERLEAVE_MANUAL_RND_CONTROL_BITS_Y_DATA    64
#define XINTERLEAVE_MANUAL_RND_CONTROL_ADDR_LOAD_DATA 0x28
#define XINTERLEAVE_MANUAL_RND_CONTROL_BITS_LOAD_DATA 1
