.class abstract Lcom/android/internal/telephony/cat/BipValueParser;
.super Ljava/lang/Object;
.source "BipValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveBearerDesc(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/BearerDesc;
    .locals 15
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 39
    .local v9, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v10

    .line 40
    .local v10, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    .line 41
    .local v8, "length":I
    const/4 v0, 0x0

    .line 42
    .local v0, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDesc;
    const/4 v6, 0x0

    .line 43
    .local v6, "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    const/4 v4, 0x0

    .line 44
    .local v4, "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    const/4 v2, 0x0

    .line 46
    .local v2, "defaultbearerDesc":Lcom/android/internal/telephony/cat/DefaultBearerDesc;
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .local v11, "valueIndex":I
    :try_start_0
    aget-byte v12, v9, v10

    and-int/lit16 v1, v12, 0xff

    .line 47
    .local v1, "bearerType":I
    const-string/jumbo v12, "CAT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "retrieveBearerDesc: bearerType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v12, 0x2

    if-ne v12, v1, :cond_0

    .line 49
    new-instance v7, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/GPRSBearerDesc;-><init>()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v7, "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_1
    aget-byte v12, v9, v11

    .end local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->precedence:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_2
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->delay:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_3
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->reliability:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 53
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_4
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->peak:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 54
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_5
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->mean:I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 55
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_6
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v7, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->pdpType:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    .line 56
    return-object v7

    .line 57
    .end local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .restart local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    :cond_0
    const/16 v12, 0xb

    if-ne v12, v1, :cond_1

    .line 58
    :try_start_7
    new-instance v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/EUTranBearerDesc;-><init>()V
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 59
    .local v5, "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_8
    aget-byte v12, v9, v11

    .end local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->QCI:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    .line 60
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_9
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_4

    .line 61
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_a
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3

    .line 62
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_b
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_4

    .line 63
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_c
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_3

    .line 64
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_d
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_4

    .line 65
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_e
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_3

    .line 66
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_f
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_4

    .line 67
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :try_start_10
    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_3

    .line 68
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v11    # "valueIndex":I
    :try_start_11
    aget-byte v12, v9, v10

    and-int/lit16 v12, v12, 0xff

    iput v12, v5, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->pdnType:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_4

    .line 69
    return-object v5

    .line 70
    .end local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    .restart local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    :cond_1
    const/4 v12, 0x3

    if-ne v12, v1, :cond_2

    .line 71
    :try_start_12
    new-instance v2, Lcom/android/internal/telephony/cat/DefaultBearerDesc;

    .end local v2    # "defaultbearerDesc":Lcom/android/internal/telephony/cat/DefaultBearerDesc;
    invoke-direct {v2}, Lcom/android/internal/telephony/cat/DefaultBearerDesc;-><init>()V

    .line 72
    .local v2, "defaultbearerDesc":Lcom/android/internal/telephony/cat/DefaultBearerDesc;
    return-object v2

    .line 73
    .local v2, "defaultbearerDesc":Lcom/android/internal/telephony/cat/DefaultBearerDesc;
    :cond_2
    const/4 v12, 0x1

    if-ne v12, v1, :cond_3

    .line 74
    const-string/jumbo v12, "CAT"

    const-string/jumbo v13, "retrieveBearerDesc: unsupport CSD"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v12, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v12
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_0

    .line 80
    .end local v1    # "bearerType":I
    .end local v2    # "defaultbearerDesc":Lcom/android/internal/telephony/cat/DefaultBearerDesc;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    move v10, v11

    .line 81
    .end local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    .end local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :goto_0
    const-string/jumbo v12, "CAT"

    const-string/jumbo v13, "retrieveBearerDesc: out of bounds"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v12, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v12

    .line 77
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v10    # "valueIndex":I
    .restart local v1    # "bearerType":I
    .restart local v2    # "defaultbearerDesc":Lcom/android/internal/telephony/cat/DefaultBearerDesc;
    .restart local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    .restart local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .restart local v11    # "valueIndex":I
    :cond_3
    :try_start_13
    const-string/jumbo v12, "CAT"

    const-string/jumbo v13, "retrieveBearerDesc: un-understood bearer type"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v12, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v12
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_0

    .line 80
    .end local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .end local v11    # "valueIndex":I
    .restart local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .restart local v10    # "valueIndex":I
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v6, v7

    .end local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .local v6, "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    goto :goto_0

    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .end local v10    # "valueIndex":I
    .restart local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .restart local v11    # "valueIndex":I
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v6, v7

    .end local v7    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    .restart local v6    # "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    move v10, v11

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    goto :goto_0

    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    .restart local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    .local v6, "gprsbearerDesc":Lcom/android/internal/telephony/cat/GPRSBearerDesc;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v4, v5

    .end local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    .local v4, "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    goto :goto_0

    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    .end local v10    # "valueIndex":I
    .restart local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    .restart local v11    # "valueIndex":I
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v4, v5

    .end local v5    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    .restart local v4    # "euTranbearerDesc":Lcom/android/internal/telephony/cat/EUTranBearerDesc;
    move v10, v11

    .end local v11    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    goto :goto_0
