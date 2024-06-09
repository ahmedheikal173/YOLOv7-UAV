; ModuleID = 'D:/gam3a/zzzzzzzzzz/bram/prot/zz/vts/zz/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }

; Function Attrs: noinline
define void @apatb_BRAM_filter_ir([3 x [44 x %"struct.ap_int<8>"]]* %x_in, [3 x [44 x %"struct.ap_int<8>"]]* %out, i1 %load) local_unnamed_addr #0 {
entry:
  %x_in_copy = alloca [3 x [3 x [44 x i8]]], align 512
  %out_copy = alloca [3 x [3 x [44 x i8]]], align 512
  %0 = bitcast [3 x [44 x %"struct.ap_int<8>"]]* %x_in to [3 x [3 x [44 x %"struct.ap_int<8>"]]]*
  %1 = bitcast [3 x [44 x %"struct.ap_int<8>"]]* %out to [3 x [3 x [44 x %"struct.ap_int<8>"]]]*
  call fastcc void @copy_in([3 x [3 x [44 x %"struct.ap_int<8>"]]]* %0, [3 x [3 x [44 x i8]]]* nonnull align 512 %x_in_copy, [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %1, [3 x [3 x [44 x i8]]]* nonnull align 512 %out_copy)
  %2 = getelementptr [3 x [3 x [44 x i8]]], [3 x [3 x [44 x i8]]]* %x_in_copy, i32 0, i32 0
  %3 = getelementptr [3 x [3 x [44 x i8]]], [3 x [3 x [44 x i8]]]* %out_copy, i32 0, i32 0
  call void @apatb_BRAM_filter_hw([3 x [44 x i8]]* %2, [3 x [44 x i8]]* %3, i1 %load)
  call fastcc void @copy_out([3 x [3 x [44 x %"struct.ap_int<8>"]]]* %0, [3 x [3 x [44 x i8]]]* nonnull align 512 %x_in_copy, [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %1, [3 x [3 x [44 x i8]]]* nonnull align 512 %out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([3 x [3 x [44 x %"struct.ap_int<8>"]]]* readonly, [3 x [3 x [44 x i8]]]* noalias align 512, [3 x [3 x [44 x %"struct.ap_int<8>"]]]* readonly, [3 x [3 x [44 x i8]]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a3a3a44struct.ap_int<8>.39"([3 x [3 x [44 x i8]]]* align 512 %1, [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a3a3a44struct.ap_int<8>.39"([3 x [3 x [44 x i8]]]* align 512 %3, [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([3 x [3 x [44 x %"struct.ap_int<8>"]]]*, [3 x [3 x [44 x i8]]]* noalias readonly align 512, [3 x [3 x [44 x %"struct.ap_int<8>"]]]*, [3 x [3 x [44 x i8]]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a3a3a44struct.ap_int<8>"([3 x [3 x [44 x %"struct.ap_int<8>"]]]* %0, [3 x [3 x [44 x i8]]]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a3a3a44struct.ap_int<8>"([3 x [3 x [44 x %"struct.ap_int<8>"]]]* %2, [3 x [3 x [44 x i8]]]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a3a3a44struct.ap_int<8>"([3 x [3 x [44 x %"struct.ap_int<8>"]]]* noalias, [3 x [3 x [44 x i8]]]* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %0, null
  %3 = icmp eq [3 x [3 x [44 x i8]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %5 = getelementptr [3 x [3 x [44 x i8]]], [3 x [3 x [44 x i8]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923
  %dst.addr11.0.0.022 = getelementptr [3 x [3 x [44 x %"struct.ap_int<8>"]]], [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %dst.addr11.0.0.022, align 1
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 44
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a3a3a44struct.ap_int<8>.39"([3 x [3 x [44 x i8]]]* noalias align 512, [3 x [3 x [44 x %"struct.ap_int<8>"]]]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [3 x [3 x [44 x i8]]]* %0, null
  %3 = icmp eq [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split, %for.loop
  %for.loop.idx324 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx923 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.021 = getelementptr [3 x [3 x [44 x %"struct.ap_int<8>"]]], [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = getelementptr [3 x [3 x [44 x i8]]], [3 x [3 x [44 x i8]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923
  %6 = load i8, i8* %src.addr12.0.0.021, align 1
  store i8 %6, i8* %5, align 1
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 44
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 3
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_BRAM_filter_hw([3 x [44 x i8]]*, [3 x [44 x i8]]*, i1)

define void @BRAM_filter_hw_stub_wrapper([3 x [44 x i8]]*, [3 x [44 x i8]]*, i1) #4 {
entry:
  %3 = alloca [3 x [3 x [44 x %"struct.ap_int<8>"]]]
  %4 = alloca [3 x [3 x [44 x %"struct.ap_int<8>"]]]
  %5 = bitcast [3 x [44 x i8]]* %0 to [3 x [3 x [44 x i8]]]*
  %6 = bitcast [3 x [44 x i8]]* %1 to [3 x [3 x [44 x i8]]]*
  call void @copy_out([3 x [3 x [44 x %"struct.ap_int<8>"]]]* %3, [3 x [3 x [44 x i8]]]* %5, [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %4, [3 x [3 x [44 x i8]]]* %6)
  %7 = bitcast [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %3 to [3 x [44 x %"struct.ap_int<8>"]]*
  %8 = bitcast [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %4 to [3 x [44 x %"struct.ap_int<8>"]]*
  call void @BRAM_filter_hw_stub([3 x [44 x %"struct.ap_int<8>"]]* %7, [3 x [44 x %"struct.ap_int<8>"]]* %8, i1 %2)
  call void @copy_in([3 x [3 x [44 x %"struct.ap_int<8>"]]]* %3, [3 x [3 x [44 x i8]]]* %5, [3 x [3 x [44 x %"struct.ap_int<8>"]]]* %4, [3 x [3 x [44 x i8]]]* %6)
  ret void
}

declare void @BRAM_filter_hw_stub([3 x [44 x %"struct.ap_int<8>"]]*, [3 x [44 x %"struct.ap_int<8>"]]*, i1)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
