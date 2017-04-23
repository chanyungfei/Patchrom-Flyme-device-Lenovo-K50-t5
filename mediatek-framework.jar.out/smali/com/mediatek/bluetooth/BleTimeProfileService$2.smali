.class Lcom/mediatek/bluetooth/BleTimeProfileService$2;
.super Ljava/lang/Object;
.source "BleTimeProfileService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BleTimeProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BleTimeProfileService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetooth/BleTimeProfileService;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 89
    const-string/jumbo v0, "BleTimeProfileService"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-static {p2}, Lcom/mediatek/bluetoothle/tip/ITimeProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BleTimeProfileService;->-set0(Lcom/mediatek/bluetooth/BleTimeProfileService;Lcom/mediatek/bluetoothle/tip/ITimeProfileService;)Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    .line 91
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleTimeProfileService;->-get2(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleTimeProfileService;->-get2(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    .line 92
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceConnected(ILcom/mediatek/bluetooth/BleProfileService;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string/jumbo v0, "BleTimeProfileService"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/BleTimeProfileService;->-set0(Lcom/mediatek/bluetooth/BleTimeProfileService;Lcom/mediatek/bluetoothle/tip/ITimeProfileService;)Lcom/mediatek/bluetoothle/tip/ITimeProfileService;

    .line 101
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleTimeProfileService;->-get2(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleTimeProfileService$2;->this$0:Lcom/mediatek/bluetooth/BleTimeProfileService;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BleTimeProfileService;->-get2(Lcom/mediatek/bluetooth/BleTimeProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;->onServiceDisconnected(I)V

    .line 98
    :cond_0
    return-void
.end method
