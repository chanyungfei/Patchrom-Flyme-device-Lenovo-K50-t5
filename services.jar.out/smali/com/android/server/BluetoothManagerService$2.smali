.class Lcom/android/server/BluetoothManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    const-string/jumbo v6, "android.bluetooth.adapter.extra.LOCAL_NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "newName":Ljava/lang/String;
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bluetooth Adapter name changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz v4, :cond_0

    .line 220
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6, v4, v9}, Lcom/android/server/BluetoothManagerService;->-wrap20(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v4    # "newName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string/jumbo v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 224
    const-string/jumbo v6, "state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 225
    .local v1, "airplaneMode":Z
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Receive airplane mode change: airplaneMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    monitor-enter v7

    .line 227
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-wrap1(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    if-eqz v1, :cond_5

    .line 230
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v8, 0x2

    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;I)V

    .line 236
    :cond_2
    :goto_1
    const/16 v5, 0xa

    .line 237
    .local v5, "st":I
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 239
    :try_start_1
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 244
    :cond_3
    :goto_2
    :try_start_2
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz v1, :cond_7

    .line 249
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    const/4 v6, 0x0

    :try_start_3
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-set1(I)I

    .line 251
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v6, v6, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    const/16 v6, 0xf

    if-ne v5, v6, :cond_6

    .line 256
    :try_start_5
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 257
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 258
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "airplaneMode":Z
    .end local v5    # "st":I
    :cond_4
    :goto_3
    monitor-exit v7

    goto/16 :goto_0

    .line 232
    .restart local v1    # "airplaneMode":Z
    :cond_5
    :try_start_6
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 226
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 240
    .restart local v5    # "st":I
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v8, "Unable to call getState"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 249
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 260
    :catch_1
    move-exception v3

    .line 261
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v8, "Unable to call onBrEdrDown"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 263
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_6
    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    .line 265
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v8, "Calling disable"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-wrap18(Lcom/android/server/BluetoothManagerService;)V

    goto :goto_3

    .line 268
    :cond_7
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 270
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v8, "Calling enable"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->-wrap19(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 276
    .end local v1    # "airplaneMode":Z
    .end local v5    # "st":I
    :cond_8
    const-string/jumbo v6, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 277
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v7, "Bluetooth boot completed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    monitor-enter v7

    .line 279
    :try_start_8
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-wrap0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    .line 280
    .local v2, "bluetoothStateBluetooth":Z
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Recevie action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mEnableExternal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 281
    const-string/jumbo v9, ", bluetoothStateBluetooth = "

    .line 280
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string/jumbo v6, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 284
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-wrap1(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 285
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 286
    const-string/jumbo v6, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isBluetoothPersistedStateOn() = true, mEnableExternal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v9}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_9
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v2, :cond_a

    .line 292
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v8, "Auto-enabling Bluetooth."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v8}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v8

    invoke-static {v6, v8}, Lcom/android/server/BluetoothManagerService;->-wrap19(Lcom/android/server/BluetoothManagerService;Z)V

    .line 295
    :cond_a
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-wrap2(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 298
    const-string/jumbo v6, "BluetoothManagerService"

    const-string/jumbo v8, "Retrieving Bluetooth Adapter name and address..."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v6}, Lcom/android/server/BluetoothManagerService;->getNameAndAddress()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_3

    .line 278
    .end local v2    # "bluetoothStateBluetooth":Z
    :catchall_2
    move-exception v6

    monitor-exit v7

    throw v6
.end method
