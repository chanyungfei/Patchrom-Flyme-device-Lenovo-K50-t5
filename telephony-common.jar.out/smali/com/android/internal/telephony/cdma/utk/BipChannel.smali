.class public abstract Lcom/android/internal/telephony/cdma/utk/BipChannel;
.super Landroid/os/Handler;
.source "BipChannel.java"


# static fields
.field private static final CHANNEL_TIMEUPDATE_PERIOD:I = 0x1388

.field public static final EVENT_ACCEPT_REQUEST:I = 0x3

.field public static final EVENT_RECEIVED_DATA:I = 0x1

.field public static final EVENT_SENT_DATA:I = 0x2

.field public static final EVENT_TIMER_TICK:I = 0x4


# instance fields
.field protected mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

.field protected mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

.field protected mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

.field protected mDataAvailableLength:I

.field protected mDataToReceiveTimer:Ljava/util/Timer;

.field protected mIsSocketReady:Z

.field protected mReceiveDone:Z

.field protected mReceiveMsgQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

.field protected mRxBuffer:[B

.field protected mRxBufferIndex:I

.field protected mRxBufferSize:I

.field protected mRxLock:Ljava/lang/Object;

.field protected mSocket:Ljava/net/Socket;

.field private mTimerLock:Ljava/lang/Object;

.field protected mTxAvaSize:I

.field protected mTxBuffer:Ljava/io/ByteArrayOutputStream;

.field protected mTxLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V
    .locals 4
    .param p1, "bs"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p2, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .line 56
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mSocket:Ljava/net/Socket;

    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxLock:Ljava/lang/Object;

    .line 65
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxLock:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveDone:Z

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    .line 71
    const/16 v0, 0x58e

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    .line 72
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    .line 74
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    .line 76
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 78
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTimerLock:Ljava/lang/Object;

    .line 80
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    .line 82
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mIsSocketReady:Z

    .line 85
    const-string/jumbo v0, "BipChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " BipChannel id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 88
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    iget-object v1, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    invoke-direct {v0, v1, p3, v3, v3}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 93
    iget v0, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    if-ge v0, v1, :cond_0

    iget v0, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    if-eqz v0, :cond_0

    .line 94
    iget v0, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bufferSize:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    .line 84
    return-void
.end method


# virtual methods
.method protected dataAvailable(I)V
    .locals 8
    .param p1, "dataLength"    # I

    .prologue
    const/4 v5, 0x0

    .line 201
    const-string/jumbo v1, "BipChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " dataAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 222
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 224
    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    const/4 v7, -0x1

    .line 225
    .local v7, "len":I
    :goto_0
    invoke-virtual {v6, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 228
    .local v4, "additionalInfo":[B
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .line 229
    const/16 v1, 0x9

    const/16 v2, 0x82

    const/16 v3, 0x81

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(III[BZ)V

    .line 231
    .local v0, "resMsg":Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5, v5, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 200
    return-void

    .line 224
    .end local v0    # "resMsg":Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    .end local v4    # "additionalInfo":[B
    .end local v7    # "len":I
    :cond_0
    int-to-byte v7, p1

    goto :goto_0
.end method

.method public getBipChannelId()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->getId()I

    move-result v0

    return v0
.end method

.method public getBipChannelParams()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    return-object v0
.end method

.method public getChannelStatus()Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    .locals 4

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    monitor-enter v2

    .line 411
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .end local v0    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;-><init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    monitor-exit v2

    .line 414
    const-string/jumbo v1, "BipChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " getChannelStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-object v0

    .line 410
    .end local v0    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x15

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 109
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    const-string/jumbo v4, "BipChannel"

    const-string/jumbo v5, " handleMessage EVENT_RECEIVED_DATA"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v4, "BipChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CT case modify:  mReceiveDone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveDone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveDone:Z

    if-eqz v4, :cond_3

    .line 115
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    .line 116
    const-string/jumbo v4, "BipChannel"

    const-string/jumbo v5, " EVENT_RECEIVED_DATA exception"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v5, 0x16

    invoke-virtual {v4, v5, v8, v9, v10}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    .line 123
    .local v1, "data":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxLock:Ljava/lang/Object;

    monitor-enter v5

    .line 124
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    if-eqz v4, :cond_2

    .line 125
    const-string/jumbo v4, "BipChannel"

    const-string/jumbo v6, " EVENT_RECEIVED_DATA will overwrite data"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    .line 128
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 131
    array-length v4, v1

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    .line 132
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->dataAvailable(I)V

    .line 134
    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->startDataToReceiveTimer(Landroid/os/Handler;)V

    .line 135
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveDone:Z

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 137
    .end local v1    # "data":[B
    :cond_3
    const-string/jumbo v4, "BipChannel"

    const-string/jumbo v5, " delay msg EVENT_RECEIVED_DATA"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 139
    .local v2, "delayMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    .end local v2    # "delayMsg":Landroid/os/Message;
    :pswitch_1
    const-string/jumbo v4, "BipChannel"

    const-string/jumbo v5, " handleMessage EVENT_SENT_DATA"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_4

    .line 148
    const-string/jumbo v4, "BipChannel"

    const-string/jumbo v5, " EVENT_SENT_DATA exception"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v11, v8, v9, v10}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 154
    :cond_4
    new-array v0, v8, [I

    .line 155
    .local v0, "avaBufSize":[I
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    aput v4, v0, v7

    .line 156
    const-string/jumbo v4, "BipChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " response avaBufSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v11, v7, v7, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "avaBufSize":[I
    :pswitch_2
    const-string/jumbo v4, "BipChannel"

    const-string/jumbo v5, " handleMessage EVENT_ACCEPT_REQUEST"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/net/Socket;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mSocket:Ljava/net/Socket;

    .line 167
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mSocket:Ljava/net/Socket;

    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferSize:I

    invoke-direct {v4, v5, v6, p0}, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;-><init>(Ljava/net/Socket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 168
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    .local v3, "thd":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 171
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->notifyChannelStatusChanged()V

    goto/16 :goto_0

    .line 176
    .end local v3    # "thd":Ljava/lang/Thread;
    :pswitch_3
    const-string/jumbo v4, "BipChannel"

    const-string/jumbo v5, " handleMessage EVENT_TIMER_TICK"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    if-eqz v4, :cond_0

    .line 179
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->dataAvailable(I)V

    goto/16 :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isBackgroudModOrImmediate()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->immediateLink:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLinked()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract linkDisconnect(Z)I
.end method

.method public abstract linkEstablish()I
.end method

.method public notifyChannelStatusChanged()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 266
    const-string/jumbo v1, "BipChannel"

    const-string/jumbo v2, " notifyChannelStatusChanged"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 307
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 309
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v1, :cond_1

    .line 310
    const-string/jumbo v1, "BipChannel"

    const-string/jumbo v2, " add bearerDesc & local address"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->writeToBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 321
    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 322
    .local v4, "additionalInfo":[B
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .line 323
    const/16 v1, 0xa

    const/16 v2, 0x82

    const/16 v3, 0x81

    .line 322
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;-><init>(III[BZ)V

    .line 324
    .local v0, "resMsg":Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5, v5, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 265
    return-void
.end method

.method public receiveData(I)V
    .locals 9
    .param p1, "reqDataLen"    # I

    .prologue
    const/4 v6, 0x0

    .line 332
    const-string/jumbo v3, "BipChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " receiveData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "remaining":I
    iput v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    .line 336
    const/4 v2, 0x0

    .line 338
    .local v2, "reqChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->stopDataToReceiveTimer()V

    .line 340
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxLock:Ljava/lang/Object;

    monitor-enter v4

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    array-length v3, v3

    if-nez v3, :cond_1

    .line 342
    :cond_0
    const-string/jumbo v3, "BipChannel"

    const-string/jumbo v5, " mRxBuffer is null"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v5, 0x16

    .line 345
    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 344
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 346
    return-void

    .line 349
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    add-int/2addr v3, p1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    array-length v5, v5

    if-le v3, v5, :cond_2

    .line 350
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    array-length v3, v3

    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    sub-int p1, v3, v5

    .line 351
    const/4 v2, 0x1

    .line 353
    const-string/jumbo v3, "BipChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " reqDataLen>mRxBuffer.length, changed to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mReceiveDone:Z

    .line 358
    new-array v0, p1, [B

    .line 359
    .local v0, "buffer":[B
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v0, v6, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 360
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    .line 361
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBuffer:[B

    array-length v3, v3

    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mRxBufferIndex:I

    sub-int v1, v3, v5

    .line 363
    const-string/jumbo v3, "BipChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " receiveData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " remaining:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/16 v3, 0xff

    if-le v1, v3, :cond_3

    .line 366
    const/16 v1, 0xff

    .line 368
    :cond_3
    if-eqz v2, :cond_4

    .line 369
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v5, 0x16

    .line 370
    const/4 v6, 0x1

    .line 371
    const/4 v7, 0x1

    .line 369
    invoke-virtual {v3, v5, v6, v7, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 330
    return-void

    .line 373
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v5, 0x16

    .line 374
    const/4 v6, 0x0

    .line 373
    invoke-virtual {v3, v5, v6, v1, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 340
    .end local v0    # "buffer":[B
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public sendData([BZ)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "sendImmediately"    # Z

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 380
    const-string/jumbo v1, "BipChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " sendData sendImmediately:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataAvailableLength:I

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->stopDataToReceiveTimer()V

    .line 385
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 387
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    array-length v3, p1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 390
    const-string/jumbo v1, "BipChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " sendData mTxAvaSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-eqz p2, :cond_0

    .line 379
    :goto_0
    return-void

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 396
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    if-gez v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 398
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 397
    invoke-virtual {v1, v7, v6, v2, v3}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_1
    new-array v0, v6, [I

    .line 401
    .local v0, "avaBufSize":[I
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTxAvaSize:I

    aput v1, v0, v5

    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v1, v7, v5, v5, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected startDataToReceiveTimer(Landroid/os/Handler;)V
    .locals 7
    .param p1, "caller"    # Landroid/os/Handler;

    .prologue
    .line 235
    const-string/jumbo v0, "BipChannel"

    const-string/jumbo v1, "startDataToReceiveTimer"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 243
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/internal/telephony/cdma/utk/BipChannel$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel$1;-><init>(Lcom/android/internal/telephony/cdma/utk/BipChannel;Landroid/os/Handler;)V

    .line 249
    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    .line 245
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 234
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method protected stopDataToReceiveTimer()V
    .locals 2

    .prologue
    .line 254
    const-string/jumbo v0, "BipChannel"

    const-string/jumbo v1, "stopDataToReceiveTimer"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mDataToReceiveTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 253
    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BipChannel: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, " Status="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->getStatus()I

    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, " mIsSocketReady = "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mIsSocketReady:Z

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
