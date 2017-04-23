.class Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V
    .locals 1
    .param p1, "channelStatus"    # Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 469
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;-><init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 468
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 474
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    if-nez v0, :cond_1

    .line 475
    :cond_0
    return-void

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 473
    return-void
.end method
