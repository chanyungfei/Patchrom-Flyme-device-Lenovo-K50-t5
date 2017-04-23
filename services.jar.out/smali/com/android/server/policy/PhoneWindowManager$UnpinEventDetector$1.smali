.class Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    .prologue
    .line 8578
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8581
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    monitor-enter v2

    .line 8582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->-get0(Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;)I

    move-result v1

    if-nez v1, :cond_0

    .line 8584
    const-string/jumbo v1, "WindowManager.UnpinEventDetector"

    const-string/jumbo v3, "unpin state has been changed to idle, do nothing"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 8585
    return-void

    .line 8587
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->-wrap0(Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 8590
    const-string/jumbo v1, "WindowManager.UnpinEventDetector"

    const-string/jumbo v2, "dispatch unpin event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8592
    :try_start_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onUnpinEvent()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8597
    :goto_0
    const-string/jumbo v1, "WindowManager.UnpinEventDetector"

    const-string/jumbo v2, "dispatch unpin event complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8580
    return-void

    .line 8581
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 8593
    :catch_0
    move-exception v0

    .line 8594
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WindowManager.UnpinEventDetector"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
