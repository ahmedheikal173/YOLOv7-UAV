; ModuleID = 'D:/gam3a/zzzzzzzzzz/2-Memory_Organization_flt/m2/m2/morflt/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }
%"struct.ap_int<16>" = type { %"struct.ap_int_base<16, true>" }
%"struct.ap_int_base<16, true>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_flt_interleave_manual_seq_ir([9 x [44 x %"struct.ap_int<8>"]]* %x_in, [1 x [44 x %"struct.ap_int<16>"]]* %y, i1 %load) local_unnamed_addr #0 {
entry:
  %x_in_copy = alloca [9 x [9 x [44 x i8]]], align 512
  %y_copy = alloca [9 x [1 x [44 x i16]]], align 512
  %0 = bitcast [9 x [44 x %"struct.ap_int<8>"]]* %x_in to [9 x [9 x [44 x %"struct.ap_int<8>"]]]*
  %1 = bitcast [1 x [44 x %"struct.ap_int<16>"]]* %y to [9 x [1 x [44 x %"struct.ap_int<16>"]]]*
  call fastcc void @copy_in([9 x [9 x [44 x %"struct.ap_int<8>"]]]* %0, [9 x [9 x [44 x i8]]]* nonnull align 512 %x_in_copy, [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %1, [9 x [1 x [44 x i16]]]* nonnull align 512 %y_copy)
  %2 = getelementptr [9 x [9 x [44 x i8]]], [9 x [9 x [44 x i8]]]* %x_in_copy, i32 0, i32 0
  %3 = getelementptr [9 x [1 x [44 x i16]]], [9 x [1 x [44 x i16]]]* %y_copy, i32 0, i32 0
  call void @apatb_flt_interleave_manual_seq_hw([9 x [44 x i8]]* %2, [1 x [44 x i16]]* %3, i1 %load)
  call fastcc void @copy_out([9 x [9 x [44 x %"struct.ap_int<8>"]]]* %0, [9 x [9 x [44 x i8]]]* nonnull align 512 %x_in_copy, [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %1, [9 x [1 x [44 x i16]]]* nonnull align 512 %y_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([9 x [9 x [44 x %"struct.ap_int<8>"]]]* readonly, [9 x [9 x [44 x i8]]]* noalias align 512, [9 x [1 x [44 x %"struct.ap_int<16>"]]]* readonly, [9 x [1 x [44 x i16]]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a9a9a44struct.ap_int<8>.90"([9 x [9 x [44 x i8]]]* align 512 %1, [9 x [9 x [44 x %"struct.ap_int<8>"]]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a9a1a44struct.ap_int<16>"([9 x [1 x [44 x i16]]]* align 512 %3, [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a9a9a44struct.ap_int<8>"([9 x [9 x [44 x %"struct.ap_int<8>"]]]* noalias, [9 x [9 x [44 x i8]]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [9 x [9 x [44 x %"struct.ap_int<8>"]]]* %0, null
  %3 = icmp eq [9 x [9 x [44 x i8]]]* %1, null
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
  %5 = getelementptr [9 x [9 x [44 x i8]]], [9 x [9 x [44 x i8]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923
  %dst.addr11.0.0.022 = getelementptr [9 x [9 x [44 x %"struct.ap_int<8>"]]], [9 x [9 x [44 x %"struct.ap_int<8>"]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %dst.addr11.0.0.022, align 1
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 44
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 9
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 9
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a9a1a44struct.ap_int<16>"([9 x [1 x [44 x i16]]]* noalias align 512, [9 x [1 x [44 x %"struct.ap_int<16>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [9 x [1 x [44 x i16]]]* %0, null
  %3 = icmp eq [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop
  %for.loop.idx923 = phi i64 [ 0, %for.loop ], [ %for.loop.idx9.next, %for.loop8 ]
  %src.addr12.0.0.021 = getelementptr [9 x [1 x [44 x %"struct.ap_int<16>"]]], [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %1, i64 0, i64 %for.loop.idx25, i64 0, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = getelementptr [9 x [1 x [44 x i16]]], [9 x [1 x [44 x i16]]]* %0, i64 0, i64 %for.loop.idx25, i64 0, i64 %for.loop.idx923
  %6 = load i16, i16* %src.addr12.0.0.021, align 2
  store i16 %6, i16* %5, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 44
  br i1 %exitcond, label %for.loop8, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond26 = icmp ne i64 %for.loop.idx.next, 9
  br i1 %exitcond26, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([9 x [9 x [44 x %"struct.ap_int<8>"]]]*, [9 x [9 x [44 x i8]]]* noalias readonly align 512, [9 x [1 x [44 x %"struct.ap_int<16>"]]]*, [9 x [1 x [44 x i16]]]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a9a9a44struct.ap_int<8>"([9 x [9 x [44 x %"struct.ap_int<8>"]]]* %0, [9 x [9 x [44 x i8]]]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a9a1a44struct.ap_int<16>.84"([9 x [1 x [44 x %"struct.ap_int<16>"]]]* %2, [9 x [1 x [44 x i16]]]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a9a1a44struct.ap_int<16>.84"([9 x [1 x [44 x %"struct.ap_int<16>"]]]* noalias, [9 x [1 x [44 x i16]]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %0, null
  %3 = icmp eq [9 x [1 x [44 x i16]]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx25 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop
  %for.loop.idx923 = phi i64 [ 0, %for.loop ], [ %for.loop.idx9.next, %for.loop8 ]
  %5 = getelementptr [9 x [1 x [44 x i16]]], [9 x [1 x [44 x i16]]]* %1, i64 0, i64 %for.loop.idx25, i64 0, i64 %for.loop.idx923
  %dst.addr11.0.0.022 = getelementptr [9 x [1 x [44 x %"struct.ap_int<16>"]]], [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %0, i64 0, i64 %for.loop.idx25, i64 0, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* %dst.addr11.0.0.022, align 2
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 44
  br i1 %exitcond, label %for.loop8, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond26 = icmp ne i64 %for.loop.idx.next, 9
  br i1 %exitcond26, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a9a9a44struct.ap_int<8>.90"([9 x [9 x [44 x i8]]]* noalias align 512, [9 x [9 x [44 x %"struct.ap_int<8>"]]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [9 x [9 x [44 x i8]]]* %0, null
  %3 = icmp eq [9 x [9 x [44 x %"struct.ap_int<8>"]]]* %1, null
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
  %src.addr12.0.0.021 = getelementptr [9 x [9 x [44 x %"struct.ap_int<8>"]]], [9 x [9 x [44 x %"struct.ap_int<8>"]]]* %1, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923, i32 0, i32 0, i32 0
  %5 = getelementptr [9 x [9 x [44 x i8]]], [9 x [9 x [44 x i8]]]* %0, i64 0, i64 %for.loop.idx25, i64 %for.loop.idx324, i64 %for.loop.idx923
  %6 = load i8, i8* %src.addr12.0.0.021, align 1
  store i8 %6, i8* %5, align 1
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx923, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 44
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx324, 1
  %exitcond26 = icmp ne i64 %for.loop.idx3.next, 9
  br i1 %exitcond26, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx25, 1
  %exitcond27 = icmp ne i64 %for.loop.idx.next, 9
  br i1 %exitcond27, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_flt_interleave_manual_seq_hw([9 x [44 x i8]]*, [1 x [44 x i16]]*, i1)

define void @flt_interleave_manual_seq_hw_stub_wrapper([9 x [44 x i8]]*, [1 x [44 x i16]]*, i1) #4 {
entry:
  %3 = alloca [9 x [9 x [44 x %"struct.ap_int<8>"]]]
  %4 = alloca [9 x [1 x [44 x %"struct.ap_int<16>"]]]
  %5 = bitcast [9 x [44 x i8]]* %0 to [9 x [9 x [44 x i8]]]*
  %6 = bitcast [1 x [44 x i16]]* %1 to [9 x [1 x [44 x i16]]]*
  call void @copy_out([9 x [9 x [44 x %"struct.ap_int<8>"]]]* %3, [9 x [9 x [44 x i8]]]* %5, [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %4, [9 x [1 x [44 x i16]]]* %6)
  %7 = bitcast [9 x [9 x [44 x %"struct.ap_int<8>"]]]* %3 to [9 x [44 x %"struct.ap_int<8>"]]*
  %8 = bitcast [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %4 to [1 x [44 x %"struct.ap_int<16>"]]*
  call void @flt_interleave_manual_seq_hw_stub([9 x [44 x %"struct.ap_int<8>"]]* %7, [1 x [44 x %"struct.ap_int<16>"]]* %8, i1 %2)
  call void @copy_in([9 x [9 x [44 x %"struct.ap_int<8>"]]]* %3, [9 x [9 x [44 x i8]]]* %5, [9 x [1 x [44 x %"struct.ap_int<16>"]]]* %4, [9 x [1 x [44 x i16]]]* %6)
  ret void
}

declare void @flt_interleave_manual_seq_hw_stub([9 x [44 x %"struct.ap_int<8>"]]*, [1 x [44 x %"struct.ap_int<16>"]]*, i1)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
