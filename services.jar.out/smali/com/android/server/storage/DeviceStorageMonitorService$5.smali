.class Lcom/android/server/storage/DeviceStorageMonitorService$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 777
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set6(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 781
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    .line 784
    :cond_0
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set2(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 786
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get5(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 787
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get5(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 776
    :cond_1
    return-void
.end method
