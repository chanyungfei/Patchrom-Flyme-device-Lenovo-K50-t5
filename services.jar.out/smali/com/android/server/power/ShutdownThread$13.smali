.class Lcom/android/server/power/ShutdownThread$13;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$bypassRadioOff:Z

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JZ[ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;
    .param p2, "val$endTime"    # J
    .param p4, "val$bypassRadioOff"    # Z
    .param p5, "val$done"    # [Z
    .param p6, "val$timeout"    # I

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$13;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    iput-boolean p4, p0, Lcom/android/server/power/ShutdownThread$13;->val$bypassRadioOff:Z

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$13;->val$done:[Z

    iput p6, p0, Lcom/android/server/power/ShutdownThread$13;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1266
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "task run"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const-string/jumbo v10, "nfc"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    .line 1271
    .local v5, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 1274
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v10, "bluetooth_manager"

    .line 1273
    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 1277
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_4

    .line 1278
    :try_start_0
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v6, 0x1

    .line 1279
    .local v6, "nfcOff":Z
    :goto_0
    if-nez v6, :cond_0

    .line 1280
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Turning off NFC..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v1, 0x0

    .line 1290
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_1

    .line 1291
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Disabling Bluetooth..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1300
    :cond_1
    :goto_3
    if-eqz v7, :cond_7

    :try_start_2
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v8, 0x0

    .line 1301
    .local v8, "radioOff":Z
    :goto_4
    if-nez v8, :cond_2

    .line 1302
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 1303
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Turning off cellular radios..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1312
    :cond_2
    :goto_5
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 1315
    .local v2, "delay":J
    iget-boolean v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$bypassRadioOff:Z

    if-eqz v10, :cond_9

    .line 1316
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$done:[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-boolean v11, v10, v12

    .line 1317
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "bypass RadioOff!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_3
    :goto_6
    return-void

    .line 1277
    .end local v1    # "bluetoothOff":Z
    .end local v2    # "delay":J
    .end local v6    # "nfcOff":Z
    .end local v8    # "radioOff":Z
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto :goto_0

    .line 1278
    .end local v6    # "nfcOff":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "nfcOff":Z
    goto :goto_0

    .line 1283
    .end local v6    # "nfcOff":Z
    :catch_0
    move-exception v4

    .line 1284
    .local v4, "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1285
    const/4 v6, 0x1

    .restart local v6    # "nfcOff":Z
    goto :goto_1

    .line 1289
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto :goto_2

    .line 1294
    .end local v1    # "bluetoothOff":Z
    :catch_1
    move-exception v4

    .line 1295
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto :goto_3

    .line 1300
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_7
    const/4 v8, 0x1

    .restart local v8    # "radioOff":Z
    goto :goto_4

    .line 1307
    .end local v8    # "radioOff":Z
    :catch_2
    move-exception v4

    .line 1308
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    const/4 v8, 0x1

    .restart local v8    # "radioOff":Z
    goto :goto_5

    .line 1366
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "delay":J
    :cond_8
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1368
    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 1319
    :cond_9
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_3

    .line 1320
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1321
    iget v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$timeout:I

    int-to-long v10, v10

    sub-long/2addr v10, v2

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    .line 1322
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    .line 1321
    mul-double/2addr v10, v12

    .line 1322
    iget v12, p0, Lcom/android/server/power/ShutdownThread$13;->val$timeout:I

    int-to-double v12, v12

    .line 1321
    div-double/2addr v10, v12

    double-to-int v9, v10

    .line 1323
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    .line 1324
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->-wrap2(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 1327
    .end local v9    # "status":I
    :cond_a
    if-nez v1, :cond_b

    .line 1329
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v10

    if-eqz v10, :cond_e

    const/4 v1, 0x0

    .line 1334
    :goto_7
    if-eqz v1, :cond_b

    .line 1335
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Bluetooth turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_b
    if-nez v8, :cond_c

    .line 1340
    :try_start_4
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    if-eqz v10, :cond_f

    const/4 v8, 0x0

    .line 1345
    :goto_8
    if-eqz v8, :cond_c

    .line 1346
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "Radio turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_c
    if-nez v6, :cond_d

    .line 1351
    :try_start_5
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const/4 v6, 0x1

    .line 1356
    :goto_9
    if-eqz v6, :cond_d

    .line 1357
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "NFC turned off."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_d
    if-eqz v8, :cond_8

    if-eqz v1, :cond_8

    if-eqz v6, :cond_8

    .line 1362
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    iget-object v10, p0, Lcom/android/server/power/ShutdownThread$13;->val$done:[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-boolean v11, v10, v12

    goto/16 :goto_6

    .line 1329
    :cond_e
    const/4 v1, 0x1

    goto :goto_7

    .line 1330
    :catch_3
    move-exception v4

    .line 1331
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during bluetooth shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1332
    const/4 v1, 0x1

    goto :goto_7

    .line 1340
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_f
    const/4 v8, 0x1

    goto :goto_8

    .line 1341
    :catch_4
    move-exception v4

    .line 1342
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during radio shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1343
    const/4 v8, 0x1

    goto :goto_8

    .line 1351
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_10
    const/4 v6, 0x0

    goto :goto_9

    .line 1352
    :catch_5
    move-exception v4

    .line 1353
    .restart local v4    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v10, "ShutdownThread"

    const-string/jumbo v11, "RemoteException during NFC shutdown"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    const/4 v6, 0x1

    goto :goto_9
.end method
