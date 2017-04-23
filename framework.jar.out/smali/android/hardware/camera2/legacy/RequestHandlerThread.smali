.class public Landroid/hardware/camera2/legacy/RequestHandlerThread;
.super Landroid/os/HandlerThread;
.source "RequestHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestHandlerThread$1;
    }
.end annotation


# static fields
.field public static final MSG_POKE_IDLE_HANDLER:I = -0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private volatile mHandler:Landroid/os/Handler;

.field private final mIdle:Landroid/os/ConditionVariable;

.field private final mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private final mStarted:Landroid/os/ConditionVariable;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/RequestHandlerThread;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 45
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 35
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    .line 36
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    .line 92
    new-instance v0, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread$1;-><init>(Landroid/hardware/camera2/legacy/RequestHandlerThread;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 46
    iput-object p2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    .line 40
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hasAnyMessages([I)Z
    .locals 6
    .param p1, "what"    # [I

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    monitor-enter v3

    .line 74
    :try_start_0
    array-length v4, p1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, p1, v1

    .line 75
    .local v0, "i":I
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    const/4 v1, 0x1

    monitor-exit v3

    return v1

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    monitor-exit v3

    .line 80
    return v2

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method protected onLooperPrepared()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    .line 52
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 50
    return-void
.end method

.method public removeMessages([I)V
    .locals 5
    .param p1, "what"    # [I

    .prologue
    .line 85
    iget-object v1, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    monitor-enter v2

    .line 86
    const/4 v1, 0x0

    :try_start_0
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, p1, v1

    .line 87
    .local v0, "i":I
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    monitor-exit v2

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public waitAndGetHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitUntilStarted()V

    .line 68
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public waitUntilIdle()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestHandlerThread;->waitAndGetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 103
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    .line 104
    .local v1, "queue":Landroid/os/MessageQueue;
    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 108
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 110
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    invoke-virtual {v1}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    return-void

    .line 114
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mIdle:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    .line 101
    return-void
.end method

.method public waitUntilStarted()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestHandlerThread;->mStarted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 56
    return-void
.end method
