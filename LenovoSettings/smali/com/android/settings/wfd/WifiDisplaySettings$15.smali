.class Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$15;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$15;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 799
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$15;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    const/4 v2, 0x4

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V

    .line 803
    :cond_0
    return-void
.end method