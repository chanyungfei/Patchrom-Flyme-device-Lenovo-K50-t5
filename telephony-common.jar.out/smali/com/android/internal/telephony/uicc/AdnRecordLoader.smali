.class public Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_PHB_LOAD_ALL_DONE:I = 0x68

.field static final EVENT_PHB_LOAD_DONE:I = 0x67

.field static final EVENT_PHB_QUERY_STAUTS:I = 0x69

.field static final EVENT_UPDATE_PHB_RECORD_DONE:I = 0x65

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final EVENT_VERIFY_PIN2:I = 0x66

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordLoader"

.field static final VDBG:Z


# instance fields
.field current_read:I

.field mAdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field mEf:I

.field mExtensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mPendingExtLoads:I

.field mPin2:Ljava/lang/String;

.field mRecordNumber:I

.field mResult:Ljava/lang/Object;

.field mUserResponse:Landroid/os/Message;

.field total:I

.field used:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 88
    return-void
.end method

.method private canUseGsm7Bit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alphaId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 541
    invoke-static {p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private encodeATUCS(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v3, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 551
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "hexInt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_0

    .line 553
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v0    # "hexInt":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getAdnRecordFromPhbEntry(Lcom/android/internal/telephony/PhbEntry;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .locals 8
    .param p1, "entry"    # Lcom/android/internal/telephony/PhbEntry;

    .prologue
    const/4 v7, 0x0

    .line 657
    const-string/jumbo v4, "AdnRecordLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Parse Adn entry :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v4, p1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 661
    .local v1, "ba":[B
    if-nez v1, :cond_0

    .line 662
    const-string/jumbo v4, "AdnRecordLoader"

    const-string/jumbo v5, "entry.alphaId is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-object v7

    .line 667
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const-string/jumbo v5, "utf-16be"

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .local v0, "alphaId":Ljava/lang/String;
    iget v4, p1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    const/16 v5, 0x91

    if-ne v4, v5, :cond_1

    .line 678
    iget-object v4, p1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, "number":Ljava/lang/String;
    :goto_0
    const/16 v4, 0x3f

    const/16 v5, 0x4e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 686
    const/16 v4, 0x70

    const/16 v5, 0x2c

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 688
    const/16 v4, 0x77

    const/16 v5, 0x3b

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 692
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    iget v6, p1, Lcom/android/internal/telephony/PhbEntry;->index:I

    invoke-direct {v4, v5, v6, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 668
    .end local v0    # "alphaId":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 669
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "AdnRecordLoader"

    const-string/jumbo v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    return-object v7

    .line 680
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "alphaId":Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .restart local v3    # "number":Ljava/lang/String;
    goto :goto_0
.end method

.method private getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 96
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    .line 97
    const-string/jumbo v0, "3F007F10"

    return-object v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPhbStorageType(I)I
    .locals 1
    .param p1, "ef"    # I

    .prologue
    .line 561
    const/4 v0, -0x1

    .line 562
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    .line 575
    :goto_0
    return v0

    .line 564
    :pswitch_0
    const/4 v0, 0x0

    .line 565
    goto :goto_0

    .line 567
    :pswitch_1
    const/4 v0, 0x1

    .line 568
    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x6f3a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readEntryFromModem(I[I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "readInfo"    # [I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 634
    array-length v1, p2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 635
    const-string/jumbo v1, "AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readEntryToModem, invalid paramters:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void

    .line 646
    :cond_0
    aget v1, p2, v3

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v1, -0x1

    .line 647
    .local v0, "eIndex":I
    aget v1, p2, v4

    if-le v0, v1, :cond_1

    .line 648
    aget v0, p2, v4

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aget v2, p2, v3

    .line 652
    const/16 v3, 0x68

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 651
    invoke-interface {v1, p1, v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->ReadPhbEntry(IIILandroid/os/Message;)V

    .line 632
    return-void
.end method

.method private updatePhb(Lcom/android/internal/telephony/uicc/AdnRecord;I)V
    .locals 3
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "type"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/16 v2, 0x66

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 523
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->writeEntryToModem(Lcom/android/internal/telephony/uicc/AdnRecord;I)V

    goto :goto_0
.end method

.method private writeEntryToModem(Lcom/android/internal/telephony/uicc/AdnRecord;I)V
    .locals 9
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "type"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x2b

    .line 579
    const/16 v3, 0x81

    .line 580
    .local v3, "ton":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "alphaId":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 585
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 587
    const-string/jumbo v5, "AdnRecordLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "There are multiple \'+\' in the number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    const/16 v3, 0x91

    .line 591
    const-string/jumbo v5, "+"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 594
    :cond_1
    const/16 v5, 0x4e

    const/16 v6, 0x3f

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 596
    const/16 v5, 0x2c

    const/16 v6, 0x70

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 598
    const/16 v5, 0x3b

    const/16 v6, 0x77

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->encodeATUCS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    new-instance v1, Lcom/android/internal/telephony/PhbEntry;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhbEntry;-><init>()V

    .line 610
    .local v1, "entry":Lcom/android/internal/telephony/PhbEntry;
    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x81

    if-ne v3, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    .line 612
    iput p2, v1, Lcom/android/internal/telephony/PhbEntry;->type:I

    .line 613
    iget v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    iput v4, v1, Lcom/android/internal/telephony/PhbEntry;->index:I

    .line 614
    iput-object v2, v1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .line 615
    iput v3, v1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    .line 616
    iput-object v0, v1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    .line 627
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 628
    const/16 v5, 0x65

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 627
    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->writePhbEntry(Lcom/android/internal/telephony/PhbEntry;Landroid/os/Message;)V

    .line 578
    return-void

    .line 618
    :cond_3
    iput p2, v1, Lcom/android/internal/telephony/PhbEntry;->type:I

    .line 619
    iget v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    iput v4, v1, Lcom/android/internal/telephony/PhbEntry;->index:I

    .line 620
    iput-object v8, v1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .line 621
    iput v3, v1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    .line 622
    iput-object v8, v1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v3, :sswitch_data_0

    .line 514
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 518
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 215
    :cond_1
    return-void

    .line 226
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 227
    .local v11, "ar":Landroid/os/AsyncResult;
    iget-object v10, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 229
    .local v10, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 230
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "get EF record size failed"

    .line 231
    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 230
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v15

    .line 498
    .local v15, "exc":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 499
    const-string/jumbo v3, "AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage RuntimeException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 501
    const-string/jumbo v3, "AdnRecordLoader"

    const-string/jumbo v4, "handleMessage Null RuntimeException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/CommandException;

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 506
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 509
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 511
    :cond_2
    return-void

    .line 234
    .end local v15    # "exc":Ljava/lang/RuntimeException;
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    :cond_3
    :try_start_2
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [I

    .line 240
    .local v20, "recordSize":[I
    move-object/from16 v0, v20

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    const/4 v4, 0x2

    aget v4, v20, v4

    if-le v3, v4, :cond_5

    .line 241
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "get wrong EF record size format"

    .line 242
    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 241
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 245
    :cond_5
    const/4 v14, 0x1

    .line 246
    .local v14, "errorNum":I
    const-string/jumbo v3, "AdnRecordLoader"

    const-string/jumbo v4, "in EVENT_EF_LINEAR_RECORD_SIZE_DONE,call adn.buildAdnString"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v3, 0x0

    aget v3, v20, v3

    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v7

    .line 249
    .local v7, "data":[B
    if-nez v7, :cond_9

    .line 250
    const-string/jumbo v3, "AdnRecordLoader"

    const-string/jumbo v4, "data is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getErrorNumber()I

    move-result v14

    .line 252
    const/4 v3, -0x1

    if-ne v14, v3, :cond_6

    .line 253
    const-string/jumbo v3, "AdnRecordLoader"

    const-string/jumbo v4, "data is null and DIAL_STRING_TOO_LONG"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "NUMBER_STRING_TOO_LONG"

    .line 256
    const/16 v5, 0x3e9

    .line 255
    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    .line 254
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 257
    :cond_6
    const/4 v3, -0x2

    if-ne v14, v3, :cond_7

    .line 258
    const-string/jumbo v3, "AdnRecordLoader"

    const-string/jumbo v4, "data is null and TEXT_STRING_TOO_LONG"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "TEXT_STRING_TOO_LONG"

    .line 261
    const/16 v5, 0x3ea

    .line 260
    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    .line 259
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 262
    :cond_7
    const/16 v3, -0xf

    if-ne v14, v3, :cond_8

    .line 263
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "wrong ADN format"

    .line 264
    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 263
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 267
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 268
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 273
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 274
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    const/4 v9, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 273
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 276
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 280
    .end local v7    # "data":[B
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "errorNum":I
    .end local v20    # "recordSize":[I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 281
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    const/16 v17, 0x0

    .line 282
    .local v17, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 283
    .local v21, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a

    .line 284
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "update EF adn record failed"

    .line 285
    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 284
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 287
    :cond_a
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v17

    .line 288
    .local v17, "iccException":Lcom/android/internal/telephony/uicc/IccException;
    if-eqz v17, :cond_b

    .line 289
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "update EF adn record failed for sw"

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 293
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 294
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 297
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "iccException":Lcom/android/internal/telephony/uicc/IccException;
    .end local v21    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 298
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    .line 300
    .restart local v7    # "data":[B
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_c

    .line 301
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "load failed"

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 311
    :cond_c
    new-instance v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    invoke-direct {v10, v3, v4, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 312
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 314
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 322
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v5, v10, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 323
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 321
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 328
    .end local v7    # "data":[B
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 329
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    .line 330
    .restart local v7    # "data":[B
    iget-object v10, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 332
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_d

    .line 333
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "load failed"

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 336
    :cond_d
    const-string/jumbo v3, "AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ADN extension EF: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 337
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 338
    const-string/jumbo v5, ":"

    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 338
    iget v5, v10, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 339
    const-string/jumbo v5, "\n"

    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 339
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v10, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    .line 343
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 349
    .end local v7    # "data":[B
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 350
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v12, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    .line 352
    .local v12, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_e

    .line 353
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "load failed"

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 356
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 358
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 360
    const/16 v16, 0x0

    .local v16, "i":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    .local v22, "s":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 361
    new-instance v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    add-int/lit8 v5, v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v10, v4, v5, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 362
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 369
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 372
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    iget v5, v10, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 373
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 371
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 360
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 379
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v16    # "i":I
    .end local v22    # "s":I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 380
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_10

    .line 381
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "update PHB EF record failed"

    .line 382
    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 381
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 384
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    .line 385
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    goto/16 :goto_0

    .line 389
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 390
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v10, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 392
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_11

    .line 393
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "PHB Verify PIN2 error"

    .line 394
    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 393
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 397
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->writeEntryToModem(Lcom/android/internal/telephony/uicc/AdnRecord;I)V

    .line 398
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 402
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 403
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v13, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Lcom/android/internal/telephony/PhbEntry;

    .line 405
    .local v13, "entries":[Lcom/android/internal/telephony/PhbEntry;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_12

    .line 406
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "PHB Read an entry Error"

    .line 407
    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 406
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 410
    :cond_12
    const/4 v3, 0x0

    aget-object v3, v13, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/android/internal/telephony/PhbEntry;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v10

    .line 411
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 412
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 423
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "entries":[Lcom/android/internal/telephony/PhbEntry;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 424
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    .line 426
    .local v18, "info":[I
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_13

    .line 427
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "PHB Query Info Error"

    .line 428
    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 427
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 431
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v23

    .line 432
    .local v23, "type":I
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 433
    .local v19, "readInfo":[I
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v3, v19, v4

    .line 434
    const/4 v3, 0x0

    aget v3, v18, v3

    const/4 v4, 0x1

    aput v3, v19, v4

    .line 435
    const/4 v3, 0x1

    aget v3, v18, v3

    const/4 v4, 0x2

    aput v3, v19, v4

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    aget v4, v19, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    .line 438
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_3
    const/4 v3, 0x2

    aget v3, v19, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_14

    .line 440
    new-instance v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    add-int/lit8 v4, v16, 0x1

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-direct {v10, v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 441
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 438
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 444
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->readEntryFromModem(I[I)V

    .line 445
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 449
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "i":I
    .end local v18    # "info":[I
    .end local v19    # "readInfo":[I
    .end local v23    # "type":I
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 450
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [I

    .line 451
    .restart local v19    # "readInfo":[I
    iget-object v13, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, [Lcom/android/internal/telephony/PhbEntry;

    .line 453
    .restart local v13    # "entries":[Lcom/android/internal/telephony/PhbEntry;
    iget-object v3, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_15

    .line 454
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "PHB Read Entries Error"

    .line 455
    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 454
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 458
    :cond_15
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_4
    array-length v3, v13

    move/from16 v0, v16

    if-ge v0, v3, :cond_17

    .line 459
    aget-object v3, v13, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/android/internal/telephony/PhbEntry;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object v10

    .line 460
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v10, :cond_16

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    iget v4, v10, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 462
    const/4 v3, 0x1

    aget v4, v19, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v19, v3

    .line 463
    const-string/jumbo v3, "AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Read entries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 466
    :cond_16
    const-string/jumbo v3, "AdnRecordLoader"

    const-string/jumbo v4, "getAdnRecordFromPhbEntry return null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v3, Ljava/lang/RuntimeException;

    .line 468
    const-string/jumbo v4, "getAdnRecordFromPhbEntry return null"

    .line 470
    const/4 v5, 0x2

    .line 469
    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    .line 467
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 473
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_17
    const/4 v3, 0x0

    aget v4, v19, v3

    add-int/lit8 v4, v4, 0xa

    aput v4, v19, v3

    .line 475
    const/4 v3, 0x1

    aget v3, v19, v3

    if-gez v3, :cond_18

    .line 476
    const-string/jumbo v3, "AdnRecordLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the read entries is not sync with query status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 477
    const/4 v5, 0x1

    aget v5, v19, v5

    .line 476
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v3, Ljava/lang/RuntimeException;

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the read entries is not sync with query status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v19, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 481
    const/4 v5, 0x2

    .line 480
    invoke-static {v5}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    .line 478
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 484
    :cond_18
    const/4 v3, 0x1

    aget v3, v19, v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    aget v3, v19, v3

    const/4 v4, 0x2

    aget v4, v19, v4

    if-lt v3, v4, :cond_1a

    .line 486
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mAdns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mResult:Ljava/lang/Object;

    .line 487
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 489
    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v23

    .line 490
    .restart local v23    # "type":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->readEntryFromModem(I[I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 504
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "entries":[Lcom/android/internal/telephony/PhbEntry;
    .end local v16    # "i":I
    .end local v19    # "readInfo":[I
    .end local v23    # "type":I
    .restart local v15    # "exc":Ljava/lang/RuntimeException;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto/16 :goto_1

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_9
        0x69 -> :sswitch_8
    .end sparse-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 4
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    .line 144
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 145
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 146
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v1, :cond_2

    .line 150
    const/16 v1, 0x4f3a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3b

    if-ne p1, v1, :cond_1

    .line 151
    :cond_0
    const-string/jumbo v1, "AdnRecordLoader"

    const-string/jumbo v2, "Csim :loadEFLinearFixedAll"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 156
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 143
    :goto_0
    return-void

    .line 150
    :cond_1
    const/16 v1, 0x4f3c

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3d

    if-eq p1, v1, :cond_0

    .line 160
    :cond_2
    const-string/jumbo v1, "AdnRecordLoader"

    const-string/jumbo v2, "Usim :loadEFLinearFixedAll"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v1, "AdnRecordLoader"

    const-string/jumbo v2, "Usim :loadEFLinearFixedAll"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 163
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 166
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 164
    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 168
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 4
    .param p1, "ef"    # I
    .param p2, "extensionEF"    # I
    .param p3, "recordNumber"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 110
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 111
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 112
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 113
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v1, :cond_2

    .line 116
    const/16 v1, 0x4f3a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3b

    if-ne p1, v1, :cond_1

    .line 117
    :cond_0
    const-string/jumbo v1, "AdnRecordLoader"

    const-string/jumbo v2, "Csim :loadFromEF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 119
    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    .line 109
    :goto_0
    return-void

    .line 116
    :cond_1
    const/16 v1, 0x4f3c

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4f3d

    if-eq p1, v1, :cond_0

    .line 123
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 124
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 127
    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 125
    invoke-interface {v1, v0, p3, p3, v2}, Lcom/android/internal/telephony/CommandsInterface;->ReadPhbEntry(IIILandroid/os/Message;)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 129
    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "ef"    # I
    .param p3, "extensionEF"    # I
    .param p4, "recordNumber"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x4

    .line 190
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mEf:I

    .line 191
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mExtensionEF:I

    .line 192
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mRecordNumber:I

    .line 193
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mUserResponse:Landroid/os/Message;

    .line 194
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mPin2:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v1, :cond_2

    .line 197
    const/16 v1, 0x4f3a

    if-eq p2, v1, :cond_0

    const/16 v1, 0x4f3b

    if-ne p2, v1, :cond_1

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 198
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    .line 189
    :goto_0
    return-void

    .line 197
    :cond_1
    const/16 v1, 0x4f3c

    if-eq p2, v1, :cond_0

    const/16 v1, 0x4f3d

    if-eq p2, v1, :cond_0

    .line 201
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 202
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updatePhb(Lcom/android/internal/telephony/uicc/AdnRecord;I)V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->getEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 205
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
