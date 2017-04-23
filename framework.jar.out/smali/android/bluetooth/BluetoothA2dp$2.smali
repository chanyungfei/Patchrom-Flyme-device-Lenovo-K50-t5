.class Landroid/bluetooth/BluetoothA2dp$2;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 559
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get0(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 562
    :try_start_0
    const-string/jumbo v0, "BluetoothA2dp"

    const-string/jumbo v2, "Proxy object connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->-set1(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 564
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    const/4 v3, 0x2

    invoke-interface {v0, v3, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->-set0(Landroid/bluetooth/BluetoothA2dp;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 560
    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 571
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get0(Landroid/bluetooth/BluetoothA2dp;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 572
    :try_start_0
    const-string/jumbo v0, "BluetoothA2dp"

    const-string/jumbo v2, "Proxy object disconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->-set1(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 574
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0}, Landroid/bluetooth/BluetoothA2dp;->-get4(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 577
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothA2dp$2;->this$0:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->-set0(Landroid/bluetooth/BluetoothA2dp;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 570
    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
