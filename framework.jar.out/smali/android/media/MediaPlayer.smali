.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TrackInfo;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$OnDurationUpdateListener;,
        Landroid/media/MediaPlayer$1;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_DURATION_UPDATE:I = 0x12c

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_AUDIO_NOT_SUPPORTED:I = 0x35e

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_PAUSE_COMPLETED:I = 0x35a

.field public static final MEDIA_INFO_PLAY_COMPLETED:I = 0x35b

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_NOT_SUPPORTED:I = 0x35c

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_META_DATA:I = 0xca

.field public static final MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MEDIA_MIMETYPE_TEXT_IDX:Ljava/lang/String; = "application/x-subtitle-idx"

.field public static final MEDIA_MIMETYPE_TEXT_SUB:Ljava/lang/String; = "application/x-subtitle-sub"

.field public static final MEDIA_MIMETYPE_TEXT_SUBASS:Ljava/lang/String; = "application/x-subtitle-ass"

.field public static final MEDIA_MIMETYPE_TEXT_SUBMPL:Ljava/lang/String; = "application/x-subtitle-mpl"

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_SUBSMI:Ljava/lang/String; = "application/x-subtitle-smi"

.field public static final MEDIA_MIMETYPE_TEXT_SUBSSA:Ljava/lang/String; = "application/x-subtitle-ssa"

.field public static final MEDIA_MIMETYPE_TEXT_SUBTXT:Ljava/lang/String; = "application/x-subtitle-txt"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PAUSE_COMPLETE:I = 0x258

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PLAY_COMPLETE:I = 0x259

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field public static final PLAYBACK_RATE_AUDIO_MODE_DEFAULT:I = 0x0

.field public static final PLAYBACK_RATE_AUDIO_MODE_RESAMPLE:I = 0x2

.field public static final PLAYBACK_RATE_AUDIO_MODE_STRETCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mBypassInterruptionPolicy:Z

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mInbandTrackIndices:Ljava/util/BitSet;

.field private mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnDurationUpdateListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private mUsage:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object v0
.end method

.method static synthetic -get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    return-object v0
.end method

