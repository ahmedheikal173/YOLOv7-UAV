; ModuleID = 'D:/gam3a/zzzzzzzzzz/4-Memorty_Caching/window_1d/m41/m41/m41/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }

; Function Attrs: noinline
define void @apatb_window_avg_ir(%"struct.ap_uint<8>"* %din, %"struct.ap_uint<8>"* %dout) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 409600)
  %din_copy = bitcast i8* %malloccall to [409600 x i8]*
  %malloccall1 = call i8* @malloc(i64 409600)
  %dout_copy = bitcast i8* %malloccall1 to [409600 x i8]*
  %0 = bitcast %"struct.ap_uint<8>"* %din to [409600 x %"struct.ap_uint<8>"]*
  %1 = bitcast %"struct.ap_uint<8>"* %dout to [409600 x %"struct.ap_uint<8>"]*
  call fastcc void @copy_in([409600 x %"struct.ap_uint<8>"]* %0, [409600 x i8]* %din_copy, [409600 x %"struct.ap_uint<8>"]* %1, [409600 x i8]* %dout_copy)
  %2 = getelementptr [409600 x i8], [409600 x i8]* %din_copy, i32 0, i32 0
  %3 = getelementptr [409600 x i8], [409600 x i8]* %dout_copy, i32 0, i32 0
  call void @apatb_window_avg_hw(i8* %2, i8* %3)
  call fastcc void @copy_out([409600 x %"struct.ap_uint<8>"]* %0, [409600 x i8]* %din_copy, [409600 x %"struct.ap_uint<8>"]* %1, [409600 x i8]* %dout_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([409600 x %"struct.ap_uint<8>"]* readonly, [409600 x i8]* noalias, [409600 x %"struct.ap_uint<8>"]* readonly, [409600 x i8]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a409600struct.ap_uint<8>.59"([409600 x i8]* %1, [409600 x %"struct.ap_uint<8>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a409600struct.ap_uint<8>.59"([409600 x i8]* %3, [409600 x %"struct.ap_uint<8>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([409600 x %"struct.ap_uint<8>"]*, [409600 x i8]* noalias readonly, [409600 x %"struct.ap_uint<8>"]*, [409600 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a409600struct.ap_uint<8>"([409600 x %"struct.ap_uint<8>"]* %0, [409600 x i8]* %1)
  call fastcc void @"onebyonecpy_hls.p0a409600struct.ap_uint<8>"([409600 x %"struct.ap_uint<8>"]* %2, [409600 x i8]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a409600struct.ap_uint<8>"([409600 x %"struct.ap_uint<8>"]* noalias, [409600 x i8]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [409600 x %"struct.ap_uint<8>"]* %0, null
  %3 = icmp eq [409600 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [409600 x i8], [409600 x i8]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [409600 x %"struct.ap_uint<8>"], [409600 x %"struct.ap_uint<8>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 409600
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a409600struct.ap_uint<8>.59"([409600 x i8]* noalias, [409600 x %"struct.ap_uint<8>"]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [409600 x i8]* %0, null
  %3 = icmp eq [409600 x %"struct.ap_uint<8>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [409600 x %"struct.ap_uint<8>"], [409600 x %"struct.ap_uint<8>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [409600 x i8], [409600 x i8]* %0, i64 0, i64 %for.loop.idx7
  %6 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %6, i8* %5, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 409600
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_window_avg_hw(i8*, i8*)

define void @window_avg_hw_stub_wrapper(i8*, i8*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 409600)
  %2 = bitcast i8* %malloccall to [409600 x %"struct.ap_uint<8>"]*
  %malloccall1 = tail call i8* @malloc(i64 409600)
  %3 = bitcast i8* %malloccall1 to [409600 x %"struct.ap_uint<8>"]*
  %4 = bitcast i8* %0 to [409600 x i8]*
  %5 = bitcast i8* %1 to [409600 x i8]*
  call void @copy_out([409600 x %"struct.ap_uint<8>"]* %2, [409600 x i8]* %4, [409600 x %"struct.ap_uint<8>"]* %3, [409600 x i8]* %5)
  %6 = bitcast [409600 x %"struct.ap_uint<8>"]* %2 to %"struct.ap_uint<8>"*
  %7 = bitcast [409600 x %"struct.ap_uint<8>"]* %3 to %"struct.ap_uint<8>"*
  call void @window_avg_hw_stub(%"struct.ap_uint<8>"* %6, %"struct.ap_uint<8>"* %7)
  call void @copy_in([409600 x %"struct.ap_uint<8>"]* %2, [409600 x i8]* %4, [409600 x %"struct.ap_uint<8>"]* %3, [409600 x i8]* %5)
  ret void
}

declare void @window_avg_hw_stub(%"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}