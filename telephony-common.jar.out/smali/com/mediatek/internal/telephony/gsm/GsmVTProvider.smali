.class public Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
.super Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;
.source "GsmVTProvider.java"


# static fields
.field public static final SESSION_EVENT_BAD_DATA_BITRATE:I = 0xfa8

.field public static final SESSION_EVENT_CALL_ABNORMAL_END:I = 0x3f1

.field public static final SESSION_EVENT_CALL_END:I = 0x3f0

.field public static final SESSION_EVENT_CAM_CAP_CHANGED:I = 0xfa7

.field public static final SESSION_EVENT_DATA_BITRATE_RECOVER:I = 0xfa9

.field public static final SESSION_EVENT_DATA_USAGE_CHANGED:I = 0xfa6

.field public static final SESSION_EVENT_ERROR_CAMERA:I = 0x1f43

.field public static final SESSION_EVENT_ERROR_CODEC:I = 0x1f44

.field public static final SESSION_EVENT_ERROR_REC:I = 0x1f45

.field public static final SESSION_EVENT_ERROR_SERVER_DIED:I = 0x1f42

.field public static final SESSION_EVENT_ERROR_SERVICE:I = 0x1f41

.field public static final SESSION_EVENT_HANDLE_CALL_SESSION_EVT:I = 0xfa3

.field public static final SESSION_EVENT_LOCAL_SIZE_CHANGED:I = 0xfa5

.field public static final SESSION_EVENT_PEER_CAMERA_CLOSE:I = 0x3f4

.field public static final SESSION_EVENT_PEER_CAMERA_OPEN:I = 0x3f3

.field public static final SESSION_EVENT_PEER_SIZE_CHANGED:I = 0xfa4

.field public static final SESSION_EVENT_RECEIVE_FIRSTFRAME:I = 0x3e9

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE:I = 0x3ef

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME:I = 0x3ee

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION:I = 0x3ec

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE:I = 0x3ed

.field public static final SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN:I = 0x3eb

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_REQ:I = 0xfa1

.field public static final SESSION_EVENT_RECV_SESSION_CONFIG_RSP:I = 0xfa2

.field public static final SESSION_EVENT_SNAPSHOT_DONE:I = 0x3ea

.field public static final SESSION_EVENT_START_COUNTER:I = 0x3f2

.field public static final SESSION_EVENT_WARNING_SERVICE_NOT_READY:I = 0x2329

.field static final TAG:Ljava/lang/String; = "GsmVTProvider"

.field public static final VT_PROVIDER_INVALIDE_ID:I = -0x2710

.field private static mDefaultId:I


# instance fields
.field private mId:I

.field private mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "mtk_vt_wrapper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;-><init>()V

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 139
    const-string/jumbo v0, "GsmVTProvider"

    const-string/jumbo v1, "New GsmVTProvider without id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v0, -0x2710

    iput v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 137
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/gsm/GsmVideoCallProvider;-><init>()V

    .line 95
    const/4 v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 102
    const-string/jumbo v2, "GsmVTProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New GsmVTProvider id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "wait_time":I
    const-string/jumbo v2, "GsmVTProvider"

    const-string/jumbo v3, "New GsmVTProvider check if exist the same id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    const-string/jumbo v2, "GsmVTProvider"

    const-string/jumbo v3, "New GsmVTProvider the same id exist, wait ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 118
    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 119
    const-string/jumbo v2, "GsmVTProvider"

    const-string/jumbo v3, "New GsmVTProvider the same id exist, break!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 125
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    .line 126
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v2, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordAdd(ILcom/mediatek/internal/telephony/gsm/GsmVTProvider;)V

    .line 128
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateEMParam(I)V

    .line 130
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nInitialization(I)I

    .line 132
    sget v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_2

    .line 133
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    sput v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 99
    :cond_2
    return-void

    .line 114
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public static native nFinalization(I)I
.end method

.method public static native nGetCameraParameters(I)Ljava/lang/String;
.end method

.method public static native nGetCameraSensorCount(I)I
.end method

.method public static native nInitialization(I)I
.end method

.method public static native nRequestCallDataUsage(I)I
.end method

.method public static native nRequestCameraCapabilities(I)I
.end method

.method public static native nRequestPeerConfig(ILjava/lang/String;)I
.end method

