.class public Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;
.super Ljava/lang/Object;
.source "InCallServiceMessageAnalyzer.java"


# static fields
.field private static final DUMP_RECOVER_THRESHOLD:I = 0x2

.field private static final DUMP_THRESHOLD:I = 0x5

.field private static final MSG_UPDATE_CALL:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyForNextDump:Z

.field private mWaitingTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mMessageQueue:Ljava/util/Queue;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mReadyForNextDump:Z

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mWaitingTimeStamp:J

    .line 14
    return-void
.end method

.method private dumpMessagesInQueue()V
    .locals 8

    .prologue
    .line 73
    iget-object v4, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "msg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 74
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/os/Message;->getWhen()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 75
    .local v2, "waitTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    MsgDump: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->parseMessageDetails(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 76
    const-string/jumbo v5, " | already wait: "

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "waitTime":J
    :cond_0
    return-void
.end method

.method private parseMessageDetails(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    .line 81
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_0

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/ParcelableCall;

    .line 83
    .local v0, "call":Landroid/telecom/ParcelableCall;
    const-string/jumbo v1, "UPDATE_CALL %s: state: %d, capabilities: %08X, properties: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0}, Landroid/telecom/ParcelableCall;->getProperties()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 83
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    .end local v0    # "call":Landroid/telecom/ParcelableCall;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NORMAL_MSG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onMessageHandled(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 52
    iget-object v1, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 53
    sget-object v1, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "[onMessageHandled]The MessageAnalyzer works abnormal"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mWaitingTimeStamp:J

    sub-long v2, v6, v8

    .line 56
    .local v2, "spentTime":J
    iget-wide v6, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mWaitingTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 57
    .local v4, "waitTime":J
    sget-object v1, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[Msg handled]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->parseMessageDetails(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 58
    const-string/jumbo v7, " | "

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 58
    const-string/jumbo v7, "spent: %4d, wait: %4d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v0

    .line 62
    .local v0, "queueSize":I
    iget-boolean v1, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mReadyForNextDump:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 63
    sget-object v1, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Too many messages in queue, dump them:"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iput-boolean v10, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mReadyForNextDump:Z

    .line 65
    invoke-direct {p0}, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->dumpMessagesInQueue()V

    .line 67
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mReadyForNextDump:Z

    if-nez v1, :cond_2

    if-gt v0, v12, :cond_2

    .line 68
    iput-boolean v11, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mReadyForNextDump:Z

    .line 51
    :cond_2
    return-void
.end method

.method public onMessageSent(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public onStartHandleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 40
    sget-object v0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "[onStartHandleMessage]The MessageAnalyzer works abnormal"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/telecom/InCallServiceMessageAnalyzer;->mWaitingTimeStamp:J

    .line 38
    return-void
.end method
