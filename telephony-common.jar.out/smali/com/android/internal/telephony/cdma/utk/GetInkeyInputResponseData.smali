.class Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
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
    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 166
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 167
    iput-boolean p3, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 168
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 164
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "yesNoResponse"    # Z

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 174
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 176
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 178
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 172
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 11
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 183
    if-nez p1, :cond_0

    .line 184
    return-void

    .line 188
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v5, v9, 0x80

    .line 189
    .local v5, "tag":I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v9, :cond_3

    .line 194
    new-array v1, v7, [B

    .line 195
    .local v1, "data":[B
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v9, :cond_2

    :goto_0
    aput-byte v7, v1, v8

    .line 222
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "input data length="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    array-length v7, v1

    const/16 v9, 0x7f

    if-lt v7, v9, :cond_1

    .line 224
    const-string/jumbo v7, "add 0x81"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const/16 v7, 0x81

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    :cond_1
    array-length v7, v1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 232
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v7, :cond_7

    .line 233
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    :goto_2
    array-length v7, v1

    :goto_3
    if-ge v8, v7, :cond_9

    aget-byte v0, v1, v8

    .line 241
    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v0    # "b":B
    :cond_2
    move v7, v8

    .line 195
    goto :goto_0

    .line 196
    .end local v1    # "data":[B
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 198
    :try_start_0
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v7, :cond_4

    .line 199
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string/jumbo v9, "UTF-16BE"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1    # "data":[B
    goto :goto_1

    .line 200
    .end local v1    # "data":[B
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v7, :cond_5

    .line 201
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 204
    .local v4, "size":I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 203
    invoke-static {v7, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v6

    .line 205
    .local v6, "tempData":[B
    new-array v1, v4, [B

    .line 209
    .restart local v1    # "data":[B
    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static {v6, v7, v1, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 213
    .end local v1    # "data":[B
    .end local v4    # "size":I
    .end local v6    # "tempData":[B
    :catch_0
    move-exception v3

    .line 214
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-array v1, v8, [B

    .restart local v1    # "data":[B
    goto :goto_1

    .line 211
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .restart local v1    # "data":[B
    goto/16 :goto_1

    .line 215
    .end local v1    # "data":[B
    :catch_1
    move-exception v2

    .line 216
    .local v2, "e":Lcom/android/internal/telephony/EncodeException;
    new-array v1, v8, [B

    .restart local v1    # "data":[B
    goto/16 :goto_1

    .line 219
    .end local v1    # "data":[B
    .end local v2    # "e":Lcom/android/internal/telephony/EncodeException;
    :cond_6
    new-array v1, v8, [B

    .restart local v1    # "data":[B
    goto/16 :goto_1

    .line 234
    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v7, :cond_8

    .line 235
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 237
    :cond_8
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 182
    :cond_9
    return-void
.end method
