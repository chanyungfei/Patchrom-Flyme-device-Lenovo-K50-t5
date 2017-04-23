.class Lcom/android/internal/telephony/cat/BipRilMessageDecoder;
.super Lcom/android/internal/util/StateMachine;
.source "BipRilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;,
        Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;
    }
.end annotation


# static fields
.field private static final CMD_PARAMS_READY:I = 0x2

.field private static final CMD_START:I = 0x1

.field private static mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

.field private static mSimCount:I


# instance fields
.field private mBipCmdParamsFactory:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

.field private mCaller:Landroid/os/Handler;

.field private mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

.field private mSlotId:I

.field private mStateCmdParamsReady:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

.field private mStateStart:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)Z
    .locals 1
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 0
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    const-string/jumbo v0, "BipRilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    .line 134
    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .locals 2
    .param p1, "caller"    # Landroid/os/Handler;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 122
    const-string/jumbo v0, "BipRilMessageDecoder"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;-><init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->addState(Lcom/android/internal/util/State;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->setInitialState(Lcom/android/internal/util/State;)V

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 129
    iput p3, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCaller is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->getInstance(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    .line 121
    return-void
.end method

.method private decodeMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)Z
    .locals 6
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 174
    iget v4, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v4, :pswitch_data_0

    .line 204
    const/4 v0, 0x0

    .line 207
    .local v0, "decodingStarted":Z
    :goto_0
    return v0

    .line 177
    .end local v0    # "decodingStarted":Z
    :pswitch_0
    const/4 v3, 0x0

    .line 178
    .local v3, "rawData":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeMessageParams raw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 189
    .local v3, "rawData":[B
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/BerTlv;->decode([B)Lcom/android/internal/telephony/cat/BerTlv;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->make(Lcom/android/internal/telephony/cat/BerTlv;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    const/4 v0, 0x1

    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 181
    .end local v0    # "decodingStarted":Z
    .local v3, "rawData":[B
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "decodeMessageParams dropping zombie messages"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 185
    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 191
    .end local v0    # "decodingStarted":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .local v3, "rawData":[B
    :catch_1
    move-exception v1

    .line 193
    .local v1, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decodeMessageParams: caught ResultException e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 198
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 199
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 200
    const/4 v0, 0x0

    .restart local v0    # "decodingStarted":Z
    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/BipRilMessageDecoder;
    .locals 6
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    const-class v2, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    monitor-enter v2

    .line 66
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    if-nez v1, :cond_0

    .line 67
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    .line 68
    sget v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    new-array v1, v1, [Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    sput-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 70
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    sget v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ge p2, v1, :cond_2

    .line 75
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    aget-object v1, v1, p2

    if-nez v1, :cond_1

    .line 76
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    new-instance v3, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    aput-object v3, v1, p2

    .line 83
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    aget-object v1, v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 79
    :cond_2
    :try_start_1
    const-string/jumbo v1, "BipRilMessageDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invaild slot id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 80
    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 4
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 113
    new-instance v2, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 112
    const/16 v3, 0x14

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    iput-object v3, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    .line 213
    iput-object v3, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mStateCmdParamsReady:Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->dispose()V

    .line 215
    iput-object v3, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mBipCmdParamsFactory:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    .line 216
    iput-object v3, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;

    .line 217
    iput-object v3, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mCaller:Landroid/os/Handler;

    .line 219
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    if-eqz v1, :cond_2

    .line 220
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 221
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->quit()V

    .line 222
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    aput-object v3, v1, v2

    .line 225
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 226
    sget-object v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 231
    :cond_1
    sget v1, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSimCount:I

    if-ne v0, v1, :cond_2

    .line 232
    sput-object v3, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mInstance:[Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 210
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 225
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->mSlotId:I

    return v0
.end method

.method public sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    .line 105
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 106
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 107
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 104
    return-void
.end method

.method public sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 2
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 94
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->sendMessage(Landroid/os/Message;)V

    .line 92
    return-void
.end method
