.class Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field private bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

.field private bufferSize:I

.field private channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

.field private localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 336
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 337
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->bufferSize:I

    .line 339
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 347
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 348
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->bufferSize:I

    .line 349
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 341
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 355
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 374
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->bufferSize:I

    if-lez v0, :cond_3

    .line 375
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 376
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 377
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->bufferSize:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 378
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->bufferSize:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    if-eqz v0, :cond_4

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 353
    :cond_4
    return-void
.end method
