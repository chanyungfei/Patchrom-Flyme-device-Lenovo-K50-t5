.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# instance fields
.field private adnRecordSize:[I

.field mMaxNameLength:I

.field maxnumberLength:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 34
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mMaxNameLength:I

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->maxnumberLength:I

    .line 38
    return-void
.end method

.method private parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)Z
    .locals 6
    .param p1, "data"    # [B
    .param p2, "lc"    # Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 286
    aget-byte v3, p1, v5

    const/16 v4, 0x62

    if-ne v4, v3, :cond_6

    .line 287
    array-length v3, p1

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 288
    const-string/jumbo v3, "error response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 289
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 291
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x2

    .local v1, "index":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 298
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x82

    if-ne v3, v4, :cond_2

    .line 303
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x7

    if-le v1, v3, :cond_3

    .line 304
    const-string/jumbo v3, "no 0x82 tag found in response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 305
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 297
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v2, v3, 0xff

    .line 310
    .local v2, "lengthOfFileDescriptor":I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 311
    const-string/jumbo v3, "error bytes length for uicc response data"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 312
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 315
    :cond_4
    add-int/lit8 v3, v1, 0x2

    aget-byte v0, p1, v3

    .line 317
    .local v0, "fdByte":B
    add-int/lit8 v3, v1, 0x3

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, p1, v3

    const/16 v4, 0x21

    if-eq v4, v3, :cond_5

    .line 318
    const-string/jumbo v3, "error coding type for uicc response data"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 319
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 322
    :cond_5
    add-int/lit8 v3, v1, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 323
    add-int/lit8 v4, v1, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 322
    add-int/2addr v3, v4

    iput v3, p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 325
    add-int/lit8 v3, v1, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lc.mRecordSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", lc.mCountRecords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 328
    const/4 v3, 0x1

    return v3

    .line 330
    .end local v0    # "fdByte":B
    .end local v1    # "index":I
    .end local v2    # "lengthOfFileDescriptor":I
    :cond_6
    const-string/jumbo v3, "not uicc response , hand it to parent to handle"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 331
    return v5
.end method

