.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "DisplayEventReceiver.java"


# static fields
.field private static final DEBUG_DEFAULT:Z

.field private static final IS_ENG_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "DisplayEventReceiver"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/DisplayEventReceiver;->IS_ENG_BUILD:Z

    .line 46
    sget-boolean v0, Landroid/view/DisplayEventReceiver;->IS_ENG_BUILD:Z

    sput-boolean v0, Landroid/view/DisplayEventReceiver;->DEBUG_DEFAULT:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    .line 76
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private dispatchHotplug(JIZ)V
    .locals 1
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onHotplug(JIZ)V

    .line 171
    return-void
.end method

.method private dispatchVsync(JII)V
    .locals 1
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onVsync(JII)V

    .line 165
    return-void
.end method

.method private dispose(Z)V
    .locals 6
    .param p1, "finalized"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 103
    :cond_1
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 104
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeDispose(J)V

    .line 105
    iput-wide v4, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    .line 107
    :cond_2
    iput-object v2, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 95
    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/DisplayEventReceiver;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeScheduleVsync(J)V
.end method

.method private static native nativeSetVsyncType(JI)V
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V

    .line 91
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    return-void

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    throw v0
.end method

.method public onHotplug(JIZ)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    .prologue
    .line 133
    return-void
.end method

.method public onVsync(JII)V
    .locals 0
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    .prologue
    .line 121
    return-void
.end method

.method public scheduleVsync()V
    .locals 4

    .prologue
    .line 141
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 142
    const-string/jumbo v0, "DisplayEventReceiver"

    const-string/jumbo v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-boolean v0, Landroid/view/DisplayEventReceiver;->DEBUG_DEFAULT:Z

    if-eqz v0, :cond_1

    .line 146
    const-string/jumbo v0, "DisplayEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "call nativeScheduleVsync mReceiverPtr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(J)V

    goto :goto_0
.end method

.method public setVsyncType(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 154
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 155
    const-string/jumbo v0, "DisplayEventReceiver"

    const-string/jumbo v1, "Attempted to setVsyncType vertical sync pulse but the display event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/DisplayEventReceiver;->nativeSetVsyncType(JI)V

    goto :goto_0
.end method
