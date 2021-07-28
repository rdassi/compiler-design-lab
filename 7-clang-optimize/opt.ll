; ModuleID = 'bubblesort.c'
source_filename = "bubblesort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@main.arr = private unnamed_addr constant [7 x i32] [i32 64, i32 34, i32 25, i32 12, i32 22, i32 11, i32 90], align 16
@str = private unnamed_addr constant [15 x i8] c"Sorted array: \00"

; Function Attrs: norecurse nounwind uwtable
define void @swap(i32* nocapture, i32* nocapture) local_unnamed_addr #0 {
  %3 = load i32, i32* %0, align 4, !tbaa !2
  %4 = load i32, i32* %1, align 4, !tbaa !2
  store i32 %4, i32* %0, align 4, !tbaa !2
  store i32 %3, i32* %1, align 4, !tbaa !2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define void @bubbleSort(i32* nocapture, i32) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %48

; <label>:4:                                      ; preds = %2
  %5 = add i32 %1, -1
  br label %6

; <label>:6:                                      ; preds = %45, %4
  %7 = phi i32 [ 0, %4 ], [ %46, %45 ]
  %8 = sub i32 %5, %7
  %9 = zext i32 %8 to i64
  %10 = sub i32 %5, %7
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %45

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %0, align 4, !tbaa !2
  %14 = and i64 %9, 1
  %15 = icmp eq i32 %8, 1
  br i1 %15, label %34, label %16

; <label>:16:                                     ; preds = %12
  %17 = sub nsw i64 %9, %14
  br label %18

; <label>:18:                                     ; preds = %51, %16
  %19 = phi i32 [ %13, %16 ], [ %52, %51 ]
  %20 = phi i64 [ 0, %16 ], [ %30, %51 ]
  %21 = phi i64 [ %17, %16 ], [ %53, %51 ]
  %22 = or i64 %20, 1
  %23 = getelementptr inbounds i32, i32* %0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !2
  %25 = icmp sgt i32 %19, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds i32, i32* %0, i64 %20
  store i32 %24, i32* %27, align 4, !tbaa !2
  store i32 %19, i32* %23, align 4, !tbaa !2
  br label %28

; <label>:28:                                     ; preds = %18, %26
  %29 = phi i32 [ %24, %18 ], [ %19, %26 ]
  %30 = add nuw nsw i64 %20, 2
  %31 = getelementptr inbounds i32, i32* %0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !2
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %49, label %51

; <label>:34:                                     ; preds = %51, %12
  %35 = phi i32 [ %13, %12 ], [ %52, %51 ]
  %36 = phi i64 [ 0, %12 ], [ %30, %51 ]
  %37 = icmp eq i64 %14, 0
  br i1 %37, label %45, label %38

; <label>:38:                                     ; preds = %34
  %39 = add nuw nsw i64 %36, 1
  %40 = getelementptr inbounds i32, i32* %0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !2
  %42 = icmp sgt i32 %35, %41
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds i32, i32* %0, i64 %36
  store i32 %41, i32* %44, align 4, !tbaa !2
  store i32 %35, i32* %40, align 4, !tbaa !2
  br label %45

; <label>:45:                                     ; preds = %34, %38, %43, %6
  %46 = add nuw nsw i32 %7, 1
  %47 = icmp eq i32 %46, %5
  br i1 %47, label %48, label %6

; <label>:48:                                     ; preds = %45, %2
  ret void

; <label>:49:                                     ; preds = %28
  %50 = getelementptr inbounds i32, i32* %0, i64 %22
  store i32 %32, i32* %50, align 4, !tbaa !2
  store i32 %29, i32* %31, align 4, !tbaa !2
  br label %51

; <label>:51:                                     ; preds = %49, %28
  %52 = phi i32 [ %32, %28 ], [ %29, %49 ]
  %53 = add i64 %21, -2
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %34, label %18
}

; Function Attrs: nounwind uwtable
define void @printArray(i32* nocapture readonly, i32) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

; <label>:4:                                      ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

; <label>:6:                                      ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %11, %6 ]
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !2
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, %5
  br i1 %12, label %13, label %6

; <label>:13:                                     ; preds = %6, %2
  %14 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @main() local_unnamed_addr #2 {
  %1 = alloca [7 x i32], align 16
  %2 = bitcast [7 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %2, i8* bitcast ([7 x i32]* @main.arr to i8*), i64 28, i32 16, i1 false)
  %3 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %5 = load i32, i32* %4, align 4, !tbaa !2
  %6 = icmp slt i32 %5, 64
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %0
  %8 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  store i32 %5, i32* %8, align 16, !tbaa !2
  store i32 64, i32* %4, align 4, !tbaa !2
  br label %9

; <label>:9:                                      ; preds = %7, %0
  %10 = phi i32 [ %5, %0 ], [ 64, %7 ]
  %11 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %12 = load i32, i32* %11, align 8, !tbaa !2
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %137, label %139

