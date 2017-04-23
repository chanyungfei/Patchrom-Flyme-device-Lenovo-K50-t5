.class Landroid/bluetooth/BluetoothPan$2;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPan;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 375
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->-get0(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 378
    :try_start_0
    const-string/jumbo v0, "BluetoothPan"

    const-string/jumbo v2, "BluetoothPAN Proxy object connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothPan$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPan;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothPan;->-set0(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    .line 381
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->-get3(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->-get3(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 383
    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    .line 382
    const/4 v3, 0x5

    invoke-interface {v0, v3, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 376
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 388
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->-get0(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 389
    :try_start_0
    const-string/jumbo v0, "BluetoothPan"

    const-string/jumbo v2, "BluetoothPAN Proxy object disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothPan;->-set0(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    .line 391
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->-get3(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$2;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->-get3(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 387
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
