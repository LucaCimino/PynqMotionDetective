; ModuleID = 'C:/Users/lucac/VivadoHLS/AES_Encryption/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@single_block_AES_encrypt_str = internal unnamed_addr constant [25 x i8] c"single_block_AES_encrypt\00" ; [#uses=1 type=[25 x i8]*]
@s_box = internal unnamed_addr constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16 ; [#uses=2 type=[256 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@key = internal unnamed_addr constant [16 x i8] c"c\D3q\E3k\B2\12\85\E7g\D2\FF\11\15\E3\AB", align 16 ; [#uses=4 type=[16 x i8]*]
@R = global [4 x i8] c"\02\00\00\00", align 1     ; [#uses=4 type=[4 x i8]*]
@K = global i32 0, align 4                        ; [#uses=0 type=i32*]
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]

; [#uses=2]
define internal fastcc void @single_block_AES_encrypt_sub_bytes([16 x i8]* nocapture %state) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %state}, i64 0, metadata !19), !dbg !32 ; [debug line = 194:25] [debug variable = state]
  br label %.loopexit, !dbg !33                   ; [debug line = 198:7]

.loopexit:                                        ; preds = %.preheader, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %.preheader ]    ; [#uses=3 type=i3]
  %exitcond1 = icmp eq i3 %i, -4, !dbg !33        ; [#uses=1 type=i1] [debug line = 198:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_1 = add i3 %i, 1, !dbg !36                   ; [#uses=1 type=i3] [debug line = 198:21]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !37), !dbg !36 ; [debug line = 198:21] [debug variable = i]
  br i1 %exitcond1, label %2, label %.preheader.preheader, !dbg !33 ; [debug line = 198:7]

.preheader.preheader:                             ; preds = %.loopexit
  %tmp = trunc i3 %i to i2                        ; [#uses=1 type=i2]
  %tmp_3 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp, i2 0), !dbg !38 ; [#uses=1 type=i4] [debug line = 203:4]
  br label %.preheader, !dbg !42                  ; [debug line = 199:8]

.preheader:                                       ; preds = %1, %.preheader.preheader
  %j = phi i3 [ %j_1, %1 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %j, -4, !dbg !42         ; [#uses=1 type=i1] [debug line = 199:8]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %j_1 = add i3 %j, 1, !dbg !43                   ; [#uses=1 type=i3] [debug line = 199:22]
  br i1 %exitcond, label %.loopexit, label %1, !dbg !42 ; [debug line = 199:8]

; <label>:1                                       ; preds = %.preheader
  %tmp_5_cast = zext i3 %j to i4, !dbg !38        ; [#uses=1 type=i4] [debug line = 203:4]
  %tmp_6 = add i4 %tmp_3, %tmp_5_cast, !dbg !38   ; [#uses=1 type=i4] [debug line = 203:4]
  %tmp_7 = zext i4 %tmp_6 to i64, !dbg !38        ; [#uses=1 type=i64] [debug line = 203:4]
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_7, !dbg !38 ; [#uses=2 type=i8*] [debug line = 203:4]
  %state_load = load i8* %state_addr, align 1, !dbg !38 ; [#uses=1 type=i8] [debug line = 203:4]
  %tmp_8 = zext i8 %state_load to i64, !dbg !38   ; [#uses=1 type=i64] [debug line = 203:4]
  %s_box_addr = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_8, !dbg !38 ; [#uses=1 type=i8*] [debug line = 203:4]
  %s_box_load = load i8* %s_box_addr, align 1, !dbg !38 ; [#uses=1 type=i8] [debug line = 203:4]
  store i8 %s_box_load, i8* %state_addr, align 1, !dbg !38 ; [debug line = 203:4]
  call void @llvm.dbg.value(metadata !{i3 %j_1}, i64 0, metadata !44), !dbg !43 ; [debug line = 199:22] [debug variable = j]
  br label %.preheader, !dbg !43                  ; [debug line = 199:22]

; <label>:2                                       ; preds = %.loopexit
  ret void, !dbg !45                              ; [debug line = 206:1]
}

; [#uses=0]
define void @single_block_AES_encrypt(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V, i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %i_plaintext_V_data), !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_plaintext_V_user_V), !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %i_plaintext_V_last_V), !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %cipher_V_data), !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %cipher_V_user_V), !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %cipher_V_last_V), !map !66
  call void (...)* @_ssdm_op_SpecTopModule([25 x i8]* @single_block_AES_encrypt_str) nounwind
  %plaintext = alloca [16 x i8], align 16         ; [#uses=2 type=[16 x i8]*]
  %out = alloca [16 x i8], align 16               ; [#uses=2 type=[16 x i8]*]
  %w = alloca [176 x i8], align 16                ; [#uses=2 type=[176 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %i_plaintext_V_data}, i64 0, metadata !70), !dbg !510 ; [debug line = 8:57] [debug variable = i_plaintext.V.data]
  call void @llvm.dbg.value(metadata !{i1* %i_plaintext_V_user_V}, i64 0, metadata !511), !dbg !510 ; [debug line = 8:57] [debug variable = i_plaintext.V.user.V]
  call void @llvm.dbg.value(metadata !{i1* %i_plaintext_V_last_V}, i64 0, metadata !523), !dbg !510 ; [debug line = 8:57] [debug variable = i_plaintext.V.last.V]
  call void @llvm.dbg.value(metadata !{i8* %cipher_V_data}, i64 0, metadata !524), !dbg !526 ; [debug line = 8:96] [debug variable = cipher.V.data]
  call void @llvm.dbg.value(metadata !{i1* %cipher_V_user_V}, i64 0, metadata !527), !dbg !526 ; [debug line = 8:96] [debug variable = cipher.V.user.V]
  call void @llvm.dbg.value(metadata !{i1* %cipher_V_last_V}, i64 0, metadata !528), !dbg !526 ; [debug line = 8:96] [debug variable = cipher.V.last.V]
  call void (...)* @_ssdm_op_SpecInterface(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !529 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !531 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !532 ; [debug line = 13:1]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %plaintext}, metadata !533), !dbg !535 ; [debug line = 31:10] [debug variable = plaintext]
  br label %1, !dbg !536                          ; [debug line = 37:6]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_2, %2 ]             ; [#uses=3 type=i5]
  %exitcond1 = icmp eq i5 %i, -16, !dbg !536      ; [#uses=1 type=i1] [debug line = 37:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %i_2 = add i5 %i, 1, !dbg !538                  ; [#uses=1 type=i5] [debug line = 37:31]
  br i1 %exitcond1, label %3, label %2, !dbg !536 ; [debug line = 37:6]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i8* %i_plaintext_V_data}, i64 0, metadata !539), !dbg !544 ; [debug line = 129:56@38:9] [debug variable = stream<stream_type>.V.data]
  call void @llvm.dbg.value(metadata !{i1* %i_plaintext_V_user_V}, i64 0, metadata !547), !dbg !544 ; [debug line = 129:56@38:9] [debug variable = stream<stream_type>.V.user.V]
  call void @llvm.dbg.value(metadata !{i1* %i_plaintext_V_last_V}, i64 0, metadata !549), !dbg !544 ; [debug line = 129:56@38:9] [debug variable = stream<stream_type>.V.last.V]
  %empty_10 = call { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8* %i_plaintext_V_data, i1* %i_plaintext_V_user_V, i1* %i_plaintext_V_last_V), !dbg !550 ; [#uses=1 type={ i8, i1, i1 }] [debug line = 131:9@38:9]
  %tmp_data = extractvalue { i8, i1, i1 } %empty_10, 0, !dbg !550 ; [#uses=1 type=i8] [debug line = 131:9@38:9]
  call void @llvm.dbg.value(metadata !{i8 %tmp_data}, i64 0, metadata !552), !dbg !550 ; [debug line = 131:9@38:9] [debug variable = tmp.data]
  %tmp = zext i5 %i to i64, !dbg !554             ; [#uses=1 type=i64] [debug line = 39:3]
  %plaintext_addr = getelementptr inbounds [16 x i8]* %plaintext, i64 0, i64 %tmp, !dbg !554 ; [#uses=1 type=i8*] [debug line = 39:3]
  store i8 %tmp_data, i8* %plaintext_addr, align 1, !dbg !554 ; [debug line = 39:3]
  call void @llvm.dbg.value(metadata !{i5 %i_2}, i64 0, metadata !555), !dbg !538 ; [debug line = 37:31] [debug variable = i]
  br label %1, !dbg !538                          ; [debug line = 37:31]

; <label>:3                                       ; preds = %1
  call void @llvm.dbg.declare(metadata !{[176 x i8]* %w}, metadata !556), !dbg !560 ; [debug line = 42:10] [debug variable = w]
  call fastcc void @single_block_AES_encrypt_aes_key_expansion([176 x i8]* %w), !dbg !561 ; [debug line = 44:2]
  call fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* %plaintext, [16 x i8]* %out, [176 x i8]* %w), !dbg !562 ; [debug line = 46:2]
  br label %4, !dbg !563                          ; [debug line = 49:6]

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i5 [ 0, %3 ], [ %i_3, %5 ]           ; [#uses=4 type=i5]
  %exitcond = icmp eq i5 %i_1, -16, !dbg !563     ; [#uses=1 type=i1] [debug line = 49:6]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %i_3 = add i5 %i_1, 1, !dbg !565                ; [#uses=1 type=i5] [debug line = 49:31]
  br i1 %exitcond, label %6, label %5, !dbg !563  ; [debug line = 49:6]

; <label>:5                                       ; preds = %4
  %tmp_s = zext i5 %i_1 to i64, !dbg !566         ; [#uses=1 type=i64] [debug line = 51:3]
  %out_addr = getelementptr inbounds [16 x i8]* %out, i64 0, i64 %tmp_s, !dbg !566 ; [#uses=1 type=i8*] [debug line = 51:3]
  %tmp_data_1 = load i8* %out_addr, align 1, !dbg !566 ; [#uses=1 type=i8] [debug line = 51:3]
  %tmp_last_V = icmp eq i5 %i_1, 15, !dbg !568    ; [#uses=1 type=i1] [debug line = 53:3]
  call void @llvm.dbg.value(metadata !{i8* %cipher_V_data}, i64 0, metadata !569), !dbg !572 ; [debug line = 144:48@58:3] [debug variable = stream<stream_type>.V.data]
  call void @llvm.dbg.value(metadata !{i1* %cipher_V_user_V}, i64 0, metadata !574), !dbg !572 ; [debug line = 144:48@58:3] [debug variable = stream<stream_type>.V.user.V]
  call void @llvm.dbg.value(metadata !{i1* %cipher_V_last_V}, i64 0, metadata !575), !dbg !572 ; [debug line = 144:48@58:3] [debug variable = stream<stream_type>.V.last.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_data_1}, i64 0, metadata !576), !dbg !579 ; [debug line = 145:31@58:3] [debug variable = tmp.data]
  call void @llvm.dbg.value(metadata !{i1 %tmp_last_V}, i64 0, metadata !580), !dbg !579 ; [debug line = 145:31@58:3] [debug variable = tmp.last.V]
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8* %cipher_V_data, i1* %cipher_V_user_V, i1* %cipher_V_last_V, i8 %tmp_data_1, i1 true, i1 %tmp_last_V), !dbg !581 ; [debug line = 146:9@58:3]
  call void @llvm.dbg.value(metadata !{i5 %i_3}, i64 0, metadata !555), !dbg !565 ; [debug line = 49:31] [debug variable = i]
  br label %4, !dbg !565                          ; [debug line = 49:31]

; <label>:6                                       ; preds = %4
  ret void, !dbg !582                             ; [debug line = 61:2]
}

; [#uses=2]
define internal fastcc void @single_block_AES_encrypt_shift_rows([16 x i8]* nocapture %state) {
  call void @llvm.dbg.value(metadata !{[16 x i8]* %state}, i64 0, metadata !583), !dbg !585 ; [debug line = 168:26] [debug variable = state]
  br label %1, !dbg !586                          ; [debug line = 172:7]

; <label>:1                                       ; preds = %6, %0
  %indvars_iv = phi i3 [ %i, %6 ], [ 1, %0 ]      ; [#uses=4 type=i3]
  %indvars_iv_cast = zext i3 %indvars_iv to i4, !dbg !586 ; [#uses=1 type=i4] [debug line = 172:7]
  %exitcond2 = icmp eq i3 %indvars_iv, -4, !dbg !586 ; [#uses=1 type=i1] [debug line = 172:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond2, label %7, label %.preheader.preheader, !dbg !586 ; [debug line = 172:7]

.preheader.preheader:                             ; preds = %1
  %tmp_1 = trunc i3 %indvars_iv to i2             ; [#uses=2 type=i2]
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_1, i2 0), !dbg !589 ; [#uses=3 type=i4] [debug line = 177:4]
  %tmp_2 = zext i4 %tmp_s to i64, !dbg !589       ; [#uses=1 type=i64] [debug line = 177:4]
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_2, !dbg !589 ; [#uses=1 type=i8*] [debug line = 177:4]
  %tmp_3 = or i4 %tmp_s, 3, !dbg !592             ; [#uses=1 type=i4] [debug line = 183:4]
  %tmp_4 = zext i4 %tmp_3 to i64, !dbg !592       ; [#uses=1 type=i64] [debug line = 183:4]
  %state_addr_1 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_4, !dbg !592 ; [#uses=1 type=i8*] [debug line = 183:4]
  br label %.preheader, !dbg !593                 ; [debug line = 176:3]

.preheader:                                       ; preds = %5, %.preheader.preheader
  %s = phi i2 [ %s_1, %5 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i2]
  %s_cast = zext i2 %s to i4, !dbg !593           ; [#uses=1 type=i4] [debug line = 176:3]
  %exitcond1 = icmp eq i4 %s_cast, %indvars_iv_cast, !dbg !593 ; [#uses=1 type=i1] [debug line = 176:3]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 0) ; [#uses=0 type=i32]
  %s_1 = add i2 %s, 1, !dbg !594                  ; [#uses=1 type=i2] [debug line = 184:4]
  br i1 %exitcond1, label %6, label %2, !dbg !593 ; [debug line = 176:3]

; <label>:2                                       ; preds = %.preheader
  %tmp = load i8* %state_addr, align 1, !dbg !589 ; [#uses=1 type=i8] [debug line = 177:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp}, i64 0, metadata !595), !dbg !589 ; [debug line = 177:4] [debug variable = tmp]
  br label %3, !dbg !596                          ; [debug line = 179:9]

; <label>:3                                       ; preds = %4, %2
  %k = phi i3 [ 1, %2 ], [ %k_1, %4 ]             ; [#uses=4 type=i3]
  %exitcond = icmp eq i3 %k, -4, !dbg !596        ; [#uses=1 type=i1] [debug line = 179:9]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %4, !dbg !596  ; [debug line = 179:9]

; <label>:4                                       ; preds = %3
  %tmp_8 = trunc i3 %k to i2, !dbg !598           ; [#uses=1 type=i2] [debug line = 180:5]
  %tmp_5_cast = zext i3 %k to i4, !dbg !598       ; [#uses=1 type=i4] [debug line = 180:5]
  %tmp_6 = add i4 %tmp_5_cast, %tmp_s, !dbg !598  ; [#uses=1 type=i4] [debug line = 180:5]
  %tmp_7 = zext i4 %tmp_6 to i64, !dbg !598       ; [#uses=1 type=i64] [debug line = 180:5]
  %state_addr_2 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_7, !dbg !598 ; [#uses=1 type=i8*] [debug line = 180:5]
  %state_load = load i8* %state_addr_2, align 1, !dbg !598 ; [#uses=1 type=i8] [debug line = 180:5]
  %tmp1 = add i2 -1, %tmp_8, !dbg !598            ; [#uses=1 type=i2] [debug line = 180:5]
  %tmp_9 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_1, i2 %tmp1), !dbg !598 ; [#uses=1 type=i4] [debug line = 180:5]
  %tmp_5 = zext i4 %tmp_9 to i64, !dbg !598       ; [#uses=1 type=i64] [debug line = 180:5]
  %state_addr_3 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_5, !dbg !598 ; [#uses=1 type=i8*] [debug line = 180:5]
  store i8 %state_load, i8* %state_addr_3, align 1, !dbg !598 ; [debug line = 180:5]
  %k_1 = add i3 1, %k, !dbg !600                  ; [#uses=1 type=i3] [debug line = 179:23]
  call void @llvm.dbg.value(metadata !{i3 %k_1}, i64 0, metadata !601), !dbg !600 ; [debug line = 179:23] [debug variable = k]
  br label %3, !dbg !600                          ; [debug line = 179:23]

; <label>:5                                       ; preds = %3
  store i8 %tmp, i8* %state_addr_1, align 1, !dbg !592 ; [debug line = 183:4]
  call void @llvm.dbg.value(metadata !{i2 %s_1}, i64 0, metadata !602), !dbg !594 ; [debug line = 184:4] [debug variable = s]
  br label %.preheader, !dbg !603                 ; [debug line = 185:3]

; <label>:6                                       ; preds = %.preheader
  %i = add i3 %indvars_iv, 1, !dbg !604           ; [#uses=1 type=i3] [debug line = 172:21]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !605), !dbg !604 ; [debug line = 172:21] [debug variable = i]
  br label %1, !dbg !604                          ; [debug line = 172:21]

; <label>:7                                       ; preds = %1
  ret void, !dbg !606                             ; [debug line = 187:1]
}

; [#uses=1]
define internal fastcc void @single_block_AES_encrypt_mix_columns([16 x i8]* nocapture %state) {
  %col_0_s = alloca i8                            ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %col_0_s}, metadata !607) ; [debug variable = b[0]]
  %col_1_s = alloca i8                            ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %col_1_s}, metadata !620) ; [debug variable = b[1]]
  %col_2_s = alloca i8                            ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %col_2_s}, metadata !621) ; [debug variable = b[2]]
  %col_3_s = alloca i8                            ; [#uses=3 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %col_3_s}, metadata !622) ; [debug variable = b[3]]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %state}, i64 0, metadata !623), !dbg !624 ; [debug line = 146:27] [debug variable = state]
  br label %.loopexit, !dbg !625                  ; [debug line = 151:7]

.loopexit:                                        ; preds = %2, %0
  %j = phi i3 [ 0, %0 ], [ %j_2, %2 ]             ; [#uses=3 type=i3]
  %exitcond2 = icmp eq i3 %j, -4, !dbg !625       ; [#uses=1 type=i1] [debug line = 151:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %j_2 = add i3 %j, 1, !dbg !626                  ; [#uses=1 type=i3] [debug line = 151:21]
  call void @llvm.dbg.value(metadata !{i3 %j_2}, i64 0, metadata !627), !dbg !626 ; [debug line = 151:21] [debug variable = j]
  br i1 %exitcond2, label %4, label %.preheader.preheader, !dbg !625 ; [debug line = 151:7]

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_cast = zext i3 %j to i4, !dbg !628         ; [#uses=2 type=i4] [debug line = 152:8]
  br label %.preheader, !dbg !628                 ; [debug line = 152:8]

.preheader:                                       ; preds = %_ifconv, %.preheader.preheader
  %i = phi i3 [ 0, %.preheader.preheader ], [ %i_4, %_ifconv ] ; [#uses=3 type=i3]
  %exitcond1 = icmp eq i3 %i, -4, !dbg !628       ; [#uses=1 type=i1] [debug line = 152:8]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_4 = add i3 %i, 1, !dbg !630                  ; [#uses=1 type=i3] [debug line = 152:22]
  br i1 %exitcond1, label %1, label %_ifconv, !dbg !628 ; [debug line = 152:8]

_ifconv:                                          ; preds = %.preheader
  %col_0_load_1 = load i8* %col_0_s               ; [#uses=1 type=i8]
  %col_1_load_1 = load i8* %col_1_s               ; [#uses=2 type=i8]
  %col_2_load_1 = load i8* %col_2_s               ; [#uses=2 type=i8]
  %col_3_load_1 = load i8* %col_3_s               ; [#uses=2 type=i8]
  %tmp_10 = trunc i3 %i to i2                     ; [#uses=4 type=i2]
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_10, i2 0), !dbg !631 ; [#uses=1 type=i4] [debug line = 153:4]
  %tmp_6 = add i4 %tmp_cast, %tmp_s, !dbg !631    ; [#uses=1 type=i4] [debug line = 153:4]
  %tmp_7 = zext i4 %tmp_6 to i64, !dbg !631       ; [#uses=1 type=i64] [debug line = 153:4]
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_7, !dbg !631 ; [#uses=1 type=i8*] [debug line = 153:4]
  %col_0 = load i8* %state_addr, align 1, !dbg !631 ; [#uses=4 type=i8] [debug line = 153:4]
  call void @llvm.dbg.value(metadata !{i8 %col_0}, i64 0, metadata !633), !dbg !631 ; [debug line = 153:4] [debug variable = col[0]]
  call void @llvm.dbg.value(metadata !{i8 %col_0}, i64 0, metadata !637), !dbg !631 ; [debug line = 153:4] [debug variable = col[3]]
  call void @llvm.dbg.value(metadata !{i8 %col_0}, i64 0, metadata !638), !dbg !631 ; [debug line = 153:4] [debug variable = col[1]]
  call void @llvm.dbg.value(metadata !{i8 %col_0}, i64 0, metadata !639), !dbg !631 ; [debug line = 153:4] [debug variable = col[2]]
  %sel_tmp = icmp eq i2 %tmp_10, -2               ; [#uses=2 type=i1]
  %sel_tmp2 = icmp eq i2 %tmp_10, 1               ; [#uses=2 type=i1]
  %sel_tmp4 = icmp eq i2 %tmp_10, 0               ; [#uses=3 type=i1]
  %or_cond = or i1 %sel_tmp4, %sel_tmp2           ; [#uses=2 type=i1]
  %newSel = select i1 %sel_tmp, i8 %col_3_load_1, i8 %col_0 ; [#uses=1 type=i8]
  %col_3 = select i1 %or_cond, i8 %col_3_load_1, i8 %newSel ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %col_3}, i64 0, metadata !637), !dbg !631 ; [debug line = 153:4] [debug variable = col[3]]
  %newSel2 = select i1 %sel_tmp, i8 %col_0, i8 %col_2_load_1 ; [#uses=1 type=i8]
  %col_3_1 = select i1 %or_cond, i8 %col_2_load_1, i8 %newSel2 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %col_3_1}, i64 0, metadata !637), !dbg !631 ; [debug line = 153:4] [debug variable = col[3]]
  %col_3_3 = select i1 %sel_tmp2, i8 %col_0, i8 %col_1_load_1 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %col_3_3}, i64 0, metadata !637), !dbg !631 ; [debug line = 153:4] [debug variable = col[3]]
  %col_3_4 = select i1 %sel_tmp4, i8 %col_1_load_1, i8 %col_3_3 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %col_3_4}, i64 0, metadata !637), !dbg !631 ; [debug line = 153:4] [debug variable = col[3]]
  %col_3_5 = select i1 %sel_tmp4, i8 %col_0, i8 %col_0_load_1 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %col_3_5}, i64 0, metadata !637), !dbg !631 ; [debug line = 153:4] [debug variable = col[3]]
  call void @llvm.dbg.value(metadata !{i3 %i_4}, i64 0, metadata !640), !dbg !630 ; [debug line = 152:22] [debug variable = i]
  store i8 %col_3, i8* %col_3_s, !dbg !631        ; [debug line = 153:4]
  store i8 %col_3_1, i8* %col_2_s, !dbg !631      ; [debug line = 153:4]
  store i8 %col_3_4, i8* %col_1_s, !dbg !631      ; [debug line = 153:4]
  store i8 %col_3_5, i8* %col_0_s, !dbg !631      ; [debug line = 153:4]
  br label %.preheader, !dbg !630                 ; [debug line = 152:22]

; <label>:1                                       ; preds = %.preheader
  %col_0_load = load i8* %col_0_s, !dbg !641      ; [#uses=3 type=i8] [debug line = 66:9@156:3]
  %col_1_load = load i8* %col_1_s, !dbg !643      ; [#uses=3 type=i8] [debug line = 66:26@156:3]
  %col_2_load = load i8* %col_2_s, !dbg !644      ; [#uses=3 type=i8] [debug line = 66:43@156:3]
  %col_3_load = load i8* %col_3_s, !dbg !645      ; [#uses=3 type=i8] [debug line = 66:60@156:3]
  %tmp_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_0_load), !dbg !641 ; [#uses=1 type=i8] [debug line = 66:9@156:3]
  %tmp_i_15 = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_1_load), !dbg !643 ; [#uses=1 type=i8] [debug line = 66:26@156:3]
  %tmp_20_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_2_load), !dbg !644 ; [#uses=2 type=i8] [debug line = 66:43@156:3]
  %tmp_21_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_3_load), !dbg !645 ; [#uses=2 type=i8] [debug line = 66:60@156:3]
  %tmp = xor i8 %tmp_i_15, %tmp_i, !dbg !645      ; [#uses=1 type=i8] [debug line = 66:60@156:3]
  %tmp2 = xor i8 %tmp_20_i, %tmp_21_i, !dbg !645  ; [#uses=1 type=i8] [debug line = 66:60@156:3]
  %res_0 = xor i8 %tmp2, %tmp, !dbg !645          ; [#uses=1 type=i8] [debug line = 66:60@156:3]
  %tmp_24_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_0_load), !dbg !646 ; [#uses=2 type=i8] [debug line = 67:9@156:3]
  %tmp_25_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_1_load), !dbg !647 ; [#uses=1 type=i8] [debug line = 67:26@156:3]
  %tmp_26_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_2_load), !dbg !648 ; [#uses=1 type=i8] [debug line = 67:43@156:3]
  %tmp3 = xor i8 %tmp_25_i, %tmp_24_i, !dbg !649  ; [#uses=1 type=i8] [debug line = 67:60@156:3]
  %tmp4 = xor i8 %tmp_26_i, %tmp_21_i, !dbg !649  ; [#uses=1 type=i8] [debug line = 67:60@156:3]
  %res_1 = xor i8 %tmp4, %tmp3, !dbg !649         ; [#uses=1 type=i8] [debug line = 67:60@156:3]
  %tmp_29_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 1, i8 zeroext %col_1_load), !dbg !650 ; [#uses=2 type=i8] [debug line = 68:26@156:3]
  %tmp_30_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_2_load), !dbg !651 ; [#uses=1 type=i8] [debug line = 68:43@156:3]
  %tmp_31_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_3_load), !dbg !652 ; [#uses=1 type=i8] [debug line = 68:60@156:3]
  %tmp5 = xor i8 %tmp_29_i, %tmp_24_i, !dbg !652  ; [#uses=1 type=i8] [debug line = 68:60@156:3]
  %tmp6 = xor i8 %tmp_30_i, %tmp_31_i, !dbg !652  ; [#uses=1 type=i8] [debug line = 68:60@156:3]
  %res_2 = xor i8 %tmp6, %tmp5, !dbg !652         ; [#uses=1 type=i8] [debug line = 68:60@156:3]
  %tmp_34_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 3, i8 zeroext %col_0_load), !dbg !653 ; [#uses=1 type=i8] [debug line = 69:9@156:3]
  %tmp_35_i = call fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext 2, i8 zeroext %col_3_load), !dbg !654 ; [#uses=1 type=i8] [debug line = 69:60@156:3]
  %tmp7 = xor i8 %tmp_29_i, %tmp_34_i, !dbg !654  ; [#uses=1 type=i8] [debug line = 69:60@156:3]
  %tmp8 = xor i8 %tmp_20_i, %tmp_35_i, !dbg !654  ; [#uses=1 type=i8] [debug line = 69:60@156:3]
  %res_3 = xor i8 %tmp8, %tmp7, !dbg !654         ; [#uses=1 type=i8] [debug line = 69:60@156:3]
  call void @llvm.dbg.value(metadata !{i8 %res_0}, i64 0, metadata !655), !dbg !657 ; [debug line = 64:49@156:3] [debug variable = d[0]]
  call void @llvm.dbg.value(metadata !{i8 %res_1}, i64 0, metadata !658), !dbg !657 ; [debug line = 64:49@156:3] [debug variable = d[1]]
  call void @llvm.dbg.value(metadata !{i8 %res_2}, i64 0, metadata !659), !dbg !657 ; [debug line = 64:49@156:3] [debug variable = d[2]]
  call void @llvm.dbg.value(metadata !{i8 %res_3}, i64 0, metadata !660), !dbg !657 ; [debug line = 64:49@156:3] [debug variable = d[3]]
  call void @llvm.dbg.value(metadata !{i8 %res_0}, i64 0, metadata !661), !dbg !615 ; [debug line = 156:3] [debug variable = res[0]]
  call void @llvm.dbg.value(metadata !{i8 %res_1}, i64 0, metadata !663), !dbg !615 ; [debug line = 156:3] [debug variable = res[1]]
  call void @llvm.dbg.value(metadata !{i8 %res_2}, i64 0, metadata !664), !dbg !615 ; [debug line = 156:3] [debug variable = res[2]]
  call void @llvm.dbg.value(metadata !{i8 %res_3}, i64 0, metadata !665), !dbg !615 ; [debug line = 156:3] [debug variable = res[3]]
  br label %2, !dbg !666                          ; [debug line = 158:8]

; <label>:2                                       ; preds = %3, %1
  %i_1 = phi i3 [ 0, %1 ], [ %i_5, %3 ]           ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %i_1, -4, !dbg !666      ; [#uses=1 type=i1] [debug line = 158:8]
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_5 = add i3 %i_1, 1, !dbg !668                ; [#uses=1 type=i3] [debug line = 158:22]
  br i1 %exitcond, label %.loopexit, label %3, !dbg !666 ; [debug line = 158:8]

; <label>:3                                       ; preds = %2
  %tmp_11 = trunc i3 %i_1 to i2                   ; [#uses=2 type=i2]
  %tmp_9 = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %res_0, i8 %res_1, i8 %res_2, i8 %res_3, i2 %tmp_11) ; [#uses=1 type=i8]
  %tmp_8 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_11, i2 0), !dbg !669 ; [#uses=1 type=i4] [debug line = 159:4]
  %tmp_1 = add i4 %tmp_cast, %tmp_8, !dbg !669    ; [#uses=1 type=i4] [debug line = 159:4]
  %tmp_2 = zext i4 %tmp_1 to i64, !dbg !669       ; [#uses=1 type=i64] [debug line = 159:4]
  %state_addr_4 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_2, !dbg !669 ; [#uses=1 type=i8*] [debug line = 159:4]
  store i8 %tmp_9, i8* %state_addr_4, align 1, !dbg !669 ; [debug line = 159:4]
  call void @llvm.dbg.value(metadata !{i3 %i_5}, i64 0, metadata !640), !dbg !668 ; [debug line = 158:22] [debug variable = i]
  br label %2, !dbg !668                          ; [debug line = 158:22]

; <label>:4                                       ; preds = %.loopexit
  ret void, !dbg !671                             ; [debug line = 162:1]
}

; [#uses=1]
declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

; [#uses=2]
declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

; [#uses=1]
declare i5 @llvm.part.select.i5(i5, i32, i32) nounwind readnone

; [#uses=129]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=12]
define internal fastcc zeroext i8 @single_block_AES_encrypt_gmult(i4 zeroext %a, i8 %b) readnone {
  %b_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %b) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %b_read}, i64 0, metadata !672), !dbg !676 ; [debug line = 29:34] [debug variable = b]
  %a_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %a) ; [#uses=1 type=i4]
  call void @llvm.dbg.value(metadata !{i4 %a_read}, i64 0, metadata !677), !dbg !678 ; [debug line = 29:23] [debug variable = a]
  %a_cast = zext i4 %a_read to i8                 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i4 %a}, i64 0, metadata !677), !dbg !678 ; [debug line = 29:23] [debug variable = a]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !672), !dbg !676 ; [debug line = 29:34] [debug variable = b]
  br label %1, !dbg !679                          ; [debug line = 33:7]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_6, %2 ]             ; [#uses=2 type=i4]
  %p = phi i8 [ 0, %0 ], [ %p_0_s, %2 ]           ; [#uses=2 type=i8]
  %p_s = phi i8 [ %b_read, %0 ], [ %tmp_1, %2 ]   ; [#uses=2 type=i8]
  %p_0 = phi i8 [ %a_cast, %0 ], [ %a_assign_2, %2 ] ; [#uses=3 type=i8]
  %exitcond = icmp eq i4 %i, -8, !dbg !679        ; [#uses=1 type=i1] [debug line = 33:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %i_6 = add i4 %i, 1, !dbg !682                  ; [#uses=1 type=i4] [debug line = 33:21]
  br i1 %exitcond, label %3, label %2, !dbg !679  ; [debug line = 33:7]

; <label>:2                                       ; preds = %1
  %tmp = trunc i8 %p_s to i1, !dbg !679           ; [#uses=1 type=i1] [debug line = 33:7]
  %tmp_s = select i1 %tmp, i8 %p_0, i8 0, !dbg !683 ; [#uses=1 type=i8] [debug line = 34:3]
  %p_0_s = xor i8 %tmp_s, %p, !dbg !683           ; [#uses=1 type=i8] [debug line = 34:3]
  %tmp_12 = shl i8 %p_0, 1, !dbg !685             ; [#uses=2 type=i8] [debug line = 39:3]
  call void @llvm.dbg.value(metadata !{i8 %tmp_12}, i64 0, metadata !677), !dbg !685 ; [debug line = 39:3] [debug variable = a]
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_0, i32 7), !dbg !686 ; [#uses=1 type=i1] [debug line = 40:3]
  %a_assign_1 = xor i8 %tmp_12, 27, !dbg !687     ; [#uses=1 type=i8] [debug line = 40:12]
  call void @llvm.dbg.value(metadata !{i8 %a_assign_1}, i64 0, metadata !677), !dbg !687 ; [debug line = 40:12] [debug variable = a]
  %a_assign_2 = select i1 %tmp_13, i8 %a_assign_1, i8 %tmp_12, !dbg !686 ; [#uses=1 type=i8] [debug line = 40:3]
  call void @llvm.dbg.value(metadata !{i8 %a_assign_2}, i64 0, metadata !677), !dbg !686 ; [debug line = 40:3] [debug variable = a]
  %b_assign = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %p_s, i32 1, i32 7), !dbg !688 ; [#uses=1 type=i7] [debug line = 41:3]
  %tmp_1 = zext i7 %b_assign to i8, !dbg !688     ; [#uses=1 type=i8] [debug line = 41:3]
  call void @llvm.dbg.value(metadata !{i8 %tmp_1}, i64 0, metadata !672), !dbg !688 ; [debug line = 41:3] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !689), !dbg !682 ; [debug line = 33:21] [debug variable = i]
  br label %1, !dbg !682                          ; [debug line = 33:21]

; <label>:3                                       ; preds = %1
  ret i8 %p, !dbg !690                            ; [debug line = 44:2]
}

; [#uses=1]
define internal fastcc void @single_block_AES_encrypt_aes_key_expansion([176 x i8]* nocapture %w) {
  call void @llvm.dbg.value(metadata !{[176 x i8]* %w}, i64 0, metadata !691), !dbg !696 ; [debug line = 243:47] [debug variable = w]
  br label %1, !dbg !697                          ; [debug line = 249:7]

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_7, %2 ]             ; [#uses=3 type=i3]
  %exitcond1 = icmp eq i3 %i, -4, !dbg !697       ; [#uses=1 type=i1] [debug line = 249:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_7 = add i3 %i, 1, !dbg !700                  ; [#uses=1 type=i3] [debug line = 249:21]
  br i1 %exitcond1, label %.preheader, label %2, !dbg !697 ; [debug line = 249:7]

; <label>:2                                       ; preds = %1
  %tmp_23 = trunc i3 %i to i2                     ; [#uses=1 type=i2]
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_23, i2 0), !dbg !701 ; [#uses=4 type=i4] [debug line = 250:3]
  %tmp_4 = zext i4 %tmp_s to i64, !dbg !701       ; [#uses=2 type=i64] [debug line = 250:3]
  %key_addr = getelementptr inbounds [16 x i8]* @key, i64 0, i64 %tmp_4, !dbg !701 ; [#uses=1 type=i8*] [debug line = 250:3]
  %key_load = load i8* %key_addr, align 4, !dbg !701 ; [#uses=1 type=i8] [debug line = 250:3]
  %w_addr = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_4, !dbg !701 ; [#uses=1 type=i8*] [debug line = 250:3]
  store i8 %key_load, i8* %w_addr, align 1, !dbg !701 ; [debug line = 250:3]
  %tmp_5 = or i4 %tmp_s, 1, !dbg !703             ; [#uses=1 type=i4] [debug line = 251:3]
  %tmp_6 = zext i4 %tmp_5 to i64, !dbg !703       ; [#uses=2 type=i64] [debug line = 251:3]
  %key_addr_1 = getelementptr inbounds [16 x i8]* @key, i64 0, i64 %tmp_6, !dbg !703 ; [#uses=1 type=i8*] [debug line = 251:3]
  %key_load_1 = load i8* %key_addr_1, align 1, !dbg !703 ; [#uses=1 type=i8] [debug line = 251:3]
  %w_addr_1 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_6, !dbg !703 ; [#uses=1 type=i8*] [debug line = 251:3]
  store i8 %key_load_1, i8* %w_addr_1, align 1, !dbg !703 ; [debug line = 251:3]
  %tmp_7 = or i4 %tmp_s, 2, !dbg !704             ; [#uses=1 type=i4] [debug line = 252:3]
  %tmp_8 = zext i4 %tmp_7 to i64, !dbg !704       ; [#uses=2 type=i64] [debug line = 252:3]
  %key_addr_2 = getelementptr inbounds [16 x i8]* @key, i64 0, i64 %tmp_8, !dbg !704 ; [#uses=1 type=i8*] [debug line = 252:3]
  %key_load_2 = load i8* %key_addr_2, align 2, !dbg !704 ; [#uses=1 type=i8] [debug line = 252:3]
  %w_addr_2 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_8, !dbg !704 ; [#uses=1 type=i8*] [debug line = 252:3]
  store i8 %key_load_2, i8* %w_addr_2, align 1, !dbg !704 ; [debug line = 252:3]
  %tmp_9 = or i4 %tmp_s, 3, !dbg !705             ; [#uses=1 type=i4] [debug line = 253:3]
  %tmp_2 = zext i4 %tmp_9 to i64, !dbg !705       ; [#uses=2 type=i64] [debug line = 253:3]
  %key_addr_3 = getelementptr inbounds [16 x i8]* @key, i64 0, i64 %tmp_2, !dbg !705 ; [#uses=1 type=i8*] [debug line = 253:3]
  %key_load_3 = load i8* %key_addr_3, align 1, !dbg !705 ; [#uses=1 type=i8] [debug line = 253:3]
  %w_addr_3 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_2, !dbg !705 ; [#uses=1 type=i8*] [debug line = 253:3]
  store i8 %key_load_3, i8* %w_addr_3, align 1, !dbg !705 ; [debug line = 253:3]
  call void @llvm.dbg.value(metadata !{i3 %i_7}, i64 0, metadata !706), !dbg !700 ; [debug line = 249:21] [debug variable = i]
  br label %1, !dbg !700                          ; [debug line = 249:21]

.preheader:                                       ; preds = %._crit_edge, %1
  %i_1 = phi i6 [ %i_11, %._crit_edge ], [ 4, %1 ] ; [#uses=6 type=i6]
  %exitcond = icmp eq i6 %i_1, -20, !dbg !707     ; [#uses=1 type=i1] [debug line = 256:7]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 40, i64 40, i64 40) ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %3, !dbg !707  ; [debug line = 256:7]

; <label>:3                                       ; preds = %.preheader
  %tmp_3 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %i_1, i2 0), !dbg !709 ; [#uses=12 type=i8] [debug line = 257:3]
  %tmp_10 = add i8 -4, %tmp_3, !dbg !709          ; [#uses=1 type=i8] [debug line = 257:3]
  %tmp_11 = zext i8 %tmp_10 to i64, !dbg !709     ; [#uses=1 type=i64] [debug line = 257:3]
  %w_addr_4 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_11, !dbg !709 ; [#uses=1 type=i8*] [debug line = 257:3]
  %tmp_52 = load i8* %w_addr_4, align 1, !dbg !709 ; [#uses=3 type=i8] [debug line = 257:3]
  call void @llvm.dbg.value(metadata !{i8 %tmp_52}, i64 0, metadata !711), !dbg !716 ; [debug line = 231:2@264:4] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i8 %tmp_52}, i64 0, metadata !717), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[0]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_52}, i64 0, metadata !720), !dbg !709 ; [debug line = 257:3] [debug variable = tmp[0]]
  %tmp_12 = add i8 -3, %tmp_3, !dbg !722          ; [#uses=1 type=i8] [debug line = 258:3]
  %tmp_13 = zext i8 %tmp_12 to i64, !dbg !722     ; [#uses=1 type=i64] [debug line = 258:3]
  %w_addr_5 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_13, !dbg !722 ; [#uses=1 type=i8*] [debug line = 258:3]
  %tmp_1 = load i8* %w_addr_5, align 1, !dbg !722 ; [#uses=2 type=i8] [debug line = 258:3]
  call void @llvm.dbg.value(metadata !{i8 %tmp_1}, i64 0, metadata !723), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[1]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_1}, i64 0, metadata !724), !dbg !722 ; [debug line = 258:3] [debug variable = tmp[1]]
  %tmp_14 = add i8 -2, %tmp_3, !dbg !725          ; [#uses=1 type=i8] [debug line = 259:3]
  %tmp_15 = zext i8 %tmp_14 to i64, !dbg !725     ; [#uses=1 type=i64] [debug line = 259:3]
  %w_addr_6 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_15, !dbg !725 ; [#uses=1 type=i8*] [debug line = 259:3]
  %tmp_2_18 = load i8* %w_addr_6, align 1, !dbg !725 ; [#uses=2 type=i8] [debug line = 259:3]
  call void @llvm.dbg.value(metadata !{i8 %tmp_2_18}, i64 0, metadata !726), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[2]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_2_18}, i64 0, metadata !727), !dbg !725 ; [debug line = 259:3] [debug variable = tmp[2]]
  %tmp_16 = add i8 -1, %tmp_3, !dbg !728          ; [#uses=1 type=i8] [debug line = 260:3]
  %tmp_17 = zext i8 %tmp_16 to i64, !dbg !728     ; [#uses=1 type=i64] [debug line = 260:3]
  %w_addr_7 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_17, !dbg !728 ; [#uses=1 type=i8*] [debug line = 260:3]
  %tmp_3_1 = load i8* %w_addr_7, align 1, !dbg !728 ; [#uses=2 type=i8] [debug line = 260:3]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_1}, i64 0, metadata !729), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_1}, i64 0, metadata !730), !dbg !728 ; [debug line = 260:3] [debug variable = tmp[3]]
  %tmp_44 = trunc i6 %i_1 to i2, !dbg !707        ; [#uses=1 type=i2] [debug line = 256:7]
  %tmp_18 = icmp eq i2 %tmp_44, 0, !dbg !731      ; [#uses=1 type=i1] [debug line = 262:3]
  br i1 %tmp_18, label %.preheader50, label %._crit_edge, !dbg !731 ; [debug line = 262:3]

.preheader50:                                     ; preds = %_ifconv.i, %3
  %write_flag_i = phi i1 [ %write_flag_1_i, %_ifconv.i ], [ false, %3 ] ; [#uses=2 type=i1]
  %w_3_read_assign_2 = phi i8 [ %w_3_read_assign_3, %_ifconv.i ], [ undef, %3 ] ; [#uses=2 type=i8]
  %tmp_2_1 = phi i8 [ %w_3_read_assign_5, %_ifconv.i ], [ %tmp_2_18, %3 ] ; [#uses=4 type=i8]
  %tmp_1_1 = phi i8 [ %w_3_read_assign_7, %_ifconv.i ], [ %tmp_1, %3 ] ; [#uses=5 type=i8]
  %i_i2 = phi i2 [ %i_8, %_ifconv.i ], [ 0, %3 ]  ; [#uses=4 type=i2]
  %exitcond_i2 = icmp eq i2 %i_i2, -1, !dbg !732  ; [#uses=1 type=i1] [debug line = 233:7@264:4]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %i_8 = add i2 %i_i2, 1, !dbg !734               ; [#uses=1 type=i2] [debug line = 233:21@264:4]
  br i1 %exitcond_i2, label %rot_word.exit, label %_ifconv.i, !dbg !732 ; [debug line = 233:7@264:4]

_ifconv.i:                                        ; preds = %.preheader50
  %sel_tmp_i = icmp eq i2 %i_i2, 1, !dbg !735     ; [#uses=3 type=i1] [debug line = 234:3@264:4]
  %w_3_read_assign = select i1 %sel_tmp_i, i8 %tmp_2_1, i8 %tmp_3_1, !dbg !735 ; [#uses=1 type=i8] [debug line = 234:3@264:4]
  call void @llvm.dbg.value(metadata !{i8 %w_3_read_assign}, i64 0, metadata !729), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  %sel_tmp2_i = icmp eq i2 %i_i2, 0, !dbg !735    ; [#uses=5 type=i1] [debug line = 234:3@264:4]
  %w_3_read_assign_1 = select i1 %sel_tmp2_i, i8 %tmp_1_1, i8 %w_3_read_assign, !dbg !735 ; [#uses=2 type=i8] [debug line = 234:3@264:4]
  call void @llvm.dbg.value(metadata !{i8 %w_3_read_assign_1}, i64 0, metadata !729), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  %write_flag_1_i = or i1 %sel_tmp2_i, %write_flag_i ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i8 %w_3_read_assign_2}, i64 0, metadata !729), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  %w_3_read_assign_3 = select i1 %sel_tmp2_i, i8 %tmp_1_1, i8 %w_3_read_assign_2 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %w_3_read_assign_3}, i64 0, metadata !729), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  %w_3_read_assign_4 = select i1 %sel_tmp_i, i8 %tmp_2_1, i8 %w_3_read_assign_1 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %w_3_read_assign_4}, i64 0, metadata !729), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  %w_3_read_assign_5 = select i1 %sel_tmp2_i, i8 %tmp_2_1, i8 %w_3_read_assign_4 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %w_3_read_assign_5}, i64 0, metadata !729), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  %w_3_read_assign_6 = select i1 %sel_tmp_i, i8 %w_3_read_assign_1, i8 %tmp_1_1 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %w_3_read_assign_6}, i64 0, metadata !729), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  %w_3_read_assign_7 = select i1 %sel_tmp2_i, i8 %tmp_1_1, i8 %w_3_read_assign_6 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %w_3_read_assign_7}, i64 0, metadata !729), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  call void @llvm.dbg.value(metadata !{i2 %i_8}, i64 0, metadata !737), !dbg !734 ; [debug line = 233:21@264:4] [debug variable = i]
  br label %.preheader50, !dbg !734               ; [debug line = 233:21@264:4]

rot_word.exit:                                    ; preds = %.preheader50
  %tmp_0_1 = select i1 %write_flag_i, i8 %w_3_read_assign_2, i8 %tmp_52, !dbg !738 ; [#uses=1 type=i8] [debug line = 238:1@264:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_0_1}, i64 0, metadata !739), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[0]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_52}, i64 0, metadata !740), !dbg !719 ; [debug line = 226:24@264:4] [debug variable = w[3]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_0_1}, i64 0, metadata !720), !dbg !714 ; [debug line = 264:4] [debug variable = tmp[0]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_52}, i64 0, metadata !730), !dbg !714 ; [debug line = 264:4] [debug variable = tmp[3]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_1_1}, i64 0, metadata !724), !dbg !714 ; [debug line = 264:4] [debug variable = tmp[1]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_2_1}, i64 0, metadata !727), !dbg !714 ; [debug line = 264:4] [debug variable = tmp[2]]
  br label %4, !dbg !741                          ; [debug line = 217:7@265:4]

; <label>:4                                       ; preds = %_ifconv, %rot_word.exit
  %a_3_read_assign = phi i8 [ %tmp_52, %rot_word.exit ], [ %tmp_3_21, %_ifconv ] ; [#uses=4 type=i8]
  %a_2_read_assign = phi i8 [ %tmp_2_1, %rot_word.exit ], [ %tmp_3_4, %_ifconv ] ; [#uses=4 type=i8]
  %tmp_3_3 = phi i8 [ %tmp_1_1, %rot_word.exit ], [ %tmp_3_7, %_ifconv ] ; [#uses=4 type=i8]
  %tmp_3_6 = phi i8 [ %tmp_0_1, %rot_word.exit ], [ %tmp_3_8, %_ifconv ] ; [#uses=3 type=i8]
  %i_i = phi i3 [ 0, %rot_word.exit ], [ %i_9, %_ifconv ] ; [#uses=3 type=i3]
  %exitcond_i = icmp eq i3 %i_i, -4, !dbg !741    ; [#uses=1 type=i1] [debug line = 217:7@265:4]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_9 = add i3 %i_i, 1, !dbg !746                ; [#uses=1 type=i3] [debug line = 217:21@265:4]
  br i1 %exitcond_i, label %sub_word.exit, label %_ifconv, !dbg !741 ; [debug line = 217:7@265:4]

_ifconv:                                          ; preds = %4
  %tmp_45 = trunc i3 %i_i to i2                   ; [#uses=4 type=i2]
  %tmp = call i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8 %tmp_3_6, i8 %tmp_3_3, i8 %a_2_read_assign, i8 %a_3_read_assign, i2 %tmp_45) ; [#uses=1 type=i8]
  %tmp_1_i = zext i8 %tmp to i64, !dbg !747       ; [#uses=1 type=i64] [debug line = 218:3@265:4]
  %s_box_addr = getelementptr inbounds [256 x i8]* @s_box, i64 0, i64 %tmp_1_i, !dbg !747 ; [#uses=1 type=i8*] [debug line = 218:3@265:4]
  %tmp_3_11 = load i8* %s_box_addr, align 1, !dbg !747 ; [#uses=4 type=i8] [debug line = 218:3@265:4]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_11}, i64 0, metadata !730), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[3]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_11}, i64 0, metadata !720), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[0]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_11}, i64 0, metadata !724), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[1]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_11}, i64 0, metadata !727), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[2]]
  %sel_tmp = icmp eq i2 %tmp_45, -2               ; [#uses=2 type=i1]
  %sel_tmp8 = icmp eq i2 %tmp_45, 1               ; [#uses=2 type=i1]
  %sel_tmp2 = icmp eq i2 %tmp_45, 0               ; [#uses=3 type=i1]
  %or_cond = or i1 %sel_tmp2, %sel_tmp8           ; [#uses=2 type=i1]
  %newSel = select i1 %sel_tmp, i8 %a_3_read_assign, i8 %tmp_3_11 ; [#uses=1 type=i8]
  %tmp_3_21 = select i1 %or_cond, i8 %a_3_read_assign, i8 %newSel ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_21}, i64 0, metadata !730), !dbg !714 ; [debug line = 264:4] [debug variable = tmp[3]]
  %newSel5 = select i1 %sel_tmp, i8 %tmp_3_11, i8 %a_2_read_assign ; [#uses=1 type=i8]
  %tmp_3_4 = select i1 %or_cond, i8 %a_2_read_assign, i8 %newSel5 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_4}, i64 0, metadata !730), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[3]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_3}, i64 0, metadata !730), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[3]]
  %tmp_3_5 = select i1 %sel_tmp8, i8 %tmp_3_11, i8 %tmp_3_3 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_5}, i64 0, metadata !730), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[3]]
  %tmp_3_7 = select i1 %sel_tmp2, i8 %tmp_3_3, i8 %tmp_3_5 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_7}, i64 0, metadata !730), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[3]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_6}, i64 0, metadata !730), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[3]]
  %tmp_3_8 = select i1 %sel_tmp2, i8 %tmp_3_11, i8 %tmp_3_6 ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_8}, i64 0, metadata !730), !dbg !747 ; [debug line = 218:3@265:4] [debug variable = tmp[3]]
  call void @llvm.dbg.value(metadata !{i3 %i_9}, i64 0, metadata !749), !dbg !746 ; [debug line = 217:21@265:4] [debug variable = i]
  br label %4, !dbg !746                          ; [debug line = 217:21@265:4]

sub_word.exit:                                    ; preds = %4
  %i_assign = call i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6 %i_1, i32 2, i32 5), !dbg !750 ; [#uses=2 type=i4] [debug line = 266:18]
  %i_assign_cast1 = zext i4 %i_assign to i8, !dbg !750 ; [#uses=1 type=i8] [debug line = 266:18]
  %tmp_19 = icmp eq i4 %i_assign, 1, !dbg !751    ; [#uses=1 type=i1] [debug line = 109:2@266:18]
  br i1 %tmp_19, label %5, label %6, !dbg !751    ; [debug line = 109:2@266:18]

; <label>:5                                       ; preds = %sub_word.exit
  store i8 1, i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1, !dbg !756 ; [debug line = 110:3@266:18]
  br label %Rcon.exit, !dbg !758                  ; [debug line = 111:2@266:18]

; <label>:6                                       ; preds = %sub_word.exit
  %tmp_46 = call i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6 %i_1, i32 3, i32 5), !dbg !759 ; [#uses=1 type=i3] [debug line = 111:9@266:18]
  %icmp = icmp eq i3 %tmp_46, 0, !dbg !759        ; [#uses=1 type=i1] [debug line = 111:9@266:18]
  br i1 %icmp, label %.loopexit.i, label %.preheader.i, !dbg !759 ; [debug line = 111:9@266:18]

.preheader.i:                                     ; preds = %.preheader72, %6
  %a_assign = phi i8 [ 2, %6 ], [ %p_i, %.preheader72 ] ; [#uses=2 type=i8]
  %p_0_in_i = phi i8 [ %i_assign_cast1, %6 ], [ %i_assign_1, %.preheader72 ] ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %a_assign}, i64 0, metadata !760) nounwind, !dbg !764 ; [debug line = 29:23@115:11@266:18] [debug variable = a]
  %i_assign_1 = add i8 %p_0_in_i, -1, !dbg !765   ; [#uses=2 type=i8] [debug line = 113:3@266:18]
  call void @llvm.dbg.value(metadata !{i8 %i_assign_1}, i64 0, metadata !766) nounwind, !dbg !765 ; [debug line = 113:3@266:18] [debug variable = i]
  %tmp_47 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %i_assign_1, i32 1, i32 7), !dbg !767 ; [#uses=1 type=i7] [debug line = 114:3@266:18]
  %icmp1 = icmp eq i7 %tmp_47, 0, !dbg !767       ; [#uses=1 type=i1] [debug line = 114:3@266:18]
  br i1 %icmp1, label %.loopexit.i.loopexit, label %.preheader72, !dbg !767 ; [debug line = 114:3@266:18]

.preheader72:                                     ; preds = %7, %.preheader.i
  %i_i1 = phi i4 [ %i_10, %7 ], [ 0, %.preheader.i ] ; [#uses=2 type=i4]
  %p_i = phi i8 [ %p_0_i_24, %7 ], [ 0, %.preheader.i ] ; [#uses=2 type=i8]
  %p_i_22 = phi i5 [ %b_assign, %7 ], [ 2, %.preheader.i ] ; [#uses=2 type=i5]
  %p_0_i = phi i8 [ %a_assign_5, %7 ], [ %a_assign, %.preheader.i ] ; [#uses=3 type=i8]
  %exitcond_i1 = icmp eq i4 %i_i1, -8, !dbg !768  ; [#uses=1 type=i1] [debug line = 33:7@115:11@266:18]
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind ; [#uses=0 type=i32]
  %i_10 = add i4 %i_i1, 1, !dbg !769              ; [#uses=1 type=i4] [debug line = 33:21@115:11@266:18]
  br i1 %exitcond_i1, label %.preheader.i, label %7, !dbg !768 ; [debug line = 33:7@115:11@266:18]

; <label>:7                                       ; preds = %.preheader72
  %tmp_48 = trunc i5 %p_i_22 to i1, !dbg !768     ; [#uses=1 type=i1] [debug line = 33:7@115:11@266:18]
  %tmp_18_i = select i1 %tmp_48, i8 %p_0_i, i8 0, !dbg !770 ; [#uses=1 type=i8] [debug line = 34:3@115:11@266:18]
  %p_0_i_24 = xor i8 %tmp_18_i, %p_i, !dbg !770   ; [#uses=1 type=i8] [debug line = 34:3@115:11@266:18]
  %tmp_49 = shl i8 %p_0_i, 1, !dbg !771           ; [#uses=2 type=i8] [debug line = 39:3@115:11@266:18]
  call void @llvm.dbg.value(metadata !{i8 %tmp_49}, i64 0, metadata !760) nounwind, !dbg !771 ; [debug line = 39:3@115:11@266:18] [debug variable = a]
  %tmp_50 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_0_i, i32 7), !dbg !772 ; [#uses=1 type=i1] [debug line = 40:3@115:11@266:18]
  %a_assign_4 = xor i8 %tmp_49, 27, !dbg !773     ; [#uses=1 type=i8] [debug line = 40:12@115:11@266:18]
  call void @llvm.dbg.value(metadata !{i8 %a_assign_4}, i64 0, metadata !760) nounwind, !dbg !773 ; [debug line = 40:12@115:11@266:18] [debug variable = a]
  %a_assign_5 = select i1 %tmp_50, i8 %a_assign_4, i8 %tmp_49, !dbg !772 ; [#uses=1 type=i8] [debug line = 40:3@115:11@266:18]
  call void @llvm.dbg.value(metadata !{i8 %a_assign_5}, i64 0, metadata !760) nounwind, !dbg !772 ; [debug line = 40:3@115:11@266:18] [debug variable = a]
  %tmp_51 = call i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5 %p_i_22, i32 1, i32 4), !dbg !774 ; [#uses=1 type=i4] [debug line = 41:3@115:11@266:18]
  %b_assign = zext i4 %tmp_51 to i5, !dbg !774    ; [#uses=1 type=i5] [debug line = 41:3@115:11@266:18]
  call void @llvm.dbg.value(metadata !{i4 %i_10}, i64 0, metadata !775) nounwind, !dbg !769 ; [debug line = 33:21@115:11@266:18] [debug variable = i]
  br label %.preheader72, !dbg !769               ; [debug line = 33:21@115:11@266:18]

.loopexit.i.loopexit:                             ; preds = %.preheader.i
  store i8 %a_assign, i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1, !dbg !761 ; [debug line = 115:11@266:18]
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %6
  br label %Rcon.exit

Rcon.exit:                                        ; preds = %.loopexit.i, %5
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_6}, i64 0, metadata !776), !dbg !779 ; [debug line = 52:23] [debug variable = a[0]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_3}, i64 0, metadata !780), !dbg !779 ; [debug line = 52:23] [debug variable = a[1]]
  call void @llvm.dbg.value(metadata !{i8 %a_2_read_assign}, i64 0, metadata !781), !dbg !779 ; [debug line = 52:23] [debug variable = a[2]]
  call void @llvm.dbg.value(metadata !{i8 %a_3_read_assign}, i64 0, metadata !782), !dbg !779 ; [debug line = 52:23] [debug variable = a[3]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_6}, i64 0, metadata !783), !dbg !785 ; [debug line = 52:49] [debug variable = d[0]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_3}, i64 0, metadata !786), !dbg !785 ; [debug line = 52:49] [debug variable = d[1]]
  call void @llvm.dbg.value(metadata !{i8 %a_2_read_assign}, i64 0, metadata !787), !dbg !785 ; [debug line = 52:49] [debug variable = d[2]]
  call void @llvm.dbg.value(metadata !{i8 %a_3_read_assign}, i64 0, metadata !788), !dbg !785 ; [debug line = 52:49] [debug variable = d[3]]
  %R_load = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 0), align 1, !dbg !789 ; [#uses=1 type=i8] [debug line = 54:2]
  %tmp_0 = xor i8 %R_load, %tmp_3_6, !dbg !789    ; [#uses=1 type=i8] [debug line = 54:2]
  %R_load_1 = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 1), align 1, !dbg !791 ; [#uses=1 type=i8] [debug line = 55:2]
  %tmp_1_3 = xor i8 %R_load_1, %tmp_3_3, !dbg !791 ; [#uses=1 type=i8] [debug line = 55:2]
  %R_load_2 = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 2), align 1, !dbg !792 ; [#uses=1 type=i8] [debug line = 56:2]
  %tmp_2_3 = xor i8 %R_load_2, %a_2_read_assign, !dbg !792 ; [#uses=1 type=i8] [debug line = 56:2]
  %R_load_3 = load i8* getelementptr inbounds ([4 x i8]* @R, i64 0, i64 3), align 1, !dbg !793 ; [#uses=1 type=i8] [debug line = 57:2]
  %tmp_3_9 = xor i8 %R_load_3, %a_3_read_assign, !dbg !793 ; [#uses=1 type=i8] [debug line = 57:2]
  call void @llvm.dbg.value(metadata !{i8 %tmp_0}, i64 0, metadata !794), !dbg !785 ; [debug line = 52:49] [debug variable = d[0]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_1_3}, i64 0, metadata !795), !dbg !785 ; [debug line = 52:49] [debug variable = d[1]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_2_3}, i64 0, metadata !796), !dbg !785 ; [debug line = 52:49] [debug variable = d[2]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_9}, i64 0, metadata !797), !dbg !785 ; [debug line = 52:49] [debug variable = d[3]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_0}, i64 0, metadata !720), !dbg !798 ; [debug line = 245:10] [debug variable = tmp[0]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_1_3}, i64 0, metadata !724), !dbg !798 ; [debug line = 245:10] [debug variable = tmp[1]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_2_3}, i64 0, metadata !727), !dbg !798 ; [debug line = 245:10] [debug variable = tmp[2]]
  call void @llvm.dbg.value(metadata !{i8 %tmp_3_9}, i64 0, metadata !730), !dbg !798 ; [debug line = 245:10] [debug variable = tmp[3]]
  br label %._crit_edge, !dbg !799                ; [debug line = 268:3]

._crit_edge:                                      ; preds = %Rcon.exit, %3
  %tmp_3_s = phi i8 [ %tmp_3_9, %Rcon.exit ], [ %tmp_3_1, %3 ] ; [#uses=1 type=i8]
  %tmp_2_3_2 = phi i8 [ %tmp_2_3, %Rcon.exit ], [ %tmp_2_18, %3 ] ; [#uses=1 type=i8]
  %tmp_1_s = phi i8 [ %tmp_1_3, %Rcon.exit ], [ %tmp_1, %3 ] ; [#uses=1 type=i8]
  %tmp_0_s = phi i8 [ %tmp_0, %Rcon.exit ], [ %tmp_52, %3 ] ; [#uses=1 type=i8]
  %tmp_20 = add i8 %tmp_3, -16, !dbg !800         ; [#uses=1 type=i8] [debug line = 274:3]
  %tmp_21 = zext i8 %tmp_20 to i64, !dbg !800     ; [#uses=1 type=i64] [debug line = 274:3]
  %w_addr_8 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_21, !dbg !800 ; [#uses=1 type=i8*] [debug line = 274:3]
  %w_load = load i8* %w_addr_8, align 1, !dbg !800 ; [#uses=1 type=i8] [debug line = 274:3]
  %tmp_22 = xor i8 %w_load, %tmp_0_s, !dbg !800   ; [#uses=1 type=i8] [debug line = 274:3]
  %tmp_24 = zext i8 %tmp_3 to i64, !dbg !800      ; [#uses=1 type=i64] [debug line = 274:3]
  %w_addr_9 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_24, !dbg !800 ; [#uses=1 type=i8*] [debug line = 274:3]
  store i8 %tmp_22, i8* %w_addr_9, align 1, !dbg !800 ; [debug line = 274:3]
  %tmp_25 = add i8 %tmp_3, -15, !dbg !801         ; [#uses=1 type=i8] [debug line = 275:3]
  %tmp_26 = zext i8 %tmp_25 to i64, !dbg !801     ; [#uses=1 type=i64] [debug line = 275:3]
  %w_addr_10 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_26, !dbg !801 ; [#uses=1 type=i8*] [debug line = 275:3]
  %w_load_1 = load i8* %w_addr_10, align 1, !dbg !801 ; [#uses=1 type=i8] [debug line = 275:3]
  %tmp_27 = xor i8 %w_load_1, %tmp_1_s, !dbg !801 ; [#uses=1 type=i8] [debug line = 275:3]
  %tmp_28 = or i8 %tmp_3, 1, !dbg !801            ; [#uses=1 type=i8] [debug line = 275:3]
  %tmp_29 = zext i8 %tmp_28 to i64, !dbg !801     ; [#uses=1 type=i64] [debug line = 275:3]
  %w_addr_11 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_29, !dbg !801 ; [#uses=1 type=i8*] [debug line = 275:3]
  store i8 %tmp_27, i8* %w_addr_11, align 1, !dbg !801 ; [debug line = 275:3]
  %tmp_30 = add i8 %tmp_3, -14, !dbg !802         ; [#uses=1 type=i8] [debug line = 276:3]
  %tmp_31 = zext i8 %tmp_30 to i64, !dbg !802     ; [#uses=1 type=i64] [debug line = 276:3]
  %w_addr_12 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_31, !dbg !802 ; [#uses=1 type=i8*] [debug line = 276:3]
  %w_load_2 = load i8* %w_addr_12, align 1, !dbg !802 ; [#uses=1 type=i8] [debug line = 276:3]
  %tmp_32 = xor i8 %w_load_2, %tmp_2_3_2, !dbg !802 ; [#uses=1 type=i8] [debug line = 276:3]
  %tmp_33 = or i8 %tmp_3, 2, !dbg !802            ; [#uses=1 type=i8] [debug line = 276:3]
  %tmp_34 = zext i8 %tmp_33 to i64, !dbg !802     ; [#uses=1 type=i64] [debug line = 276:3]
  %w_addr_13 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_34, !dbg !802 ; [#uses=1 type=i8*] [debug line = 276:3]
  store i8 %tmp_32, i8* %w_addr_13, align 1, !dbg !802 ; [debug line = 276:3]
  %tmp_35 = add i8 %tmp_3, -13, !dbg !803         ; [#uses=1 type=i8] [debug line = 277:3]
  %tmp_36 = zext i8 %tmp_35 to i64, !dbg !803     ; [#uses=1 type=i64] [debug line = 277:3]
  %w_addr_14 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_36, !dbg !803 ; [#uses=1 type=i8*] [debug line = 277:3]
  %w_load_3 = load i8* %w_addr_14, align 1, !dbg !803 ; [#uses=1 type=i8] [debug line = 277:3]
  %tmp_37 = xor i8 %w_load_3, %tmp_3_s, !dbg !803 ; [#uses=1 type=i8] [debug line = 277:3]
  %tmp_38 = or i8 %tmp_3, 3, !dbg !803            ; [#uses=1 type=i8] [debug line = 277:3]
  %tmp_39 = zext i8 %tmp_38 to i64, !dbg !803     ; [#uses=1 type=i64] [debug line = 277:3]
  %w_addr_15 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_39, !dbg !803 ; [#uses=1 type=i8*] [debug line = 277:3]
  store i8 %tmp_37, i8* %w_addr_15, align 1, !dbg !803 ; [debug line = 277:3]
  %i_11 = add i6 %i_1, 1, !dbg !804               ; [#uses=1 type=i6] [debug line = 256:23]
  call void @llvm.dbg.value(metadata !{i6 %i_11}, i64 0, metadata !706), !dbg !804 ; [debug line = 256:23] [debug variable = i]
  br label %.preheader, !dbg !804                 ; [debug line = 256:23]

; <label>:8                                       ; preds = %.preheader
  ret void, !dbg !805                             ; [debug line = 279:1]
}

; [#uses=1]
define internal fastcc void @single_block_AES_encrypt_aes_cipher([16 x i8]* nocapture %in, [16 x i8]* nocapture %out, [176 x i8]* nocapture %w) {
  %state = alloca [16 x i8], align 16             ; [#uses=10 type=[16 x i8]*]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %in}, i64 0, metadata !806), !dbg !808 ; [debug line = 285:26] [debug variable = in]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %out}, i64 0, metadata !809), !dbg !810 ; [debug line = 285:39] [debug variable = out]
  call void @llvm.dbg.value(metadata !{[176 x i8]* %w}, i64 0, metadata !811), !dbg !812 ; [debug line = 285:53] [debug variable = w]
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %state}, metadata !813), !dbg !816 ; [debug line = 287:10] [debug variable = state]
  br label %.loopexit1, !dbg !817                 ; [debug line = 290:7]

.loopexit1:                                       ; preds = %.preheader5, %0
  %i = phi i3 [ 0, %0 ], [ %i_12, %.preheader5 ]  ; [#uses=4 type=i3]
  %exitcond4 = icmp eq i3 %i, -4, !dbg !817       ; [#uses=1 type=i1] [debug line = 290:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_12 = add i3 %i, 1, !dbg !819                 ; [#uses=1 type=i3] [debug line = 290:21]
  call void @llvm.dbg.value(metadata !{i3 %i_12}, i64 0, metadata !820), !dbg !819 ; [debug line = 290:21] [debug variable = i]
  br i1 %exitcond4, label %2, label %.preheader5.preheader, !dbg !817 ; [debug line = 290:7]

.preheader5.preheader:                            ; preds = %.loopexit1
  %tmp_cast = zext i3 %i to i4, !dbg !821         ; [#uses=1 type=i4] [debug line = 292:4]
  %tmp = trunc i3 %i to i2                        ; [#uses=1 type=i2]
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp, i2 0), !dbg !821 ; [#uses=1 type=i4] [debug line = 292:4]
  br label %.preheader5, !dbg !825                ; [debug line = 291:8]

.preheader5:                                      ; preds = %1, %.preheader5.preheader
  %j = phi i3 [ %j_3, %1 ], [ 0, %.preheader5.preheader ] ; [#uses=4 type=i3]
  %exitcond3 = icmp eq i3 %j, -4, !dbg !825       ; [#uses=1 type=i1] [debug line = 291:8]
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %j_3 = add i3 %j, 1, !dbg !826                  ; [#uses=1 type=i3] [debug line = 291:22]
  br i1 %exitcond3, label %.loopexit1, label %1, !dbg !825 ; [debug line = 291:8]

; <label>:1                                       ; preds = %.preheader5
  %tmp_63_cast = zext i3 %j to i4, !dbg !821      ; [#uses=1 type=i4] [debug line = 292:4]
  %tmp_55 = trunc i3 %j to i2                     ; [#uses=1 type=i2]
  %tmp_40 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_55, i2 0), !dbg !821 ; [#uses=1 type=i4] [debug line = 292:4]
  %tmp_41 = add i4 %tmp_cast, %tmp_40, !dbg !821  ; [#uses=1 type=i4] [debug line = 292:4]
  %tmp_42 = zext i4 %tmp_41 to i64, !dbg !821     ; [#uses=1 type=i64] [debug line = 292:4]
  %in_addr = getelementptr [16 x i8]* %in, i64 0, i64 %tmp_42, !dbg !821 ; [#uses=1 type=i8*] [debug line = 292:4]
  %in_load = load i8* %in_addr, align 1, !dbg !821 ; [#uses=1 type=i8] [debug line = 292:4]
  %tmp_43 = add i4 %tmp_63_cast, %tmp_s, !dbg !821 ; [#uses=1 type=i4] [debug line = 292:4]
  %tmp_44 = zext i4 %tmp_43 to i64, !dbg !821     ; [#uses=1 type=i64] [debug line = 292:4]
  %state_addr = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_44, !dbg !821 ; [#uses=1 type=i8*] [debug line = 292:4]
  store i8 %in_load, i8* %state_addr, align 1, !dbg !821 ; [debug line = 292:4]
  call void @llvm.dbg.value(metadata !{i3 %j_3}, i64 0, metadata !827), !dbg !826 ; [debug line = 291:22] [debug variable = j]
  br label %.preheader5, !dbg !826                ; [debug line = 291:22]

; <label>:2                                       ; preds = %.loopexit1
  call fastcc void @single_block_AES_encrypt_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext 0), !dbg !828 ; [debug line = 296:2]
  br label %3, !dbg !829                          ; [debug line = 298:7]

; <label>:3                                       ; preds = %4, %2
  %r = phi i4 [ 1, %2 ], [ %r_1, %4 ]             ; [#uses=3 type=i4]
  %exitcond2 = icmp eq i4 %r, -6, !dbg !829       ; [#uses=1 type=i1] [debug line = 298:7]
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  br i1 %exitcond2, label %5, label %4, !dbg !829 ; [debug line = 298:7]

; <label>:4                                       ; preds = %3
  call fastcc void @single_block_AES_encrypt_sub_bytes([16 x i8]* %state), !dbg !831 ; [debug line = 299:3]
  call fastcc void @single_block_AES_encrypt_shift_rows([16 x i8]* %state), !dbg !833 ; [debug line = 300:3]
  call fastcc void @single_block_AES_encrypt_mix_columns([16 x i8]* %state), !dbg !834 ; [debug line = 301:3]
  %r_cast3_cast = zext i4 %r to i6, !dbg !835     ; [#uses=1 type=i6] [debug line = 302:3]
  call fastcc void @single_block_AES_encrypt_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext %r_cast3_cast), !dbg !835 ; [debug line = 302:3]
  %r_1 = add i4 %r, 1, !dbg !836                  ; [#uses=1 type=i4] [debug line = 298:22]
  call void @llvm.dbg.value(metadata !{i4 %r_1}, i64 0, metadata !837), !dbg !836 ; [debug line = 298:22] [debug variable = r]
  br label %3, !dbg !836                          ; [debug line = 298:22]

; <label>:5                                       ; preds = %3
  call fastcc void @single_block_AES_encrypt_sub_bytes([16 x i8]* %state), !dbg !838 ; [debug line = 305:2]
  call fastcc void @single_block_AES_encrypt_shift_rows([16 x i8]* %state), !dbg !839 ; [debug line = 306:2]
  call fastcc void @single_block_AES_encrypt_add_round_key([16 x i8]* %state, [176 x i8]* %w, i6 zeroext 10), !dbg !840 ; [debug line = 307:2]
  br label %.loopexit, !dbg !841                  ; [debug line = 309:7]

.loopexit:                                        ; preds = %.preheader, %5
  %i_1 = phi i3 [ 0, %5 ], [ %i_13, %.preheader ] ; [#uses=4 type=i3]
  %exitcond1 = icmp eq i3 %i_1, -4, !dbg !841     ; [#uses=1 type=i1] [debug line = 309:7]
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i_13 = add i3 %i_1, 1, !dbg !843               ; [#uses=1 type=i3] [debug line = 309:21]
  call void @llvm.dbg.value(metadata !{i3 %i_13}, i64 0, metadata !820), !dbg !843 ; [debug line = 309:21] [debug variable = i]
  br i1 %exitcond1, label %7, label %.preheader.preheader, !dbg !841 ; [debug line = 309:7]

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_69_cast = zext i3 %i_1 to i4, !dbg !844    ; [#uses=1 type=i4] [debug line = 311:4]
  %tmp_56 = trunc i3 %i_1 to i2                   ; [#uses=1 type=i2]
  %tmp_45 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_56, i2 0), !dbg !844 ; [#uses=1 type=i4] [debug line = 311:4]
  br label %.preheader, !dbg !848                 ; [debug line = 310:8]

.preheader:                                       ; preds = %6, %.preheader.preheader
  %j_1 = phi i3 [ %j_4, %6 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i3]
  %exitcond = icmp eq i3 %j_1, -4, !dbg !848      ; [#uses=1 type=i1] [debug line = 310:8]
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %j_4 = add i3 %j_1, 1, !dbg !849                ; [#uses=1 type=i3] [debug line = 310:22]
  br i1 %exitcond, label %.loopexit, label %6, !dbg !848 ; [debug line = 310:8]

; <label>:6                                       ; preds = %.preheader
  %tmp_71_cast = zext i3 %j_1 to i4, !dbg !844    ; [#uses=1 type=i4] [debug line = 311:4]
  %tmp_46 = add i4 %tmp_71_cast, %tmp_45, !dbg !844 ; [#uses=1 type=i4] [debug line = 311:4]
  %tmp_47 = zext i4 %tmp_46 to i64, !dbg !844     ; [#uses=1 type=i64] [debug line = 311:4]
  %state_addr_5 = getelementptr inbounds [16 x i8]* %state, i64 0, i64 %tmp_47, !dbg !844 ; [#uses=1 type=i8*] [debug line = 311:4]
  %state_load = load i8* %state_addr_5, align 1, !dbg !844 ; [#uses=1 type=i8] [debug line = 311:4]
  %tmp_57 = trunc i3 %j_1 to i2                   ; [#uses=1 type=i2]
  %tmp_48 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_57, i2 0), !dbg !844 ; [#uses=1 type=i4] [debug line = 311:4]
  %tmp_49 = add i4 %tmp_69_cast, %tmp_48, !dbg !844 ; [#uses=1 type=i4] [debug line = 311:4]
  %tmp_50 = zext i4 %tmp_49 to i64, !dbg !844     ; [#uses=1 type=i64] [debug line = 311:4]
  %out_addr = getelementptr [16 x i8]* %out, i64 0, i64 %tmp_50, !dbg !844 ; [#uses=1 type=i8*] [debug line = 311:4]
  store i8 %state_load, i8* %out_addr, align 1, !dbg !844 ; [debug line = 311:4]
  call void @llvm.dbg.value(metadata !{i3 %j_4}, i64 0, metadata !827), !dbg !849 ; [debug line = 310:22] [debug variable = j]
  br label %.preheader, !dbg !849                 ; [debug line = 310:22]

; <label>:7                                       ; preds = %.loopexit
  ret void, !dbg !850                             ; [debug line = 314:1]
}

; [#uses=3]
define internal fastcc void @single_block_AES_encrypt_add_round_key([16 x i8]* nocapture %state, [176 x i8]* nocapture %w, i6 %r) {
  %r_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %r) ; [#uses=1 type=i6]
  call void @llvm.dbg.value(metadata !{i6 %r_read}, i64 0, metadata !851), !dbg !855 ; [debug line = 129:56] [debug variable = r]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %state}, i64 0, metadata !856), !dbg !857 ; [debug line = 129:29] [debug variable = state]
  call void @llvm.dbg.value(metadata !{[176 x i8]* %w}, i64 0, metadata !858), !dbg !859 ; [debug line = 129:45] [debug variable = w]
  call void @llvm.dbg.value(metadata !{i6 %r}, i64 0, metadata !851), !dbg !855 ; [debug line = 129:56] [debug variable = r]
  br label %1, !dbg !860                          ; [debug line = 133:7]

; <label>:1                                       ; preds = %2, %0
  %c = phi i3 [ 0, %0 ], [ %c_1, %2 ]             ; [#uses=6 type=i3]
  %exitcond = icmp eq i3 %c, -4, !dbg !860        ; [#uses=1 type=i1] [debug line = 133:7]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %c_1 = add i3 %c, 1, !dbg !863                  ; [#uses=1 type=i3] [debug line = 133:21]
  br i1 %exitcond, label %3, label %2, !dbg !860  ; [debug line = 133:7]

; <label>:2                                       ; preds = %1
  %tmp_s = zext i3 %c to i64, !dbg !864           ; [#uses=1 type=i64] [debug line = 134:3]
  %state_addr = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_s, !dbg !864 ; [#uses=2 type=i8*] [debug line = 134:3]
  %state_load = load i8* %state_addr, align 1, !dbg !864 ; [#uses=1 type=i8] [debug line = 134:3]
  %tmp = trunc i3 %c to i2                        ; [#uses=1 type=i2]
  %tmp_72 = trunc i6 %r_read to i4                ; [#uses=1 type=i4]
  %tmp_51 = call i8 @_ssdm_op_BitConcatenate.i8.i4.i2.i2(i4 %tmp_72, i2 %tmp, i2 0), !dbg !864 ; [#uses=4 type=i8] [debug line = 134:3]
  %tmp_52 = zext i8 %tmp_51 to i64, !dbg !864     ; [#uses=1 type=i64] [debug line = 134:3]
  %w_addr = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_52, !dbg !864 ; [#uses=1 type=i8*] [debug line = 134:3]
  %w_load = load i8* %w_addr, align 1, !dbg !864  ; [#uses=1 type=i8] [debug line = 134:3]
  %tmp_53 = xor i8 %w_load, %state_load, !dbg !864 ; [#uses=1 type=i8] [debug line = 134:3]
  store i8 %tmp_53, i8* %state_addr, align 1, !dbg !864 ; [debug line = 134:3]
  %tmp_54 = xor i3 %c, -4, !dbg !866              ; [#uses=2 type=i3] [debug line = 135:3]
  %tmp_55 = zext i3 %tmp_54 to i64, !dbg !866     ; [#uses=1 type=i64] [debug line = 135:3]
  %state_addr_6 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_55, !dbg !866 ; [#uses=2 type=i8*] [debug line = 135:3]
  %state_load_1 = load i8* %state_addr_6, align 1, !dbg !866 ; [#uses=1 type=i8] [debug line = 135:3]
  %tmp_56 = or i8 %tmp_51, 1, !dbg !866           ; [#uses=1 type=i8] [debug line = 135:3]
  %tmp_57 = zext i8 %tmp_56 to i64, !dbg !866     ; [#uses=1 type=i64] [debug line = 135:3]
  %w_addr_16 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_57, !dbg !866 ; [#uses=1 type=i8*] [debug line = 135:3]
  %w_load_4 = load i8* %w_addr_16, align 1, !dbg !866 ; [#uses=1 type=i8] [debug line = 135:3]
  %tmp_58 = xor i8 %w_load_4, %state_load_1, !dbg !866 ; [#uses=1 type=i8] [debug line = 135:3]
  store i8 %tmp_58, i8* %state_addr_6, align 1, !dbg !866 ; [debug line = 135:3]
  %tmp_59 = call i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1 true, i3 %c), !dbg !867 ; [#uses=1 type=i4] [debug line = 136:3]
  %tmp_60 = zext i4 %tmp_59 to i64, !dbg !867     ; [#uses=1 type=i64] [debug line = 136:3]
  %state_addr_7 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_60, !dbg !867 ; [#uses=2 type=i8*] [debug line = 136:3]
  %state_load_2 = load i8* %state_addr_7, align 1, !dbg !867 ; [#uses=1 type=i8] [debug line = 136:3]
  %tmp_61 = or i8 %tmp_51, 2, !dbg !867           ; [#uses=1 type=i8] [debug line = 136:3]
  %tmp_62 = zext i8 %tmp_61 to i64, !dbg !867     ; [#uses=1 type=i64] [debug line = 136:3]
  %w_addr_17 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_62, !dbg !867 ; [#uses=1 type=i8*] [debug line = 136:3]
  %w_load_5 = load i8* %w_addr_17, align 1, !dbg !867 ; [#uses=1 type=i8] [debug line = 136:3]
  %tmp_63 = xor i8 %w_load_5, %state_load_2, !dbg !867 ; [#uses=1 type=i8] [debug line = 136:3]
  store i8 %tmp_63, i8* %state_addr_7, align 1, !dbg !867 ; [debug line = 136:3]
  %tmp_93_cast3 = sext i3 %tmp_54 to i4, !dbg !868 ; [#uses=1 type=i4] [debug line = 137:3]
  %tmp_64 = zext i4 %tmp_93_cast3 to i64, !dbg !868 ; [#uses=1 type=i64] [debug line = 137:3]
  %state_addr_8 = getelementptr [16 x i8]* %state, i64 0, i64 %tmp_64, !dbg !868 ; [#uses=2 type=i8*] [debug line = 137:3]
  %state_load_3 = load i8* %state_addr_8, align 1, !dbg !868 ; [#uses=1 type=i8] [debug line = 137:3]
  %tmp_65 = or i8 %tmp_51, 3, !dbg !868           ; [#uses=1 type=i8] [debug line = 137:3]
  %tmp_66 = zext i8 %tmp_65 to i64, !dbg !868     ; [#uses=1 type=i64] [debug line = 137:3]
  %w_addr_18 = getelementptr [176 x i8]* %w, i64 0, i64 %tmp_66, !dbg !868 ; [#uses=1 type=i8*] [debug line = 137:3]
  %w_load_6 = load i8* %w_addr_18, align 1, !dbg !868 ; [#uses=1 type=i8] [debug line = 137:3]
  %tmp_67 = xor i8 %w_load_6, %state_load_3, !dbg !868 ; [#uses=1 type=i8] [debug line = 137:3]
  store i8 %tmp_67, i8* %state_addr_8, align 1, !dbg !868 ; [debug line = 137:3]
  call void @llvm.dbg.value(metadata !{i3 %c_1}, i64 0, metadata !869), !dbg !863 ; [debug line = 133:21] [debug variable = c]
  br label %1, !dbg !863                          ; [debug line = 133:21]

; <label>:3                                       ; preds = %1
  ret void, !dbg !870                             ; [debug line = 139:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P(i8*, i1*, i1*, i8, i1, i1) {
entry:
  store i8 %3, i8* %0
  store i1 %4, i1* %1
  store i1 %5, i1* %2
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=22]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak { i8, i1, i1 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P(i8*, i1*, i1*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  %empty_29 = load i1* %1                         ; [#uses=1 type=i1]
  %empty_30 = load i1* %2                         ; [#uses=1 type=i1]
  %mrv_0 = insertvalue { i8, i1, i1 } undef, i8 %empty, 0 ; [#uses=1 type={ i8, i1, i1 }]
  %mrv1 = insertvalue { i8, i1, i1 } %mrv_0, i1 %empty_29, 1 ; [#uses=1 type={ i8, i1, i1 }]
  %mrv2 = insertvalue { i8, i1, i1 } %mrv1, i1 %empty_30, 2 ; [#uses=1 type={ i8, i1, i1 }]
  ret { i8, i1, i1 } %mrv2
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=1]
define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

; [#uses=1]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

; [#uses=2]
define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2) ; [#uses=1 type=i8]
  %empty_31 = trunc i8 %empty to i7               ; [#uses=1 type=i7]
  ret i7 %empty_31
}

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2) ; [#uses=1 type=i6]
  %empty_32 = trunc i6 %empty to i4               ; [#uses=1 type=i4]
  ret i4 %empty_32
}

; [#uses=1]
define weak i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2) ; [#uses=1 type=i5]
  %empty_33 = trunc i5 %empty to i4               ; [#uses=1 type=i4]
  ret i4 %empty_33
}

; [#uses=1]
define weak i3 @_ssdm_op_PartSelect.i3.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2) ; [#uses=1 type=i6]
  %empty_34 = trunc i6 %empty to i3               ; [#uses=1 type=i3]
  ret i3 %empty_34
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i5.i32.i32(i5, i32, i32) nounwind readnone

; [#uses=2]
define weak i8 @_ssdm_op_Mux.ap_auto.4i8.i2(i8, i8, i8, i8, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i8 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ] ; [#uses=1 type=i8]
  ret i8 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_35 = shl i8 1, %empty                    ; [#uses=1 type=i8]
  %empty_36 = and i8 %0, %empty_35                ; [#uses=1 type=i8]
  %empty_37 = icmp ne i8 %empty_36, 0             ; [#uses=1 type=i1]
  ret i1 %empty_37
}

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8                       ; [#uses=1 type=i8]
  %empty_38 = zext i2 %1 to i8                    ; [#uses=1 type=i8]
  %empty_39 = shl i8 %empty, 2                    ; [#uses=1 type=i8]
  %empty_40 = or i8 %empty_39, %empty_38          ; [#uses=1 type=i8]
  ret i8 %empty_40
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i4.i2.i2(i4, i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %1 to i4                       ; [#uses=1 type=i4]
  %empty_41 = zext i2 %2 to i4                    ; [#uses=1 type=i4]
  %empty_42 = shl i4 %empty, 2                    ; [#uses=1 type=i4]
  %empty_43 = or i4 %empty_42, %empty_41          ; [#uses=1 type=i4]
  %empty_44 = zext i4 %0 to i8                    ; [#uses=1 type=i8]
  %empty_45 = zext i4 %empty_43 to i8             ; [#uses=1 type=i8]
  %empty_46 = shl i8 %empty_44, 4                 ; [#uses=1 type=i8]
  %empty_47 = or i8 %empty_46, %empty_45          ; [#uses=1 type=i8]
  ret i8 %empty_47
}

; [#uses=10]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_48 = zext i2 %1 to i4                    ; [#uses=1 type=i4]
  %empty_49 = shl i4 %empty, 2                    ; [#uses=1 type=i4]
  %empty_50 = or i4 %empty_49, %empty_48          ; [#uses=1 type=i4]
  ret i4 %empty_50
}

; [#uses=1]
define weak i4 @_ssdm_op_BitConcatenate.i4.i1.i3(i1, i3) nounwind readnone {
entry:
  %empty = zext i1 %0 to i4                       ; [#uses=1 type=i4]
  %empty_51 = zext i3 %1 to i4                    ; [#uses=1 type=i4]
  %empty_52 = shl i4 %empty, 3                    ; [#uses=1 type=i4]
  %empty_53 = or i4 %empty_52, %empty_51          ; [#uses=1 type=i4]
  ret i4 %empty_53
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0, !7, !14}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, [4 x i8]* @R}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 7, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"R", metadata !12, metadata !"unsigned char", i32 0, i32 7}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 3, i32 1}
!14 = metadata !{metadata !15, i32* @K}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"K", metadata !5, metadata !"int", i32 0, i32 31}
!19 = metadata !{i32 786689, metadata !20, metadata !"state", null, i32 194, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"sub_bytes", metadata !"sub_bytes", metadata !"_Z9sub_bytesPh", metadata !21, i32 194, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 194} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"AES_Encryption/aes.cpp", metadata !"C:\5CUsers\5Clucac\5CVivadoHLS", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !21, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !25, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 194, i32 25, metadata !20, null}
!33 = metadata !{i32 198, i32 7, metadata !34, null}
!34 = metadata !{i32 786443, metadata !35, i32 198, i32 2, metadata !21, i32 29} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 786443, metadata !20, i32 194, i32 32, metadata !21, i32 28} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 198, i32 21, metadata !34, null}
!37 = metadata !{i32 786688, metadata !35, metadata !"i", metadata !21, i32 196, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 203, i32 4, metadata !39, null}
!39 = metadata !{i32 786443, metadata !40, i32 199, i32 27, metadata !21, i32 32} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 786443, metadata !41, i32 199, i32 3, metadata !21, i32 31} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 786443, metadata !34, i32 198, i32 26, metadata !21, i32 30} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 199, i32 8, metadata !40, null}
!43 = metadata !{i32 199, i32 22, metadata !40, null}
!44 = metadata !{i32 786688, metadata !35, metadata !"j", metadata !21, i32 196, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 206, i32 1, metadata !35, null}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 7, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"i_plaintext.V.data", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 0, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"i_plaintext.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 0, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"i_plaintext.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 7, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"cipher.V.data", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 0, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"cipher.V.user.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 0, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"cipher.V.last.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!70 = metadata !{i32 790531, metadata !71, metadata !"i_plaintext.V.data", null, i32 8, metadata !505, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!71 = metadata !{i32 786689, metadata !72, metadata !"i_plaintext", metadata !73, i32 16777224, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 786478, i32 0, metadata !73, metadata !"single_block_AES_encrypt", metadata !"single_block_AES_encrypt", metadata !"_Z24single_block_AES_encryptRN3hls6streamI11stream_typeEES3_", metadata !73, i32 8, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 9} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786473, metadata !"AES_Encryption/main.cpp", metadata !"C:\5CUsers\5Clucac\5CVivadoHLS", null} ; [ DW_TAG_file_type ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !76, metadata !76}
!76 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_reference_type ]
!77 = metadata !{i32 786434, metadata !78, metadata !"stream<stream_type>", metadata !79, i32 79, i64 24, i64 8, i32 0, i32 0, null, metadata !80, i32 0, null, metadata !503} ; [ DW_TAG_class_type ]
!78 = metadata !{i32 786489, null, metadata !"hls", metadata !79, i32 69} ; [ DW_TAG_namespace ]
!79 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot\5Chls_stream.h", metadata !"C:\5CUsers\5Clucac\5CVivadoHLS", null} ; [ DW_TAG_file_type ]
!80 = metadata !{metadata !81, metadata !463, metadata !467, metadata !470, metadata !475, metadata !478, metadata !481, metadata !484, metadata !488, metadata !489, metadata !490, metadata !493, metadata !496, metadata !497, metadata !500}
!81 = metadata !{i32 786445, metadata !77, metadata !"V", metadata !79, i32 163, i64 24, i64 8, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ]
!82 = metadata !{i32 786434, null, metadata !"stream_type", metadata !83, i32 7, i64 24, i64 8, i32 0, i32 0, null, metadata !84, i32 0, null, null} ; [ DW_TAG_class_type ]
!83 = metadata !{i32 786473, metadata !"AES_Encryption/main.h", metadata !"C:\5CUsers\5Clucac\5CVivadoHLS", null} ; [ DW_TAG_file_type ]
!84 = metadata !{metadata !85, metadata !87, metadata !451, metadata !452, metadata !456, metadata !457}
!85 = metadata !{i32 786445, metadata !82, metadata !"data", metadata !83, i32 8, i64 8, i64 8, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ]
!86 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !83, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!87 = metadata !{i32 786445, metadata !82, metadata !"user", metadata !83, i32 9, i64 8, i64 8, i64 8, i32 0, metadata !88} ; [ DW_TAG_member ]
!88 = metadata !{i32 786434, null, metadata !"ap_uint<1>", metadata !89, i32 180, i64 8, i64 8, i32 0, i32 0, null, metadata !90, i32 0, null, metadata !450} ; [ DW_TAG_class_type ]
!89 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot\5Cap_int.h", metadata !"C:\5CUsers\5Clucac\5CVivadoHLS", null} ; [ DW_TAG_file_type ]
!90 = metadata !{metadata !91, metadata !371, metadata !375, metadata !381, metadata !387, metadata !390, metadata !393, metadata !396, metadata !399, metadata !402, metadata !405, metadata !408, metadata !411, metadata !414, metadata !417, metadata !420, metadata !423, metadata !426, metadata !429, metadata !432, metadata !435, metadata !439, metadata !442, metadata !446, metadata !449}
!91 = metadata !{i32 786460, metadata !88, null, metadata !89, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_inheritance ]
!92 = metadata !{i32 786434, null, metadata !"ap_int_base<1, false, true>", metadata !93, i32 1397, i64 8, i64 8, i32 0, i32 0, null, metadata !94, i32 0, null, metadata !368} ; [ DW_TAG_class_type ]
!93 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/ap_int_syn.h", metadata !"C:\5CUsers\5Clucac\5CVivadoHLS", null} ; [ DW_TAG_file_type ]
!94 = metadata !{metadata !95, metadata !110, metadata !114, metadata !122, metadata !128, metadata !131, metadata !135, metadata !138, metadata !142, metadata !146, metadata !149, metadata !153, metadata !157, metadata !161, metadata !166, metadata !171, metadata !175, metadata !179, metadata !185, metadata !188, metadata !192, metadata !195, metadata !198, metadata !199, metadata !203, metadata !206, metadata !209, metadata !212, metadata !215, metadata !218, metadata !221, metadata !224, metadata !227, metadata !230, metadata !233, metadata !236, metadata !244, metadata !247, metadata !250, metadata !253, metadata !256, metadata !259, metadata !262, metadata !265, metadata !268, metadata !271, metadata !274, metadata !277, metadata !280, metadata !281, metadata !285, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !296, metadata !297, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !308, metadata !309, metadata !310, metadata !313, metadata !314, metadata !317, metadata !318, metadata !322, metadata !326, metadata !327, metadata !330, metadata !331, metadata !335, metadata !336, metadata !337, metadata !338, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !362, metadata !365}
!95 = metadata !{i32 786460, metadata !92, null, metadata !93, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_inheritance ]
!96 = metadata !{i32 786434, null, metadata !"ssdm_int<1 + 1024 * 0, false>", metadata !97, i32 3, i64 8, i64 8, i32 0, i32 0, null, metadata !98, i32 0, null, metadata !105} ; [ DW_TAG_class_type ]
!97 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/etc/autopilot_dt.def", metadata !"C:\5CUsers\5Clucac\5CVivadoHLS", null} ; [ DW_TAG_file_type ]
!98 = metadata !{metadata !99, metadata !101}
!99 = metadata !{i32 786445, metadata !96, metadata !"V", metadata !97, i32 3, i64 1, i64 1, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ]
!100 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!101 = metadata !{i32 786478, i32 0, metadata !96, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !97, i32 3, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 3} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{null, metadata !104}
!104 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !96} ; [ DW_TAG_pointer_type ]
!105 = metadata !{metadata !106, metadata !108}
!106 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !107, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!107 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!108 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !109, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!109 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!110 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1438, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1438} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{null, metadata !113}
!113 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !92} ; [ DW_TAG_pointer_type ]
!114 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base<1, false>", metadata !"ap_int_base<1, false>", metadata !"", metadata !93, i32 1450, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !119, i32 0, metadata !27, i32 1450} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{null, metadata !113, metadata !117}
!117 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_reference_type ]
!118 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_const_type ]
!119 = metadata !{metadata !120, metadata !121}
!120 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !107, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!121 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !109, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!122 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base<1, false>", metadata !"ap_int_base<1, false>", metadata !"", metadata !93, i32 1453, metadata !123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !119, i32 0, metadata !27, i32 1453} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{null, metadata !113, metadata !125}
!125 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_reference_type ]
!126 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_const_type ]
!127 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_volatile_type ]
!128 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1460, metadata !129, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1460} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{null, metadata !113, metadata !109}
!131 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1461, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1461} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{null, metadata !113, metadata !134}
!134 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!135 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1462, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1462} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !113, metadata !26}
!138 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1463, metadata !139, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1463} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!140 = metadata !{null, metadata !113, metadata !141}
!141 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!142 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1464, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1464} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{null, metadata !113, metadata !145}
!145 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1465, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1465} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{null, metadata !113, metadata !107}
!149 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1466, metadata !150, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1466} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!151 = metadata !{null, metadata !113, metadata !152}
!152 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!153 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1467, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1467} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{null, metadata !113, metadata !156}
!156 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!157 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1468, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1468} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{null, metadata !113, metadata !160}
!160 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!161 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1469, metadata !162, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1469} ; [ DW_TAG_subprogram ]
!162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!163 = metadata !{null, metadata !113, metadata !164}
!164 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !93, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_typedef ]
!165 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!166 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1470, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1470} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{null, metadata !113, metadata !169}
!169 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !93, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ]
!170 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!171 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1471, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1471} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{null, metadata !113, metadata !174}
!174 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!175 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1472, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !27, i32 1472} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{null, metadata !113, metadata !178}
!178 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!179 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1499, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1499} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{null, metadata !113, metadata !182}
!182 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ]
!183 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_const_type ]
!184 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!185 = metadata !{i32 786478, i32 0, metadata !92, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !93, i32 1506, metadata !186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1506} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!187 = metadata !{null, metadata !113, metadata !182, metadata !134}
!188 = metadata !{i32 786478, i32 0, metadata !92, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE4readEv", metadata !93, i32 1527, metadata !189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1527} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!190 = metadata !{metadata !92, metadata !191}
!191 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !127} ; [ DW_TAG_pointer_type ]
!192 = metadata !{i32 786478, i32 0, metadata !92, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE5writeERKS0_", metadata !93, i32 1533, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1533} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{null, metadata !191, metadata !117}
!195 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !93, i32 1545, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1545} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{null, metadata !191, metadata !125}
!198 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !93, i32 1554, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1554} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !93, i32 1577, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1577} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!201 = metadata !{metadata !202, metadata !113, metadata !125}
!202 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_reference_type ]
!203 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !93, i32 1582, metadata !204, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1582} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!205 = metadata !{metadata !202, metadata !113, metadata !117}
!206 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEPKc", metadata !93, i32 1586, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1586} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!208 = metadata !{metadata !202, metadata !113, metadata !182}
!209 = metadata !{i32 786478, i32 0, metadata !92, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEPKca", metadata !93, i32 1594, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1594} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{metadata !202, metadata !113, metadata !182, metadata !134}
!212 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEa", metadata !93, i32 1608, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1608} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{metadata !202, metadata !113, metadata !134}
!215 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEh", metadata !93, i32 1609, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1609} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !202, metadata !113, metadata !26}
!218 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEs", metadata !93, i32 1610, metadata !219, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1610} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !202, metadata !113, metadata !141}
!221 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEt", metadata !93, i32 1611, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1611} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !202, metadata !113, metadata !145}
!224 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEi", metadata !93, i32 1612, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1612} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !202, metadata !113, metadata !107}
!227 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEj", metadata !93, i32 1613, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1613} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !202, metadata !113, metadata !152}
!230 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEx", metadata !93, i32 1614, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1614} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !202, metadata !113, metadata !164}
!233 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEy", metadata !93, i32 1615, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1615} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !202, metadata !113, metadata !169}
!236 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEcvhEv", metadata !93, i32 1653, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1653} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!238 = metadata !{metadata !239, metadata !243}
!239 = metadata !{i32 786454, metadata !92, metadata !"RetType", metadata !93, i32 1402, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_typedef ]
!240 = metadata !{i32 786454, metadata !241, metadata !"Type", metadata !93, i32 1370, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!241 = metadata !{i32 786434, null, metadata !"retval<1, false>", metadata !93, i32 1369, i64 8, i64 8, i32 0, i32 0, null, metadata !242, i32 0, null, metadata !105} ; [ DW_TAG_class_type ]
!242 = metadata !{i32 0}
!243 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !118} ; [ DW_TAG_pointer_type ]
!244 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_boolEv", metadata !93, i32 1659, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1659} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!246 = metadata !{metadata !109, metadata !243}
!247 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ucharEv", metadata !93, i32 1660, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1660} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!249 = metadata !{metadata !26, metadata !243}
!250 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_charEv", metadata !93, i32 1661, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1661} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{metadata !134, metadata !243}
!253 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_ushortEv", metadata !93, i32 1662, metadata !254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1662} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{metadata !145, metadata !243}
!256 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_shortEv", metadata !93, i32 1663, metadata !257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1663} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!258 = metadata !{metadata !141, metadata !243}
!259 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6to_intEv", metadata !93, i32 1664, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1664} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!261 = metadata !{metadata !107, metadata !243}
!262 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_uintEv", metadata !93, i32 1665, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1665} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{metadata !152, metadata !243}
!265 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_longEv", metadata !93, i32 1666, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1666} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!267 = metadata !{metadata !156, metadata !243}
!268 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ulongEv", metadata !93, i32 1667, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1667} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!270 = metadata !{metadata !160, metadata !243}
!271 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_int64Ev", metadata !93, i32 1668, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1668} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !164, metadata !243}
!274 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_uint64Ev", metadata !93, i32 1669, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1669} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{metadata !169, metadata !243}
!277 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_doubleEv", metadata !93, i32 1670, metadata !278, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1670} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!279 = metadata !{metadata !178, metadata !243}
!280 = metadata !{i32 786478, i32 0, metadata !92, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !93, i32 1684, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1684} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786478, i32 0, metadata !92, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !93, i32 1685, metadata !282, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1685} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!283 = metadata !{metadata !107, metadata !284}
!284 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !126} ; [ DW_TAG_pointer_type ]
!285 = metadata !{i32 786478, i32 0, metadata !92, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7reverseEv", metadata !93, i32 1690, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1690} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!287 = metadata !{metadata !202, metadata !113}
!288 = metadata !{i32 786478, i32 0, metadata !92, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6iszeroEv", metadata !93, i32 1696, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1696} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786478, i32 0, metadata !92, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7is_zeroEv", metadata !93, i32 1701, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1701} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 786478, i32 0, metadata !92, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4signEv", metadata !93, i32 1706, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1706} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786478, i32 0, metadata !92, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5clearEi", metadata !93, i32 1714, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1714} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786478, i32 0, metadata !92, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE6invertEi", metadata !93, i32 1720, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1720} ; [ DW_TAG_subprogram ]
!293 = metadata !{i32 786478, i32 0, metadata !92, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4testEi", metadata !93, i32 1728, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1728} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{metadata !109, metadata !243, metadata !107}
!296 = metadata !{i32 786478, i32 0, metadata !92, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEi", metadata !93, i32 1734, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1734} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786478, i32 0, metadata !92, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEib", metadata !93, i32 1740, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1740} ; [ DW_TAG_subprogram ]
!298 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!299 = metadata !{null, metadata !113, metadata !107, metadata !109}
!300 = metadata !{i32 786478, i32 0, metadata !92, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7lrotateEi", metadata !93, i32 1747, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1747} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786478, i32 0, metadata !92, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7rrotateEi", metadata !93, i32 1756, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1756} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 786478, i32 0, metadata !92, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7set_bitEib", metadata !93, i32 1764, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1764} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786478, i32 0, metadata !92, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7get_bitEi", metadata !93, i32 1769, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1769} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 786478, i32 0, metadata !92, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5b_notEv", metadata !93, i32 1774, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1774} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786478, i32 0, metadata !92, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE17countLeadingZerosEv", metadata !93, i32 1781, metadata !306, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1781} ; [ DW_TAG_subprogram ]
!306 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!307 = metadata !{metadata !107, metadata !113}
!308 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEv", metadata !93, i32 1838, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1838} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEv", metadata !93, i32 1842, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1842} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEi", metadata !93, i32 1850, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1850} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!312 = metadata !{metadata !118, metadata !113, metadata !107}
!313 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEi", metadata !93, i32 1855, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1855} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEpsEv", metadata !93, i32 1864, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1864} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!316 = metadata !{metadata !92, metadata !243}
!317 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEntEv", metadata !93, i32 1870, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1870} ; [ DW_TAG_subprogram ]
!318 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEngEv", metadata !93, i32 1875, metadata !319, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 1875} ; [ DW_TAG_subprogram ]
!319 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!320 = metadata !{metadata !321, metadata !243}
!321 = metadata !{i32 786434, null, metadata !"ap_int_base<2, true, true>", metadata !93, i32 650, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!322 = metadata !{i32 786478, i32 0, metadata !92, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !93, i32 2005, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2005} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{metadata !325, metadata !113, metadata !107, metadata !107}
!325 = metadata !{i32 786434, null, metadata !"ap_range_ref<1, false>", metadata !93, i32 923, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!326 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEclEii", metadata !93, i32 2011, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2011} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 786478, i32 0, metadata !92, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !93, i32 2017, metadata !328, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2017} ; [ DW_TAG_subprogram ]
!328 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!329 = metadata !{metadata !325, metadata !243, metadata !107, metadata !107}
!330 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEclEii", metadata !93, i32 2023, metadata !328, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2023} ; [ DW_TAG_subprogram ]
!331 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEixEi", metadata !93, i32 2042, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2042} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !334, metadata !113, metadata !107}
!334 = metadata !{i32 786434, null, metadata !"ap_bit_ref<1, false>", metadata !93, i32 1193, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!335 = metadata !{i32 786478, i32 0, metadata !92, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEixEi", metadata !93, i32 2056, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2056} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 786478, i32 0, metadata !92, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !93, i32 2070, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2070} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 786478, i32 0, metadata !92, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !93, i32 2084, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2084} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786478, i32 0, metadata !92, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !93, i32 2264, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2264} ; [ DW_TAG_subprogram ]
!339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!340 = metadata !{metadata !109, metadata !113}
!341 = metadata !{i32 786478, i32 0, metadata !92, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !93, i32 2267, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2267} ; [ DW_TAG_subprogram ]
!342 = metadata !{i32 786478, i32 0, metadata !92, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !93, i32 2270, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2270} ; [ DW_TAG_subprogram ]
!343 = metadata !{i32 786478, i32 0, metadata !92, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !93, i32 2273, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2273} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786478, i32 0, metadata !92, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !93, i32 2276, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2276} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786478, i32 0, metadata !92, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !93, i32 2279, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2279} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 786478, i32 0, metadata !92, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !93, i32 2283, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2283} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786478, i32 0, metadata !92, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !93, i32 2286, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2286} ; [ DW_TAG_subprogram ]
!348 = metadata !{i32 786478, i32 0, metadata !92, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !93, i32 2289, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2289} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786478, i32 0, metadata !92, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !93, i32 2292, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2292} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786478, i32 0, metadata !92, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !93, i32 2295, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2295} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786478, i32 0, metadata !92, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !93, i32 2298, metadata !245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2298} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !93, i32 2305, metadata !353, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2305} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!354 = metadata !{null, metadata !243, metadata !355, metadata !107, metadata !356, metadata !109}
!355 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ]
!356 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !93, i32 602, i64 5, i64 8, i32 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!357 = metadata !{metadata !358, metadata !359, metadata !360, metadata !361}
!358 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!359 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!360 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!361 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!362 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringE8BaseModeb", metadata !93, i32 2332, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2332} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!364 = metadata !{metadata !355, metadata !243, metadata !356, metadata !109}
!365 = metadata !{i32 786478, i32 0, metadata !92, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEab", metadata !93, i32 2336, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 2336} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{metadata !355, metadata !243, metadata !134, metadata !109}
!368 = metadata !{metadata !369, metadata !108, metadata !370}
!369 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !107, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!370 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !109, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!371 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 183, metadata !372, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 183} ; [ DW_TAG_subprogram ]
!372 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !373, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!373 = metadata !{null, metadata !374}
!374 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !88} ; [ DW_TAG_pointer_type ]
!375 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint<1>", metadata !"ap_uint<1>", metadata !"", metadata !89, i32 185, metadata !376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !380, i32 0, metadata !27, i32 185} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!377 = metadata !{null, metadata !374, metadata !378}
!378 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !379} ; [ DW_TAG_reference_type ]
!379 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_const_type ]
!380 = metadata !{metadata !120}
!381 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint<1>", metadata !"ap_uint<1>", metadata !"", metadata !89, i32 191, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !380, i32 0, metadata !27, i32 191} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!383 = metadata !{null, metadata !374, metadata !384}
!384 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !385} ; [ DW_TAG_reference_type ]
!385 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !386} ; [ DW_TAG_const_type ]
!386 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_volatile_type ]
!387 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint<1, false>", metadata !"ap_uint<1, false>", metadata !"", metadata !89, i32 226, metadata !388, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !119, i32 0, metadata !27, i32 226} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!389 = metadata !{null, metadata !374, metadata !117}
!390 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 245, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 245} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!392 = metadata !{null, metadata !374, metadata !109}
!393 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 246, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 246} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!395 = metadata !{null, metadata !374, metadata !134}
!396 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 247, metadata !397, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 247} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!398 = metadata !{null, metadata !374, metadata !26}
!399 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 248, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 248} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!401 = metadata !{null, metadata !374, metadata !141}
!402 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 249, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 249} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!404 = metadata !{null, metadata !374, metadata !145}
!405 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 250, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 250} ; [ DW_TAG_subprogram ]
!406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!407 = metadata !{null, metadata !374, metadata !107}
!408 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 251, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 251} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!410 = metadata !{null, metadata !374, metadata !152}
!411 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 252, metadata !412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 252} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{null, metadata !374, metadata !156}
!414 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 253, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 253} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{null, metadata !374, metadata !160}
!417 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 254, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 254} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!419 = metadata !{null, metadata !374, metadata !170}
!420 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 255, metadata !421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 255} ; [ DW_TAG_subprogram ]
!421 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!422 = metadata !{null, metadata !374, metadata !165}
!423 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 256, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 256} ; [ DW_TAG_subprogram ]
!424 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !425, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!425 = metadata !{null, metadata !374, metadata !174}
!426 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 257, metadata !427, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 257} ; [ DW_TAG_subprogram ]
!427 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!428 = metadata !{null, metadata !374, metadata !178}
!429 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 259, metadata !430, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 259} ; [ DW_TAG_subprogram ]
!430 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !431, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!431 = metadata !{null, metadata !374, metadata !182}
!432 = metadata !{i32 786478, i32 0, metadata !88, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !89, i32 260, metadata !433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 260} ; [ DW_TAG_subprogram ]
!433 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !434, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!434 = metadata !{null, metadata !374, metadata !182, metadata !134}
!435 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERKS0_", metadata !89, i32 263, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 263} ; [ DW_TAG_subprogram ]
!436 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!437 = metadata !{null, metadata !438, metadata !378}
!438 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !386} ; [ DW_TAG_pointer_type ]
!439 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERVKS0_", metadata !89, i32 267, metadata !440, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 267} ; [ DW_TAG_subprogram ]
!440 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!441 = metadata !{null, metadata !438, metadata !384}
!442 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERVKS0_", metadata !89, i32 271, metadata !443, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 271} ; [ DW_TAG_subprogram ]
!443 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!444 = metadata !{metadata !445, metadata !374, metadata !384}
!445 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_reference_type ]
!446 = metadata !{i32 786478, i32 0, metadata !88, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERKS0_", metadata !89, i32 276, metadata !447, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 276} ; [ DW_TAG_subprogram ]
!447 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !448, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!448 = metadata !{metadata !445, metadata !374, metadata !378}
!449 = metadata !{i32 786478, i32 0, metadata !88, metadata !"~ap_uint", metadata !"~ap_uint", metadata !"", metadata !89, i32 180, metadata !372, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !27, i32 180} ; [ DW_TAG_subprogram ]
!450 = metadata !{metadata !369}
!451 = metadata !{i32 786445, metadata !82, metadata !"last", metadata !83, i32 10, i64 8, i64 8, i64 16, i32 0, metadata !88} ; [ DW_TAG_member ]
!452 = metadata !{i32 786478, i32 0, metadata !82, metadata !"stream_type", metadata !"stream_type", metadata !"", metadata !83, i32 7, metadata !453, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !27, i32 7} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!454 = metadata !{null, metadata !455}
!455 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !82} ; [ DW_TAG_pointer_type ]
!456 = metadata !{i32 786478, i32 0, metadata !82, metadata !"~stream_type", metadata !"~stream_type", metadata !"", metadata !83, i32 7, metadata !453, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !27, i32 7} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 786478, i32 0, metadata !82, metadata !"operator=", metadata !"operator=", metadata !"_ZN11stream_typeaSERKS_", metadata !83, i32 7, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !27, i32 7} ; [ DW_TAG_subprogram ]
!458 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !459, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!459 = metadata !{metadata !460, metadata !455, metadata !461}
!460 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_reference_type ]
!461 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !462} ; [ DW_TAG_reference_type ]
!462 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_const_type ]
!463 = metadata !{i32 786478, i32 0, metadata !77, metadata !"stream", metadata !"stream", metadata !"", metadata !79, i32 83, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 83} ; [ DW_TAG_subprogram ]
!464 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!465 = metadata !{null, metadata !466}
!466 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !77} ; [ DW_TAG_pointer_type ]
!467 = metadata !{i32 786478, i32 0, metadata !77, metadata !"stream", metadata !"stream", metadata !"", metadata !79, i32 86, metadata !468, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 86} ; [ DW_TAG_subprogram ]
!468 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !469, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!469 = metadata !{null, metadata !466, metadata !182}
!470 = metadata !{i32 786478, i32 0, metadata !77, metadata !"stream", metadata !"stream", metadata !"", metadata !79, i32 91, metadata !471, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !27, i32 91} ; [ DW_TAG_subprogram ]
!471 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !472, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!472 = metadata !{null, metadata !466, metadata !473}
!473 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !474} ; [ DW_TAG_reference_type ]
!474 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ]
!475 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamI11stream_typeEaSERKS2_", metadata !79, i32 94, metadata !476, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !27, i32 94} ; [ DW_TAG_subprogram ]
!476 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !477, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!477 = metadata !{metadata !76, metadata !466, metadata !473}
!478 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamI11stream_typeErsERS1_", metadata !79, i32 101, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 101} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!480 = metadata !{null, metadata !466, metadata !460}
!481 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamI11stream_typeElsERKS1_", metadata !79, i32 105, metadata !482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 105} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!483 = metadata !{null, metadata !466, metadata !461}
!484 = metadata !{i32 786478, i32 0, metadata !77, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamI11stream_typeE5emptyEv", metadata !79, i32 112, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 112} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!486 = metadata !{metadata !109, metadata !487}
!487 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !474} ; [ DW_TAG_pointer_type ]
!488 = metadata !{i32 786478, i32 0, metadata !77, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamI11stream_typeE4fullEv", metadata !79, i32 117, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 117} ; [ DW_TAG_subprogram ]
!489 = metadata !{i32 786478, i32 0, metadata !77, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI11stream_typeE4readERS1_", metadata !79, i32 123, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 123} ; [ DW_TAG_subprogram ]
!490 = metadata !{i32 786478, i32 0, metadata !77, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI11stream_typeE4readEv", metadata !79, i32 129, metadata !491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 129} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!492 = metadata !{metadata !82, metadata !466}
!493 = metadata !{i32 786478, i32 0, metadata !77, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamI11stream_typeE7read_nbERS1_", metadata !79, i32 136, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 136} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!495 = metadata !{metadata !109, metadata !466, metadata !460}
!496 = metadata !{i32 786478, i32 0, metadata !77, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI11stream_typeE5writeERKS1_", metadata !79, i32 144, metadata !482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 144} ; [ DW_TAG_subprogram ]
!497 = metadata !{i32 786478, i32 0, metadata !77, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamI11stream_typeE8write_nbERKS1_", metadata !79, i32 150, metadata !498, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 150} ; [ DW_TAG_subprogram ]
!498 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !499, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!499 = metadata !{metadata !109, metadata !466, metadata !461}
!500 = metadata !{i32 786478, i32 0, metadata !77, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamI11stream_typeE4sizeEv", metadata !79, i32 157, metadata !501, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !27, i32 157} ; [ DW_TAG_subprogram ]
!501 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !502, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!502 = metadata !{metadata !152, metadata !466}
!503 = metadata !{metadata !504}
!504 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !82, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!505 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ]
!506 = metadata !{i32 786438, metadata !78, metadata !"stream<stream_type>", metadata !79, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !507, i32 0, null, metadata !503} ; [ DW_TAG_class_field_type ]
!507 = metadata !{metadata !508}
!508 = metadata !{i32 786438, null, metadata !"stream_type", metadata !83, i32 7, i64 8, i64 8, i32 0, i32 0, null, metadata !509, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!509 = metadata !{metadata !85}
!510 = metadata !{i32 8, i32 57, metadata !72, null}
!511 = metadata !{i32 790531, metadata !71, metadata !"i_plaintext.V.user.V", null, i32 8, metadata !512, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!512 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !513} ; [ DW_TAG_pointer_type ]
!513 = metadata !{i32 786438, metadata !78, metadata !"stream<stream_type>", metadata !79, i32 79, i64 1, i64 8, i32 0, i32 0, null, metadata !514, i32 0, null, metadata !503} ; [ DW_TAG_class_field_type ]
!514 = metadata !{metadata !515}
!515 = metadata !{i32 786438, null, metadata !"stream_type", metadata !83, i32 7, i64 1, i64 8, i32 0, i32 0, null, metadata !516, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!516 = metadata !{metadata !517}
!517 = metadata !{i32 786438, null, metadata !"ap_uint<1>", metadata !89, i32 180, i64 1, i64 8, i32 0, i32 0, null, metadata !518, i32 0, null, metadata !450} ; [ DW_TAG_class_field_type ]
!518 = metadata !{metadata !519}
!519 = metadata !{i32 786438, null, metadata !"ap_int_base<1, false, true>", metadata !93, i32 1397, i64 1, i64 8, i32 0, i32 0, null, metadata !520, i32 0, null, metadata !368} ; [ DW_TAG_class_field_type ]
!520 = metadata !{metadata !521}
!521 = metadata !{i32 786438, null, metadata !"ssdm_int<1 + 1024 * 0, false>", metadata !97, i32 3, i64 1, i64 8, i32 0, i32 0, null, metadata !522, i32 0, null, metadata !105} ; [ DW_TAG_class_field_type ]
!522 = metadata !{metadata !99}
!523 = metadata !{i32 790531, metadata !71, metadata !"i_plaintext.V.last.V", null, i32 8, metadata !512, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!524 = metadata !{i32 790531, metadata !525, metadata !"cipher.V.data", null, i32 8, metadata !505, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!525 = metadata !{i32 786689, metadata !72, metadata !"cipher", metadata !73, i32 33554440, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!526 = metadata !{i32 8, i32 96, metadata !72, null}
!527 = metadata !{i32 790531, metadata !525, metadata !"cipher.V.user.V", null, i32 8, metadata !512, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!528 = metadata !{i32 790531, metadata !525, metadata !"cipher.V.last.V", null, i32 8, metadata !512, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!529 = metadata !{i32 10, i32 1, metadata !530, null}
!530 = metadata !{i32 786443, metadata !72, i32 9, i32 1, metadata !73, i32 0} ; [ DW_TAG_lexical_block ]
!531 = metadata !{i32 11, i32 1, metadata !530, null}
!532 = metadata !{i32 13, i32 1, metadata !530, null}
!533 = metadata !{i32 786688, metadata !530, metadata !"plaintext", metadata !73, i32 31, metadata !534, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!534 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !86, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!535 = metadata !{i32 31, i32 10, metadata !530, null}
!536 = metadata !{i32 37, i32 6, metadata !537, null}
!537 = metadata !{i32 786443, metadata !530, i32 37, i32 2, metadata !73, i32 1} ; [ DW_TAG_lexical_block ]
!538 = metadata !{i32 37, i32 31, metadata !537, null}
!539 = metadata !{i32 790531, metadata !540, metadata !"stream<stream_type>.V.data", null, i32 129, metadata !543, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!540 = metadata !{i32 786689, metadata !541, metadata !"this", metadata !79, i32 16777345, metadata !542, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!541 = metadata !{i32 786478, i32 0, metadata !78, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI11stream_typeE4readEv", metadata !79, i32 129, metadata !491, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !490, metadata !27, i32 129} ; [ DW_TAG_subprogram ]
!542 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ]
!543 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ]
!544 = metadata !{i32 129, i32 56, metadata !541, metadata !545}
!545 = metadata !{i32 38, i32 9, metadata !546, null}
!546 = metadata !{i32 786443, metadata !537, i32 37, i32 36, metadata !73, i32 2} ; [ DW_TAG_lexical_block ]
!547 = metadata !{i32 790531, metadata !540, metadata !"stream<stream_type>.V.user.V", null, i32 129, metadata !548, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!548 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !513} ; [ DW_TAG_pointer_type ]
!549 = metadata !{i32 790531, metadata !540, metadata !"stream<stream_type>.V.last.V", null, i32 129, metadata !548, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!550 = metadata !{i32 131, i32 9, metadata !551, metadata !545}
!551 = metadata !{i32 786443, metadata !541, i32 129, i32 63, metadata !79, i32 10} ; [ DW_TAG_lexical_block ]
!552 = metadata !{i32 790529, metadata !553, metadata !"tmp.data", null, i32 130, metadata !508, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!553 = metadata !{i32 786688, metadata !551, metadata !"tmp", metadata !79, i32 130, metadata !460, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!554 = metadata !{i32 39, i32 3, metadata !546, null}
!555 = metadata !{i32 786688, metadata !530, metadata !"i", metadata !73, i32 33, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!556 = metadata !{i32 786688, metadata !530, metadata !"w", metadata !73, i32 42, metadata !557, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!557 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1408, i64 8, i32 0, i32 0, metadata !86, metadata !558, i32 0, i32 0} ; [ DW_TAG_array_type ]
!558 = metadata !{metadata !559}
!559 = metadata !{i32 786465, i64 0, i64 175}     ; [ DW_TAG_subrange_type ]
!560 = metadata !{i32 42, i32 10, metadata !530, null}
!561 = metadata !{i32 44, i32 2, metadata !530, null}
!562 = metadata !{i32 46, i32 2, metadata !530, null}
!563 = metadata !{i32 49, i32 6, metadata !564, null}
!564 = metadata !{i32 786443, metadata !530, i32 49, i32 2, metadata !73, i32 3} ; [ DW_TAG_lexical_block ]
!565 = metadata !{i32 49, i32 31, metadata !564, null}
!566 = metadata !{i32 51, i32 3, metadata !567, null}
!567 = metadata !{i32 786443, metadata !564, i32 49, i32 36, metadata !73, i32 4} ; [ DW_TAG_lexical_block ]
!568 = metadata !{i32 53, i32 3, metadata !567, null}
!569 = metadata !{i32 790531, metadata !570, metadata !"stream<stream_type>.V.data", null, i32 144, metadata !543, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!570 = metadata !{i32 786689, metadata !571, metadata !"this", metadata !79, i32 16777360, metadata !542, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!571 = metadata !{i32 786478, i32 0, metadata !78, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI11stream_typeE5writeERKS1_", metadata !79, i32 144, metadata !482, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !496, metadata !27, i32 144} ; [ DW_TAG_subprogram ]
!572 = metadata !{i32 144, i32 48, metadata !571, metadata !573}
!573 = metadata !{i32 58, i32 3, metadata !567, null}
!574 = metadata !{i32 790531, metadata !570, metadata !"stream<stream_type>.V.user.V", null, i32 144, metadata !548, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!575 = metadata !{i32 790531, metadata !570, metadata !"stream<stream_type>.V.last.V", null, i32 144, metadata !548, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!576 = metadata !{i32 790529, metadata !577, metadata !"tmp.data", null, i32 145, metadata !508, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!577 = metadata !{i32 786688, metadata !578, metadata !"tmp", metadata !79, i32 145, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!578 = metadata !{i32 786443, metadata !571, i32 144, i32 79, metadata !79, i32 5} ; [ DW_TAG_lexical_block ]
!579 = metadata !{i32 145, i32 31, metadata !578, metadata !573}
!580 = metadata !{i32 790529, metadata !577, metadata !"tmp.last.V", null, i32 145, metadata !515, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!581 = metadata !{i32 146, i32 9, metadata !578, metadata !573}
!582 = metadata !{i32 61, i32 2, metadata !530, null}
!583 = metadata !{i32 786689, metadata !584, metadata !"state", null, i32 168, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!584 = metadata !{i32 786478, i32 0, metadata !21, metadata !"shift_rows", metadata !"shift_rows", metadata !"_Z10shift_rowsPh", metadata !21, i32 168, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 168} ; [ DW_TAG_subprogram ]
!585 = metadata !{i32 168, i32 26, metadata !584, null}
!586 = metadata !{i32 172, i32 7, metadata !587, null}
!587 = metadata !{i32 786443, metadata !588, i32 172, i32 2, metadata !21, i32 23} ; [ DW_TAG_lexical_block ]
!588 = metadata !{i32 786443, metadata !584, i32 168, i32 33, metadata !21, i32 22} ; [ DW_TAG_lexical_block ]
!589 = metadata !{i32 177, i32 4, metadata !590, null}
!590 = metadata !{i32 786443, metadata !591, i32 176, i32 17, metadata !21, i32 25} ; [ DW_TAG_lexical_block ]
!591 = metadata !{i32 786443, metadata !587, i32 172, i32 26, metadata !21, i32 24} ; [ DW_TAG_lexical_block ]
!592 = metadata !{i32 183, i32 4, metadata !590, null}
!593 = metadata !{i32 176, i32 3, metadata !591, null}
!594 = metadata !{i32 184, i32 4, metadata !590, null}
!595 = metadata !{i32 786688, metadata !588, metadata !"tmp", metadata !21, i32 170, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!596 = metadata !{i32 179, i32 9, metadata !597, null}
!597 = metadata !{i32 786443, metadata !590, i32 179, i32 4, metadata !21, i32 26} ; [ DW_TAG_lexical_block ]
!598 = metadata !{i32 180, i32 5, metadata !599, null}
!599 = metadata !{i32 786443, metadata !597, i32 179, i32 28, metadata !21, i32 27} ; [ DW_TAG_lexical_block ]
!600 = metadata !{i32 179, i32 23, metadata !597, null}
!601 = metadata !{i32 786688, metadata !588, metadata !"k", metadata !21, i32 170, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!602 = metadata !{i32 786688, metadata !588, metadata !"s", metadata !21, i32 170, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!603 = metadata !{i32 185, i32 3, metadata !590, null}
!604 = metadata !{i32 172, i32 21, metadata !587, null}
!605 = metadata !{i32 786688, metadata !588, metadata !"i", metadata !21, i32 170, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!606 = metadata !{i32 187, i32 1, metadata !588, null}
!607 = metadata !{i32 790533, metadata !608, metadata !"b[0]", null, i32 64, metadata !24, i32 0, metadata !615} ; [ DW_TAG_arg_variable_field_ro ]
!608 = metadata !{i32 786689, metadata !609, metadata !"b", null, i32 64, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!609 = metadata !{i32 786478, i32 0, metadata !21, metadata !"coef_mult", metadata !"coef_mult", metadata !"_Z9coef_multPhS_S_", metadata !21, i32 64, metadata !610, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 64} ; [ DW_TAG_subprogram ]
!610 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !611, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!611 = metadata !{null, metadata !24, metadata !24, metadata !24}
!612 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !25, metadata !613, i32 0, i32 0} ; [ DW_TAG_array_type ]
!613 = metadata !{metadata !614}
!614 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!615 = metadata !{i32 156, i32 3, metadata !616, null}
!616 = metadata !{i32 786443, metadata !617, i32 151, i32 26, metadata !21, i32 17} ; [ DW_TAG_lexical_block ]
!617 = metadata !{i32 786443, metadata !618, i32 151, i32 2, metadata !21, i32 16} ; [ DW_TAG_lexical_block ]
!618 = metadata !{i32 786443, metadata !619, i32 146, i32 34, metadata !21, i32 15} ; [ DW_TAG_lexical_block ]
!619 = metadata !{i32 786478, i32 0, metadata !21, metadata !"mix_columns", metadata !"mix_columns", metadata !"_Z11mix_columnsPh", metadata !21, i32 146, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 146} ; [ DW_TAG_subprogram ]
!620 = metadata !{i32 790533, metadata !608, metadata !"b[1]", null, i32 64, metadata !24, i32 0, metadata !615} ; [ DW_TAG_arg_variable_field_ro ]
!621 = metadata !{i32 790533, metadata !608, metadata !"b[2]", null, i32 64, metadata !24, i32 0, metadata !615} ; [ DW_TAG_arg_variable_field_ro ]
!622 = metadata !{i32 790533, metadata !608, metadata !"b[3]", null, i32 64, metadata !24, i32 0, metadata !615} ; [ DW_TAG_arg_variable_field_ro ]
!623 = metadata !{i32 786689, metadata !619, metadata !"state", null, i32 146, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!624 = metadata !{i32 146, i32 27, metadata !619, null}
!625 = metadata !{i32 151, i32 7, metadata !617, null}
!626 = metadata !{i32 151, i32 21, metadata !617, null}
!627 = metadata !{i32 786688, metadata !618, metadata !"j", metadata !21, i32 149, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!628 = metadata !{i32 152, i32 8, metadata !629, null}
!629 = metadata !{i32 786443, metadata !616, i32 152, i32 3, metadata !21, i32 18} ; [ DW_TAG_lexical_block ]
!630 = metadata !{i32 152, i32 22, metadata !629, null}
!631 = metadata !{i32 153, i32 4, metadata !632, null}
!632 = metadata !{i32 786443, metadata !629, i32 152, i32 27, metadata !21, i32 19} ; [ DW_TAG_lexical_block ]
!633 = metadata !{i32 790529, metadata !634, metadata !"col[0]", null, i32 149, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!634 = metadata !{i32 786688, metadata !618, metadata !"col", metadata !21, i32 149, metadata !635, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!635 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 8, i32 0, i32 0, metadata !25, metadata !613, i32 0, i32 0} ; [ DW_TAG_array_type ]
!636 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !25, metadata !613, i32 0, i32 0} ; [ DW_TAG_array_type ]
!637 = metadata !{i32 790529, metadata !634, metadata !"col[3]", null, i32 149, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!638 = metadata !{i32 790529, metadata !634, metadata !"col[1]", null, i32 149, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!639 = metadata !{i32 790529, metadata !634, metadata !"col[2]", null, i32 149, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!640 = metadata !{i32 786688, metadata !618, metadata !"i", metadata !21, i32 149, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!641 = metadata !{i32 66, i32 9, metadata !642, metadata !615}
!642 = metadata !{i32 786443, metadata !609, i32 64, i32 52, metadata !21, i32 7} ; [ DW_TAG_lexical_block ]
!643 = metadata !{i32 66, i32 26, metadata !642, metadata !615}
!644 = metadata !{i32 66, i32 43, metadata !642, metadata !615}
!645 = metadata !{i32 66, i32 60, metadata !642, metadata !615}
!646 = metadata !{i32 67, i32 9, metadata !642, metadata !615}
!647 = metadata !{i32 67, i32 26, metadata !642, metadata !615}
!648 = metadata !{i32 67, i32 43, metadata !642, metadata !615}
!649 = metadata !{i32 67, i32 60, metadata !642, metadata !615}
!650 = metadata !{i32 68, i32 26, metadata !642, metadata !615}
!651 = metadata !{i32 68, i32 43, metadata !642, metadata !615}
!652 = metadata !{i32 68, i32 60, metadata !642, metadata !615}
!653 = metadata !{i32 69, i32 9, metadata !642, metadata !615}
!654 = metadata !{i32 69, i32 60, metadata !642, metadata !615}
!655 = metadata !{i32 790535, metadata !656, metadata !"d[0]", null, i32 64, metadata !24, i32 0, metadata !615} ; [ DW_TAG_arg_variable_field_wo ]
!656 = metadata !{i32 786689, metadata !609, metadata !"d", null, i32 64, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!657 = metadata !{i32 64, i32 49, metadata !609, metadata !615}
!658 = metadata !{i32 790535, metadata !656, metadata !"d[1]", null, i32 64, metadata !24, i32 0, metadata !615} ; [ DW_TAG_arg_variable_field_wo ]
!659 = metadata !{i32 790535, metadata !656, metadata !"d[2]", null, i32 64, metadata !24, i32 0, metadata !615} ; [ DW_TAG_arg_variable_field_wo ]
!660 = metadata !{i32 790535, metadata !656, metadata !"d[3]", null, i32 64, metadata !24, i32 0, metadata !615} ; [ DW_TAG_arg_variable_field_wo ]
!661 = metadata !{i32 790529, metadata !662, metadata !"res[0]", null, i32 149, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!662 = metadata !{i32 786688, metadata !618, metadata !"res", metadata !21, i32 149, metadata !635, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!663 = metadata !{i32 790529, metadata !662, metadata !"res[1]", null, i32 149, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!664 = metadata !{i32 790529, metadata !662, metadata !"res[2]", null, i32 149, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!665 = metadata !{i32 790529, metadata !662, metadata !"res[3]", null, i32 149, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!666 = metadata !{i32 158, i32 8, metadata !667, null}
!667 = metadata !{i32 786443, metadata !616, i32 158, i32 3, metadata !21, i32 20} ; [ DW_TAG_lexical_block ]
!668 = metadata !{i32 158, i32 22, metadata !667, null}
!669 = metadata !{i32 159, i32 4, metadata !670, null}
!670 = metadata !{i32 786443, metadata !667, i32 158, i32 27, metadata !21, i32 21} ; [ DW_TAG_lexical_block ]
!671 = metadata !{i32 162, i32 1, metadata !618, null}
!672 = metadata !{i32 786689, metadata !673, metadata !"b", metadata !21, i32 33554461, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!673 = metadata !{i32 786478, i32 0, metadata !21, metadata !"gmult", metadata !"gmult", metadata !"_Z5gmulthh", metadata !21, i32 29, metadata !674, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 29} ; [ DW_TAG_subprogram ]
!674 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!675 = metadata !{metadata !25, metadata !25, metadata !25}
!676 = metadata !{i32 29, i32 34, metadata !673, null}
!677 = metadata !{i32 786689, metadata !673, metadata !"a", metadata !21, i32 16777245, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!678 = metadata !{i32 29, i32 23, metadata !673, null}
!679 = metadata !{i32 33, i32 7, metadata !680, null}
!680 = metadata !{i32 786443, metadata !681, i32 33, i32 2, metadata !21, i32 3} ; [ DW_TAG_lexical_block ]
!681 = metadata !{i32 786443, metadata !673, i32 29, i32 37, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!682 = metadata !{i32 33, i32 21, metadata !680, null}
!683 = metadata !{i32 34, i32 3, metadata !684, null}
!684 = metadata !{i32 786443, metadata !680, i32 33, i32 26, metadata !21, i32 4} ; [ DW_TAG_lexical_block ]
!685 = metadata !{i32 39, i32 3, metadata !684, null}
!686 = metadata !{i32 40, i32 3, metadata !684, null}
!687 = metadata !{i32 40, i32 12, metadata !684, null}
!688 = metadata !{i32 41, i32 3, metadata !684, null}
!689 = metadata !{i32 786688, metadata !681, metadata !"i", metadata !21, i32 31, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!690 = metadata !{i32 44, i32 2, metadata !681, null}
!691 = metadata !{i32 786689, metadata !692, metadata !"w", null, i32 243, metadata !695, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!692 = metadata !{i32 786478, i32 0, metadata !21, metadata !"aes_key_expansion", metadata !"aes_key_expansion", metadata !"_Z17aes_key_expansionPhS_", metadata !21, i32 243, metadata !693, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 243} ; [ DW_TAG_subprogram ]
!693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!694 = metadata !{null, metadata !24, metadata !24}
!695 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !25, metadata !558, i32 0, i32 0} ; [ DW_TAG_array_type ]
!696 = metadata !{i32 243, i32 47, metadata !692, null}
!697 = metadata !{i32 249, i32 7, metadata !698, null}
!698 = metadata !{i32 786443, metadata !699, i32 249, i32 2, metadata !21, i32 40} ; [ DW_TAG_lexical_block ]
!699 = metadata !{i32 786443, metadata !692, i32 243, i32 50, metadata !21, i32 39} ; [ DW_TAG_lexical_block ]
!700 = metadata !{i32 249, i32 21, metadata !698, null}
!701 = metadata !{i32 250, i32 3, metadata !702, null}
!702 = metadata !{i32 786443, metadata !698, i32 249, i32 26, metadata !21, i32 41} ; [ DW_TAG_lexical_block ]
!703 = metadata !{i32 251, i32 3, metadata !702, null}
!704 = metadata !{i32 252, i32 3, metadata !702, null}
!705 = metadata !{i32 253, i32 3, metadata !702, null}
!706 = metadata !{i32 786688, metadata !699, metadata !"i", metadata !21, i32 246, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!707 = metadata !{i32 256, i32 7, metadata !708, null}
!708 = metadata !{i32 786443, metadata !699, i32 256, i32 2, metadata !21, i32 42} ; [ DW_TAG_lexical_block ]
!709 = metadata !{i32 257, i32 3, metadata !710, null}
!710 = metadata !{i32 786443, metadata !708, i32 256, i32 28, metadata !21, i32 43} ; [ DW_TAG_lexical_block ]
!711 = metadata !{i32 786688, metadata !712, metadata !"tmp", metadata !21, i32 228, metadata !25, i32 0, metadata !714} ; [ DW_TAG_auto_variable ]
!712 = metadata !{i32 786443, metadata !713, i32 226, i32 27, metadata !21, i32 36} ; [ DW_TAG_lexical_block ]
!713 = metadata !{i32 786478, i32 0, metadata !21, metadata !"rot_word", metadata !"rot_word", metadata !"_Z8rot_wordPh", metadata !21, i32 226, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 226} ; [ DW_TAG_subprogram ]
!714 = metadata !{i32 264, i32 4, metadata !715, null}
!715 = metadata !{i32 786443, metadata !710, i32 262, i32 17, metadata !21, i32 44} ; [ DW_TAG_lexical_block ]
!716 = metadata !{i32 231, i32 2, metadata !712, metadata !714}
!717 = metadata !{i32 790533, metadata !718, metadata !"w[0]", null, i32 226, metadata !24, i32 0, metadata !714} ; [ DW_TAG_arg_variable_field_ro ]
!718 = metadata !{i32 786689, metadata !713, metadata !"w", null, i32 226, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!719 = metadata !{i32 226, i32 24, metadata !713, metadata !714}
!720 = metadata !{i32 790529, metadata !721, metadata !"tmp[0]", null, i32 245, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!721 = metadata !{i32 786688, metadata !699, metadata !"tmp", metadata !21, i32 245, metadata !635, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!722 = metadata !{i32 258, i32 3, metadata !710, null}
!723 = metadata !{i32 790533, metadata !718, metadata !"w[1]", null, i32 226, metadata !24, i32 0, metadata !714} ; [ DW_TAG_arg_variable_field_ro ]
!724 = metadata !{i32 790529, metadata !721, metadata !"tmp[1]", null, i32 245, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!725 = metadata !{i32 259, i32 3, metadata !710, null}
!726 = metadata !{i32 790533, metadata !718, metadata !"w[2]", null, i32 226, metadata !24, i32 0, metadata !714} ; [ DW_TAG_arg_variable_field_ro ]
!727 = metadata !{i32 790529, metadata !721, metadata !"tmp[2]", null, i32 245, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!728 = metadata !{i32 260, i32 3, metadata !710, null}
!729 = metadata !{i32 790533, metadata !718, metadata !"w[3]", null, i32 226, metadata !24, i32 0, metadata !714} ; [ DW_TAG_arg_variable_field_ro ]
!730 = metadata !{i32 790529, metadata !721, metadata !"tmp[3]", null, i32 245, metadata !636, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!731 = metadata !{i32 262, i32 3, metadata !710, null}
!732 = metadata !{i32 233, i32 7, metadata !733, metadata !714}
!733 = metadata !{i32 786443, metadata !712, i32 233, i32 2, metadata !21, i32 37} ; [ DW_TAG_lexical_block ]
!734 = metadata !{i32 233, i32 21, metadata !733, metadata !714}
!735 = metadata !{i32 234, i32 3, metadata !736, metadata !714}
!736 = metadata !{i32 786443, metadata !733, i32 233, i32 26, metadata !21, i32 38} ; [ DW_TAG_lexical_block ]
!737 = metadata !{i32 786688, metadata !712, metadata !"i", metadata !21, i32 229, metadata !25, i32 0, metadata !714} ; [ DW_TAG_auto_variable ]
!738 = metadata !{i32 238, i32 1, metadata !712, metadata !714}
!739 = metadata !{i32 790535, metadata !718, metadata !"w[0]", null, i32 226, metadata !24, i32 0, metadata !714} ; [ DW_TAG_arg_variable_field_wo ]
!740 = metadata !{i32 790535, metadata !718, metadata !"w[3]", null, i32 226, metadata !24, i32 0, metadata !714} ; [ DW_TAG_arg_variable_field_wo ]
!741 = metadata !{i32 217, i32 7, metadata !742, metadata !745}
!742 = metadata !{i32 786443, metadata !743, i32 217, i32 2, metadata !21, i32 34} ; [ DW_TAG_lexical_block ]
!743 = metadata !{i32 786443, metadata !744, i32 213, i32 27, metadata !21, i32 33} ; [ DW_TAG_lexical_block ]
!744 = metadata !{i32 786478, i32 0, metadata !21, metadata !"sub_word", metadata !"sub_word", metadata !"_Z8sub_wordPh", metadata !21, i32 213, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 213} ; [ DW_TAG_subprogram ]
!745 = metadata !{i32 265, i32 4, metadata !715, null}
!746 = metadata !{i32 217, i32 21, metadata !742, metadata !745}
!747 = metadata !{i32 218, i32 3, metadata !748, metadata !745}
!748 = metadata !{i32 786443, metadata !742, i32 217, i32 26, metadata !21, i32 35} ; [ DW_TAG_lexical_block ]
!749 = metadata !{i32 786688, metadata !743, metadata !"i", metadata !21, i32 215, metadata !25, i32 0, metadata !745} ; [ DW_TAG_auto_variable ]
!750 = metadata !{i32 266, i32 18, metadata !715, null}
!751 = metadata !{i32 109, i32 2, metadata !752, metadata !750}
!752 = metadata !{i32 786443, metadata !753, i32 107, i32 27, metadata !21, i32 8} ; [ DW_TAG_lexical_block ]
!753 = metadata !{i32 786478, i32 0, metadata !21, metadata !"Rcon", metadata !"Rcon", metadata !"_Z4Rconh", metadata !21, i32 107, metadata !754, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 107} ; [ DW_TAG_subprogram ]
!754 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !755, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!755 = metadata !{metadata !24, metadata !25}
!756 = metadata !{i32 110, i32 3, metadata !757, metadata !750}
!757 = metadata !{i32 786443, metadata !752, i32 109, i32 14, metadata !21, i32 9} ; [ DW_TAG_lexical_block ]
!758 = metadata !{i32 111, i32 2, metadata !757, metadata !750}
!759 = metadata !{i32 111, i32 9, metadata !752, metadata !750}
!760 = metadata !{i32 786689, metadata !673, metadata !"a", metadata !21, i32 16777245, metadata !25, i32 0, metadata !761} ; [ DW_TAG_arg_variable ]
!761 = metadata !{i32 115, i32 11, metadata !762, metadata !750}
!762 = metadata !{i32 786443, metadata !763, i32 114, i32 17, metadata !21, i32 11} ; [ DW_TAG_lexical_block ]
!763 = metadata !{i32 786443, metadata !752, i32 111, i32 20, metadata !21, i32 10} ; [ DW_TAG_lexical_block ]
!764 = metadata !{i32 29, i32 23, metadata !673, metadata !761}
!765 = metadata !{i32 113, i32 3, metadata !763, metadata !750}
!766 = metadata !{i32 786689, metadata !753, metadata !"i", metadata !21, i32 16777323, metadata !25, i32 0, metadata !750} ; [ DW_TAG_arg_variable ]
!767 = metadata !{i32 114, i32 3, metadata !763, metadata !750}
!768 = metadata !{i32 33, i32 7, metadata !680, metadata !761}
!769 = metadata !{i32 33, i32 21, metadata !680, metadata !761}
!770 = metadata !{i32 34, i32 3, metadata !684, metadata !761}
!771 = metadata !{i32 39, i32 3, metadata !684, metadata !761}
!772 = metadata !{i32 40, i32 3, metadata !684, metadata !761}
!773 = metadata !{i32 40, i32 12, metadata !684, metadata !761}
!774 = metadata !{i32 41, i32 3, metadata !684, metadata !761}
!775 = metadata !{i32 786688, metadata !681, metadata !"i", metadata !21, i32 31, metadata !25, i32 0, metadata !761} ; [ DW_TAG_auto_variable ]
!776 = metadata !{i32 790533, metadata !777, metadata !"a[0]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!777 = metadata !{i32 786689, metadata !778, metadata !"a", null, i32 52, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!778 = metadata !{i32 786478, i32 0, metadata !21, metadata !"coef_add", metadata !"coef_add", metadata !"_Z8coef_addPhS_S_", metadata !21, i32 52, metadata !610, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 52} ; [ DW_TAG_subprogram ]
!779 = metadata !{i32 52, i32 23, metadata !778, null}
!780 = metadata !{i32 790533, metadata !777, metadata !"a[1]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!781 = metadata !{i32 790533, metadata !777, metadata !"a[2]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!782 = metadata !{i32 790533, metadata !777, metadata !"a[3]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!783 = metadata !{i32 790533, metadata !784, metadata !"d[0]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!784 = metadata !{i32 786689, metadata !778, metadata !"d", null, i32 52, metadata !612, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!785 = metadata !{i32 52, i32 49, metadata !778, null}
!786 = metadata !{i32 790533, metadata !784, metadata !"d[1]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!787 = metadata !{i32 790533, metadata !784, metadata !"d[2]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!788 = metadata !{i32 790533, metadata !784, metadata !"d[3]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!789 = metadata !{i32 54, i32 2, metadata !790, null}
!790 = metadata !{i32 786443, metadata !778, i32 52, i32 54, metadata !21, i32 6} ; [ DW_TAG_lexical_block ]
!791 = metadata !{i32 55, i32 2, metadata !790, null}
!792 = metadata !{i32 56, i32 2, metadata !790, null}
!793 = metadata !{i32 57, i32 2, metadata !790, null}
!794 = metadata !{i32 790535, metadata !784, metadata !"d[0]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!795 = metadata !{i32 790535, metadata !784, metadata !"d[1]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!796 = metadata !{i32 790535, metadata !784, metadata !"d[2]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!797 = metadata !{i32 790535, metadata !784, metadata !"d[3]", null, i32 52, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_wo ]
!798 = metadata !{i32 245, i32 10, metadata !699, null}
!799 = metadata !{i32 268, i32 3, metadata !715, null}
!800 = metadata !{i32 274, i32 3, metadata !710, null}
!801 = metadata !{i32 275, i32 3, metadata !710, null}
!802 = metadata !{i32 276, i32 3, metadata !710, null}
!803 = metadata !{i32 277, i32 3, metadata !710, null}
!804 = metadata !{i32 256, i32 23, metadata !708, null}
!805 = metadata !{i32 279, i32 1, metadata !699, null}
!806 = metadata !{i32 786689, metadata !807, metadata !"in", null, i32 285, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!807 = metadata !{i32 786478, i32 0, metadata !21, metadata !"aes_cipher", metadata !"aes_cipher", metadata !"_Z10aes_cipherPhS_S_", metadata !21, i32 285, metadata !610, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 285} ; [ DW_TAG_subprogram ]
!808 = metadata !{i32 285, i32 26, metadata !807, null}
!809 = metadata !{i32 786689, metadata !807, metadata !"out", null, i32 285, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!810 = metadata !{i32 285, i32 39, metadata !807, null}
!811 = metadata !{i32 786689, metadata !807, metadata !"w", null, i32 285, metadata !695, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!812 = metadata !{i32 285, i32 53, metadata !807, null}
!813 = metadata !{i32 786688, metadata !814, metadata !"state", metadata !21, i32 287, metadata !815, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!814 = metadata !{i32 786443, metadata !807, i32 285, i32 56, metadata !21, i32 45} ; [ DW_TAG_lexical_block ]
!815 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !25, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!816 = metadata !{i32 287, i32 10, metadata !814, null}
!817 = metadata !{i32 290, i32 7, metadata !818, null}
!818 = metadata !{i32 786443, metadata !814, i32 290, i32 2, metadata !21, i32 46} ; [ DW_TAG_lexical_block ]
!819 = metadata !{i32 290, i32 21, metadata !818, null}
!820 = metadata !{i32 786688, metadata !814, metadata !"i", metadata !21, i32 288, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!821 = metadata !{i32 292, i32 4, metadata !822, null}
!822 = metadata !{i32 786443, metadata !823, i32 291, i32 27, metadata !21, i32 49} ; [ DW_TAG_lexical_block ]
!823 = metadata !{i32 786443, metadata !824, i32 291, i32 3, metadata !21, i32 48} ; [ DW_TAG_lexical_block ]
!824 = metadata !{i32 786443, metadata !818, i32 290, i32 26, metadata !21, i32 47} ; [ DW_TAG_lexical_block ]
!825 = metadata !{i32 291, i32 8, metadata !823, null}
!826 = metadata !{i32 291, i32 22, metadata !823, null}
!827 = metadata !{i32 786688, metadata !814, metadata !"j", metadata !21, i32 288, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!828 = metadata !{i32 296, i32 2, metadata !814, null}
!829 = metadata !{i32 298, i32 7, metadata !830, null}
!830 = metadata !{i32 786443, metadata !814, i32 298, i32 2, metadata !21, i32 50} ; [ DW_TAG_lexical_block ]
!831 = metadata !{i32 299, i32 3, metadata !832, null}
!832 = metadata !{i32 786443, metadata !830, i32 298, i32 27, metadata !21, i32 51} ; [ DW_TAG_lexical_block ]
!833 = metadata !{i32 300, i32 3, metadata !832, null}
!834 = metadata !{i32 301, i32 3, metadata !832, null}
!835 = metadata !{i32 302, i32 3, metadata !832, null}
!836 = metadata !{i32 298, i32 22, metadata !830, null}
!837 = metadata !{i32 786688, metadata !814, metadata !"r", metadata !21, i32 288, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!838 = metadata !{i32 305, i32 2, metadata !814, null}
!839 = metadata !{i32 306, i32 2, metadata !814, null}
!840 = metadata !{i32 307, i32 2, metadata !814, null}
!841 = metadata !{i32 309, i32 7, metadata !842, null}
!842 = metadata !{i32 786443, metadata !814, i32 309, i32 2, metadata !21, i32 52} ; [ DW_TAG_lexical_block ]
!843 = metadata !{i32 309, i32 21, metadata !842, null}
!844 = metadata !{i32 311, i32 4, metadata !845, null}
!845 = metadata !{i32 786443, metadata !846, i32 310, i32 27, metadata !21, i32 55} ; [ DW_TAG_lexical_block ]
!846 = metadata !{i32 786443, metadata !847, i32 310, i32 3, metadata !21, i32 54} ; [ DW_TAG_lexical_block ]
!847 = metadata !{i32 786443, metadata !842, i32 309, i32 26, metadata !21, i32 53} ; [ DW_TAG_lexical_block ]
!848 = metadata !{i32 310, i32 8, metadata !846, null}
!849 = metadata !{i32 310, i32 22, metadata !846, null}
!850 = metadata !{i32 314, i32 1, metadata !814, null}
!851 = metadata !{i32 786689, metadata !852, metadata !"r", metadata !21, i32 50331777, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!852 = metadata !{i32 786478, i32 0, metadata !21, metadata !"add_round_key", metadata !"add_round_key", metadata !"_Z13add_round_keyPhS_h", metadata !21, i32 129, metadata !853, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !27, i32 129} ; [ DW_TAG_subprogram ]
!853 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !854, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!854 = metadata !{null, metadata !24, metadata !24, metadata !25}
!855 = metadata !{i32 129, i32 56, metadata !852, null}
!856 = metadata !{i32 786689, metadata !852, metadata !"state", null, i32 129, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!857 = metadata !{i32 129, i32 29, metadata !852, null}
!858 = metadata !{i32 786689, metadata !852, metadata !"w", null, i32 129, metadata !695, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!859 = metadata !{i32 129, i32 45, metadata !852, null}
!860 = metadata !{i32 133, i32 7, metadata !861, null}
!861 = metadata !{i32 786443, metadata !862, i32 133, i32 2, metadata !21, i32 13} ; [ DW_TAG_lexical_block ]
!862 = metadata !{i32 786443, metadata !852, i32 129, i32 59, metadata !21, i32 12} ; [ DW_TAG_lexical_block ]
!863 = metadata !{i32 133, i32 21, metadata !861, null}
!864 = metadata !{i32 134, i32 3, metadata !865, null}
!865 = metadata !{i32 786443, metadata !861, i32 133, i32 26, metadata !21, i32 14} ; [ DW_TAG_lexical_block ]
!866 = metadata !{i32 135, i32 3, metadata !865, null}
!867 = metadata !{i32 136, i32 3, metadata !865, null}
!868 = metadata !{i32 137, i32 3, metadata !865, null}
!869 = metadata !{i32 786688, metadata !862, metadata !"c", metadata !21, i32 131, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!870 = metadata !{i32 139, i32 1, metadata !862, null}