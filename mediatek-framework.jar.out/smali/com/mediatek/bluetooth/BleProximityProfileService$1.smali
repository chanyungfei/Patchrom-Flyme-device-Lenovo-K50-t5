.class Lcom/mediatek/bluetooth/BleProximityProfileService$1;
.super Ljava/lang/Object;
.source "BleProximityProfileService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleProximityProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleProximityProfileService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetooth/BleProximityProfileService;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-static {p2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleProximityProfileService;->-set0(Lcom/mediatek/bluetooth/BleProximityProfileService;Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    .line 259
    const-string/jumbo v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Proxy object connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-static {v2}, Lcom/mediatek/bluetooth/BleProximityProfileService;->-get0(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string/jumbo v2, ", proxy:"

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->-get1(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->-get1(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    .line 263
    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceConnected(ILcom/mediatek/bluetooth/BleProfileService;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 270
    const-string/jumbo v0, "BleProximityProfileService"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/BleProximityProfileService;->-set0(Lcom/mediatek/bluetooth/BleProximityProfileService;Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    .line 273
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->-get1(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;->this$0:Lcom/mediatek/bluetooth/BleProximityProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->-get1(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceDisconnected(I)V

    .line 269
    :cond_0
    return-void
.end method
