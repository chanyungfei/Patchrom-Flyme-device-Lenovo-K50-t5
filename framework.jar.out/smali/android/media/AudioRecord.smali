.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$Builder;,
        Landroid/media/AudioRecord$OnRoutingChangedListener;,
        Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;,
        Landroid/media/AudioRecord$NativeEventHandler;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final READ_BLOCKING:I = 0x0

.field public static final READ_NON_BLOCKING:I = 0x1

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0x2ee00

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private final mICallBack:Landroid/os/IBinder;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsSubmixFullVolume:Z

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:J

.field private mNativeDeviceCallback:J

.field private mNativeRecorderInJavaObj:J

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRecord$OnRoutingChangedListener;",
            "Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioRecord;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 281
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 283
    const/4 v2, 0x1

    .line 282
    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    .line 281
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 288
    const/4 v2, 0x0

    .line 278
    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .locals 20
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    .line 210
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 214
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 221
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 225
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 233
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 237
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 241
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 959
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 1288
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1287
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 1413
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 316
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    const-string/jumbo v2, "AudioRecord>>>"

    invoke-static {v2}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 319
    .local v19, "uid":I
    const-string/jumbo v15, "sub-permission.RECORD_MIC"

    .line 320
    .local v15, "permission":Ljava/lang/String;
    move/from16 v0, v19

    invoke-static {v15, v0}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AudioRecord<<<: user denied permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 324
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AudioRecord<<<: user granted permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 327
    .end local v15    # "permission":Ljava/lang/String;
    .end local v19    # "uid":I
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 329
    if-nez p1, :cond_2

    .line 330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal null AudioAttributes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :cond_2
    if-nez p2, :cond_3

    .line 333
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal null AudioFormat"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v2, :cond_4

    .line 338
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 342
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_b

    .line 343
    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 344
    .local v13, "filteredAttr":Landroid/media/AudioAttributes$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 345
    .local v18, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 347
    .local v17, "tag":Ljava/lang/String;
    const-string/jumbo v2, "fixedVolume"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 348
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 349
    const-string/jumbo v2, "android.media.AudioRecord"

    const-string/jumbo v3, "Will record from REMOTE_SUBMIX at full fixed volume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 354
    .end local v17    # "tag":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    .line 355
    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 360
    .end local v13    # "filteredAttr":Landroid/media/AudioAttributes$Builder;
    .end local v18    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    const/16 v16, 0x0

    .line 361
    .local v16, "rate":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v16

    .line 372
    :cond_7
    :goto_2
    const/4 v12, 0x1

    .line 373
    .local v12, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v12

    .line 378
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1, v12}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_9

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 385
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_d

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 394
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 396
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 397
    .local v10, "session":[I
    const/4 v2, 0x0

    aput p4, v10, v2

    .line 400
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/AudioRecord;->mSampleRate:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/AudioRecord;->mChannelMask:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    .line 402
    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/AudioRecord;->mAudioFormat:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 403
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    .line 400
    invoke-direct/range {v2 .. v11}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[ILjava/lang/String;)I

    move-result v14

    .line 404
    .local v14, "initResult":I
    if-eqz v14, :cond_e

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " when initializing native AudioRecord object."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 406
    return-void

    .line 357
    .end local v10    # "session":[I
    .end local v12    # "encoding":I
    .end local v14    # "initResult":I
    .end local v16    # "rate":I
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    goto/16 :goto_1

    .line 366
    .restart local v16    # "rate":I
    :cond_c
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v16

    .line 367
    if-gtz v16, :cond_7

    .line 368
    const v16, 0xac44

    goto/16 :goto_2

    .line 389
    .restart local v12    # "encoding":I
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-nez v2, :cond_a

    .line 390
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 391
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mChannelCount:I

    goto/16 :goto_3

    .line 409
    .restart local v10    # "session":[I
    .restart local v14    # "initResult":I
    :cond_e
    const/4 v2, 0x0

    aget v2, v10, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mSessionId:I

    .line 411
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioRecord;->mState:I

    .line 314
    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 685
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 686
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    .line 685
    mul-int v0, v1, v2

    .line 687
    .local v0, "frameSizeInBytes":I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 688
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 682
    return-void
.end method

.method private audioParamCheck(III)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 641
    if-ltz p1, :cond_0

    .line 642
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 643
    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_1

    .line 644
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_1

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 651
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    const v0, 0x2ee00

    if-le p2, v0, :cond_3

    .line 652
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    const-string/jumbo v2, "Hz is not a supported sample rate."

    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 659
    packed-switch p3, :pswitch_data_0

    .line 669
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, or ENCODING_PCM_FLOAT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 637
    :goto_0
    return-void

    .line 666
    :pswitch_1
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_0

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private broadcastRoutingChange()V
    .locals 6

    .prologue
    .line 1383
    iget-object v5, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1384
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    monitor-exit v5

    .line 1386
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 1387
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    .line 1388
    .local v0, "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 1389
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 1390
    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1383
    .end local v0    # "delegate":Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
    .end local v1    # "delegate$iterator":Ljava/util/Iterator;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1381
    .restart local v1    # "delegate$iterator":Ljava/util/Iterator;
    .restart local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;>;"
    :cond_1
    return-void
.end method

.method private static getChannelMaskFromLegacyConfig(IZ)I
    .locals 3
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    .prologue
    .line 607
    sparse-switch p0, :sswitch_data_0

    .line 621
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported channel configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :sswitch_0
    const/16 v0, 0x10

    .line 624
    .local v0, "mask":I
    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 625
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 627
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported deprecated configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    .end local v0    # "mask":I
    :sswitch_1
    const/16 v0, 0xc

    .line 616
    .restart local v0    # "mask":I
    goto :goto_0

    .line 618
    .end local v0    # "mask":I
    :sswitch_2
    move v0, p0

    .line 619
    .restart local v0    # "mask":I
    goto :goto_0

    .line 630
    :cond_1
    return v0

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 870
    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 871
    return v3

    .line 861
    :sswitch_0
    const/4 v0, 0x1

    .line 874
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 875
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 876
    return v3

    .line 866
    .end local v1    # "size":I
    :sswitch_1
    const/4 v0, 0x2

    .line 867
    goto :goto_0

    .line 878
    .restart local v1    # "size":I
    :cond_0
    if-ne v1, v2, :cond_1

    .line 879
    return v2

    .line 882
    :cond_1
    return v1

    .line 857
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleFullVolumeRec(Z)V
    .locals 5
    .param p1, "starting"    # Z

    .prologue
    .line 961
    iget-boolean v3, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    if-nez v3, :cond_0

    .line 962
    return-void

    .line 964
    :cond_0
    const-string/jumbo v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 965
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 967
    .local v2, "ias":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :goto_0
    return-void

    .line 968
    :catch_0
    move-exception v1

    .line 969
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "android.media.AudioRecord"

    const-string/jumbo v4, "Error talking to AudioService when handling full submix volume"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1594
    const-string/jumbo v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1598
    const-string/jumbo v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    return-void
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private final native native_get_buffer_size_in_frames()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BIIZ)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;IZ)I
.end method