; <label>:14:                                     ; preds = %167
  %15 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  store i32 %170, i32* %15, align 16, !tbaa !2
  store i32 %168, i32* %169, align 4, !tbaa !2
  br label %16

; <label>:16:                                     ; preds = %14, %167
  %17 = phi i32 [ %170, %167 ], [ %168, %14 ]
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %19 = load i32, i32* %18, align 8, !tbaa !2
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %109, label %111

; <label>:21:                                     ; preds = %132
  %22 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  store i32 %135, i32* %22, align 16, !tbaa !2
  store i32 %133, i32* %134, align 4, !tbaa !2
  br label %23

; <label>:23:                                     ; preds = %21, %132
  %24 = phi i32 [ %135, %132 ], [ %133, %21 ]
  %25 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %26 = load i32, i32* %25, align 8, !tbaa !2
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %88, label %90

; <label>:28:                                     ; preds = %104
  %29 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  store i32 %107, i32* %29, align 16, !tbaa !2
  store i32 %105, i32* %106, align 4, !tbaa !2
  br label %30

; <label>:30:                                     ; preds = %28, %104
  %31 = phi i32 [ %107, %104 ], [ %105, %28 ]
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %33 = load i32, i32* %32, align 8, !tbaa !2
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %74, label %76

; <label>:35:                                     ; preds = %83
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  store i32 %86, i32* %36, align 16, !tbaa !2
  store i32 %84, i32* %85, align 4, !tbaa !2
  br label %37

; <label>:37:                                     ; preds = %35, %83
  %38 = phi i32 [ %86, %83 ], [ %84, %35 ]
  %39 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %40 = load i32, i32* %39, align 8, !tbaa !2
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %67, label %69

; <label>:42:                                     ; preds = %69
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  store i32 %72, i32* %43, align 16, !tbaa !2
  store i32 %70, i32* %71, align 4, !tbaa !2
  br label %44

; <label>:44:                                     ; preds = %42, %69
  %45 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str, i64 0, i64 0))
  %46 = load i32, i32* %3, align 16, !tbaa !2
  %47 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %46) #4
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %49 = load i32, i32* %48, align 4, !tbaa !2
  %50 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %49) #4
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  %52 = load i32, i32* %51, align 8, !tbaa !2
  %53 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52) #4
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  %55 = load i32, i32* %54, align 4, !tbaa !2
  %56 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55) #4
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  %58 = load i32, i32* %57, align 16, !tbaa !2
  %59 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %58) #4
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  %61 = load i32, i32* %60, align 4, !tbaa !2
  %62 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61) #4
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 6
  %64 = load i32, i32* %63, align 8, !tbaa !2
  %65 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %64) #4
  %66 = tail call i32 @putchar(i32 10) #4
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #4
  ret i32 0

; <label>:67:                                     ; preds = %37
  %68 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  store i32 %40, i32* %68, align 4, !tbaa !2
  store i32 %38, i32* %39, align 8, !tbaa !2
  br label %69

; <label>:69:                                     ; preds = %67, %37
  %70 = load i32, i32* %3, align 16, !tbaa !2
  %71 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %72 = load i32, i32* %71, align 4, !tbaa !2
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %42, label %44

; <label>:74:                                     ; preds = %30
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  store i32 %33, i32* %75, align 4, !tbaa !2
  store i32 %31, i32* %32, align 8, !tbaa !2
  br label %76

; <label>:76:                                     ; preds = %74, %30
  %77 = phi i32 [ %33, %30 ], [ %31, %74 ]
  %78 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  %79 = load i32, i32* %78, align 4, !tbaa !2
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  store i32 %79, i32* %82, align 8, !tbaa !2
  store i32 %77, i32* %78, align 4, !tbaa !2
  br label %83

; <label>:83:                                     ; preds = %81, %76
  %84 = load i32, i32* %3, align 16, !tbaa !2
  %85 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %86 = load i32, i32* %85, align 4, !tbaa !2
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %35, label %37

; <label>:88:                                     ; preds = %23
  %89 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  store i32 %26, i32* %89, align 4, !tbaa !2
  store i32 %24, i32* %25, align 8, !tbaa !2
  br label %90

; <label>:90:                                     ; preds = %88, %23
  %91 = phi i32 [ %26, %23 ], [ %24, %88 ]
  %92 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  %93 = load i32, i32* %92, align 4, !tbaa !2
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %95, label %97

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  store i32 %93, i32* %96, align 8, !tbaa !2
  store i32 %91, i32* %92, align 4, !tbaa !2
  br label %97

; <label>:97:                                     ; preds = %95, %90
  %98 = phi i32 [ %93, %90 ], [ %91, %95 ]
  %99 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  %100 = load i32, i32* %99, align 16, !tbaa !2
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %104

; <label>:102:                                    ; preds = %97
  %103 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  store i32 %100, i32* %103, align 4, !tbaa !2
  store i32 %98, i32* %99, align 16, !tbaa !2
  br label %104

