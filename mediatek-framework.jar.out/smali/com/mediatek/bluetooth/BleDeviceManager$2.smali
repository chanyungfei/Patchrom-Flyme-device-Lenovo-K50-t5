.class Lcom/mediatek/bluetooth/BleDeviceManager$2;
.super Ljava/lang/Object;
.source "BleDeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleDeviceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleDeviceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetooth/BleDeviceManager;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 99
    const-string/jumbo v0, "BleDeviceManager"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-static {p2}, Lcom/mediatek/bluetooth/IBleDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBleDeviceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleDeviceManager;->-set0(Lcom/mediatek/bluetooth/BleDeviceManager;Lcom/mediatek/bluetooth/IBleDeviceManager;)Lcom/mediatek/bluetooth/IBleDeviceManager;

    .line 103
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleDeviceManager;->-get1(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleDeviceManager;->-get1(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;->onServiceConnected(Lcom/mediatek/bluetooth/BleDeviceManager;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 110
    const-string/jumbo v0, "BleDeviceManager"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/BleDeviceManager;->-set0(Lcom/mediatek/bluetooth/BleDeviceManager;Lcom/mediatek/bluetooth/IBleDeviceManager;)Lcom/mediatek/bluetooth/IBleDeviceManager;

    .line 114
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleDeviceManager;->-get1(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleDeviceManager$2;->this$0:Lcom/mediatek/bluetooth/BleDeviceManager;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleDeviceManager;->-get1(Lcom/mediatek/bluetooth/BleDeviceManager;)Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/bluetooth/BleDeviceManager$DeviceManagerListener;->onServiceDisconnected()V

    .line 109
    :cond_0
    return-void
.end method
