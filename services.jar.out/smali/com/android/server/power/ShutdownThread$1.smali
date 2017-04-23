.class final Lcom/android/server/power/ShutdownThread$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 497
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "setBacklightBrightness: Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get5(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get5(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get5(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 501
    :cond_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get1(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 502
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    .line 503
    const-string/jumbo v2, "power"

    .line 502
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->-set0(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 505
    :cond_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get1(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 506
    const/4 v1, 0x7

    const/4 v4, 0x0

    .line 505
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 496
    return-void
.end method