; <label>:104:                                    ; preds = %102, %97
  %105 = load i32, i32* %3, align 16, !tbaa !2
  %106 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %107 = load i32, i32* %106, align 4, !tbaa !2
  %108 = icmp sgt i32 %105, %107
  br i1 %108, label %28, label %30

; <label>:109:                                    ; preds = %16
  %110 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  store i32 %19, i32* %110, align 4, !tbaa !2
  store i32 %17, i32* %18, align 8, !tbaa !2
  br label %111

; <label>:111:                                    ; preds = %109, %16
  %112 = phi i32 [ %19, %16 ], [ %17, %109 ]
  %113 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  %114 = load i32, i32* %113, align 4, !tbaa !2
  %115 = icmp sgt i32 %112, %114
  br i1 %115, label %116, label %118

; <label>:116:                                    ; preds = %111
  %117 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  store i32 %114, i32* %117, align 8, !tbaa !2
  store i32 %112, i32* %113, align 4, !tbaa !2
  br label %118

; <label>:118:                                    ; preds = %116, %111
  %119 = phi i32 [ %114, %111 ], [ %112, %116 ]
  %120 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  %121 = load i32, i32* %120, align 16, !tbaa !2
  %122 = icmp sgt i32 %119, %121
  br i1 %122, label %123, label %125

; <label>:123:                                    ; preds = %118
  %124 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  store i32 %121, i32* %124, align 4, !tbaa !2
  store i32 %119, i32* %120, align 16, !tbaa !2
  br label %125

; <label>:125:                                    ; preds = %123, %118
  %126 = phi i32 [ %121, %118 ], [ %119, %123 ]
  %127 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  %128 = load i32, i32* %127, align 4, !tbaa !2
  %129 = icmp sgt i32 %126, %128
  br i1 %129, label %130, label %132

; <label>:130:                                    ; preds = %125
  %131 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  store i32 %128, i32* %131, align 16, !tbaa !2
  store i32 %126, i32* %127, align 4, !tbaa !2
  br label %132

; <label>:132:                                    ; preds = %130, %125
  %133 = load i32, i32* %3, align 16, !tbaa !2
  %134 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %135 = load i32, i32* %134, align 4, !tbaa !2
  %136 = icmp sgt i32 %133, %135
  br i1 %136, label %21, label %23

; <label>:137:                                    ; preds = %9
  %138 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  store i32 %12, i32* %138, align 4, !tbaa !2
  store i32 %10, i32* %11, align 8, !tbaa !2
  br label %139

; <label>:139:                                    ; preds = %137, %9
  %140 = phi i32 [ %12, %9 ], [ %10, %137 ]
  %141 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  %142 = load i32, i32* %141, align 4, !tbaa !2
  %143 = icmp sgt i32 %140, %142
  br i1 %143, label %144, label %146

; <label>:144:                                    ; preds = %139
  %145 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 2
  store i32 %142, i32* %145, align 8, !tbaa !2
  store i32 %140, i32* %141, align 4, !tbaa !2
  br label %146

; <label>:146:                                    ; preds = %144, %139
  %147 = phi i32 [ %142, %139 ], [ %140, %144 ]
  %148 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  %149 = load i32, i32* %148, align 16, !tbaa !2
  %150 = icmp sgt i32 %147, %149
  br i1 %150, label %151, label %153

; <label>:151:                                    ; preds = %146
  %152 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 3
  store i32 %149, i32* %152, align 4, !tbaa !2
  store i32 %147, i32* %148, align 16, !tbaa !2
  br label %153

; <label>:153:                                    ; preds = %151, %146
  %154 = phi i32 [ %149, %146 ], [ %147, %151 ]
  %155 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  %156 = load i32, i32* %155, align 4, !tbaa !2
  %157 = icmp sgt i32 %154, %156
  br i1 %157, label %158, label %160

; <label>:158:                                    ; preds = %153
  %159 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 4
  store i32 %156, i32* %159, align 16, !tbaa !2
  store i32 %154, i32* %155, align 4, !tbaa !2
  br label %160

; <label>:160:                                    ; preds = %158, %153
  %161 = phi i32 [ %156, %153 ], [ %154, %158 ]
  %162 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 6
  %163 = load i32, i32* %162, align 8, !tbaa !2
  %164 = icmp sgt i32 %161, %163
  br i1 %164, label %165, label %167

; <label>:165:                                    ; preds = %160
  %166 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 5
  store i32 %163, i32* %166, align 4, !tbaa !2
  store i32 %161, i32* %162, align 8, !tbaa !2
  br label %167

; <label>:167:                                    ; preds = %165, %160
  %168 = load i32, i32* %3, align 16, !tbaa !2
  %169 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 1
  %170 = load i32, i32* %169, align 4, !tbaa !2
  %171 = icmp sgt i32 %168, %170
  br i1 %171, label %14, label %16
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

attributes #0 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
