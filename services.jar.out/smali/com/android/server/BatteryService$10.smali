.class Lcom/android/server/BatteryService$10;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->processValuesLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 550
    const-string/jumbo v0, "android.intent.action.IGNORE_DATA_USAGE_ALERT"

    .line 552
    .local v0, "ACTION_IGNORE_DATA_USAGE_ALERT":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sendBroadcast ACTION_IGNORE_DATA_USAGE_ALERT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.IGNORE_DATA_USAGE_ALERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v1, "statusIntent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 555
    iget-object v2, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 548
    return-void
.end method
