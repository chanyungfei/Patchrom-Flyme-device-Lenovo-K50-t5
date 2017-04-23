.class Lcom/mediatek/bluetooth/BluetoothMap$1;
.super Ljava/lang/Object;
.source "BluetoothMap.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/BluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/BluetoothMap;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/BluetoothMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/bluetooth/BluetoothMap;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 312
    const-string/jumbo v0, "Proxy object connected"

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->-wrap0(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    invoke-static {p2}, Lcom/mediatek/bluetooth/IBluetoothMap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/bluetooth/IBluetoothMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothMap;->-set0(Lcom/mediatek/bluetooth/BluetoothMap;Lcom/mediatek/bluetooth/IBluetoothMap;)Lcom/mediatek/bluetooth/IBluetoothMap;

    .line 314
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->-get0(Lcom/mediatek/bluetooth/BluetoothMap;)Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->-get0(Lcom/mediatek/bluetooth/BluetoothMap;)Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;->onServiceConnected()V

    .line 311
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 319
    const-string/jumbo v0, "Proxy object disconnected"

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->-wrap0(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/BluetoothMap;->-set0(Lcom/mediatek/bluetooth/BluetoothMap;Lcom/mediatek/bluetooth/IBluetoothMap;)Lcom/mediatek/bluetooth/IBluetoothMap;

    .line 321
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->-get0(Lcom/mediatek/bluetooth/BluetoothMap;)Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothMap$1;->this$0:Lcom/mediatek/bluetooth/BluetoothMap;

    invoke-static {v0}, Lcom/mediatek/bluetooth/BluetoothMap;->-get0(Lcom/mediatek/bluetooth/BluetoothMap;)Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/bluetooth/BluetoothMap$ServiceListener;->onServiceDisconnected()V

    .line 318
    :cond_0
    return-void
.end method
