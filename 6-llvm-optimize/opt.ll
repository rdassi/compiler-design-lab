; ModuleID = 'binarysearch.c'
source_filename = "binarysearch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Element is not present in array\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Element is present at index %d\00", align 1

; Function Attrs: nounwind readonly uwtable
define i32 @binarySearch(i32* readonly, i32, i32, i32) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, %1
  br i1 %5, label %27, label %6

; <label>:6:                                      ; preds = %4
  br label %7

; <label>:7:                                      ; preds = %6, %24
  %8 = phi i32 [ %11, %24 ], [ %2, %6 ]
  %9 = phi i32 [ %25, %24 ], [ %1, %6 ]
  br label %10

; <label>:10:                                     ; preds = %7, %21
  %11 = phi i32 [ %8, %7 ], [ %22, %21 ]
  %12 = sub nsw i32 %11, %9
  %13 = sdiv i32 %12, 2
  %14 = add nsw i32 %13, %9
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !2
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %10
  %20 = icmp sgt i32 %17, %3
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %19
  %22 = add nsw i32 %14, -1
  %23 = icmp slt i32 %12, 2
  br i1 %23, label %27, label %10

; <label>:24:                                     ; preds = %19
  %25 = add nsw i32 %14, 1
  %26 = icmp sgt i32 %11, %14
  br i1 %26, label %7, label %27

; <label>:27:                                     ; preds = %24, %10, %21, %4
  %28 = phi i32 [ -1, %4 ], [ -1, %21 ], [ %14, %10 ], [ -1, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @main() local_unnamed_addr #1 {
  br label %1

; <label>:1:                                      ; preds = %11, %0
  %2 = phi i32 [ 4, %0 ], [ %5, %11 ]
  %3 = phi i32 [ 0, %0 ], [ %12, %11 ]
  br label %4

; <label>:4:                                      ; preds = %9, %1
  %5 = phi i32 [ %2, %1 ], [ 3, %9 ]
  %6 = sub nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  %8 = add nsw i32 %7, %3
  switch i32 %8, label %11 [
    i32 3, label %16
    i32 4, label %9
  ]

; <label>:9:                                      ; preds = %4
  %10 = icmp slt i32 %6, 2
  br i1 %10, label %14, label %4

; <label>:11:                                     ; preds = %4
  %12 = add nsw i32 %8, 1
  %13 = icmp sgt i32 %5, %8
  br i1 %13, label %1, label %14

; <label>:14:                                     ; preds = %11, %9
  %15 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %18

; <label>:16:                                     ; preds = %4
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 3)
  br label %18

; <label>:18:                                     ; preds = %16, %14
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

attributes #0 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
