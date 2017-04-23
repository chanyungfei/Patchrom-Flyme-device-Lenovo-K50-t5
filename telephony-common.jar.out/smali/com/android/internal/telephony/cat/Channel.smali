.class abstract Lcom/android/internal/telephony/cat/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;,
        Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;,
        Lcom/android/internal/telephony/cat/Channel$UICCServerThread;
    }
.end annotation


# static fields
.field protected static final DEFAULT_IOTTEST_VALUE:I

.field protected static final DISABLE_IOTTEST_CONFIG:Ljava/lang/String; = "0"

.field protected static final ENABLE_IOTTEST_CONFIG:Ljava/lang/String; = "1"

.field protected static final PROPERTY_IOT_TEST:Ljava/lang/String; = "persist.service.bip.iot.test"

.field protected static final SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field protected isChannelOpened:Z

.field protected isReceiveDataTRSent:Z

.field protected mAddress:Ljava/net/InetAddress;

.field protected mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

.field protected mBipService:Lcom/android/internal/telephony/cat/BipService;

.field protected mBufferSize:I

.field protected mChannelId:I

.field protected mChannelStatus:I

.field protected mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

.field private mHandler:Lcom/android/internal/telephony/cat/CatService;

.field protected mIOTTest:I

.field protected mLinkMode:I

.field protected mLock:Ljava/lang/Object;

.field protected mNetwork:Landroid/net/Network;

.field protected mPort:I

.field protected mProtocolType:I

.field protected mRecvDataRet:Lcom/android/internal/telephony/cat/ReceiveDataResult;