.end method

.method static retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 88
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 89
    .local v3, "valueIndex":I
    const/4 v2, 0x0

    .line 92
    .local v2, "size":I
    :try_start_0
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0xff

    add-int v2, v4, v5

    .line 98
    return v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v4, "CAT"

    const-string/jumbo v5, "retrieveBufferSize: out of bounds"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 223
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 224
    .local v3, "valueIndex":I
    const/4 v0, 0x0

    .line 227
    .local v0, "channelData":[B
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    new-array v0, v4, [B

    .line 228
    .local v0, "channelData":[B
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-object v0

    .line 229
    .end local v0    # "channelData":[B
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v4, "CAT"

    const-string/jumbo v5, "retrieveChannelData: out of bounds"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 206
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 207
    .local v3, "valueIndex":I
    const/4 v1, 0x0

    .line 209
    .local v1, "length":I
    const-string/jumbo v4, "CAT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "valueIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 218
    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v4, "CAT"

    const-string/jumbo v5, "retrieveTransportProtocol: out of bounds"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 14
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 103
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v9

    .line 104
    .local v9, "valueIndex":I
    const/4 v2, 0x0

    .line 108
    .local v2, "networkAccessName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    .line 109
    .local v8, "totalLen":I
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v9, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v4, "stkNetworkAccessName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, "stkNetworkIdentifier":Ljava/lang/String;
    const/4 v6, 0x0

    .line 113
    .local v6, "stkOperatorIdentifier":Ljava/lang/String;
    if-eqz v4, :cond_4

    if-lez v8, :cond_4

    .line 115
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "valueIndex":I
    .local v10, "valueIndex":I
    :try_start_1
    aget-byte v1, v3, v9

    .line 116
    .local v1, "len":I
    if-le v8, v1, :cond_6

    .line 117
    new-instance v5, Ljava/lang/String;

    .end local v5    # "stkNetworkIdentifier":Ljava/lang/String;
    invoke-direct {v5, v3, v10, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .local v5, "stkNetworkIdentifier":Ljava/lang/String;
    add-int v9, v10, v1

    .line 120
    .end local v5    # "stkNetworkIdentifier":Ljava/lang/String;
    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :goto_0
    :try_start_2
    const-string/jumbo v11, "CAT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "totalLen:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v7, 0x0

    .local v7, "tmp_string":Ljava/lang/String;
    move v10, v9

    .line 123
    .end local v6    # "stkOperatorIdentifier":Ljava/lang/String;
    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    :goto_1
    add-int/lit8 v11, v1, 0x1

    if-le v8, v11, :cond_2

    .line 124
    add-int/lit8 v11, v1, 0x1

    sub-int/2addr v8, v11

    .line 125
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    aget-byte v1, v3, v10

    .line 126
    const-string/jumbo v11, "CAT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "next len: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-le v8, v1, :cond_0

    .line 128
    new-instance v7, Ljava/lang/String;

    .end local v7    # "tmp_string":Ljava/lang/String;
    invoke-direct {v7, v3, v9, v1}, Ljava/lang/String;-><init>([BII)V

    .line 129
    .local v7, "tmp_string":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 130
    move-object v6, v7

    .line 133
    .local v6, "stkOperatorIdentifier":Ljava/lang/String;
    :goto_2
    const/4 v7, 0x0

    .line 135
    .end local v6    # "stkOperatorIdentifier":Ljava/lang/String;
    .local v7, "tmp_string":Ljava/lang/String;
    :cond_0
    add-int/2addr v9, v1

    .line 136
    const-string/jumbo v11, "CAT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "totalLen:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    .end local v9    # "valueIndex":I
    .restart local v10    # "valueIndex":I
    goto :goto_1

    .line 132
    .end local v10    # "valueIndex":I
    .local v7, "tmp_string":Ljava/lang/String;
    .restart local v9    # "valueIndex":I
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .restart local v6    # "stkOperatorIdentifier":Ljava/lang/String;
    goto :goto_2

    .line 139
    .end local v6    # "stkOperatorIdentifier":Ljava/lang/String;
    .end local v9    # "valueIndex":I
    .local v7, "tmp_string":Ljava/lang/String;
    .restart local v10    # "valueIndex":I
    :cond_2
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 140
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .end local v2    # "networkAccessName":Ljava/lang/String;
    :cond_3
    :goto_3
    const-string/jumbo v11, "CAT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "nw:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move v9, v10

    .line 151
    .end local v1    # "len":I
    .end local v7    # "tmp_string":Ljava/lang/String;
    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    :cond_4
    return-object v2

    .line 141
    .end local v9    # "valueIndex":I
    .restart local v1    # "len":I
    .restart local v2    # "networkAccessName":Ljava/lang/String;
    .restart local v7    # "tmp_string":Ljava/lang/String;
    .restart local v10    # "valueIndex":I
    :cond_5
    if-eqz v5, :cond_3

    .line 142
    move-object v2, v5

    .local v2, "networkAccessName":Ljava/lang/String;
    goto :goto_3

    .line 146
    .end local v1    # "len":I
    .end local v4    # "stkNetworkAccessName":Ljava/lang/String;
    .end local v7    # "tmp_string":Ljava/lang/String;
    .end local v8    # "totalLen":I
    .end local v10    # "valueIndex":I
    .local v2, "networkAccessName":Ljava/lang/String;
    .restart local v9    # "valueIndex":I
    :catch_0
    move-exception v0

    .line 147
    .end local v2    # "networkAccessName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    const-string/jumbo v11, "CAT"

    const-string/jumbo v12, "retrieveNetworkAccessName: out of bounds"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 146
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "valueIndex":I
    .restart local v4    # "stkNetworkAccessName":Ljava/lang/String;
    .restart local v8    # "totalLen":I
    .restart local v10    # "valueIndex":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    move v9, v10

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_4

    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "valueIndex":I
    .restart local v1    # "len":I
    .restart local v2    # "networkAccessName":Ljava/lang/String;
    .local v5, "stkNetworkIdentifier":Ljava/lang/String;
    .local v6, "stkOperatorIdentifier":Ljava/lang/String;
    .restart local v10    # "valueIndex":I
    :cond_6
    move v9, v10

    .end local v10    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto/16 :goto_0
.end method

.method static retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 241
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 242
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 244
    .local v3, "length":I
    new-array v4, v3, [B

    .line 246
    .local v4, "nai":[B
    const/4 v1, 0x0

    .local v1, "index":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 247
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :try_start_0
    aget-byte v8, v5, v7

    aput-byte v8, v4, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_0

    .line 249
    .end local v2    # "index":I
    .end local v7    # "valueIndex":I
    .restart local v1    # "index":I
    .restart local v6    # "valueIndex":I
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 253
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v1    # "index":I
    .end local v6    # "valueIndex":I
    .restart local v2    # "index":I
    .restart local v7    # "valueIndex":I
    :cond_0
    return-object v4
.end method

.method static retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/OtherAddress;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 174
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 175
    .local v5, "valueIndex":I
    const/4 v0, 0x0

    .line 176
    .local v0, "addressType":I
    const/4 v3, 0x0

    .line 179
    .local v3, "otherAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "valueIndex":I
    .local v6, "valueIndex":I
    :try_start_0
    aget-byte v0, v4, v5

    .line 180
    const/16 v7, 0x21

    if-ne v7, v0, :cond_0

    .line 181
    new-instance v3, Lcom/android/internal/telephony/cat/OtherAddress;

    .end local v3    # "otherAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    invoke-direct {v3, v0, v4, v6}, Lcom/android/internal/telephony/cat/OtherAddress;-><init>(I[BI)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v3, "otherAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    return-object v3

    .line 182
    .local v3, "otherAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    :cond_0
    const/16 v7, 0x57

    if-ne v7, v0, :cond_1

    .line 183
    return-object v9

    .line 187
    :cond_1
    return-object v9

    .line 195
    .end local v3    # "otherAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e2":Ljava/net/UnknownHostException;
    const-string/jumbo v7, "CAT"

    const-string/jumbo v8, "retrieveOtherAddress: unknown host"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object v9

    .line 191
    .end local v2    # "e2":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v7, "CAT"

    const-string/jumbo v8, "retrieveOtherAddress: out of bounds"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v9
.end method

.method static retrieveTransportProtocol(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/TransportProtocol;
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 157
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 158
    .local v4, "valueIndex":I
    const/4 v2, 0x0

    .line 159
    .local v2, "protocolType":I
    const/4 v1, 0x0

    .line 162
    .local v1, "portNumber":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    :try_start_0
    aget-byte v2, v3, v4

    .line 163
    aget-byte v6, v3, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, v3, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v7, v7, 0xff

    add-int v1, v6, v7

    .line 169
    new-instance v6, Lcom/android/internal/telephony/cat/TransportProtocol;

    invoke-direct {v6, v2, v1}, Lcom/android/internal/telephony/cat/TransportProtocol;-><init>(II)V

    return-object v6

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "CAT"

    const-string/jumbo v7, "retrieveTransportProtocol: out of bounds"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6
.end method
