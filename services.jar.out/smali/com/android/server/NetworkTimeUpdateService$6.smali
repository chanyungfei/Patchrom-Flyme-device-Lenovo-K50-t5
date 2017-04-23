.class Lcom/android/server/NetworkTimeUpdateService$6;
.super Ljava/lang/Thread;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkTimeUpdateService;->startUsingGpsWithTimeout(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$milliseconds:I

.field final synthetic val$timeoutMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p2, "val$milliseconds"    # I
    .param p3, "val$timeoutMsg"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$6;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    iput p2, p0, Lcom/android/server/NetworkTimeUpdateService$6;->val$milliseconds:I

    iput-object p3, p0, Lcom/android/server/NetworkTimeUpdateService$6;->val$timeoutMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 489
    const/4 v1, 0x0

    .line 491
    .local v1, "isTimeout":Z
    :try_start_0
    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService$6;->val$milliseconds:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    const/4 v1, 0x1

    .line 495
    :goto_0
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-eqz v1, :cond_0

    .line 497
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 498
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService$6;->val$timeoutMsg:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService$6;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v3}, Lcom/android/server/NetworkTimeUpdateService;->-get2(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    .end local v2    # "m":Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService$6;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v3}, Lcom/android/server/NetworkTimeUpdateService;->-get5(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService$6;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v4}, Lcom/android/server/NetworkTimeUpdateService;->-get4(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 502
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService$6;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/NetworkTimeUpdateService;->-set0(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    .line 488
    return-void

    .line 493
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
