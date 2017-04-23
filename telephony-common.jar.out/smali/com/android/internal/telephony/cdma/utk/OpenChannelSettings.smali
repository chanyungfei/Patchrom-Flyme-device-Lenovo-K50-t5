.class Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
.super Ljava/lang/Object;
.source "UtkCmdMessage.java"


# instance fields
.field autoReconnect:Z

.field backgrountMode:Z

.field bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

.field bufferSize:I

.field destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

.field immediateLink:Z

.field localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

.field networkAccessName:Ljava/lang/String;

.field transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

.field userName:Ljava/lang/String;

.field userPwd:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    .line 257
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->networkAccessName:Ljava/lang/String;

    .line 258
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->userName:Ljava/lang/String;

    .line 259
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->userPwd:Ljava/lang/String;

    .line 253
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OpenChannelSettings: bearerDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    const-string/jumbo v1, " bufferSize="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    const-string/jumbo v1, " localAddress="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    const-string/jumbo v1, " destAddress="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    const-string/jumbo v1, " networkAccessName="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->networkAccessName:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    const-string/jumbo v1, " userName="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->userName:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    const-string/jumbo v1, " userPwd="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->userPwd:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    const-string/jumbo v1, " transportLevel="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    const-string/jumbo v1, " immediateLink="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    const-string/jumbo v1, " autoReconnect="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->autoReconnect:Z

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    const-string/jumbo v1, " backgrountMode="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