.method static synthetic -get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic -get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic -get14(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get15(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object v0
.end method

.method static synthetic -get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic -get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDurationUpdateListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnDurationUpdateListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

    return-object v0
.end method

.method static synthetic -get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic -get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic -get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic -get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .param p1, "awake"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 613
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 614
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 577
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 632
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 633
    iput v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 2184
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    .line 2185
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    .line 2365
    iput v4, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2368
    new-instance v2, Landroid/media/MediaPlayer$1;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 646
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 647
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 654
    :goto_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 655
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    .line 656
    const-string/jumbo v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 657
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 662
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 643
    return-void

    .line 648
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 649
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 651
    :cond_1
    iput-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setAudioStreamType(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2284
    const-string/jumbo v0, "application/x-subrip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2285
    return v1

    .line 2289
    :cond_0
    const-string/jumbo v0, "ro.mtk_subtitle_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2290
    const-string/jumbo v0, "application/x-subtitle-ass"

    if-ne p0, v0, :cond_1

    .line 2291
    return v1

    .line 2293
    :cond_1
    const-string/jumbo v0, "application/x-subtitle-ssa"

    if-ne p0, v0, :cond_2

    .line 2294
    return v1

    .line 2296
    :cond_2
    const-string/jumbo v0, "application/x-subtitle-txt"

    if-ne p0, v0, :cond_3

    .line 2297
    return v1

    .line 2299
    :cond_3
    const-string/jumbo v0, "application/x-subtitle-mpl"

    if-ne p0, v0, :cond_4

    .line 2300
    return v1

    .line 2302
    :cond_4
    const-string/jumbo v0, "application/x-subtitle-smi"

    if-ne p0, v0, :cond_5

    .line 2303
    return v1

    .line 2305
    :cond_5
    const-string/jumbo v0, "application/x-subtitle-sub"

    if-ne p0, v0, :cond_6

    .line 2306
    return v1

    .line 2308
    :cond_6
    const-string/jumbo v0, "application/x-subtitle-idx"

    if-ne p0, v0, :cond_7

    .line 2309
    return v1

    .line 2314
    :cond_7
    return v2
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    const/4 v1, 0x0

    .line 929
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 930
    .local v0, "s":I
    if-lez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .prologue
    const/4 v11, 0x0

    .line 947
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 948
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v7, :cond_0

    return-object v11

    .line 950
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 952
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz p2, :cond_1

    move-object v6, p2

    .line 954
    .local v6, "aa":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 955
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 957
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 958
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 959
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 960
    return-object v0

    .line 953
    .end local v6    # "aa":Landroid/media/AudioAttributes;
    :cond_1
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .restart local v6    # "aa":Landroid/media/AudioAttributes;
    goto :goto_0

    .line 967
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v6    # "aa":Landroid/media/AudioAttributes;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v10

    .line 968
    .local v10, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v1, "MediaPlayer"

    const-string/jumbo v2, "create failed:"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    .end local v10    # "ex":Ljava/lang/SecurityException;
    :goto_1
    return-object v11

    .line 964
    :catch_1
    move-exception v9

    .line 965
    .local v9, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "MediaPlayer"

    const-string/jumbo v2, "create failed:"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 961
    .end local v9    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 962
    .local v8, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "MediaPlayer"

    const-string/jumbo v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 846
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 866
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 867
    .local v0, "s":I
    if-lez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p4, "audioSessionId"    # I

    .prologue
    const/4 v7, 0x0

    .line 885
    :try_start_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 886
    .local v4, "mp":Landroid/media/MediaPlayer;
    if-eqz p3, :cond_1

    move-object v0, p3

    .line 888
    .local v0, "aa":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {v4, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 889
    invoke-virtual {v4, p4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 890
    invoke-virtual {v4, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 891
    if-eqz p2, :cond_0

    .line 892
    invoke-virtual {v4, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 894
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 895
    return-object v4

    .line 887
    .end local v0    # "aa":Landroid/media/AudioAttributes;
    :cond_1
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "aa":Landroid/media/AudioAttributes;
    goto :goto_0

    .line 902
    .end local v0    # "aa":Landroid/media/AudioAttributes;
    .end local v4    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v3

    .line 903
    .local v3, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v5, "MediaPlayer"

    const-string/jumbo v6, "create failed:"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :goto_1
    return-object v7

    .line 899
    :catch_1
    move-exception v2

    .line 900
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "MediaPlayer"

    const-string/jumbo v6, "create failed:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 896
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 897
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v5, "MediaPlayer"

    const-string/jumbo v6, "create failed:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getAudioStreamType()I
    .locals 2

    .prologue
    .line 1247
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1248
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1250
    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return v0
.end method

.method private getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2216
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2218
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2219
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2220
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2221
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2222
    return-object v2

    .line 2223
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    .line 2224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2223
    throw v3
.end method

.method private native getParameter(ILandroid/os/Parcel;)V
.end method

.method private isRestricted()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1232
    iget-boolean v4, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    if-eqz v4, :cond_0

    .line 1233
    return v3

    .line 1236
    :cond_0
    :try_start_0
    iget v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v2, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 1238
    .local v2, "usage":I
    :goto_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 1239
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1238
    const/16 v7, 0x1c

    invoke-interface {v4, v7, v2, v5, v6}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 1240
    .local v1, "mode":I
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 1237
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :cond_2
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getAudioStreamType()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2    # "usage":I
    goto :goto_0

    .line 1241
    .end local v2    # "usage":I
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 3744
    if-eq p1, v0, :cond_0

    .line 3745
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3744
    :cond_0
    :goto_0
    return v0

    .line 3745
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private populateInbandTracks()V
    .locals 7

    .prologue
    .line 2490
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    .line 2491
    .local v2, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    .line 2492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 2493
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2492
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2496
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    .line 2500
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 2501
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 2502
    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v5

    .line 2501
    invoke-virtual {v3, v5}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v1

    .line 2503
    .local v1, "track":Landroid/media/SubtitleTrack;
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2491
    .end local v1    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2505
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit v4

    .line 2489
    return-void
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3232
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 3233
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-nez v1, :cond_0

    .line 3234
    const-string/jumbo v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postEventFromNative: Null mp! what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    return-void

    .line 3238
    :cond_0
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 3240
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 3242
    :cond_1
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_2

    .line 3243
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3244
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3230
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private scanInternalSubtitleTracks()V
    .locals 2

    .prologue
    .line 2477
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_0

    .line 2478
    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "setSubtitleAnchor in MediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 2482
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 2484
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_1

    .line 2485
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 2476
    :cond_1
    return-void
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2912
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2914
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2915
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2916
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2917
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2910
    return-void

    .line 2915
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 2918
    :catchall_0
    move-exception v2

    .line 2919
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2918
    throw v2
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 2862
    invoke-direct {p0}, Landroid/media/MediaPlayer;->populateInbandTracks()V

    .line 2864
    const/4 v1, 0x0

    .line 2866
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    check-cast v1, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2872
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/SubtitleTrack;

    .line 2873
    .local v3, "track":Landroid/media/SubtitleTrack;
    if-nez v3, :cond_0

    .line 2875
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 2876
    return-void

    .line 2867
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catch_0
    move-exception v0

    .line 2869
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return-void

    .line 2879
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .restart local v3    # "track":Landroid/media/SubtitleTrack;
    :cond_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v5, :cond_1

    .line 2880
    return-void

    .line 2883
    :cond_1
    if-nez p2, :cond_3

    .line 2885
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v5}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v5

    if-ne v5, v3, :cond_2

    .line 2886
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v5, v6}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 2890
    :goto_0
    return-void

    .line 2888
    :cond_2
    const-string/jumbo v5, "MediaPlayer"

    const-string/jumbo v6, "trying to deselect track that was not selected"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2894
    :cond_3
    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 2895
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v4

    .line 2896
    .local v4, "ttIndex":I
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v6

    .line 2897
    if-ltz v4, :cond_4

    :try_start_1
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2898
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2899
    .local v2, "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_4

    .line 2901
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "p2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_4
    monitor-exit v6

    .line 2906
    .end local v4    # "ttIndex":I
    :cond_5
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v5, v3}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 2860
    return-void

    .line 2896
    .restart local v4    # "ttIndex":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1099
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1100
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1101
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "file"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1102
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1113
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1115
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1116
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1117
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1118
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1098
    return-void

    .line 1103
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    if-eqz v3, :cond_0

    .line 1106
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1105
    invoke-direct {p0, v5, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1110
    return-void

    .line 1120
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "setDataSource failed."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private native setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 2334
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_0

    .line 2335
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "SetSubtitleAnchorThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2336
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2337
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2338
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$2;

    invoke-direct {v3, p0, v2}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2357
    :try_start_1
    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "thread":Landroid/os/HandlerThread;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 2333
    return-void

    .line 2358
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "thread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v0

    .line 2359
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 2360
    const-string/jumbo v3, "MediaPlayer"

    const-string/jumbo v4, "failed to join SetSubtitleAnchorThread"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1338
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1340
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1344
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1345
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1336
    return-void

    .line 1339
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1349
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1348
    :cond_0
    return-void

    .line 1350
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2423
    const-string/jumbo v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addSubtitleSource: MediaFormat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    move-object v1, p1

    .line 2425
    .local v1, "fIs":Ljava/io/InputStream;
    move-object v0, p2

    .line 2429
    .local v0, "fFormat":Landroid/media/MediaFormat;
    iget-object v5, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v5

    .line 2430
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 2434
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "SubtitleReadThread"

    .line 2435
    const/16 v5, 0x9

    .line 2434
    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2436
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 2437
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2438
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Landroid/media/MediaPlayer$3;

    invoke-direct {v4, p0, v1, v0, v3}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2421
    return-void

    .line 2429
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2563
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 2564
    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string/jumbo v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2565
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    return-void

    .line 2569
    :cond_1
    const/4 v2, 0x0

    .line 2571
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2572
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v5, "r"

    invoke-virtual {v3, p2, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 2573
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v2, :cond_3

    .line 2574
    const-string/jumbo v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTimedTextSource: Null fd! uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2584
    if-eqz v2, :cond_2

    .line 2585
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 2575
    :cond_2
    return-void

    .line 2577
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2584
    if-eqz v2, :cond_4

    .line 2585
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 2578
    :cond_4
    return-void

    .line 2581
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 2582
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTimedTextSource: IOException! uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2584
    if-eqz v2, :cond_5

    .line 2585
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 2562
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_5
    :goto_0
    return-void

    .line 2579
    :catch_1
    move-exception v1

    .line 2580
    .local v1, "ex":Ljava/lang/SecurityException;
    :try_start_3
    const-string/jumbo v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addTimedTextSource: SecurityException! uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2584
    if-eqz v2, :cond_5

    .line 2585
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2583
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    .line 2584
    if-eqz v2, :cond_6

    .line 2585
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 2583
    :cond_6
    throw v5
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2632
    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2633
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Illegal mimeType for timed text source: "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2638
    :cond_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 2645
    .local v15, "fd2":Ljava/io/FileDescriptor;
    const-string/jumbo v3, "ro.mtk_subtitle_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2646
    const-string/jumbo v3, "application/x-subtitle-sub"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2645
    if-eqz v3, :cond_1

    .line 2647
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v17, v0

    .line 2649
    .local v17, "header":[B
    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v15, v0, v3, v4}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    .line 2650
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_1

    const/4 v3, 0x1

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_1

    .line 2651
    const/4 v3, 0x2

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x3

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xba

    if-ne v3, v4, :cond_1

    .line 2652
    const-string/jumbo v3, "MediaPlayer"

    const-string/jumbo v4, "Bitmap sub file, return directly"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2653
    return-void

    .line 2639
    .end local v15    # "fd2":Ljava/io/FileDescriptor;
    .end local v17    # "header":[B
    :catch_0
    move-exception v13

    .line 2640
    .local v13, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v3, "MediaPlayer"

    invoke-virtual {v13}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2641
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2655
    .end local v13    # "ex":Landroid/system/ErrnoException;
    .restart local v15    # "fd2":Ljava/io/FileDescriptor;
    .restart local v17    # "header":[B
    :catch_1
    move-exception v12

    .line 2656
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MediaPlayer"

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2657
    return-void

    .line 2662
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "header":[B
    :cond_1
    new-instance v14, Landroid/media/MediaFormat;

    invoke-direct {v14}, Landroid/media/MediaFormat;-><init>()V

    .line 2663
    .local v14, "fFormat":Landroid/media/MediaFormat;
    const-string/jumbo v3, "mime"

    move-object/from16 v0, p6

    invoke-virtual {v14, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    const-string/jumbo v3, "is-timed-text"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2667
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_2

    .line 2668
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor()V

    .line 2671
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v14}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2673
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 2674
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SRTRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2676
    const-string/jumbo v3, "ro.mtk_subtitle_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2677
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/ASSRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/ASSRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2678
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/MPLRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/MPLRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2679
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SSARenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/SSARenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2680
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SUBRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/SUBRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2681
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SMIRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/SMIRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2682
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/TXTRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/TXTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2683
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/VobSubRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/VobSubRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2687
    .end local v2    # "context":Landroid/content/Context;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v14}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v10

    .line 2690
    .local v10, "track":Landroid/media/SubtitleTrack;
    const-string/jumbo v3, "ro.mtk_subtitle_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2691
    const-string/jumbo v3, "application/x-subtitle-idx"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2690
    if-eqz v3, :cond_4

    .line 2691
    instance-of v3, v10, Landroid/media/VobSubTrack;

    .line 2690
    if-eqz v3, :cond_4

    move-object v3, v10

    .line 2692
    check-cast v3, Landroid/media/VobSubTrack;

    invoke-virtual {v3, v15}, Landroid/media/VobSubTrack;->getSubPathFromFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2696
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    .line 2697
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 2700
    move-object v5, v15

    .line 2701
    .local v5, "fd3":Ljava/io/FileDescriptor;
    move-wide/from16 v6, p2

    .line 2702
    .local v6, "offset2":J
    move-wide/from16 v8, p4

    .line 2703
    .local v8, "length2":J
    new-instance v11, Landroid/os/HandlerThread;

    .line 2704
    const-string/jumbo v3, "TimedTextReadThread"

    .line 2705
    const/16 v4, 0x9

    .line 2703
    invoke-direct {v11, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2706
    .local v11, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 2707
    new-instance v16, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2708
    .local v16, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$4;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2631
    return-void

    .line 2696
    .end local v5    # "fd3":Ljava/io/FileDescriptor;
    .end local v6    # "offset2":J
    .end local v8    # "length2":J
    .end local v11    # "thread":Landroid/os/HandlerThread;
    .end local v16    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2609
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 2607
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2529
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2531
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2534
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2535
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2536
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2537
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2538
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2539
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 2528
    return-void

    .line 2542
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public native attachAuxEffect(I)V
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2856
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2855
    return-void
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .locals 4
    .param p1, "rate"    # F
    .param p2, "audioMode"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1451
    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    .line 1452
    .local v1, "params":Landroid/media/PlaybackParams;
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 1453
    packed-switch p2, :pswitch_data_0

    .line 1465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio playback mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1466
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1455
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 1468
    :goto_0
    return-object v1

    .line 1458
    :pswitch_1
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v2

    .line 1459
    const/4 v3, 0x2

    .line 1458
    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 1462
    :pswitch_2
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 1453
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2980
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public getIntParameter(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1973
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1974
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1975
    .local v1, "ret":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    return v1
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 1

    .prologue
    .line 3009
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-nez v0, :cond_0

    .line 3010
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 3012
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .param p1, "update_only"    # Z
    .param p2, "apply_filter"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1589
    .local v1, "reply":Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1591
    .local v0, "data":Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1593
    return-object v3

    .line 1598
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1599
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1600
    return-object v3

    .line 1602
    :cond_1
    return-object v0
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1947
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1948
    return-object v0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getSelectedTrack(I)I
    .locals 8
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2770
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v6, :cond_3

    .line 2771
    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    .line 2772
    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    .line 2773
    :cond_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v6}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v5

    .line 2774
    .local v5, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v5, :cond_3

    .line 2775
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7

    .line 2776
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 2777
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2778
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v6, v5, :cond_1

    invoke-virtual {v5}, Landroid/media/SubtitleTrack;->getTrackType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-ne v6, p1, :cond_1

    monitor-exit v7

    .line 2779
    return v0

    .line 2776
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_2
    monitor-exit v7

    .line 2786
    .end local v0    # "i":I
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2787
    .local v4, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2789
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_1
    const-string/jumbo v6, "android.media.IMediaPlayer"

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2790
    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2791
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2792
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2793
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2794
    .local v1, "inbandTrackIndex":I
    iget-object v7, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2795
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    :try_start_2
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 2796
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2797
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_4

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    if-ne v6, v1, :cond_4

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2804
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2798
    return v0

    .line 2775
    .end local v1    # "inbandTrackIndex":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local v4    # "request":Landroid/os/Parcel;
    .restart local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2795
    .end local v5    # "subtitleTrack":Landroid/media/SubtitleTrack;
    .restart local v1    # "inbandTrackIndex":I
    .restart local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .restart local v3    # "reply":Landroid/os/Parcel;
    .restart local v4    # "request":Landroid/os/Parcel;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2802
    const/4 v6, -0x1

    .line 2804
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2802
    return v6

    .line 2794
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2803
    .end local v0    # "i":I
    .end local v1    # "inbandTrackIndex":I
    :catchall_2
    move-exception v6

    .line 2804
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2805
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2803
    throw v6
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1958
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1959
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1960
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1961
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1962
    return-object v1
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 7

    .prologue
    .line 1546
    :try_start_0
    new-instance v1, Landroid/media/MediaTimestamp;

    .line 1547
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 1548
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1549
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v6

    .line 1546
    :goto_0
    invoke-direct/range {v1 .. v6}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1549
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2196
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v4

    .line 2198
    .local v4, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v6, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v6

    .line 2199
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v0, v5, [Landroid/media/MediaPlayer$TrackInfo;

    .line 2200
    .local v0, "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 2201
    iget-object v5, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2202
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 2204
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    aput-object v5, v0, v1

    .line 2200
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2206
    :cond_0
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/SubtitleTrack;

    .line 2207
    .local v3, "track":Landroid/media/SubtitleTrack;
    new-instance v5, Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v7

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v5, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2198
    .end local v0    # "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v0    # "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    .restart local v1    # "i":I
    :cond_1
    monitor-exit v6

    .line 2210
    return-object v0
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 714
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 715
    .local v0, "retcode":I
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 716
    if-eqz v0, :cond_0

    .line 717
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 713
    :cond_0
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 695
    .local v0, "parcel":Landroid/os/Parcel;
    const-string/jumbo v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 696
    return-object v0
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 6
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .prologue
    const/4 v5, 0x0

    .line 2387
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v3, :cond_0

    .line 2389
    :try_start_0
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2392
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2394
    :cond_0
    invoke-virtual {p0, v5}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    .line 2395
    if-nez p1, :cond_1

    .line 2396
    return-void

    .line 2399
    :cond_1
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    .line 2400
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "p$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2401
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p1, :cond_2

    .line 2403
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/media/SubtitleTrack;>;"
    :cond_3
    monitor-exit v4

    .line 2409
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v3, :cond_4

    .line 2411
    :try_start_2
    iget v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2414
    :goto_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    .line 2386
    :cond_4
    return-void

    .line 2399
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2412
    .restart local v2    # "p$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 2390
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "p$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1276
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1274
    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_prepare()V

    .line 1184
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    .line 1182
    return-void
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1691
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1692
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1693
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1694
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1695
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1696
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1697
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1698
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1699
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1700
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1702
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDurationUpdateListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

    .line 1704
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1706
    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1708
    :cond_0
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 1709
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1690
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1720
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 1721
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v4

    .line 1722
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "is$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1725
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1728
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 1730
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v3, :cond_1

    .line 1731
    iget-object v3, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3}, Landroid/media/SubtitleController;->reset()V

    .line 1733
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v3, :cond_2

    .line 1734
    iget-object v3, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v3}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1735
    iput-object v5, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1738
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1739
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1741
    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v3, :cond_3

    .line 1742
    iget-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1745
    :cond_3
    iget-object v4, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v4

    .line 1746
    :try_start_3
    iget-object v3, p0, Landroid/media/MediaPlayer;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 1747
    iget-object v3, p0, Landroid/media/MediaPlayer;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    .line 1719
    return-void

    .line 1721
    .end local v2    # "is$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1745
    .restart local v2    # "is$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2838
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2837
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1788
    if-nez p1, :cond_0

    .line 1789
    const-string/jumbo v0, "Cannot set AudioAttributes to null"

    .line 1790
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Cannot set AudioAttributes to null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1792
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    iput v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 1793
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mBypassInterruptionPolicy:Z

    .line 1795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1796
    .local v1, "pattributes":Landroid/os/Parcel;
    invoke-virtual {p1, v1, v3}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1797
    const/16 v2, 0x578

    invoke-direct {p0, v2, v1}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    .line 1798
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1787
    return-void
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    .line 1764
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1762
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .param p1, "level"    # F

    .prologue
    .line 1992
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    return-void

    .line 1995
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    .line 1991
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 983
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 982
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1000
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 1002
    .local v11, "scheme":Ljava/lang/String;
    if-eqz v11, :cond_0

    const-string/jumbo v0, "file"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1004
    return-void

    .line 1005
    :cond_1
    const-string/jumbo v0, "content"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1006
    const-string/jumbo v0, "settings"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1005
    if-eqz v0, :cond_2

    .line 1009
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 1008
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 1010
    if-nez p2, :cond_2

    .line 1011
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "Failed to resolve default ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_2
    const/4 v8, 0x0

    .line 1017
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1018
    .local v10, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v10, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 1019
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_4

    .line 1020
    const-string/jumbo v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource: Null fd! uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    if-eqz v8, :cond_3

    .line 1038
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1021
    :cond_3
    return-void

    .line 1026
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 1027
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1037
    :goto_0
    if-eqz v8, :cond_5

    .line 1038
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1031
    :cond_5
    return-void

    .line 1029
    :cond_6
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1032
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 1033
    .local v7, "ex":Ljava/lang/SecurityException;
    :try_start_3
    const-string/jumbo v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource: SecurityException! uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1037
    if-eqz v8, :cond_7

    .line 1038
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1041
    .end local v7    # "ex":Ljava/lang/SecurityException;
    :cond_7
    :goto_1
    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string/jumbo v0, "ro.mtk_bsp_package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1043
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 999
    :goto_2
    return-void

    .line 1034
    :catch_1
    move-exception v6

    .line 1035
    .local v6, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource: IOException! uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1037
    if-eqz v8, :cond_7

    .line 1038
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_1

    .line 1036
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 1037
    if-eqz v8, :cond_8

    .line 1038
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1036
    :cond_8
    throw v0

    .line 1045
    :cond_9
    const-class v0, Lcom/mediatek/common/media/IOmaSettingHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/common/media/IOmaSettingHelper;

    .line 1047
    .local v9, "helper":Lcom/mediatek/common/media/IOmaSettingHelper;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, p1, p2, p3}, Lcom/mediatek/common/media/IOmaSettingHelper;->setSettingHeader(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 0
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setDataSource(Landroid/media/MediaDataSource;)V

    .line 1166
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1138
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1136
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1153
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1152
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1066
    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1065
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1080
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1081
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1083
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1084
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1085
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1087
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1088
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1089
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    .line 1090
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v2

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1094
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 734
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 736
    if-eqz p1, :cond_0

    .line 737
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 741
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 742
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 733
    return-void

    .line 739
    :cond_0
    const/4 v0, 0x0

    .local v0, "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1630
    .local p1, "allow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "block":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    .line 1636
    .local v1, "request":Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1638
    .local v0, "capacity":I
    invoke-virtual {v1}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 1639
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1642
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1644
    .local v2, "t":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1646
    .end local v2    # "t":Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1648
    .restart local v2    # "t":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1650
    .end local v2    # "t":Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 3331
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 3329
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 3297
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 3295
    return-void
.end method

.method public setOnDurationUpdateListener(Landroid/media/MediaPlayer$OnDurationUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnDurationUpdateListener;

    .prologue
    .line 4178
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnDurationUpdateListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

    .line 4177
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 3603
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 3601
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 3735
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 3733
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 3270
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 3268
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 3358
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 3356
    return-void
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .prologue
    .line 3444
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 3442
    return-void
.end method

.method public setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .prologue
    .line 3484
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedMetaDataAvailableListener:Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    .line 3482
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedTextListener;

    .prologue
    .line 3419
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 3417
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 3390
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 3388
    return-void
.end method

.method public setParameter(II)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 1924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1925
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1926
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1927
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1928
    return v1
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1910
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1911
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1912
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1913
    return v1
.end method

.method public native setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .locals 6
    .param p1, "endpoint"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2963
    const/4 v0, 0x0

    .line 2964
    .local v0, "addrString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2966
    .local v1, "port":I
    if-eqz p1, :cond_0

    .line 2967
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 2968
    .local v0, "addrString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 2971
    .end local v0    # "addrString":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    .line 2972
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 2973
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2961
    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 1327
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1328
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1329
    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1332
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1326
    :cond_1
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/SubtitleController;
    .param p2, "anchor"    # Landroid/media/SubtitleController$Anchor;

    .prologue
    .line 2324
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 2325
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2322
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v2, 0x0

    .line 764
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 765
    const-string/jumbo v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    iput-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 768
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 769
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 763
    return-void
.end method

.method public native setSyncParams(Landroid/media/SyncParams;)V
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 813
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 817
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 818
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 820
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 812
    return-void

    .line 824
    :catchall_0
    move-exception v3

    .line 825
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 826
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    throw v3
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .prologue
    .line 1846
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1845
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 1833
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    return-void

    .line 1836
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    .line 1832
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 1299
    const/4 v1, 0x0

    .line 1300
    .local v1, "washeld":Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1301
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1302
    const/4 v1, 0x1

    .line 1303
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1305
    :cond_0
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1308
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1309
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1310
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1311
    if-eqz v1, :cond_2

    .line 1312
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1298
    :cond_2
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1210
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    invoke-direct {p0, v1, v1}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    .line 1213
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1214
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1209
    return-void
.end method

.method public startWithoutWakelock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1222
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-direct {p0, v1, v1}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    .line 1226
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1221
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1263
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1261
    return-void
.end method
