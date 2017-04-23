.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "inData"    # Ljava/lang/String;
    .param p2, "ucs2"    # Z
    .param p3, "packed"    # Z

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 84
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 85
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "yesNoResponse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 96
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 90
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 11
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 102
    return-void

    .line 106
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v5, v9, 0x80

    .line 107
    .local v5, "tag":I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v9, :cond_2

    .line 112
    new-array v1, v7, [B

    .line 113
    .local v1, "data":[B
    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v9, :cond_1

    :goto_0
    aput-byte v7, v1, v8

    .line 148
    :goto_1
    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    invoke-static {p1, v7}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 151
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v7, :cond_6

    .line 152
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    :goto_2
    array-length v7, v1

    :goto_3
    if-ge v8, v7, :cond_8

    aget-byte v0, v1, v8

    .line 160
    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 159
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v0    # "b":B
    :cond_1
    move v7, v8

    .line 113
    goto :goto_0

    .line 114
    .end local v1    # "data":[B
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 118
    :try_start_0
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v7, :cond_3

    .line 121
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string/jumbo v9, "UTF-16BE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1    # "data":[B
    goto :goto_1

    .line 122
    .end local v1    # "data":[B
    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v7, :cond_4

    .line 128
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 127
    invoke-static {v7, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v6

    .line 129
    .local v6, "tempData":[B
    array-length v7, v6

    add-int/lit8 v4, v7, -0x1

    .line 130
    .local v4, "size":I
    new-array v1, v4, [B

    .line 134
    .restart local v1    # "data":[B
    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static {v6, v7, v1, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 138
    .end local v1    # "data":[B
    .end local v4    # "size":I
    .end local v6    # "tempData":[B
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-array v1, v8, [B

    .restart local v1    # "data":[B
    goto :goto_1

    .line 136
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .restart local v1    # "data":[B
    goto :goto_1

    .line 140
    .end local v1    # "data":[B
    :catch_1
    move-exception v2

    .line 141
    .local v2, "e":Lcom/android/internal/telephony/EncodeException;
    new-array v1, v8, [B

    .restart local v1    # "data":[B
    goto :goto_1

    .line 144
    .end local v1    # "data":[B
    .end local v2    # "e":Lcom/android/internal/telephony/EncodeException;
    :cond_5
    new-array v1, v8, [B

    .restart local v1    # "data":[B
    goto :goto_1

    .line 153
    :cond_6
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v7, :cond_7

    .line 154
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 156
    :cond_7
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 100
    :cond_8
    return-void
.end method
