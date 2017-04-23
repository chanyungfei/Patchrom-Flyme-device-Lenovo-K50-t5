.class Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
.super Ljava/lang/Object;
.source "UtkCmdMessage.java"


# instance fields
.field public bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

.field public bufferSize:I

.field public channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

.field public localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 294
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 296
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 292
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OpenChannelResult: channelStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->channelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    const-string/jumbo v1, " bearerDesc="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const-string/jumbo v1, " bufferSize="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->bufferSize:I

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    const-string/jumbo v1, " localAddress="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
