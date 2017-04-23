.class Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
.super Lcom/android/internal/util/StateMachine;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;,
        Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;
    }
.end annotation


# static fields
.field private static final CMD_PARAMS_READY:I = 0x2

.field private static final CMD_START:I = 0x1

.field private static sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private static sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;


# instance fields
.field private mCaller:Landroid/os/Handler;

.field private mCmdParamsFactory:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

.field private mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

.field private mPhoneId:I

.field private mStateCmdParamsReady:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

.field private mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessage;)Z
    .locals 1
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 0
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 41
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .locals 2
    .param p1, "caller"    # Landroid/os/Handler;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 113
    const-string/jumbo v0, "RilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->setInitialState(Lcom/android/internal/util/State;)V

    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 120
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mPhoneId:I

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->getInstance(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    .line 112
    return-void
.end method

.method private decodeMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)Z
    .locals 6
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .line 175
    iget v4, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    sparse-switch v4, :sswitch_data_0

    .line 214
    const/4 v0, 0x0

    .line 217
    .local v0, "decodingStarted":Z
    :goto_0
    return v0

    .line 178
    .end local v0    # "decodingStarted":Z
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 179
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 180
    const/4 v0, 0x0

    .line 181
    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 187
    .end local v0    # "decodingStarted":Z
    :sswitch_1
    const/4 v3, 0x0

    .line 189
    .local v3, "rawData":[B
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 198
    .local v3, "rawData":[B
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rawData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    if-nez v3, :cond_0

    .line 200
    const-string/jumbo v4, "rawData is null"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCmdParamsFactory:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->decode([B)Lcom/android/internal/telephony/cdma/utk/BerTlv;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->make(Lcom/android/internal/telephony/cdma/utk/BerTlv;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    const/4 v0, 0x1

    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 190
    .end local v0    # "decodingStarted":Z
    .local v3, "rawData":[B
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 205
    .end local v0    # "decodingStarted":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .local v3, "rawData":[B
    :catch_1
    move-exception v1

    .line 207
    .local v1, "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeMessageParams: caught ResultException e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ResultException;->result()Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 209
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 210
    const/4 v0, 0x0

    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .locals 4
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    monitor-enter v1

    .line 61
    if-nez p2, :cond_1

    .line 62
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    if-nez v0, :cond_0

    .line 63
    const-string/jumbo v0, "RilMessageDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create RilMessageDecoder instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 65
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->start()V

    .line 67
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p2, :cond_3

    .line 69
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    if-nez v0, :cond_2

    .line 70
    const-string/jumbo v0, "RilMessageDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create RilMessageDecoder instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 72
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->start()V

    .line 74
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :cond_3
    :try_start_2
    const-string/jumbo v0, "RilMessageDecoder"

    const-string/jumbo v2, "Invalid phone Id and just return null"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 77
    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendCmdForExecution(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 4
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 108
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 107
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method


# virtual methods
.method public dispose(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "decodeMessageParams: dispose obj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    if-nez p1, :cond_1

    .line 223
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->quit()V

    .line 225
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->quit()V

    .line 230
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    goto :goto_0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mPhoneId:I

    return v0
.end method

.method public sendMsgParamsDecoded(Lcom/android/internal/telephony/cdma/utk/ResultCode;Lcom/android/internal/telephony/cdma/utk/CommandParams;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .param p2, "cmdParams"    # Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .prologue
    .line 100
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 102
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 99
    return-void
.end method

.method public sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 2
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 87
    return-void
.end method