.method private final native native_read_in_float_array([FIIZ)I
.end method

.method private final native native_read_in_short_array([SIIZ)I
.end method

.method private final native native_release()V
.end method

.method private final native native_setInputDevice(I)Z
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIIII[ILjava/lang/String;)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "audiorecord_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1524
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiorecord_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 1525
    .local v1, "recorder":Landroid/media/AudioRecord;
    if-nez v1, :cond_0

    .line 1526
    return-void

    .line 1529
    :cond_0
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_1

    .line 1530
    invoke-direct {v1}, Landroid/media/AudioRecord;->broadcastRoutingChange()V

    .line 1531
    return-void

    .line 1534
    :cond_1
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_2

    .line 1536
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1537
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1522
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1301
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    .end local p2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 1302
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1303
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1304
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_enableDeviceCallback()V

    .line 1306
    :cond_2
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 1307
    new-instance v2, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    .line 1308
    if-eqz p2, :cond_3

    .line 1307
    .end local p2    # "handler":Landroid/os/Handler;
    :goto_1
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1306
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    .line 1308
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_3
    :try_start_1
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 715
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 713
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .prologue
    .line 817
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_buffer_size_in_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    .line 764
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 765
    iget v2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 764
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 766
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 764
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 767
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    if-eqz v1, :cond_0

    .line 768
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 770
    :cond_0
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 771
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 773
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 824
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .prologue
    .line 1444
    monitor-enter p0

    .line 1445
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecordingState()I
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_0
    iget v1, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 801
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1267
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getRoutedDeviceId()I

    move-result v0

    .line 1268
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    .line 1269
    return-object v4

    .line 1272
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 1273
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1274
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 1275
    aget-object v3, v1, v2

    return-object v3

    .line 1273
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1278
    :cond_2
    return-object v4
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    .prologue
    .line 1146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "readMode"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1172
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v2, v0, :cond_0

    .line 1173
    const/4 v0, -0x3

    return v0

    .line 1176
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    .line 1177
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    return v3

    .line 1181
    :cond_1
    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    .line 1182
    :cond_2
    return v3

    .line 1185
    :cond_3
    if-nez p3, :cond_4

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;IZ)I

    move-result v0

    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 989
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    return v0
.end method

.method public read([BIII)I
    .locals 5
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1011
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1012
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1015
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_2

    .line 1016
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return v4

    .line 1020
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 1023
    :cond_3
    return v4

    .line 1020
    :cond_4
    if-ltz p3, :cond_3

    .line 1021
    add-int v2, p2, p3

    if-ltz v2, :cond_3

    .line 1022
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_3

    .line 1027
    if-nez p4, :cond_5

    .line 1026
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_byte_array([BIIZ)I

    move-result v0

    return v0

    :cond_5
    move v0, v1

    .line 1027
    goto :goto_0
.end method

.method public read([FIII)I
    .locals 6
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v1, 0x0

    .line 1103
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v2, :cond_0

    .line 1104
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return v4

    .line 1108
    :cond_0
    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 1109
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return v4

    .line 1113
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_2

    .line 1114
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return v5

    .line 1118
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 1121
    :cond_3
    return v5

    .line 1118
    :cond_4
    if-ltz p3, :cond_3

    .line 1119
    add-int v2, p2, p3

    if-ltz v2, :cond_3

    .line 1120
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_3

    .line 1125
    if-nez p4, :cond_5

    .line 1124
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_float_array([FIIZ)I

    move-result v0

    return v0

    :cond_5
    move v0, v1

    .line 1125
    goto :goto_0
.end method

.method public read([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 1043
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v0

    return v0
.end method

.method public read([SIII)I
    .locals 5
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "readMode"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1065
    iget v2, p0, Landroid/media/AudioRecord;->mState:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1066
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1069
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_2

    .line 1070
    const-string/jumbo v0, "android.media.AudioRecord"

    const-string/jumbo v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return v4

    .line 1074
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 1077
    :cond_3
    return v4

    .line 1074
    :cond_4
    if-ltz p3, :cond_3

    .line 1075
    add-int v2, p2, p3

    if-ltz v2, :cond_3

    .line 1076
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_3

    .line 1081
    if-nez p4, :cond_5

    .line 1080
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->native_read_in_short_array([SIIZ)I

    move-result v0

    return v0

    :cond_5
    move v0, v1

    .line 1081
    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 703
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 708
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    .line 701
    return-void

    .line 704
    :catch_0
    move-exception v0

    .local v0, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;

    .prologue
    .line 1319
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1320
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_disableDeviceCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1318
    return-void

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 1238
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 1239
    const/4 v0, -0x3

    return v0

    .line 1241
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 1404
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 1405
    const/4 v0, -0x3

    return v0

    .line 1407
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .prologue
    .line 1425
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1429
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1430
    .local v0, "preferredDeviceId":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setInputDevice(I)Z

    move-result v1

    .line 1431
    .local v1, "status":Z
    if-eqz v1, :cond_1

    .line 1432
    monitor-enter p0

    .line 1433
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1436
    :cond_1
    return v1

    .line 1426
    .end local v0    # "preferredDeviceId":I
    .end local v1    # "status":Z
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 1429
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "preferredDeviceId":I
    goto :goto_0

    .line 1432
    .restart local v1    # "status":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .prologue
    .line 1197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 1196
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1210
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1212
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 1214
    if-eqz p1, :cond_1

    .line 1215
    if-eqz p2, :cond_0

    .line 1216
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 1209
    return-void

    .line 1219
    :cond_0
    :try_start_1
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1210
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1222
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 904
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 905
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 911
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 912
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 913
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 903
    return-void

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 3
    .param p1, "syncEvent"    # Landroid/media/MediaSyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 927
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 934
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 935
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 936
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 926
    return-void

    .line 933
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 947
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 948
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 953
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 954
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 955
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 946
    return-void

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
