.class public Lcom/mediatek/bluetooth/BleProximityProfileService;
.super Lcom/mediatek/bluetooth/BleProfileService;
.source "BleProximityProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;,
        Lcom/mediatek/bluetooth/BleProximityProfileService$1;
    }
.end annotation


# static fields
.field public static final ACTION_ALERT_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.bluetooth.action.ALERT_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final INVALID_PATH_LOSS:I = -0x3e7

.field public static final RANGE_ALERT_RANGE_FAR:I = 0x2

.field public static final RANGE_ALERT_RANGE_MIDDLE:I = 0x1

.field public static final RANGE_ALERT_RANGE_NEAR:I = 0x0

.field private static final RANGE_ALERT_THRESH_FAR:I = 0x46

.field private static final RANGE_ALERT_THRESH_MIDDLE:I = 0x41

.field private static final RANGE_ALERT_THRESH_NEAR:I = 0x3c

.field public static final RANGE_ALERT_TYPE_IN:I = 0x0

.field public static final RANGE_ALERT_TYPE_OUT:I = 0x1

.field public static final STATE_DISCONNECTED_ALERT:I = 0x1

.field public static final STATE_IN_RANGE_ALERT:I = 0x2

.field public static final STATE_NO_ALERT:I = 0x0

.field public static final STATE_OUT_RANGE_ALERT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BleProximityProfileService"

.field private static final VDBG:Z = true


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

.field private mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;


