.class Landroid/bluetooth/BluetoothInputDevice$2;
.super Ljava/lang/Object;
.source "BluetoothInputDevice.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothInputDevice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothInputDevice;

    .prologue
    .line 488
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 490
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get0(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 491
    :try_start_0
    const-string/jumbo v0, "BluetoothInputDevice"

    const-string/jumbo v2, "Proxy object connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputDevice;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->-set0(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 494
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get3(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get3(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 496
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    .line 495
    const/4 v3, 0x4

    invoke-interface {v0, v3, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 489
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 501
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get0(Landroid/bluetooth/BluetoothInputDevice;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 502
    :try_start_0
    const-string/jumbo v0, "BluetoothInputDevice"

    const-string/jumbo v2, "Proxy object disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->-set0(Landroid/bluetooth/BluetoothInputDevice;Landroid/bluetooth/IBluetoothInputDevice;)Landroid/bluetooth/IBluetoothInputDevice;

    .line 504
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get3(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputDevice$2;->this$0:Landroid/bluetooth/BluetoothInputDevice;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputDevice;->-get3(Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 500
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
