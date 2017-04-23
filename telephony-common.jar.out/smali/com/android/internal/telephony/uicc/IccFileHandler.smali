.class public abstract Lcom/android/internal/telephony/uicc/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final EVENT_SELECT_EF_FILE:I = 0x64

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected final mAid:Ljava/lang/String;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 179
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 177
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 716
    sparse-switch p1, :sswitch_data_0

    .line 736
    const/4 v0, 0x0

    return-object v0

    .line 725
    :sswitch_0
    const-string/jumbo v0, "3F007F10"

    return-object v0

    .line 729
    :sswitch_1
    const-string/jumbo v0, "3F00"

    return-object v0

    .line 732
    :sswitch_2
    const-string/jumbo v0, "3F007F105F3A"

    return-object v0

    .line 734
    :sswitch_3
    const-string/jumbo v0, "3F007F105F50"

    return-object v0

    .line 716
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6fe5 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 290
    return-void
.end method

.method public getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 273
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    .line 275
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 277
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 278
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 277
    const/16 v1, 0xc0

    .line 278
    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    .line 277
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 272
    return-void

    .line 273
    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    .restart local v3    # "efPath":Ljava/lang/String;
    goto :goto_0
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I
    .param p2, "is7FFF"    # Z

    .prologue
    .line 822
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhbRecordInfo(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 440
    return-void
.end method

.method protected getSmsEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 764
    const-string/jumbo v0, ""

    .line 766
    .local v0, "efpath":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 767
    const-string/jumbo v0, "3F007F10"

    .line 771
    :cond_0
    :goto_0
    return-object v0

    .line 768
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 769
    const-string/jumbo v0, "3F007F25"

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 483
    const/16 v32, 0x0

    .line 491
    .local v32, "response":Landroid/os/Message;
    const/4 v6, 0x0

    .line 494
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 480
    .end local v6    # "path":Ljava/lang/String;
    .end local v32    # "response":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 496
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v32    # "response":Landroid/os/Message;
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/AsyncResult;

    .line 497
    .local v25, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 498
    .local v29, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 499
    .local v33, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v32, v0

    .line 501
    .local v32, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 505
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v26, v0

    .line 507
    .local v26, "data":[B
    const/4 v3, 0x6

    aget-byte v3, v26, v3

    const/4 v4, 0x4

    if-ne v4, v3, :cond_1

    .line 508
    const/16 v3, 0xd

    aget-byte v3, v26, v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_2

    .line 509
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    .end local v6    # "path":Ljava/lang/String;
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "data":[B
    .end local v29    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v32    # "response":Landroid/os/Message;
    .end local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :catch_0
    move-exception v28

    .line 694
    .local v28, "exc":Ljava/lang/Exception;
    :goto_1
    if-eqz v32, :cond_f

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "caught exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 698
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 512
    .end local v28    # "exc":Ljava/lang/Exception;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    .restart local v26    # "data":[B
    .restart local v29    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v32    # "response":Landroid/os/Message;
    .restart local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    const/4 v3, 0x3

    :try_start_1
    new-array v0, v3, [I

    move-object/from16 v31, v0

    .line 513
    .local v31, "recordSize":[I
    const/16 v3, 0xe

    aget-byte v3, v26, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x0

    aput v3, v31, v4

    .line 514
    const/4 v3, 0x2

    aget-byte v3, v26, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 515
    const/4 v4, 0x3

    aget-byte v4, v26, v4

    and-int/lit16 v4, v4, 0xff

    .line 514
    add-int/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v31, v4

    .line 516
    const/4 v3, 0x1

    aget v3, v31, v3

    const/4 v4, 0x0

    aget v4, v31, v4

    div-int/2addr v3, v4

    const/4 v4, 0x2

    aput v3, v31, v4

    .line 518
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 523
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "data":[B
    .end local v29    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v31    # "recordSize":[I
    .end local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v32, "response":Landroid/os/Message;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/AsyncResult;

    .line 524
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 525
    .restart local v29    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 526
    .restart local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v32, v0

    .line 528
    .local v32, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 532
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v26, v0

    .line 533
    .restart local v26    # "data":[B
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    move-object/from16 v30, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    .end local v6    # "path":Ljava/lang/String;
    .local v30, "path":Ljava/lang/String;
    const/4 v3, 0x6

    :try_start_2
    aget-byte v3, v26, v3

    const/4 v4, 0x4

    if-eq v4, v3, :cond_3

    .line 536
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 693
    :catch_1
    move-exception v28

    .restart local v28    # "exc":Ljava/lang/Exception;
    move-object/from16 v6, v30

    .end local v30    # "path":Ljava/lang/String;
    .local v6, "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 539
    .end local v6    # "path":Ljava/lang/String;
    .end local v28    # "exc":Ljava/lang/Exception;
    .restart local v30    # "path":Ljava/lang/String;
    :cond_3
    const/16 v3, 0xd

    aget-byte v3, v26, v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_4

    .line 540
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 543
    :cond_4
    const/16 v3, 0xe

    aget-byte v3, v26, v3

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 545
    const/4 v3, 0x2

    aget-byte v3, v26, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 546
    const/4 v4, 0x3

    aget-byte v4, v26, v4

    and-int/lit16 v4, v4, 0xff

    .line 545
    add-int v13, v3, v4

    .line 548
    .local v13, "size":I
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    div-int v3, v13, v3

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 550
    move-object/from16 v0, v29

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v3, :cond_5

    .line 551
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v29

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 555
    :cond_5
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 557
    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 559
    move-object/from16 v0, v29

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 560
    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 556
    .end local v13    # "size":I
    const/16 v4, 0xb2

    .line 558
    const/4 v8, 0x4

    .line 559
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 556
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v6, v30

    .end local v30    # "path":Ljava/lang/String;
    .restart local v6    # "path":Ljava/lang/String;
    goto/16 :goto_0

    .line 563
    .end local v6    # "path":Ljava/lang/String;
    .restart local v13    # "size":I
    .restart local v30    # "path":Ljava/lang/String;
    :cond_6
    if-nez v30, :cond_10

    .line 564
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 566
    .end local v30    # "path":Ljava/lang/String;
    .restart local v6    # "path":Ljava/lang/String;
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 567
    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 569
    move-object/from16 v0, v29

    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 570
    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 566
    .end local v13    # "size":I
    const/16 v4, 0xb2

    .line 568
    const/4 v8, 0x4

    .line 569
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 566
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 576
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "data":[B
    .end local v29    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v6, "path":Ljava/lang/String;
    .local v32, "response":Landroid/os/Message;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/AsyncResult;

    .line 577
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v32, v0

    .line 578
    .local v32, "response":Landroid/os/Message;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 580
    .restart local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 584
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v26, v0

    .line 586
    .restart local v26    # "data":[B
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 588
    .local v9, "fileid":I
    const/4 v3, 0x6

    aget-byte v3, v26, v3

    const/4 v4, 0x4

    if-eq v4, v3, :cond_7

    .line 589
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 592
    :cond_7
    const/16 v3, 0xd

    aget-byte v3, v26, v3

    if-eqz v3, :cond_8

    .line 593
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 596
    :cond_8
    const/4 v3, 0x2

    aget-byte v3, v26, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 597
    const/4 v4, 0x3

    aget-byte v4, v26, v4

    and-int/lit16 v4, v4, 0xff

    .line 596
    add-int v13, v3, v4

    .line 600
    .restart local v13    # "size":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v10

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 602
    const/4 v3, 0x5

    .line 603
    const/4 v4, 0x0

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v9, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 600
    const/16 v8, 0xb0

    .line 601
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 600
    invoke-interface/range {v7 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 610
    .end local v9    # "fileid":I
    .end local v13    # "size":I
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "data":[B
    .end local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v32, "response":Landroid/os/Message;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/AsyncResult;

    .line 611
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 612
    .restart local v29    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 613
    .restart local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v32, v0

    .line 614
    .local v32, "response":Landroid/os/Message;
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 616
    .local v6, "path":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 620
    move-object/from16 v0, v29

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v3, :cond_9

    .line 621
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 623
    :cond_9
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v29

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 627
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-le v3, v4, :cond_a

    .line 628
    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 631
    :cond_a
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    .line 632
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move/from16 v16, v0

    .line 633
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v17

    .line 634
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v18, v0

    .line 636
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 637
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 632
    const/16 v15, 0xb2

    .line 635
    const/16 v19, 0x4

    .line 636
    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 632
    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 640
    :cond_b
    if-nez v6, :cond_c

    .line 641
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 644
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move/from16 v16, v0

    .line 645
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    move/from16 v18, v0

    .line 647
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 648
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 644
    const/16 v15, 0xb2

    .line 646
    const/16 v19, 0x4

    .line 647
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v6

    .line 644
    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 659
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v6, "path":Ljava/lang/String;
    .local v32, "response":Landroid/os/Message;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/AsyncResult;

    .line 660
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v32, v0

    .line 661
    .local v32, "response":Landroid/os/Message;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 663
    .restart local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 667
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 672
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v32, "response":Landroid/os/Message;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/AsyncResult;

    .line 673
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v25

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v32, v0

    .line 674
    .local v32, "response":Landroid/os/Message;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 676
    .restart local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 677
    const-string/jumbo v3, "EVENT_SELECT_EF_FILE exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    :cond_d
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v26, v0

    .line 683
    .restart local v26    # "data":[B
    const/4 v3, 0x6

    aget-byte v3, v26, v3

    const/4 v4, 0x4

    if-eq v4, v3, :cond_e

    .line 684
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 687
    :cond_e
    new-instance v27, Lcom/android/internal/telephony/EFResponseData;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/EFResponseData;-><init>([B)V

    .line 688
    .local v27, "efData":Lcom/android/internal/telephony/EFResponseData;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 700
    .end local v6    # "path":Ljava/lang/String;
    .end local v25    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "data":[B
    .end local v27    # "efData":Lcom/android/internal/telephony/EFResponseData;
    .end local v32    # "response":Landroid/os/Message;
    .end local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v28    # "exc":Ljava/lang/Exception;
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v28    # "exc":Ljava/lang/Exception;
    .restart local v13    # "size":I
    .restart local v25    # "ar":Landroid/os/AsyncResult;
    .restart local v26    # "data":[B
    .restart local v29    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .restart local v30    # "path":Ljava/lang/String;
    .restart local v32    # "response":Landroid/os/Message;
    .restart local v33    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_10
    move-object/from16 v6, v30

    .end local v30    # "path":Ljava/lang/String;
    .local v6, "path":Ljava/lang/String;
    goto/16 :goto_2

    .line 494
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_1
        0x7 -> :sswitch_3
        0x8 -> :sswitch_0
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_1
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 11
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 251
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, v2, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    .line 250
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 254
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 254
    const/16 v1, 0xc0

    .line 257
    const/4 v5, 0x4

    const/16 v6, 0xf

    move v4, p1

    move-object v8, v7

    .line 254
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 249
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 374
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 377
    .local v11, "response":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string/jumbo v2, " filePath = "

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const/16 v2, 0x4f20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string/jumbo v2, " highOffset = "

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    const-string/jumbo v2, " lowOffset = "

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    const-string/jumbo v2, " length = "

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x4f20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    .line 388
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 387
    const/16 v2, 0xb0

    .line 388
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    .line 387
    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 373
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 219
    return-void
.end method

.method public loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 200
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, p1, p3, v3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    .line 202
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 205
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 206
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 205
    const/16 v1, 0xc0

    .line 206
    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    .line 205
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 199
    return-void

    .line 200
    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    .restart local v3    # "efPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public loadEFLinearFixedAll(IILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "mode"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 754
    new-instance v11, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v11, p1, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 755
    .local v11, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iput p2, v11, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    .line 756
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v11}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 758
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 759
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 758
    const/16 v1, 0xc0

    .line 759
    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    .line 758
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 753
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 322
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;Z)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;
    .param p3, "is7FFF"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 747
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .line 746
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 749
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 750
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 749
    const/16 v1, 0xc0

    .line 750
    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    .line 749
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 745
    return-void
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 305
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    .line 306
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 309
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 310
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 309
    const/16 v1, 0xc0

    .line 310
    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    .line 309
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 304
    return-void

    .line 305
    .end local v3    # "efPath":Ljava/lang/String;
    .end local v10    # "response":Landroid/os/Message;
    :cond_0
    move-object v3, p2

    .restart local v3    # "efPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public loadEFTransparent(IILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "size"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 355
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 358
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 359
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 358
    const/16 v1, 0xb0

    move v2, p1

    move v5, v4

    move v6, p2

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 354
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 337
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 340
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 341
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 340
    const/16 v1, 0xc0

    .line 341
    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    .line 340
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 336
    return-void
.end method

.method public loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "efPath"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 787
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 790
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 791
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 790
    const/16 v1, 0xc0

    .line 791
    const/16 v6, 0xf

    move v2, p1

    move-object v3, p2

    move v5, v4

    move-object v8, v7

    .line 790
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 786
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 5
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "flag":Z
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 464
    .local v2, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 465
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 466
    const/4 v0, 0x1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v1

    .line 469
    .local v1, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 471
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readEFLinearFixed(IIILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "recordSize"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 236
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 235
    const/16 v1, 0xb2

    .line 236
    const/4 v5, 0x4

    move v2, p1

    move v4, p2

    move v6, p3

    move-object v8, v7

    move-object v10, p4

    .line 235
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 234
    return-void
.end method

.method public selectEFFile(ILandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 804
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 806
    .local v10, "response":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 807
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 806
    const/16 v1, 0xc0

    .line 807
    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    .line 806
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 802
    return-void
.end method

.method protected sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    return-void

    .line 453
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 455
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 447
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "data"    # [B
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 421
    array-length v6, p3

    .line 422
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 420
    const/16 v1, 0xdc

    .line 421
    const/4 v5, 0x4

    move v2, p1

    move v4, p2

    move-object v8, p4

    move-object/from16 v10, p5

    .line 420
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 419
    return-void
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "data"    # [B
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 403
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "efPath":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 405
    array-length v6, p4

    .line 406
    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 404
    const/16 v1, 0xdc

    .line 405
    const/4 v5, 0x4

    move v2, p1

    move v4, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    .line 404
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 402
    return-void

    .line 403
    .end local v3    # "efPath":Ljava/lang/String;
    :cond_0
    move-object v3, p2

    .restart local v3    # "efPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11
    .param p1, "fileid"    # I
    .param p2, "data"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    .line 432
    array-length v6, p2

    .line 433
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 431
    const/16 v1, 0xd6

    .line 433
    const/4 v8, 0x0

    move v2, p1

    move v5, v4

    move-object v10, p3

    .line 431
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 430
    return-void
.end method
