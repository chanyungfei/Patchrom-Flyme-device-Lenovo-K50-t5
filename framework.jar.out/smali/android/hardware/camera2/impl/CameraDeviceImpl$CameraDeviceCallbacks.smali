.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# static fields
.field public static final ERROR_CAMERA_BUFFER:I = 0x5

.field public static final ERROR_CAMERA_DEVICE:I = 0x1

.field public static final ERROR_CAMERA_DISCONNECTED:I = 0x0

.field public static final ERROR_CAMERA_REQUEST:I = 0x3

.field public static final ERROR_CAMERA_RESULT:I = 0x4

.field public static final ERROR_CAMERA_SERVICE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .prologue
    .line 1600
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method

.method private onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 17
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .prologue
    .line 1882
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v7

    .line 1883
    .local v7, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v11

    .line 1884
    .local v11, "subsequenceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v8

    .line 1886
    .local v8, "frameNumber":J
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .line 1888
    .local v10, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    invoke-virtual {v10, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 1891
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    const/4 v12, 0x5

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 1892
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Lost output buffer reported for frame %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void

    .line 1896
    :cond_0
    const/4 v12, 0x4

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    const/4 v6, 0x1

    .line 1902
    .local v6, "mayHaveBuffers":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get5(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get5(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    move-result-object v12

    invoke-interface {v12}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->isAborting()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1903
    const/4 v5, 0x1

    .line 1906
    .local v5, "reason":I
    :goto_1
    new-instance v3, Landroid/hardware/camera2/CaptureFailure;

    invoke-direct/range {v3 .. v9}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJ)V

    .line 1913
    .local v3, "failure":Landroid/hardware/camera2/CaptureFailure;
    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v4, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 1924
    .local v2, "failureDispatch":Ljava/lang/Runnable;
    invoke-virtual {v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1930
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v12

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v12, v8, v9, v14, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JZZ)V

    .line 1931
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 1880
    return-void

    .line 1896
    .end local v2    # "failureDispatch":Ljava/lang/Runnable;
    .end local v3    # "failure":Landroid/hardware/camera2/CaptureFailure;
    .end local v5    # "reason":I
    .end local v6    # "mayHaveBuffers":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "mayHaveBuffers":Z
    goto :goto_0

    .line 1904
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "reason":I
    goto :goto_1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1639
    return-object p0
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 12
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    .prologue
    .line 1702
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v8

    .line 1703
    .local v8, "requestId":I
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v6

    .line 1710
    .local v6, "frameNumber":J
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v9, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1711
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v9

    return-void

    .line 1714
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1716
    .local v2, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    if-nez v2, :cond_1

    monitor-exit v9

    .line 1717
    return-void

    .line 1720
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v9

    return-void

    .line 1723
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v10

    .line 1724
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;JJ)V

    .line 1723
    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v9

    .line 1701
    return-void

    .line 1710
    .end local v2    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .prologue
    .line 1651
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1652
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 1653
    return-void

    .line 1656
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1661
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown error from camera device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :pswitch_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-set1(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z

    .line 1666
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;I)V

    .line 1674
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "r":Ljava/lang/Runnable;
    :goto_0
    monitor-exit v2

    .line 1643
    return-void

    .line 1658
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1651
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1679
    :pswitch_2
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onDeviceIdle()V
    .locals 3

    .prologue
    .line 1690
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1691
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 1693
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get9(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1694
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1696
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-set0(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1686
    return-void

    .line 1690
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPrepared(I)V
    .locals 5
    .param p1, "streamId"    # I

    .prologue
    .line 1861
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v4, v3, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1862
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get4(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1863
    .local v0, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v4

    .line 1866
    if-nez v1, :cond_0

    return-void

    .line 1861
    .end local v0    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1868
    .restart local v0    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .restart local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :cond_0
    if-nez v0, :cond_1

    .line 1869
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPrepared invoked for unknown output Surface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    return-void

    .line 1872
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1874
    .local v2, "surface":Landroid/view/Surface;
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onSurfacePrepared(Landroid/view/Surface;)V

    .line 1853
    return-void
.end method

.method public onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 21
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1743
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v17

    .line 1744
    .local v17, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v6

    .line 1751
    .local v6, "frameNumber":J
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v5, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1752
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_0

    monitor-exit v20

    return-void

    .line 1755
    :cond_0
    :try_start_1
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1756
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 1755
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    .line 1760
    .local v4, "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v13

    .line 1763
    .local v13, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getPartialResultCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get12(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v12

    if-ge v5, v12, :cond_1

    const/4 v9, 0x1

    .line 1764
    .local v9, "isPartialResult":Z
    :goto_0
    invoke-virtual {v13}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v10

    .line 1767
    .local v10, "isReprocess":Z
    if-nez v4, :cond_2

    .line 1774
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v20

    .line 1777
    return-void

    .line 1763
    .end local v9    # "isPartialResult":Z
    .end local v10    # "isReprocess":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "isPartialResult":Z
    goto :goto_0

    .line 1780
    .restart local v10    # "isReprocess":Z
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1787
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v20

    .line 1789
    return-void

    .line 1793
    :cond_3
    const/16 v19, 0x0

    .line 1798
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    if-eqz v9, :cond_5

    .line 1800
    :try_start_3
    new-instance v18, Landroid/hardware/camera2/CaptureResult;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 1803
    .local v18, "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    new-instance v19, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;

    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v4, v13, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 1815
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v8, v18

    .line 1839
    .end local v18    # "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    .local v8, "finalResult":Landroid/hardware/camera2/CaptureResult;
    :goto_1
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1842
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->updateTracker(JLandroid/hardware/camera2/CaptureResult;ZZ)V

    .line 1846
    if-nez v9, :cond_4

    .line 1847
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-wrap2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit v20

    .line 1741
    return-void

    .line 1818
    .end local v8    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->popPartialResults(J)Ljava/util/List;

    move-result-object v15

    .line 1820
    .local v15, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    new-instance v11, Landroid/hardware/camera2/TotalCaptureResult;

    .line 1821
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getSessionId()I

    move-result v16

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    .line 1820
    invoke-direct/range {v11 .. v16}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I)V

    .line 1824
    .local v11, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    new-instance v19, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;

    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v13, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1836
    .local v19, "resultDispatch":Ljava/lang/Runnable;
    move-object v8, v11

    .restart local v8    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    goto :goto_1

    .line 1751
    .end local v4    # "holder":Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;
    .end local v8    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v9    # "isPartialResult":Z
    .end local v10    # "isReprocess":Z
    .end local v11    # "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v13    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v15    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .end local v19    # "resultDispatch":Ljava/lang/Runnable;
    :catchall_0
    move-exception v5

    monitor-exit v20

    throw v5
.end method