.method private parseSizeInfoForTransparent([B)I
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 233
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, 0x62

    if-ne v4, v3, :cond_5

    .line 234
    array-length v3, p1

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 235
    const-string/jumbo v3, "error response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 236
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 238
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 244
    const/4 v1, 0x2

    .local v1, "index":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 245
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_2

    .line 250
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-le v1, v3, :cond_3

    .line 251
    const-string/jumbo v3, "no 0x80 tag found in response data for uicc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 252
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 244
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v2, v3, 0xff

    .line 256
    .local v2, "lengthOfFileSizeBytes":I
    if-eq v2, v5, :cond_4

    .line 257
    const-string/jumbo v3, "error file size bytes length for uicc response data"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 258
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v3

    .line 261
    :cond_4
    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 262
    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 261
    add-int v0, v3, v4

    .line 264
    .local v0, "fileSize":I
    return v0

    .line 266
    .end local v0    # "fileSize":I
    .end local v1    # "index":I
    .end local v2    # "lengthOfFileSizeBytes":I
    :cond_5
    const-string/jumbo v3, "not uicc response , hand it to parent to handle"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 267
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getCommonIccEFPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 340
    sparse-switch p1, :sswitch_data_0

    .line 361
    const/4 v0, 0x0

    return-object v0

    .line 348
    :sswitch_0
    const-string/jumbo v0, "3F007F10"

    return-object v0

    .line 352
    :sswitch_1
    const-string/jumbo v0, "3F00"

    return-object v0

    .line 355
    :sswitch_2
    const-string/jumbo v0, "3F007F105F3A"

    return-object v0

    .line 357
    :sswitch_3
    const-string/jumbo v0, "3F007F105F50"

    return-object v0

    .line 340
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
    .end sparse-switch
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "efid"    # I

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetEFPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v1, "3F007F105F3A"

    return-object v1

    .line 47
    .end local v0    # "path":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v1, "3F007F25"

    return-object v1

    .line 59
    :sswitch_1
    const-string/jumbo v1, "3F007FFF"

    return-object v1

    .line 68
    .restart local v0    # "path":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_1
        0x6f28 -> :sswitch_1
        0x6f32 -> :sswitch_1
        0x6f3b -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_1
        0x6f41 -> :sswitch_1
        0x6f44 -> :sswitch_1
        0x6f47 -> :sswitch_1
        0x6f4d -> :sswitch_1
        0x6f5a -> :sswitch_1
    .end sparse-switch
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I
    .param p2, "is7FFF"    # Z

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhbRecordInfo(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    const/16 v1, 0x14

    aput v1, v0, v3

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    iget v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mMaxNameLength:I

    aput v1, v0, v4

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "adnRecordSize[0] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " adnRecordSize[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " adnRecordSize[2] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " adnRecordSize[3] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 384
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 386
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 379
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getPhbRecordInfo(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    const/16 v26, 0x0

    .line 99
    .local v26, "response":Landroid/os/Message;
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 213
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 85
    .end local v26    # "response":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 101
    .restart local v26    # "response":Landroid/os/Message;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 102
    .local v21, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    move-object/from16 v26, v0

    .line 103
    .local v26, "response":Landroid/os/Message;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 105
    .local v27, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 111
    .local v22, "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->parseSizeInfoForTransparent([B)I

    move-result v9

    .line 113
    .local v9, "size":I
    if-ltz v9, :cond_1

    .line 114
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 115
    .local v5, "fileid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "response.obj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "efPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mAid:Ljava/lang/String;

    .line 120
    const/4 v4, 0x5

    .line 121
    const/4 v7, 0x0

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v5, v7, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 118
    const/16 v4, 0xb0

    .line 119
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 118
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v5    # "fileid":I
    .end local v6    # "efPath":Ljava/lang/String;
    .end local v9    # "size":I
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v26    # "response":Landroid/os/Message;
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :catch_0
    move-exception v23

    .line 217
    .local v23, "exc":Ljava/lang/Exception;
    if-eqz v26, :cond_7

    .line 218
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 123
    .end local v23    # "exc":Ljava/lang/Exception;
    .restart local v9    # "size":I
    .restart local v21    # "ar":Landroid/os/AsyncResult;
    .restart local v22    # "data":[B
    .restart local v26    # "response":Landroid/os/Message;
    .restart local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_1
    :try_start_1
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 127
    .end local v9    # "size":I
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v26, "response":Landroid/os/Message;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 128
    .restart local v21    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 129
    .local v24, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 130
    .restart local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v26, v0

    .line 132
    .local v26, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 138
    .restart local v22    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v3, :cond_2

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 143
    :cond_2
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getSmsEFPath(I)Ljava/lang/String;

    move-result-object v13

    .line 145
    move-object/from16 v0, v24

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 147
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 148
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 144
    const/16 v11, 0xb2

    .line 146
    const/4 v15, 0x4

    .line 147
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 144
    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 150
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    .line 151
    move-object/from16 v0, v24

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 153
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 154
    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 150
    const/16 v11, 0xb2

    .line 152
    const/4 v15, 0x4

    .line 153
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 150
    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 157
    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 162
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v26, "response":Landroid/os/Message;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 163
    .restart local v21    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 164
    .restart local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 165
    .restart local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v26, v0

    .line 167
    .local v26, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 173
    .restart local v22    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 174
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v25, v0

    .line 175
    .local v25, "recordSize":[I
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    const/4 v4, 0x0

    aput v3, v25, v4

    .line 176
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    const/4 v4, 0x0

    aget v4, v25, v4

    mul-int/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v25, v4

    .line 177
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    const/4 v4, 0x2

    aput v3, v25, v4

    .line 179
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    add-int/lit8 v3, v3, -0xe

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mMaxNameLength:I

    .line 180
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 182
    .end local v25    # "recordSize":[I
    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 187
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .local v26, "response":Landroid/os/Message;
    :pswitch_4
    const-string/jumbo v3, "get record size img done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    .line 189
    .restart local v21    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 190
    .restart local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 191
    .restart local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    move-object/from16 v26, v0

    .line 193
    .local v26, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v22, v0

    .line 199
    .restart local v22    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->parseRecordsInfoForLinearFixed([BLcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 200
    const-string/jumbo v3, "read EF IMG"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v13

    .line 202
    move-object/from16 v0, v24

    iget v14, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 204
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->mAid:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 205
    const/16 v3, 0x9

    const/16 v4, 0x4f20

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v4, v7, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 201
    const/16 v11, 0xb2

    .line 203
    const/4 v15, 0x4

    .line 204
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 201
    invoke-interface/range {v10 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 207
    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 220
    .end local v21    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "data":[B
    .end local v24    # "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    .end local v26    # "response":Landroid/os/Message;
    .end local v27    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .restart local v23    # "exc":Ljava/lang/Exception;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uncaught exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string/jumbo v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 371
    const-string/jumbo v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method public setPhbRecordStorageInfo(II)V
    .locals 2
    .param p1, "totalSize"    # I
    .param p2, "usedRecord"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CsimFileHandler;->adnRecordSize:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 374
    return-void
.end method
