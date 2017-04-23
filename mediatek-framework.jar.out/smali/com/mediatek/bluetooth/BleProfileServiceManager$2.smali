.class Lcom/mediatek/bluetooth/BleProfileServiceManager$2;
.super Ljava/lang/Object;
.source "BleProfileServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleProfileServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetooth/BleProfileServiceManager;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 377
    const-string/jumbo v0, "BleProfileServiceManager"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-static {p2}, Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->-set0(Lcom/mediatek/bluetooth/BleProfileServiceManager;Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    .line 381
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->-wrap0(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V

    .line 382
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->-get0(Lcom/mediatek/bluetooth/BleProfileServiceManager;)Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->-get0(Lcom/mediatek/bluetooth/BleProfileServiceManager;)Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    .line 383
    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;->onServiceConnected(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V

    .line 375
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 392
    const-string/jumbo v0, "BleProfileServiceManager"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->-set0(Lcom/mediatek/bluetooth/BleProfileServiceManager;Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;)Lcom/mediatek/bluetoothle/bleservice/IProfileServiceManager;

    .line 396
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->-get0(Lcom/mediatek/bluetooth/BleProfileServiceManager;)Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProfileServiceManager;->-get0(Lcom/mediatek/bluetooth/BleProfileServiceManager;)Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProfileServiceManager$2;->this$0:Lcom/mediatek/bluetooth/BleProfileServiceManager;

    .line 397
    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleProfileServiceManager$ProfileServiceManagerListener;->onServiceDisconnected(Lcom/mediatek/bluetooth/BleProfileServiceManager;)V

    .line 390
    :cond_0
    return-void
.end method
