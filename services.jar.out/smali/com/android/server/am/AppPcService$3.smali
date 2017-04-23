.class Lcom/android/server/am/AppPcService$3;
.super Landroid/content/BroadcastReceiver;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService;->handleSendOrderedBroadcastAsUser(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;

.field final synthetic val$param:Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/server/am/AppPcService$3;->this$0:Lcom/android/server/am/AppPcService;

    iput-object p2, p0, Lcom/android/server/am/AppPcService$3;->val$param:Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppPcService$3;->getResultCode()I

    move-result v0

    const-string/jumbo v1, "Security_AppPcService"

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSendOrderedBroadcastAsUser resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, Lcom/android/server/am/AppPcService$3;->val$param:Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;

    # getter for: Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->mResultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;->access$400(Lcom/android/server/am/AppPcService$SendOrderedBroadcastAsUserParam;)Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;->onReceive(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "handleSendOrderedBroadcastAsUser resultReceiver error="

    .line 708
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
