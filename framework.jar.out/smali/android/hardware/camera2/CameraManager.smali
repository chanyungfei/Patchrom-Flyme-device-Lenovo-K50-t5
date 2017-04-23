.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$1;
    }
.end annotation


# static fields
.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashdeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/CameraManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFlashdeviceIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/CameraManager;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 1244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFlashdeviceIdList:Ljava/util/ArrayList;

    .line 1245
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 1284
    new-instance v0, Landroid/hardware/camera2/CameraManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/CameraManager$1;-><init>(Landroid/hardware/camera2/CameraManager;)V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private closeFlashlightWhenShutdown(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1247
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mFlashdeviceIdList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1248
    :try_start_0
    const-string/jumbo v0, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[closeFlashlightWhenShutdown]cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1249
    const-string/jumbo v3, ",list size="

    .line 1248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1249
    iget-object v3, p0, Landroid/hardware/camera2/CameraManager;->mFlashdeviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    if-eqz p2, :cond_2

    .line 1251
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFlashdeviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFlashdeviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    monitor-exit v1

    .line 1253
    return-void

    .line 1255
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/CameraManager$2;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/CameraManager$2;-><init>(Landroid/hardware/camera2/CameraManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    .line 1246
    return-void

    .line 1263
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFlashdeviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1264
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mFlashdeviceIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/CameraManager$3;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/CameraManager$3;-><init>(Landroid/hardware/camera2/CameraManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    if-nez v9, :cond_5

    .line 616
    const/4 v8, 0x0

    .line 617
    .local v8, "numCameras":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 618
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v1, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 622
    return-object v1

    .line 626
    :cond_0
    const/4 v9, 0x1

    :try_start_0
    invoke-interface {v0, v9}, Landroid/hardware/ICameraService;->getNumberOfCameras(I)I
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 634
    new-instance v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 635
    .local v6, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_4

    .line 638
    const/4 v7, 0x0

    .line 640
    .local v7, "isDeviceSupported":Z
    :try_start_1
    invoke-interface {v0, v5, v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    .line 641
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v9

    if-nez v9, :cond_2

    .line 642
    const/4 v7, 0x1

    .line 662
    :cond_1
    :goto_1
    if-eqz v7, :cond_3

    .line 663
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 629
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v7    # "isDeviceSupported":Z
    :catch_0
    move-exception v3

    .line 631
    .local v3, "e":Landroid/os/RemoteException;
    return-object v1

    .line 627
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 628
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v9

    throw v9

    .line 644
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .restart local v5    # "i":I
    .restart local v6    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v7    # "isDeviceSupported":Z
    :cond_2
    :try_start_2
    new-instance v9, Ljava/lang/AssertionError;

    const-string/jumbo v10, "Expected to get non-empty characteristics"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 646
    :catch_2
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 656
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 658
    .restart local v3    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 659
    return-object v1

    .line 649
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v2

    .line 653
    .restart local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 654
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v9

    throw v9

    .line 665
    .end local v2    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_3
    const-string/jumbo v9, "CameraManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error querying camera device "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for listing."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 669
    .end local v7    # "isDeviceSupported":Z
    :cond_4
    iput-object v1, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    .line 671
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v1    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v8    # "numCameras":I
    :cond_5
    iget-object v9, p0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    return-object v9
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice;
    .locals 19
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v11

    .line 297
    .local v11, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v12, 0x0

    .line 300
    .local v12, "device":Landroid/hardware/camera2/CameraDevice;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 302
    const/4 v9, 0x0

    .line 305
    .local v9, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_1
    new-instance v13, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v13, v0, v1, v2, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 311
    .local v13, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    new-instance v8, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v8}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 313
    .local v8, "holder":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v4

    .line 314
    .local v4, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 316
    .local v5, "id":I
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 318
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v3

    .line 319
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    if-nez v3, :cond_0

    .line 320
    new-instance v6, Landroid/hardware/camera2/utils/CameraRuntimeException;

    .line 322
    const-string/jumbo v7, "Camera service is currently unavailable"

    .line 321
    const/16 v18, 0x2

    .line 320
    move/from16 v0, v18

    invoke-direct {v6, v0, v7}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v14

    .line 333
    .local v14, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :try_start_3
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_3

    .line 334
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Should\'ve gone down the shim path"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    .end local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "id":I
    .end local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v17

    throw v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 371
    .end local v12    # "device":Landroid/hardware/camera2/CameraDevice;
    :catch_1
    move-exception v16

    .line 372
    .local v16, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Expected cameraId to be numeric, but it was: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 325
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "id":I
    .restart local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .restart local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v12    # "device":Landroid/hardware/camera2/CameraDevice;
    .restart local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :cond_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 324
    invoke-interface/range {v3 .. v8}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    .line 326
    invoke-virtual {v8}, Landroid/hardware/camera2/utils/BinderHolder;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_5
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v9

    .line 367
    .end local v3    # "cameraService":Landroid/hardware/ICameraService;
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v13, v9}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 368
    move-object v12, v13

    .local v12, "device":Landroid/hardware/camera2/CameraDevice;
    :try_start_7
    monitor-exit v17
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 377
    return-object v12

    .line 329
    .restart local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v12, "device":Landroid/hardware/camera2/CameraDevice;
    :cond_2
    :try_start_8
    const-string/jumbo v6, "CameraManager"

    const-string/jumbo v7, "Using legacy camera HAL."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {v4, v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_8
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v9

    .local v9, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    .line 355
    .local v9, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_2
    move-exception v15

    .line 357
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_9
    new-instance v10, Landroid/hardware/camera2/utils/CameraRuntimeException;

    .line 359
    const-string/jumbo v6, "Camera service is currently unavailable"

    .line 358
    const/4 v7, 0x2

    .line 357
    invoke-direct {v10, v7, v6, v15}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    .local v10, "ce":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v13, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V

    .line 361
    invoke-virtual {v10}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    throw v6

    .line 335
    .end local v10    # "ce":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :cond_3
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 336
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    .line 343
    :cond_4
    invoke-virtual {v13, v14}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/hardware/camera2/utils/CameraRuntimeException;)V

    .line 345
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    .line 346
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 349
    :cond_5
    :goto_1
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    throw v6

    .line 337
    :cond_6
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 338
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 339
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 353
    throw v14

    .line 347
    :cond_7
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 374
    .end local v4    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "id":I
    .end local v8    # "holder":Landroid/hardware/camera2/utils/BinderHolder;
    .end local v9    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v12    # "device":Landroid/hardware/camera2/CameraDevice;
    .end local v13    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    :catch_3
    move-exception v14

    .line 375
    .restart local v14    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v14}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v6

    throw v6
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 681
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .prologue
    const/4 v8, 0x0

    .line 692
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 703
    .local v3, "id":I
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 705
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    return v8

    .line 707
    :cond_0
    invoke-interface {v0, v3, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)I

    move-result v4

    .line 709
    .local v4, "res":I
    if-eqz v4, :cond_1

    .line 710
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_0
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 713
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v4    # "res":I
    :catch_0
    move-exception v1

    .line 714
    .local v1, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getReason()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    .line 715
    throw v1

    .line 712
    .end local v1    # "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    .restart local v0    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v4    # "res":I
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 718
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    .end local v4    # "res":I
    :catch_1
    move-exception v2

    .line 721
    :cond_2
    return v8
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v10, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 225
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 226
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Camera id %s does not match any currently connected camera device"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 227
    const/4 v13, 0x0

    aput-object p1, v12, v13

    .line 226
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 230
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 237
    .local v4, "id":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 238
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    .line 239
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    .line 240
    const-string/jumbo v11, "Camera service is currently unavailable"

    .line 239
    const/4 v12, 0x2

    invoke-direct {v9, v12, v11}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 246
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    .line 248
    .local v7, "outParameters":[Ljava/lang/String;
    invoke-interface {v0, v4, v7}, Landroid/hardware/ICameraService;->getLegacyParameters(I[Ljava/lang/String;)I

    .line 249
    const/4 v9, 0x0

    aget-object v8, v7, v9

    .line 251
    .local v8, "parameters":Ljava/lang/String;
    new-instance v5, Landroid/hardware/CameraInfo;

    invoke-direct {v5}, Landroid/hardware/CameraInfo;-><init>()V

    .line 252
    .local v5, "info":Landroid/hardware/CameraInfo;
    invoke-interface {v0, v4, v5}, Landroid/hardware/ICameraService;->getCameraInfo(ILandroid/hardware/CameraInfo;)I

    .line 254
    invoke-static {v8, v5}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v5    # "info":Landroid/hardware/CameraInfo;
    .end local v7    # "outParameters":[Ljava/lang/String;
    .end local v8    # "parameters":Ljava/lang/String;
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :goto_0
    monitor-exit v10

    .line 271
    return-object v1

    .line 257
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_2
    :try_start_3
    new-instance v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 259
    .local v6, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {v0, v4, v6}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    .line 261
    new-instance v1, Landroid/hardware/camera2/CameraCharacteristics;

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-direct {v1, v6}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_3
    .catch Landroid/hardware/camera2/utils/CameraRuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_0

    .line 265
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_0
    move-exception v3

    .line 267
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    .line 268
    const-string/jumbo v11, "Camera service is currently unavailable"

    .line 267
    const/4 v12, 0x2

    invoke-direct {v9, v12, v11, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 263
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 264
    .local v2, "e":Landroid/hardware/camera2/utils/CameraRuntimeException;
    invoke-virtual {v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;->asChecked()Landroid/hardware/camera2/CameraAccessException;

    move-result-object v9

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 447
    if-nez p1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_0
    if-nez p2, :cond_1

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_1
    if-nez p3, :cond_2

    .line 452
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 453
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 460
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice;

    .line 445
    return-void

    .line 455
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 456
    const-string/jumbo v1, "Handler argument is null, but no looper exists in the calling thread"

    .line 455
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 135
    if-nez p2, :cond_1

    .line 136
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 137
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 139
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 138
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 134
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 182
    if-nez p2, :cond_1

    .line 183
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 184
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 186
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 185
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 190
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 181
    return-void
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 506
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraManager;->closeFlashlightWhenShutdown(Ljava/lang/String;Z)V

    .line 503
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 156
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 155
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 202
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 201
    return-void
.end method
