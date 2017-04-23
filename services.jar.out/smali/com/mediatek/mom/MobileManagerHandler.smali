.class Lcom/mediatek/mom/MobileManagerHandler;
.super Landroid/os/Handler;
.source "MobileManagerHandler.java"


# static fields
.field public static final MSG_PACKAGE_CHANGE:I = 0x0

.field public static final MSG_TIMEOUT_MONITOR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MobileManagerHandler"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "MobileManagerHandler"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/mom/ListenerTriggerBase;

    .line 63
    monitor-enter v0

    .line 65
    :try_start_0
    invoke-virtual {v0}, Lcom/mediatek/mom/ListenerTriggerBase;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/mediatek/mom/ListenerTriggerBase;->timeouted()V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const-string/jumbo v1, "MobileManagerHandler"

    const-string/jumbo v2, "onTriggerListenerTimeout()"

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Lcom/mediatek/mom/ListenerTriggerBase;->onTriggerListenerTimeout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