# direct methods
.method static synthetic -get0(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/bluetooth/BleProximityProfileService;)Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/bluetooth/BleProximityProfileService;Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;)Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/mediatek/bluetooth/BleProfileService;-><init>()V

    .line 254
    new-instance v0, Lcom/mediatek/bluetooth/BleProximityProfileService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BleProximityProfileService$1;-><init>(Lcom/mediatek/bluetooth/BleProximityProfileService;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mConnection:Landroid/content/ServiceConnection;

    .line 280
    iput-object p1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mContext:Landroid/content/Context;

    .line 281
    iput-object p2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .line 282
    invoke-virtual {p0}, Lcom/mediatek/bluetooth/BleProximityProfileService;->doBind()Z

    .line 279
    return-void
.end method

.method public static getRangeAlertThreshold(I)I
    .locals 3
    .param p0, "alertRange"    # I

    .prologue
    .line 170
    const-string/jumbo v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRangeAlertThreshold: alertRange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    packed-switch p0, :pswitch_data_0

    .line 182
    const-string/jumbo v0, "BleProximityProfileService"

    const-string/jumbo v1, "Invalid range! Return INVALID_PATH_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v0, -0x3e7

    return v0

    .line 173
    :pswitch_0
    const/16 v0, 0x3c

    return v0

    .line 176
    :pswitch_1
    const/16 v0, 0x41

    return v0

    .line 179
    :pswitch_2
    const/16 v0, 0x46

    return v0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 286
    const-string/jumbo v1, "BleProximityProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", proxy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 291
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    .line 292
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 298
    iput-object v4, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mServiceListener:Lcom/mediatek/bluetooth/BleProfileService$ProfileServiceListener;

    .line 285
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "BleProximityProfileService"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method doBind()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 302
    const-string/jumbo v1, "BleProximityProfileService"

    const-string/jumbo v2, "doBind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.mediatek.bluetoothle"

    const-string/jumbo v2, "com.mediatek.bluetoothle.pxp.ProximityProfileService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    const-string/jumbo v1, "BleProximityProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not bind to ProximityProfileService with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v4

    .line 310
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getPathLoss(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 322
    const/16 v1, -0x3e7

    .line 324
    .local v1, "pathLoss":I
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPathLoss: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v2, :cond_0

    .line 327
    const-string/jumbo v2, "BleProximityProfileService"

    const-string/jumbo v3, "getPathLoss: mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return v1

    .line 332
    :cond_0
    :try_start_0
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPathLoss: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v2, p1}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->getPathLoss(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 334
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Path loss = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPxpParameters(Landroid/bluetooth/BluetoothDevice;)Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    .locals 17
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 427
    const/16 v16, 0x0

    .line 428
    .local v16, "success":Z
    const/4 v8, 0x0

    .line 429
    .local v8, "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    const/4 v1, 0x1

    new-array v3, v1, [I

    .line 430
    .local v3, "alertEnabler":[I
    const/4 v1, 0x1

    new-array v4, v1, [I

    .line 431
    .local v4, "rangeAlertEnabler":[I
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 432
    .local v5, "rangeType":[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 433
    .local v6, "rangeValue":[I
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 435
    .local v7, "disconnectEnabler":[I
    const-string/jumbo v1, "BleProximityProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getPxpParameters:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v1, :cond_0

    .line 438
    const-string/jumbo v1, "BleProximityProfileService"

    const-string/jumbo v2, "getPxpParameters: mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v8

    .line 443
    :cond_0
    :try_start_0
    const-string/jumbo v1, "BleProximityProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getPxpParameters:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->getPxpParameters(Landroid/bluetooth/BluetoothDevice;[I[I[I[I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 450
    .end local v16    # "success":Z
    :goto_0
    if-eqz v16, :cond_1

    .line 451
    new-instance v8, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;

    .end local v8    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    const/4 v1, 0x0

    aget v10, v3, v1

    const/4 v1, 0x0

    aget v11, v4, v1

    const/4 v1, 0x0

    aget v12, v5, v1

    .line 452
    const/4 v1, 0x0

    aget v13, v6, v1

    const/4 v1, 0x0

    aget v14, v7, v1

    move-object/from16 v9, p0

    .line 451
    invoke-direct/range {v8 .. v14}, Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;-><init>(Lcom/mediatek/bluetooth/BleProximityProfileService;IIIII)V

    .line 455
    :cond_1
    return-object v8

    .line 446
    .restart local v8    # "params":Lcom/mediatek/bluetooth/BleProximityProfileService$DevicePxpParams;
    .restart local v16    # "success":Z
    :catch_0
    move-exception v15

    .line 447
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BleProximityProfileService"

    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAlertOn(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 352
    .local v1, "isAlertOn":Z
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAlertOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v2, :cond_0

    .line 355
    const-string/jumbo v2, "BleProximityProfileService"

    const-string/jumbo v3, "isAlertOn: mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return v1

    .line 360
    :cond_0
    :try_start_0
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAlertOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v2, p1}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->isAlertOn(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 362
    .local v1, "isAlertOn":Z
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "alerting level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v1    # "isAlertOn":Z
    :goto_0
    return v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "callback"    # Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;

    .prologue
    .line 467
    const/4 v1, 0x0

    .line 469
    .local v1, "result":Z
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStatusChangeCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v2, :cond_0

    .line 472
    const-string/jumbo v2, "BleProximityProfileService"

    const-string/jumbo v3, "registerStatusChangeCallback: mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return v1

    .line 477
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->registerStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 482
    .end local v1    # "result":Z
    :goto_0
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStatusChangeCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",callback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 483
    const-string/jumbo v4, ", result:"

    .line 482
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return v1

    .line 478
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPxpParameters(Landroid/bluetooth/BluetoothDevice;IIIII)Z
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "alertEnabler"    # I
    .param p3, "rangeAlertEnabler"    # I
    .param p4, "rangeType"    # I
    .param p5, "rangeValue"    # I
    .param p6, "disconnectEnabler"    # I

    .prologue
    .line 403
    const/4 v8, 0x0

    .line 405
    .local v8, "success":Z
    const-string/jumbo v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPxpParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v0, :cond_0

    .line 408
    const-string/jumbo v0, "BleProximityProfileService"

    const-string/jumbo v1, "setPxpParameters: mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v8

    .line 413
    :cond_0
    :try_start_0
    const-string/jumbo v0, "BleProximityProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPxpParameters:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->setPxpParameters(Landroid/bluetooth/BluetoothDevice;IIIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 420
    .end local v8    # "success":Z
    :goto_0
    return v8

    .line 416
    .restart local v8    # "success":Z
    :catch_0
    move-exception v7

    .line 417
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "BleProximityProfileService"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRemoteAlert(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, "success":Z
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRemoteAlert:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v2, :cond_0

    .line 383
    const-string/jumbo v2, "BleProximityProfileService"

    const-string/jumbo v3, "stopRemoteAlert: mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return v1

    .line 388
    :cond_0
    :try_start_0
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRemoteAlert:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v2, p1}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->stopRemoteAlert(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 394
    .end local v1    # "success":Z
    :goto_0
    return v1

    .line 390
    .restart local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "callback"    # Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, "result":Z
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterStatusChangeCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    if-nez v2, :cond_0

    .line 501
    const-string/jumbo v2, "BleProximityProfileService"

    const-string/jumbo v3, "unregisterStatusChangeCallback: mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return v1

    .line 506
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BleProximityProfileService;->mService:Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/bluetoothle/pxp/IProximityProfileService;->unregisterStatusChangeCallback(Landroid/bluetooth/BluetoothDevice;Lcom/mediatek/bluetoothle/pxp/IProximityProfileServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 511
    .end local v1    # "result":Z
    :goto_0
    const-string/jumbo v2, "BleProximityProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterStatusChangeCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",callback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 512
    const-string/jumbo v4, ", result:"

    .line 511
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v1

    .line 507
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BleProximityProfileService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
