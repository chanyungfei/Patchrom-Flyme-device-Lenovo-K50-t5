.class Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;
.super Ljava/lang/Object;
.source "BleAlertNotificationProfileService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 124
    const-string/jumbo v0, "BleProximityProfileService"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    invoke-static {p2}, Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->-set0(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;)Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    .line 127
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->-get0(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->-get0(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    .line 128
    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceConnected(ILcom/mediatek/bluetooth/BleProfileService;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 136
    const-string/jumbo v0, "BleProximityProfileService"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->-set0(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;)Lcom/mediatek/bluetoothle/anp/IAlertNotificationProfileService;

    .line 139
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->-get0(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;->-get0(Lcom/mediatek/bluetooth/BleAlertNotificationProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceDisconnected(I)V

    .line 134
    :cond_0
    return-void
.end method
