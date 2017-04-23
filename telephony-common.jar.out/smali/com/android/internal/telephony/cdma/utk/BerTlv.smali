.class Lcom/android/internal/telephony/cdma/utk/BerTlv;
.super Ljava/lang/Object;
.source "BerTlv.java"


# static fields
.field public static final BER_EVENT_DOWNLOAD_TAG:I = 0xd6

.field public static final BER_MENU_SELECTION_TAG:I = 0xd3

.field public static final BER_PROACTIVE_COMMAND_TAG:I = 0xd0

.field public static final BER_TIMER_EXPIRATION_TAG:I = 0xd7

.field public static final BER_UNKNOWN_TAG:I


# instance fields
.field private mCompTlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:I


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/BerTlv;->mTag:I

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/BerTlv;->mTag:I

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/BerTlv;->mCompTlvs:Ljava/util/List;

    .line 38
    return-void
.end method

.method public static decode([B)Lcom/android/internal/telephony/cdma/utk/BerTlv;
    .locals 13
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v10, 0x80

    .line 69
    if-nez p0, :cond_0

    .line 70
    return-object v9

    .line 73
    :cond_0
    array-length v5, p0

    .line 74
    .local v5, "endIndex":I
    const/4 v6, 0x0

    .line 72
    .local v6, "length":I
    const/4 v9, 0x0

    .line 78
    const/4 v1, 0x1

    .local v1, "curIndex":I
    :try_start_0
    aget-byte v9, p0, v9
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit16 v7, v9, 0xff

    .line 79
    .local v7, "tag":I
    const/16 v9, 0xd0

    if-ne v7, v9, :cond_5

    .line 81
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "curIndex":I
    .local v2, "curIndex":I
    :try_start_1
    aget-byte v9, p0, v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_1 .. :try_end_1} :catch_3

    and-int/lit16 v8, v9, 0xff

    .line 82
    .local v8, "temp":I
    if-ge v8, v10, :cond_2

    .line 83
    move v6, v8

    move v1, v2

    .line 116
    .end local v2    # "curIndex":I
    .end local v8    # "temp":I
    .restart local v1    # "curIndex":I
    :cond_1
    :goto_0
    sub-int v9, v5, v1

    if-ge v9, v6, :cond_6

    .line 117
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 118
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Command had extra data endIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " curIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 119
    const-string/jumbo v12, " length="

    .line 118
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 117
    invoke-direct {v9, v10, v11}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;Ljava/lang/String;)V

    throw v9

    .line 84
    .end local v1    # "curIndex":I
    .restart local v2    # "curIndex":I
    .restart local v8    # "temp":I
    :cond_2
    const/16 v9, 0x81

    if-ne v8, v9, :cond_4

    .line 85
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "curIndex":I
    .restart local v1    # "curIndex":I
    :try_start_2
    aget-byte v9, p0, v2

    and-int/lit16 v8, v9, 0xff

    .line 86
    if-ge v8, v10, :cond_3

    .line 87
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/ResultException;

    .line 88
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 89
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "length < 0x80 length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 90
    const-string/jumbo v12, " curIndex="

    .line 89
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 90
    const-string/jumbo v12, " endIndex="

    .line 89
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 87
    invoke-direct {v9, v10, v11}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    .end local v7    # "tag":I
    .end local v8    # "temp":I
    :catch_0
    move-exception v4

    .line 108
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IndexOutOfBoundsException  curIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 110
    const-string/jumbo v12, " endIndex="

    .line 109
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 108
    invoke-direct {v9, v10, v11}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;Ljava/lang/String;)V

    throw v9

    .line 93
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "tag":I
    .restart local v8    # "temp":I
    :cond_3
    move v6, v8

    goto/16 :goto_0

    .line 95
    .end local v1    # "curIndex":I
    .restart local v2    # "curIndex":I
    :cond_4
    :try_start_3
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/ResultException;

    .line 96
    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Expected first byte to be length or a length tag and < 0x81 byte= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 97
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 98
    const-string/jumbo v12, " curIndex="

    .line 97
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 99
    const-string/jumbo v12, " endIndex="

    .line 97
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 95
    invoke-direct {v9, v10, v11}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_3 .. :try_end_3} :catch_3

    .line 107
    .end local v8    # "temp":I
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    move v1, v2

    .end local v2    # "curIndex":I
    .restart local v1    # "curIndex":I
    goto :goto_1

    .line 102
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    :try_start_4
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v9

    and-int/lit16 v10, v7, -0x81

    if-ne v9, v10, :cond_1

    .line 103
    const/4 v7, 0x0

    .line 104
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 111
    .end local v7    # "tag":I
    :catch_2
    move-exception v3

    .line 112
    .local v3, "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    :goto_2
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/utk/ResultException;->explanation()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;Ljava/lang/String;)V

    throw v9

    .line 122
    .end local v3    # "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    .restart local v7    # "tag":I
    :cond_6
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->decodeMany([BI)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/BerTlv;

    invoke-direct {v9, v7, v0}, Lcom/android/internal/telephony/cdma/utk/BerTlv;-><init>(ILjava/util/List;)V

    return-object v9

    .line 111
    .end local v0    # "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    .end local v1    # "curIndex":I
    .restart local v2    # "curIndex":I
    :catch_3
    move-exception v3

    .restart local v3    # "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    move v1, v2

    .end local v2    # "curIndex":I
    .restart local v1    # "curIndex":I
    goto :goto_2
.end method


# virtual methods
.method public getComprehensionTlvs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BerTlv;->mCompTlvs:Ljava/util/List;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/BerTlv;->mTag:I

    return v0
.end method
