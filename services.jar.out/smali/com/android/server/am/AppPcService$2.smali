.class Lcom/android/server/am/AppPcService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;

.field final synthetic val$resultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/server/am/AppPcService$2;->this$0:Lcom/android/server/am/AppPcService;

    iput-object p2, p0, Lcom/android/server/am/AppPcService$2;->val$resultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 681
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppPcService$2;->getResultCode()I

    move-result v0

    const-string/jumbo v1, "Security_AppPcService"

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendOrderedBroadcastAsUser resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v1, p0, Lcom/android/server/am/AppPcService$2;->val$resultCallback:Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;->onReceive(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "sendOrderedBroadcastAsUser resultReceiver error="

    .line 685
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
