.class Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field mArrList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "arrList"    # Ljava/util/ArrayList;

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    .line 382
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    .line 381
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 387
    if-nez p1, :cond_0

    .line 388
    return-void

    .line 391
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v3

    or-int/lit16 v2, v3, 0x80

    .line 392
    .local v2, "tag":I
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ChannelStatusResp: size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 395
    iget-object v3, p0, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;->mArrList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 396
    .local v1, "iterator":Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 397
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 399
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 400
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 401
    .local v0, "chStatus":Lcom/android/internal/telephony/cat/ChannelStatus;
    iget v3, v0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    and-int/lit8 v3, v3, 0x7

    iget v4, v0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 402
    iget v3, v0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 403
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ChannelStatusResp: cid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 404
    iget v5, v0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 403
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 404
    const-string/jumbo v5, ",info:"

    .line 403
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 404
    iget v5, v0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I

    .line 403
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v0    # "chStatus":Lcom/android/internal/telephony/cat/ChannelStatus;
    .end local v1    # "iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "ChannelStatusResp: no channel status."

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 409
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 410
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 386
    :cond_2
    return-void
.end method
