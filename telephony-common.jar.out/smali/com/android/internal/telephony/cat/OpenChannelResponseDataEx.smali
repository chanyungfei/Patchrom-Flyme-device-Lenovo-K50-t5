.class Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;
.super Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.source "BipResponseData.java"


# instance fields
.field mProtocolType:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;II)V
    .locals 3
    .param p1, "channelStatus"    # Lcom/android/internal/telephony/cat/ChannelStatus;
    .param p2, "bearerDesc"    # Lcom/android/internal/telephony/cat/BearerDesc;
    .param p3, "bufferSize"    # I
    .param p4, "protocolType"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;I)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    .line 54
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OpenChannelResponseDataEx-constructor: protocolType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput p4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    .line 52
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 13
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string/jumbo v7, "[BIP]"

    const-string/jumbo v8, "OpenChannelResponseDataEx-format: buf is null"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 63
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-eq v11, v7, :cond_1

    .line 64
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-ne v10, v7, :cond_3

    .line 65
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-nez v7, :cond_2

    .line 66
    const-string/jumbo v7, "[BIP]"

    const-string/jumbo v8, "OpenChannelResponseDataEx-format: bearer null"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 68
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v7, v11, :cond_3

    .line 69
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v7, v12, :cond_3

    .line 70
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v8, 0xb

    if-eq v7, v8, :cond_3

    .line 71
    const-string/jumbo v7, "[BIP]"

    const-string/jumbo v8, "OpenChannelResponseDataEx-format: bearer type is not gprs"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_3
    const/4 v5, 0x0

    .line 76
    .local v5, "length":I
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    if-eqz v7, :cond_6

    .line 77
    const-string/jumbo v7, "[BIP]"

    const-string/jumbo v8, "OpenChannelResponseDataEx-format: Write channel status into TR"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    .line 79
    .local v6, "tag":I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    const/4 v5, 0x2

    .line 81
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v7, v7, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    iget-object v8, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v8, v8, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    or-int/2addr v7, v8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v7, v7, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    const-string/jumbo v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OpenChannel Channel status Rsp:tag["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "],len["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 85
    const-string/jumbo v9, "],cId["

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 85
    iget-object v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v9, v9, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 85
    const-string/jumbo v9, "],status["

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 86
    iget-object v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v9, v9, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 86
    const-string/jumbo v9, "]"

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v6    # "tag":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v7, :cond_16

    .line 93
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-eq v11, v7, :cond_4

    .line 94
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-ne v10, v7, :cond_5

    .line 95
    :cond_4
    const-string/jumbo v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Write bearer description into TR. bearerType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 96
    iget-object v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v9, v9, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    .line 98
    .restart local v6    # "tag":I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 99
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    if-ne v11, v7, :cond_8

    .line 100
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    instance-of v7, v7, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    if-eqz v7, :cond_7

    .line 101
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    .line 102
    .local v2, "gprsBD":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    const/4 v5, 0x7

    .line 103
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    iget v7, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    iget v7, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    iget v7, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->delay:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 107
    iget v7, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    iget v7, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->peak:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    iget v7, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->mean:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    iget v7, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    const-string/jumbo v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OpenChannelResponseDataEx-format: tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 112
    const-string/jumbo v9, ",length: "

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 113
    const-string/jumbo v9, ",bearerType: "

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 113
    iget v9, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 114
    const-string/jumbo v9, ",precedence: "

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 114
    iget v9, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 115
    const-string/jumbo v9, ",delay: "

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 115
    iget v9, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->delay:I

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 116
    const-string/jumbo v9, ",reliability: "

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 116
    iget v9, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 117
    const-string/jumbo v9, ",peak: "

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 117
    iget v9, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->peak:I

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 118
    const-string/jumbo v9, ",mean: "

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 118
    iget v9, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->mean:I

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 119
    const-string/jumbo v9, ",pdp type: "

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 119
    iget v9, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v2    # "gprsBD":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .end local v6    # "tag":I
    :cond_5
    :goto_1
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    if-ltz v7, :cond_17

    .line 181
    const-string/jumbo v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Write buffer size into TR.["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    .line 183
    .restart local v6    # "tag":I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    const/4 v5, 0x2

    .line 185
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 186
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    shr-int/lit8 v7, v7, 0x8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 187
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 188
    const-string/jumbo v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "OpenChannelResponseDataEx-format: tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 189
    const-string/jumbo v9, ",length: "

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 190
    const-string/jumbo v9, ",buffer size(hi-byte): "

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 190
    iget v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    shr-int/lit8 v9, v9, 0x8

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 191
    const-string/jumbo v9, ",buffer size(low-byte): "

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 191
    iget v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    and-int/lit16 v9, v9, 0xff

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v6    # "tag":I
    :goto_2
    return-void

    .line 88
    :cond_6
    const-string/jumbo v7, "[BIP]"

    const-string/jumbo v8, "No Channel status in TR."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .restart local v6    # "tag":I
    :cond_7
    const-string/jumbo v7, "[BIP]"

    const-string/jumbo v8, "Not expected GPRSBearerDesc instance"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 123
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v8, 0xb

    if-ne v8, v7, :cond_15

    .line 124
    const/16 v7, 0xa

    new-array v0, v7, [I

    .line 125
    .local v0, "bufferArr":[I
    const/4 v4, 0x0

    .line 126
    .local v4, "index":I
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    instance-of v7, v7, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    if-eqz v7, :cond_14

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    .line 128
    .local v1, "euTranBD":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    if-eqz v7, :cond_9

    .line 129
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    aput v7, v0, v4

    const/4 v4, 0x1

    .line 131
    :cond_9
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    if-eqz v7, :cond_a

    .line 132
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 134
    :cond_a
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    if-eqz v7, :cond_b

    .line 135
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 137
    :cond_b
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    if-eqz v7, :cond_c

    .line 138
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 140
    :cond_c
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    if-eqz v7, :cond_d

    .line 141
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 143
    :cond_d
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    if-eqz v7, :cond_e

    .line 144
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 146
    :cond_e
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    if-eqz v7, :cond_f

    .line 147
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 149
    :cond_f
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    if-eqz v7, :cond_10

    .line 150
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 152
    :cond_10
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    if-eqz v7, :cond_11

    .line 153
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 155
    :cond_11
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    if-eqz v7, :cond_12

    .line 156
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 158
    :cond_12
    const-string/jumbo v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EUTranBearerDesc length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-lez v4, :cond_13

    .line 160
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 164
    :goto_3
    iget v7, v1, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->bearerType:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 165
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v4, :cond_5

    .line 166
    aget v7, v0, v3

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 167
    const-string/jumbo v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "EUTranBearerDesc buf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 162
    .end local v3    # "i":I
    :cond_13
    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 170
    .end local v1    # "euTranBD":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    :cond_14
    const-string/jumbo v7, "[BIP]"

    const-string/jumbo v8, "Not expected EUTranBearerDesc instance"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    .end local v0    # "bufferArr":[I
    .end local v4    # "index":I
    :cond_15
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    if-ne v12, v7, :cond_5

    .line 173
    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 174
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v7, Lcom/android/internal/telephony/cat/DefaultBearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/DefaultBearerDesc;->bearerType:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 178
    .end local v6    # "tag":I
    :cond_16
    const-string/jumbo v7, "[BIP]"

    const-string/jumbo v8, "No bearer description in TR."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :cond_17
    const-string/jumbo v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No buffer size in TR.["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