.field protected mRxBuffer:[B

.field protected mRxBufferCacheCount:I

.field protected mRxBufferCount:I

.field protected mRxBufferOffset:I

.field private volatile mStop:Z

.field protected mTxBuffer:[B

.field protected mTxBufferCount:I

.field protected needCopy:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/cat/Channel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/Channel;->mStop:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cat/Channel;->DEFAULT_IOTTEST_VALUE:I

    .line 79
    return-void
.end method

.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p8, "bipManager"    # Lcom/android/internal/telephony/cat/BipService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    .line 86
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    .line 87
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    .line 89
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 90
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    .line 91
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 94
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    .line 97
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 98
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 99
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    .line 100
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mRecvDataRet:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    .line 102
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->needCopy:I

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Channel;->isChannelOpened:Z

    .line 105
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 107
    sget v0, Lcom/android/internal/telephony/cat/Channel;->DEFAULT_IOTTEST_VALUE:I

    iput v0, p0, Lcom/android/internal/telephony/cat/Channel;->mIOTTest:I

    .line 108
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Channel;->isReceiveDataTRSent:Z

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mNetwork:Landroid/net/Network;

    .line 268
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Channel;->mStop:Z

    .line 113
    iput p1, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    .line 114
    iput p2, p0, Lcom/android/internal/telephony/cat/Channel;->mLinkMode:I

    .line 115
    iput p3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    .line 116
    iput-object p4, p0, Lcom/android/internal/telephony/cat/Channel;->mAddress:Ljava/net/InetAddress;

    .line 117
    iput p5, p0, Lcom/android/internal/telephony/cat/Channel;->mPort:I

    .line 118
    iput p6, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    .line 120
    iput-object p7, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    .line 121
    iput-object p8, p0, Lcom/android/internal/telephony/cat/Channel;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipService;->getBipChannelManager()Lcom/android/internal/telephony/cat/BipChannelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/cat/ChannelStatus;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 112
    return-void
.end method


# virtual methods
.method public changeChannelStatus(B)V
    .locals 8
    .param p1, "status"    # B

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 177
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_0

    .line 178
    const-string/jumbo v2, "mCurrentSetupEventCmd is null"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    return-void

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/cat/BipService;->hasPsEvent(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    const-string/jumbo v2, "No need to send channel status."

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    return-void

    .line 186
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v1, v6}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 188
    .local v1, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Channel]:changeChannelStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 191
    .local v0, "additionalInfo":[B
    const/16 v2, -0x48

    aput-byte v2, v0, v5

    .line 192
    const/4 v2, 0x1

    aput-byte v7, v0, v2

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/Channel;->getChannelId()I

    move-result v2

    or-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v7

    .line 194
    const/4 v2, 0x3

    aput-byte v5, v0, v2

    .line 196
    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 197
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 199
    invoke-virtual {v1, v6, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 200
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 201
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 176
    return-void
.end method

.method protected checkBufferSize()I
    .locals 8

    .prologue
    const/16 v7, 0xed

    const/4 v6, 0x3

    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "minBufferSize":I
    const/4 v1, 0x0

    .line 229
    .local v1, "maxBufferSize":I
    const/4 v0, 0x0

    .line 231
    .local v0, "defaultBufferSize":I
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 232
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 234
    :cond_0
    const/16 v2, 0xff

    .line 235
    const/16 v1, 0x578

    .line 236
    const/16 v0, 0x400

    .line 244
    :cond_1
    :goto_0
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " minBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 245
    const-string/jumbo v5, " maxBufferSize:"

    .line 244
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-lt v3, v2, :cond_4

    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-gt v3, v1, :cond_4

    .line 248
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "buffer size is normal"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v3, 0x0

    return v3

    .line 233
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    if-eq v3, v6, :cond_0

    .line 237
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 238
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 239
    :cond_3
    const/16 v2, 0xff

    .line 240
    const/16 v1, 0x578

    .line 241
    const/16 v0, 0x400

    goto :goto_0

    .line 251
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-le v3, v1, :cond_6

    .line 252
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "buffer size is too large, change it to maximum value"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 260
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    if-ge v3, v7, :cond_5

    .line 261
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "buffer size is smaller than 255, change it to MAX_APDU_SIZE"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iput v7, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 265
    :cond_5
    return v6

    .line 255
    :cond_6
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "buffer size is too small, change it to default value"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iput v0, p0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    goto :goto_1
.end method

.method public clearChannelBuffer(Z)V
    .locals 2
    .param p1, "resetBuffer"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 222
    :goto_0
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 223
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 224
    iput v1, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBufferCount:I

    .line 214
    return-void

    .line 219
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 220
    iput-object v0, p0, Lcom/android/internal/telephony/cat/Channel;->mTxBuffer:[B

    goto :goto_0
.end method

.method public abstract closeChannel()I
.end method

.method public dataAvailable(I)V
    .locals 9
    .param p1, "bufferSize"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 140
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_0

    .line 141
    const-string/jumbo v2, "mCurrentSetupEventCmd is null"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    return-void

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/cat/BipService;->hasPsEvent(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    const-string/jumbo v2, "No need to send data available."

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    return-void

    .line 149
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 150
    .local v1, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 151
    .local v0, "additionalInfo":[B
    const/16 v2, -0x48

    aput-byte v2, v0, v4

    .line 152
    aput-byte v7, v0, v6

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/Channel;->getChannelId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v3, v3, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v7

    .line 154
    const/4 v2, 0x3

    aput-byte v4, v0, v2

    .line 156
    const/16 v2, -0x49

    const/4 v3, 0x4

    aput-byte v2, v0, v3

    .line 157
    const/4 v2, 0x5

    aput-byte v6, v0, v2

    .line 159
    const/16 v2, 0xff

    if-le p1, v2, :cond_2

    .line 160
    const/4 v2, -0x1

    aput-byte v2, v0, v8

    .line 165
    :goto_0
    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 166
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 168
    invoke-virtual {v1, v5, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 169
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 170
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 171
    const-string/jumbo v2, "onEventDownload for dataAvailable"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Channel;->mHandler:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 139
    return-void

    .line 162
    :cond_2
    int-to-byte v2, p1

    aput-byte v2, v0, v8

    goto :goto_0
.end method

.method public getChannelId()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    return v0
.end method

.method public getChannelStatus()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    return v0
.end method

.method public abstract getTxAvailBufferSize()I
.end method

.method public abstract openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
.end method

.method public abstract receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
.end method

.method public abstract receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
.end method

.method protected declared-synchronized requestStop()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 272
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/Channel;->mStop:Z

    .line 273
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Channel;->mStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 270
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract sendData([BI)I
.end method
