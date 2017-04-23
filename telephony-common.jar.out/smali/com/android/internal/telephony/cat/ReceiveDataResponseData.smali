.class Lcom/android/internal/telephony/cat/ReceiveDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field mData:[B

.field mRemainingCount:I


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "remaining"    # I

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    .line 338
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 339
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    .line 336
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    const/16 v2, 0x80

    .line 344
    if-nez p1, :cond_0

    .line 345
    return-void

    .line 350
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 351
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v1, v1

    if-lt v1, v2, :cond_1

    .line 355
    const/16 v1, 0x81

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v2, v2

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 364
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 365
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 366
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 368
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ReceiveDataResponseData: length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    if-lt v1, v4, :cond_3

    .line 371
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 343
    :goto_1
    return-void

    .line 361
    :cond_2
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 373
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method