.method public static native nResponseLocalConfig(ILjava/lang/String;)I
.end method

.method public static native nSetCamera(II)I
.end method

.method public static native nSetCameraParameters(ILjava/lang/String;)I
.end method

.method public static native nSetDeviceOrientation(II)I
.end method

.method public static native nSetDisplaySurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetEM(IIII)I
.end method

.method public static native nSetPreviewSurface(ILandroid/view/Surface;)I
.end method

.method public static native nSetUIMode(II)I
.end method

.method public static native nSnapshot(IILjava/lang/String;)I
.end method

.method public static native nStartRecording(IILjava/lang/String;J)I
.end method

.method public static native nStopRecording(I)I
.end method

.method public static postEventFromNative(IIIIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p0, "msg"    # I
    .param p1, "id"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;
    .param p7, "obj3"    # Ljava/lang/Object;

    .prologue
    .line 359
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-result-object v9

    .line 361
    .local v9, "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    if-nez v9, :cond_0

    .line 362
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "Error: post event to Call is already release or has happen error before!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 366
    :cond_0
    const-string/jumbo v13, "GsmVTProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "postEventFromNative ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sparse-switch p0, :sswitch_data_0

    .line 562
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = UNKNOWB"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local p5    # "obj1":Ljava/lang/Object;
    .end local p6    # "obj2":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 369
    .restart local p5    # "obj1":Ljava/lang/Object;
    .restart local p6    # "obj2":Ljava/lang/Object;
    :sswitch_0
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_RECEIVE_FIRSTFRAME"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 375
    :sswitch_1
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_SNAPSHOT_DONE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 381
    :sswitch_2
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_UNKNOWN"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 387
    :sswitch_3
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_DURATION"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 394
    :sswitch_4
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_REACH_MAX_FILESIZE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 401
    :sswitch_5
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_NO_I_FRAME"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 408
    :sswitch_6
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_RECORDER_EVENT_INFO_COMPLETE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 416
    :sswitch_7
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_CALL_END / SESSION_EVENT_CALL_ABNORMAL_END"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordRemove(I)V

    .line 420
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateDefaultId()V

    .line 422
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 426
    :sswitch_8
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = MSG_START_COUNTER"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 432
    :sswitch_9
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = MSG_PEER_CAMERA_OPEN"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 438
    :sswitch_a
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = MSG_PEER_CAMERA_CLOSE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 444
    :sswitch_b
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_REQ"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    check-cast p5, Ljava/lang/String;

    .end local p5    # "obj1":Ljava/lang/Object;
    invoke-static/range {p5 .. p5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v13

    .line 446
    invoke-virtual {v9, v13}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    .line 451
    .restart local p5    # "obj1":Ljava/lang/Object;
    :sswitch_c
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_RECV_SESSION_CONFIG_RSP"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    check-cast p5, Ljava/lang/String;

    .end local p5    # "obj1":Ljava/lang/Object;
    invoke-static/range {p5 .. p5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v13

    .line 456
    check-cast p6, Ljava/lang/String;

    .end local p6    # "obj2":Ljava/lang/Object;
    invoke-static/range {p6 .. p6}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v14

    .line 453
    move/from16 v0, p2

    invoke-virtual {v9, v0, v13, v14}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    .line 460
    .restart local p5    # "obj1":Ljava/lang/Object;
    .restart local p6    # "obj2":Ljava/lang/Object;
    :sswitch_d
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_HANDLE_CALL_SESSION_EVT"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 466
    :sswitch_e
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_PEER_SIZE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->changePeerDimensionsWithAngle(III)V

    goto/16 :goto_0

    .line 472
    :sswitch_f
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_LOCAL_SIZE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 477
    :sswitch_10
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_DATA_USAGE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move/from16 v0, p2

    int-to-long v14, v0

    invoke-virtual {v9, v14, v15}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->changeCallDataUsage(J)V

    goto/16 :goto_0

    .line 483
    :sswitch_11
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_CAM_CAP_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string/jumbo v14, "GsmVTProvider"

    move-object/from16 v13, p5

    check-cast v13, Ljava/lang/String;

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->getSetting()Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    move-result-object v13

    check-cast p5, Ljava/lang/String;

    .end local p5    # "obj1":Ljava/lang/Object;
    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->unflatten(Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->getSetting()Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    move-result-object v6

    .line 490
    .local v6, "set":Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;
    const-string/jumbo v13, "max-zoom"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 492
    .local v11, "zoom_max":I
    const-string/jumbo v13, "true"

    const-string/jumbo v14, "zoom-supported"

    invoke-virtual {v6, v14}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 493
    .local v12, "zoom_support":Z
    const-string/jumbo v13, "preview-size"

    invoke-virtual {v6, v13}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->getSizeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 496
    .local v7, "size":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;>;"
    const/16 v10, 0xb0

    .line 497
    .local v10, "width":I
    const/16 v5, 0x90

    .line 499
    .local v5, "height":I
    if-eqz v7, :cond_2

    .line 500
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;

    iget v10, v13, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->width:I

    .line 501
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;

    iget v5, v13, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;->height:I

    .line 506
    :cond_2
    const/4 v8, 0x0

    .line 507
    .local v8, "temp":I
    move v8, v10

    .line 508
    move v10, v5

    .line 509
    move v5, v8

    .line 512
    new-instance v4, Landroid/telecom/VideoProfile$CameraCapabilities;

    int-to-float v13, v11

    invoke-direct {v4, v10, v5, v12, v13}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    .line 514
    .local v4, "camCap":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {v9, v4}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto/16 :goto_0

    .line 518
    .end local v4    # "camCap":Landroid/telecom/VideoProfile$CameraCapabilities;
    .end local v5    # "height":I
    .end local v6    # "set":Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;
    .end local v7    # "size":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;>;"
    .end local v8    # "temp":I
    .end local v10    # "width":I
    .end local v11    # "zoom_max":I
    .end local v12    # "zoom_support":Z
    .restart local p5    # "obj1":Ljava/lang/Object;
    :sswitch_12
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = SESSION_EVENT_BAD_DATA_BITRATE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 524
    :sswitch_13
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = MSG_ERROR_SERVICE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordRemove(I)V

    .line 526
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateDefaultId()V

    .line 528
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 532
    :sswitch_14
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = MSG_ERROR_SERVER_DIED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordRemove(I)V

    .line 534
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateDefaultId()V

    .line 538
    if-eqz v9, :cond_1

    .line 539
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 544
    :sswitch_15
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = MSG_ERROR_CAMERA"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 550
    :sswitch_16
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = MSG_ERROR_CODEC"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 556
    :sswitch_17
    const-string/jumbo v13, "GsmVTProvider"

    const-string/jumbo v14, "postEventFromNative : msg = MSG_ERROR_REC"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    move/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    goto/16 :goto_0

    .line 367
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_3
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_7
        0x3f1 -> :sswitch_7
        0x3f2 -> :sswitch_8
        0x3f3 -> :sswitch_9
        0x3f4 -> :sswitch_a
        0xfa1 -> :sswitch_b
        0xfa2 -> :sswitch_c
        0xfa3 -> :sswitch_d
        0xfa4 -> :sswitch_e
        0xfa5 -> :sswitch_f
        0xfa6 -> :sswitch_10
        0xfa7 -> :sswitch_11
        0xfa8 -> :sswitch_12
        0x1f41 -> :sswitch_13
        0x1f42 -> :sswitch_14
        0x1f43 -> :sswitch_15
        0x1f44 -> :sswitch_16
        0x1f45 -> :sswitch_17
    .end sparse-switch
.end method

.method private static updateDefaultId()V
    .locals 1

    .prologue
    .line 188
    sget v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordContain(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordPopId()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 191
    return-void

    .line 193
    :cond_0
    const/16 v0, -0x2710

    sput v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 195
    :cond_1
    return-void
.end method

.method private updateEMParam(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/16 v5, 0x1c

    const/16 v4, 0x8

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 218
    invoke-static {p1, v1, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 219
    invoke-static {p1, v2, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 220
    invoke-static {p1, v2, v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 221
    const/4 v0, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 222
    invoke-static {p1, v2, v3, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 223
    const/4 v0, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 224
    const/4 v0, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 225
    const/4 v0, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 226
    invoke-static {p1, v3, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 227
    invoke-static {p1, v3, v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 228
    const/4 v0, 0x4

    invoke-static {p1, v0, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 229
    const/4 v0, 0x4

    invoke-static {p1, v0, v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 230
    const/4 v0, 0x5

    invoke-static {p1, v0, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 231
    const/4 v0, 0x6

    invoke-static {p1, v0, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 232
    const/4 v0, 0x7

    invoke-static {p1, v0, v2, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 233
    invoke-static {p1, v4, v1, v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 234
    invoke-static {p1, v4, v2, v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 235
    const/4 v0, 0x2

    invoke-static {p1, v4, v0, v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 236
    invoke-static {p1, v4, v3, v5}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 237
    const/16 v0, 0x9

    invoke-static {p1, v0, v1, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetEM(IIII)I

    .line 217
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    return v0
.end method

.method public onRequestCallDataUsage()V
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nRequestCallDataUsage(I)I

    .line 334
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nRequestCameraCapabilities(I)I

    .line 322
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 307
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {p2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nRequestPeerConfig(ILjava/lang/String;)I

    .line 298
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 319
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nResponseLocalConfig(ILjava/lang/String;)I

    .line 310
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 242
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 243
    const/16 v0, 0x2329

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 244
    return-void

    .line 247
    :cond_0
    if-eqz p1, :cond_1

    .line 248
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetCamera(II)I

    .line 240
    :goto_0
    return-void

    .line 250
    :cond_1
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetCamera(II)I

    goto :goto_0
.end method

.method public onSetDeviceOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 289
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetDeviceOrientation(II)I

    .line 288
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    .line 272
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetDisplaySurface(ILandroid/view/Surface;)I

    .line 274
    if-nez p1, :cond_1

    .line 275
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, v3, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceSet(IZZ)V

    .line 280
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceGet(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-result-object v0

    .line 282
    .local v0, "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    if-eqz v0, :cond_0

    .line 283
    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 271
    .end local v0    # "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    :cond_0
    return-void

    .line 277
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceSet(IZZ)V

    goto :goto_0
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 338
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 255
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetPreviewSurface(ILandroid/view/Surface;)I

    .line 257
    if-nez p1, :cond_1

    .line 258
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, v2, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceSet(IZZ)V

    .line 263
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceGet(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 264
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-result-object v0

    .line 265
    .local v0, "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    if-eqz v0, :cond_0

    .line 266
    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->handleCallSessionEvent(I)V

    .line 254
    .end local v0    # "vp":Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    :cond_0
    return-void

    .line 260
    :cond_1
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, v2, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->surfaceSet(IZZ)V

    goto :goto_0
.end method

.method public onSetUIMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 342
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 343
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nFinalization(I)I

    .line 341
    :goto_0
    return-void

    .line 345
    :cond_0
    iget v0, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetUIMode(II)I

    goto :goto_0
.end method

.method public onSetZoom(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 293
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->getSetting()Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    move-result-object v1

    const-string/jumbo v2, "zoom"

    float-to-int v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->set(Ljava/lang/String;I)V

    .line 294
    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->getSetting()Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;->flatten()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "currentSeeting":Ljava/lang/String;
    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nSetCameraParameters(ILjava/lang/String;)I

    .line 292
    return-void
.end method

.method public setId(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/16 v5, -0x2710

    .line 144
    const-string/jumbo v2, "GsmVTProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setId id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string/jumbo v2, "GsmVTProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setId mId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    if-ne v2, v5, :cond_2

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "wait_time":I
    const-string/jumbo v2, "GsmVTProvider"

    const-string/jumbo v3, "New GsmVTProvider check if exist the same id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    const-string/jumbo v2, "GsmVTProvider"

    const-string/jumbo v3, "New GsmVTProvider the same id exist, wait ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 163
    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 164
    const-string/jumbo v2, "GsmVTProvider"

    const-string/jumbo v3, "New GsmVTProvider the same id exist, break!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    iput p1, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    .line 170
    new-instance v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;-><init>()V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mUtil:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;

    .line 171
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v2, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordAdd(ILcom/mediatek/internal/telephony/gsm/GsmVTProvider;)V

    .line 172
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->nInitialization(I)I

    .line 174
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->updateEMParam(I)V

    .line 176
    sget v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    if-ne v2, v5, :cond_2

    .line 177
    iget v2, p0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mId:I

    sput v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->mDefaultId:I

    .line 143
    .end local v1    # "wait_time":I
    :cond_2
    return-void

    .line 159
    .restart local v1    # "wait_time":I
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
