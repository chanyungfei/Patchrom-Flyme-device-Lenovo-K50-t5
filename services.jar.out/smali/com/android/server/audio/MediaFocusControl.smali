.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;,
        Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;,
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;,
        Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;,
        Lcom/android/server/audio/MediaFocusControl$1;,
        Lcom/android/server/audio/MediaFocusControl$2;
    }
.end annotation


# static fields
.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x6

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x7

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x8

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0x9

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xa

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final MSG_UNREGISTER_MEDIABUTTONINTENT:I = 0xb

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private final mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

.field private mNotifyFocusOwnerOnDuck:Z

.field private final mPRStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/PlayerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/MediaFocusControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V
    .locals 0
    .param p1, "prse"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const-string/jumbo v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 407
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Lcom/android/server/audio/AudioService$VolumeController;
    .param p4, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    .line 411
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 469
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 636
    iput-boolean v6, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 644
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 998
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    .line 1149
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 1167
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    .line 1173
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1178
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1192
    iput v5, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1218
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    .line 1224
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1825
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    .line 101
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    invoke-direct {v3, p0, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    .line 102
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 103
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    iput-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 105
    iput-object p4, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 107
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 108
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "handleMediaEvent"

    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 109
    const/4 v3, 0x3

    invoke-virtual {p4, v3}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    .line 110
    .local v0, "maxMusicLevel":I
    new-instance v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0, v0}, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;-><init>(III)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    .line 114
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 113
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 115
    .local v2, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 117
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 119
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 118
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 120
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    .line 122
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mHasRemotePlayback:Z

    .line 123
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 125
    invoke-static {p0}, Lcom/android/server/audio/PlayerRecord;->setMediaFocusControl(Lcom/android/server/audio/MediaFocusControl;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemote()V

    .line 100
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x0

    return v0

    .line 570
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .locals 10
    .param p1, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    const/4 v9, 0x0

    .line 179
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 180
    const-string/jumbo v8, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 179
    invoke-virtual {v5, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 182
    const/4 v5, 0x1

    return v5

    .line 186
    :cond_0
    if-eqz p1, :cond_3

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 190
    .local v6, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 192
    .local v2, "currentUser":I
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 193
    const-string/jumbo v8, "enabled_notification_listeners"

    .line 191
    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 196
    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 199
    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 200
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    const/4 v5, 0x2

    .line 212
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    return v5

    .line 197
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    .end local v2    # "currentUser":I
    .end local v3    # "enabledNotifListeners":Ljava/lang/String;
    .end local v6    # "ident":J
    :cond_3
    return v9

    .line 211
    .restart local v6    # "ident":J
    :catchall_0
    move-exception v5

    .line 212
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw v5
.end method

.method private checkUpdateRemoteControlDisplay_syncPrs(I)V
    .locals 1
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1599
    return-void

    .line 1606
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->updateRemoteControlDisplay_syncPrs(I)V

    .line 1594
    return-void
.end method

.method private clearRemoteControlDisplay_syncPrs()V
    .locals 3

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1549
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1552
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1547
    return-void

    .line 1548
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 17
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 957
    if-eqz p2, :cond_0

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 960
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 961
    .local v5, "keyIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 963
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 966
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 967
    if-eqz p2, :cond_1

    const/16 v4, 0x7bc

    .line 968
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    move-object/from16 v6, p0

    .line 966
    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v16

    .line 956
    return-void

    .line 967
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 969
    :catch_0
    move-exception v13

    .line 970
    .local v13, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error sending pending intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {v13}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 962
    .end local v13    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v2

    monitor-exit v16

    throw v2

    .line 976
    :cond_2
    if-eqz p2, :cond_3

    .line 977
    :try_start_3
    const-string/jumbo v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v14

    .line 981
    .local v14, "ident":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 982
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 983
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    .line 982
    const/4 v7, 0x0

    .line 983
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 981
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 985
    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 984
    :catchall_1
    move-exception v2

    .line 985
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 984
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 12
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 933
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 934
    .local v1, "keyIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 935
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    if-eqz p2, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 938
    const-string/jumbo v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 940
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 942
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 943
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 942
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    return-void

    .line 944
    :catchall_0
    move-exception v0

    .line 945
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 944
    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 476
    const-string/jumbo v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 479
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 477
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    monitor-exit v2

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n Notify on duck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1246
    const-string/jumbo v1, "\nRemote Control Client stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1248
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1249
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1247
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1252
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1253
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\nCurrent remote control generation ID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 1256
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v2

    .line 1257
    :try_start_4
    const-string/jumbo v1, "\nRemote Volume State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  has remote: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mHasRemotePlayback:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  is remote active: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  rccId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  volume handling: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1262
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v1, v1, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    if-nez v1, :cond_1

    .line 1263
    const-string/jumbo v1, "PLAYBACK_VOLUME_FIXED(0)"

    .line 1261
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  volume: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  volume steps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v2

    .line 1245
    return-void

    .line 1252
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1263
    :cond_1
    :try_start_6
    const-string/jumbo v1, "PLAYBACK_VOLUME_VARIABLE(1)"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 1256
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1274
    const-string/jumbo v2, "\nRemote Control Display list entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1276
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1277
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1278
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1279
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  IRCD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1280
    const-string/jumbo v4, "  -- w:"

    .line 1279
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1280
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    .line 1279
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1281
    const-string/jumbo v4, "  -- h:"

    .line 1279
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1281
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    .line 1279
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1282
    const-string/jumbo v4, "  -- wantsPosSync:"

    .line 1279
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1282
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get5(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v4

    .line 1279
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1283
    const-string/jumbo v4, "  -- "

    .line 1279
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1283
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "enabled"

    .line 1279
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1275
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1283
    .restart local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :try_start_1
    const-string/jumbo v2, "disabled"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    monitor-exit v3

    .line 1273
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1231
    const-string/jumbo v1, "\nRemote Control stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1232
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1234
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1232
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    monitor-exit v2

    .line 1230
    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    .prologue
    .line 1851
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1852
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1853
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1854
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1856
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1857
    :catch_0
    move-exception v0

    .line 1858
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "Error connecting RCD to client: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1848
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 903
    invoke-static {p1}, Lcom/android/server/audio/MediaFocusControl;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    const-string/jumbo v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void

    .line 908
    :cond_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 909
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 910
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 911
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 912
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 913
    return-void

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    .line 918
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 919
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 901
    :goto_0
    return-void

    .line 909
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 908
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 921
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1014
    const/4 v1, 0x1

    .line 1015
    .local v1, "voiceButtonAction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1016
    .local v0, "keyAction":I
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1017
    if-nez v0, :cond_2

    .line 1018
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1020
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    .line 1021
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 1040
    packed-switch v1, :pswitch_data_0

    .line 1009
    :goto_1
    :pswitch_0
    return-void

    .line 1022
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    .line 1023
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 1025
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 1026
    const/4 v1, 0x2

    goto :goto_0

    .line 1028
    :cond_2
    if-ne v0, v2, :cond_0

    .line 1029
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    .line 1031
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    .line 1032
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1033
    const/4 v1, 0x3

    goto :goto_0

    .line 1016
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1047
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/audio/MediaFocusControl;->startVoiceBasedInteractions(Z)V

    goto :goto_1

    .line 1051
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "enabledArray"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 307
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 309
    :cond_0
    return v3

    .line 311
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "compString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 313
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    const/4 v2, 0x1

    return v2

    .line 312
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_3
    return v3
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    const/4 v0, 0x1

    return v0

    .line 1397
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 1
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 574
    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static isPlaystateActive(I)Z
    .locals 1
    .param p0, "playState"    # I

    .prologue
    .line 2132
    packed-switch p0, :pswitch_data_0

    .line 2141
    const/4 v0, 0x0

    return v0

    .line 2139
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2132
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1067
    if-nez p0, :cond_0

    .line 1068
    const/4 v0, 0x0

    return v0

    .line 1070
    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1080
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    .line 1081
    const/4 v0, 0x1

    return v0

    .line 1083
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 447
    :cond_0
    return-void
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1470
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1471
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1473
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1474
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1473
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1466
    return-void

    .line 1470
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1469
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1518
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1519
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1520
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1525
    :try_start_2
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1526
    const/4 v5, 0x0

    .line 1525
    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1530
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    .line 1517
    return-void

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v4, "Current valid remote client is dead: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1533
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1535
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1536
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v4, "Dead display in onRcDisplayInitInfo()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1519
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v3

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1518
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V
    .locals 6
    .param p1, "prse"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "flags"    # I

    .prologue
    .line 1483
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1484
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1485
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1488
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1491
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1492
    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 1493
    const/4 v5, 0x0

    .line 1491
    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1498
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v2

    .line 1482
    return-void

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1484
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1483
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 0

    .prologue
    .line 2243
    return-void
.end method

.method private onReevaluateRemoteControlDisplays()V
    .locals 17

    .prologue
    .line 253
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 255
    .local v8, "currentUser":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 256
    const-string/jumbo v2, "enabled_notification_listeners"

    .line 254
    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, "enabledNotifListeners":Ljava/lang/String;
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 260
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    if-nez v13, :cond_1

    .line 265
    const/4 v12, 0x0

    .line 269
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 270
    .local v10, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 273
    .local v9, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v14

    .line 275
    .local v14, "wasEnabled":Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Lcom/android/server/audio/MediaFocusControl;->isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    move-result v1

    invoke-static {v9, v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 277
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eq v14, v1, :cond_0

    .line 280
    :try_start_2
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    .line 283
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    .line 282
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    .line 285
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    .line 287
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    .line 288
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    .line 289
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    .line 286
    const/16 v2, 0x9

    const/4 v3, 0x2

    .line 289
    const/4 v7, 0x0

    .line 286
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 291
    :catch_0
    move-exception v11

    .line 292
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v2, "Error en/disabling RCD: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 260
    .end local v9    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v14    # "wasEnabled":Z
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v16

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    :catchall_1
    move-exception v1

    monitor-exit v15

    throw v1

    .line 267
    :cond_1
    :try_start_5
    const-string/jumbo v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    .local v12, "enabledComponents":[Ljava/lang/String;
    goto :goto_0

    .end local v12    # "enabledComponents":[Ljava/lang/String;
    .restart local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_2
    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v15

    .line 250
    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 6
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 2068
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2073
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2074
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2075
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2076
    iput-object p2, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    monitor-exit v4

    .line 2067
    return-void

    .line 2073
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2080
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 2082
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_1
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v5, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2068
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    .locals 6
    .param p1, "rcc"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1832
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1833
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1834
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1836
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_0
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    .line 1837
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    .line 1836
    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 1838
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get5(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1839
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1841
    :catch_0
    move-exception v2

    .line 1842
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "Error connecting RCD to RCC in RCC registration"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1831
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 246
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .locals 2
    .param p1, "focusGain"    # I

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 464
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_0

    .line 460
    :cond_0
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .locals 5
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 587
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .line 588
    .local v1, "lastLockedFocusOwnerIndex":I
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 589
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    move v1, v0

    .line 588
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 595
    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    .line 596
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 595
    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 599
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const/4 v2, 0x1

    return v2

    .line 602
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 603
    const/4 v2, 0x2

    return v2
.end method

.method private pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 12
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1301
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1302
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    new-instance v9, Lcom/android/server/audio/PlayerRecord;

    invoke-direct {v9, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    const/4 v8, 0x1

    return v8

    .line 1304
    :cond_0
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v8, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1306
    const/4 v8, 0x0

    return v8

    .line 1308
    :cond_1
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1309
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    .line 1308
    const/16 v11, 0x1f

    invoke-virtual {v8, v11, v9, v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 1310
    const/4 v8, 0x0

    return v8

    .line 1312
    :cond_2
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 1313
    .local v4, "oldTopPrse":Lcom/android/server/audio/PlayerRecord;
    const/4 v7, 0x0

    .line 1314
    .local v7, "topChanged":Z
    const/4 v5, 0x0

    .line 1315
    .local v5, "prse":Lcom/android/server/audio/PlayerRecord;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v3

    .line 1316
    .local v3, "lastPlayingIndex":I
    const/4 v1, -0x1

    .line 1320
    .local v1, "inStackIndex":I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "index":I
    move-object v6, v5

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .local v6, "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_0
    if-ltz v2, :cond_5

    .line 1321
    :try_start_1
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1322
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .local v5, "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1323
    move v3, v2

    .line 1325
    :cond_3
    invoke-virtual {v5, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 1326
    move v1, v2

    .line 1320
    :cond_4
    add-int/lit8 v2, v2, -0x1

    move-object v6, v5

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_0

    .line 1330
    :cond_5
    const/4 v8, -0x1

    if-ne v1, v8, :cond_6

    .line 1332
    :try_start_3
    new-instance v5, Lcom/android/server/audio/PlayerRecord;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1335
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_4
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1363
    .end local v2    # "index":I
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_1
    return v7

    .line 1338
    .restart local v2    # "index":I
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_6
    :try_start_5
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_9

    .line 1339
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1341
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_6
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->removeElementAt(I)V

    .line 1342
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1344
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 1356
    .end local v2    # "index":I
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1358
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    const-string/jumbo v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Wrong index (inStack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " lastPlaying="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1359
    const-string/jumbo v10, " size="

    .line 1358
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1359
    iget-object v10, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v10

    .line 1358
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1360
    const-string/jumbo v10, " accessing media button stack"

    .line 1358
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1347
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2    # "index":I
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_7
    if-le v1, v3, :cond_8

    .line 1348
    :try_start_7
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1350
    :cond_8
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 1356
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v5, v6

    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_2

    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_9
    move-object v5, v6

    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_1
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1870
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1871
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1872
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1873
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1874
    const/4 v2, 0x1

    return v2

    .line 1877
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .locals 17
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 1896
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1897
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1898
    if-eqz p1, :cond_0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/MediaFocusControl;->rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v15

    .line 1899
    return-void

    .line 1901
    :cond_1
    :try_start_3
    new-instance v11, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    .line 1902
    .local v11, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    const/4 v4, 0x1

    invoke-static {v11, v4}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set3(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 1903
    move-object/from16 v0, p4

    invoke-static {v11, v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set2(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 1904
    invoke-virtual {v11}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->init()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    :try_start_4
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v15

    .line 1906
    return-void

    .line 1909
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1914
    .local v14, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1915
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/audio/PlayerRecord;

    .line 1916
    .local v13, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1918
    :try_start_6
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1919
    :catch_0
    move-exception v12

    .line 1920
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v4, "MediaFocusControl"

    const-string/jumbo v5, "Error connecting RCD to client: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1897
    .end local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v4

    :try_start_8
    monitor-exit v16

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1896
    :catchall_1
    move-exception v4

    monitor-exit v15

    throw v4

    .line 1928
    .restart local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v5, 0x9

    const/4 v6, 0x2

    .line 1930
    const/4 v10, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    .line 1928
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit v15

    .line 1894
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z

    .prologue
    .line 497
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 500
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 501
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 502
    if-eqz p3, :cond_0

    .line 503
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    .line 504
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 505
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 507
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_0
    if-eqz p2, :cond_1

    .line 509
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 495
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    return-void

    .line 516
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 517
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 518
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 519
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 520
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 523
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 536
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 537
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v1

    .line 540
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 541
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 543
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 536
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "isTopOfStackForClientToRemove":Z
    goto :goto_0

    .line 549
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 552
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 534
    :cond_3
    return-void
.end method

.method private removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1374
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1375
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1376
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1377
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->destroy()V

    .line 1379
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    return-void

    .line 1374
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1383
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 350
    if-nez p2, :cond_1

    .line 351
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 348
    return-void

    .line 352
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    return-void
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 1058
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1059
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1061
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1062
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1056
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 8
    .param p1, "rccId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 2147
    if-nez p2, :cond_0

    .line 2149
    return-void

    .line 2151
    :cond_0
    const/4 v4, 0x0

    .line 2152
    .local v4, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v6

    .line 2157
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2158
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlayerRecord;

    .line 2160
    .local v3, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 2161
    iget-object v4, v3, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "index":I
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_1
    :goto_1
    monitor-exit v6

    .line 2170
    if-eqz v4, :cond_2

    .line 2172
    const/4 v5, -0x1

    :try_start_1
    invoke-interface {v4, p2, v5}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2145
    :cond_2
    :goto_2
    return-void

    .line 2157
    .restart local v2    # "index":I
    .restart local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2165
    .end local v2    # "index":I
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v1

    .line 2167
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    const-string/jumbo v5, "MediaFocusControl"

    const-string/jumbo v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2152
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2173
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catch_1
    move-exception v0

    .line 2174
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "MediaFocusControl"

    const-string/jumbo v6, "Error dispatching relative volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 5
    .param p1, "newClientGeneration"    # I

    .prologue
    .line 1432
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1433
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1435
    .local v1, "se":Lcom/android/server/audio/PlayerRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1437
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1441
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 1429
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "se":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 6
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1408
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 1409
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1410
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1411
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1412
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1416
    :catch_0
    move-exception v2

    .line 1417
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1418
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1419
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1408
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    monitor-exit v4

    .line 1407
    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1458
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1460
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 1456
    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 11
    .param p1, "needWakeLock"    # Z

    .prologue
    .line 1091
    const/4 v7, 0x0

    .line 1096
    .local v7, "voiceIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 1097
    .local v6, "pm":Landroid/os/PowerManager;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    .line 1098
    :goto_0
    if-nez v3, :cond_4

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1099
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v7, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v8, "MediaFocusControl"

    const-string/jumbo v9, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :goto_1
    if-eqz p1, :cond_0

    .line 1117
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1119
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1121
    .local v4, "identity":J
    if-eqz v7, :cond_1

    .line 1122
    const/high16 v8, 0x10800000

    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1124
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    if-eqz p1, :cond_2

    .line 1131
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1090
    :cond_2
    :goto_2
    return-void

    .line 1097
    .end local v4    # "identity":J
    .local v7, "voiceIntent":Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x0

    .local v3, "isLocked":Z
    goto :goto_0

    .line 1103
    .end local v3    # "isLocked":Z
    :cond_4
    const-string/jumbo v8, "deviceidle"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 1102
    invoke-static {v8}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 1104
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_5

    .line 1106
    :try_start_1
    const-string/jumbo v8, "voice-search"

    invoke-interface {v0, v8}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1110
    :cond_5
    :goto_3
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v8, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v7, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v9, "android.speech.extras.EXTRA_SECURE"

    .line 1112
    if-eqz v3, :cond_6

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v8

    .line 1111
    :goto_4
    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1113
    const-string/jumbo v8, "MediaFocusControl"

    const-string/jumbo v9, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1112
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 1126
    .end local v0    # "dic":Landroid/os/IDeviceIdleController;
    .restart local v4    # "identity":J
    :catch_0
    move-exception v1

    .line 1127
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string/jumbo v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No activity for search: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1129
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    if-eqz p1, :cond_2

    .line 1131
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 1128
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v8

    .line 1129
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    if-eqz p1, :cond_7

    .line 1131
    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1128
    :cond_7
    throw v8

    .line 1107
    .end local v4    # "identity":J
    .restart local v0    # "dic":Landroid/os/IDeviceIdleController;
    .local v7, "voiceIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method private updateRemoteControlDisplay_syncPrs(I)V
    .locals 6
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1564
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1565
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    move v0, p1

    .line 1568
    .local v0, "infoFlagsAboutToBeUsed":I
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1570
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1571
    return-void

    .line 1573
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1574
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1576
    const/16 v0, 0xf

    .line 1578
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1579
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1582
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v4, 0x2

    .line 1583
    const/4 v5, 0x0

    .line 1582
    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1563
    return-void

    .line 1573
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v4, 0x1

    .line 844
    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :try_start_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    .line 858
    :goto_0
    return v4

    .line 847
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 850
    :catch_0
    move-exception v0

    .line 854
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 648
    return-void

    .line 650
    :cond_0
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "found":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 653
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 654
    const/4 v0, 0x1

    .line 658
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    if-eqz v0, :cond_3

    monitor-exit v4

    .line 659
    return-void

    .line 661
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 646
    return-void

    .line 650
    .end local v2    # "pcb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .locals 9
    .param p1, "streamType"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2094
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2097
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2098
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2099
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    iget v3, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    if-ne v3, v8, :cond_1

    .line 2100
    iget-object v3, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v3

    .line 2099
    if-eqz v3, :cond_1

    .line 2101
    iget v3, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackStream:I

    if-ne v3, p1, :cond_1

    .line 2104
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2105
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v6

    iput v6, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2106
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolume:I

    iput v6, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    .line 2107
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeMax:I

    iput v6, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    .line 2108
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeHandling:I

    iput v6, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    .line 2109
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    .line 2111
    return v8

    .line 2104
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5

    throw v3
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2114
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 2116
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v5, "Wrong index accessing RC stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    monitor-exit v4

    .line 2119
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v3

    .line 2120
    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v3

    .line 2122
    return v7

    .line 2097
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2094
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2119
    :catchall_2
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method protected discardAudioFocusOwner()V
    .locals 3

    .prologue
    .line 434
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 438
    .local v0, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(I)V

    .line 439
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_0
    monitor-exit v2

    .line 433
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 889
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 888
    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 898
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 897
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCDList(Ljava/io/PrintWriter;)V

    .line 130
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    .prologue
    .line 738
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 742
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getRemoteStreamMaxVolume()I
    .locals 3

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2182
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2184
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    .line 2180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .locals 3

    .prologue
    .line 2189
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2191
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2193
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    .line 2189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected isAppInFocus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "isInFocus":Z
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 872
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .end local v0    # "isInFocus":Z
    :cond_0
    monitor-exit v2

    .line 876
    return v0

    .line 871
    .restart local v0    # "isInFocus":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 2
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 685
    move-object v0, p1

    .line 686
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 704
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 684
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .prologue
    .line 711
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 714
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 717
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 716
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 710
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .prologue
    .line 726
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 729
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 732
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 731
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 725
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1144
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1143
    :cond_0
    return-void
.end method

.method protected postReevaluateRemote()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2240
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2239
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    const-string/jumbo v0, "MediaFocusControl"

    const-string/jumbo v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    return-void

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v0

    .line 1660
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1653
    return-void

    .line 1659
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1615
    const-string/jumbo v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1618
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1614
    return-void

    .line 1617
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 1688
    const/4 v3, -0x1

    .line 1689
    .local v3, "rccId":I
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1692
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1693
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1694
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1696
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1695
    invoke-virtual {v2, p2, p3, v4}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1698
    if-nez p2, :cond_2

    .line 1719
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1720
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v5

    .line 1723
    return v3

    .line 1702
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v3

    .line 1706
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1707
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1712
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1714
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string/jumbo v4, "MediaFocusControl"

    const-string/jumbo v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1689
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1692
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 234
    invoke-direct {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 235
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 237
    const/4 v1, 0x1

    return v1

    .line 239
    :cond_0
    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    const-string/jumbo v3, ", must have permission "

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    const-string/jumbo v3, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    const-string/jumbo v3, " to register IRemoteControlDisplay"

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v4
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-direct {p0, p4}, Lcom/android/server/audio/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 222
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 224
    const/4 v1, 0x1

    return v1

    .line 226
    :cond_0
    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    const-string/jumbo v3, ", must have permission "

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    const-string/jumbo v3, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    const-string/jumbo v3, " or be an enabled NotificationListenerService for registerRemoteController"

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v4
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1989
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1990
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1991
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    const/4 v0, 0x0

    .line 1992
    .local v0, "artworkSizeUpdate":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_3

    .line 2002
    :cond_1
    if-eqz v0, :cond_5

    .line 2005
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2006
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2007
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 2008
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2010
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2011
    :catch_0
    move-exception v3

    .line 2012
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "MediaFocusControl"

    const-string/jumbo v8, "Error setting bitmap size for RCD on RCC: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1989
    .end local v0    # "artworkSizeUpdate":Z
    .end local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1993
    .restart local v0    # "artworkSizeUpdate":Z
    .restart local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_3
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1994
    .local v1, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1995
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-ne v6, p2, :cond_4

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-eq v6, p3, :cond_0

    .line 1996
    :cond_4
    invoke-static {v1, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set1(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I

    .line 1997
    invoke-static {v1, p3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set0(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1998
    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_5
    monitor-exit v7

    .line 1988
    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 2034
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2035
    const/4 v4, 0x0

    .line 2038
    .local v4, "rcdRegistered":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2039
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2040
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 2041
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2042
    invoke-static {v0, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-set4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2043
    const/4 v4, 0x1

    .line 2047
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    if-nez v4, :cond_2

    monitor-exit v7

    .line 2048
    return-void

    .line 2052
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2053
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2054
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlayerRecord;

    .line 2055
    .local v3, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2057
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2058
    :catch_0
    move-exception v2

    .line 2059
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v6, "MediaFocusControl"

    const-string/jumbo v8, "Error setting position sync flag for RCD on RCC: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2034
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    monitor-exit v7

    .line 2033
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 672
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pcb$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 673
    .local v0, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    monitor-exit v3

    .line 667
    return-void

    .line 671
    .end local v1    # "pcb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 18
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    .line 750
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 751
    const-string/jumbo v5, "flags=0x"

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 751
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 754
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v3, 0x0

    return v3

    .line 758
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v3, v5, v4, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    const/4 v3, 0x0

    return v3

    .line 763
    :cond_1
    sget-object v17, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v17

    .line 764
    const/4 v14, 0x0

    .line 765
    .local v14, "focusGrantDelayed":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 766
    and-int/lit8 v3, p7, 0x1

    if-nez v3, :cond_2

    .line 767
    const/4 v3, 0x0

    monitor-exit v17

    return v3

    .line 772
    :cond_2
    const/4 v14, 0x1

    .line 779
    :cond_3
    :try_start_1
    new-instance v9, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    .local v9, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 788
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/audio/FocusRequester;

    .line 792
    .local v15, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_4

    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v3

    move/from16 v0, p7

    if-ne v3, v0, :cond_4

    .line 795
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 796
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    .line 797
    const/4 v4, 0x1

    .line 796
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 798
    const/4 v3, 0x1

    monitor-exit v17

    return v3

    .line 782
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :catch_0
    move-exception v13

    .line 784
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 785
    const/4 v3, 0x0

    monitor-exit v17

    return v3

    .line 802
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_4
    if-nez v14, :cond_5

    .line 803
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 805
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 810
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 812
    new-instance v2, Lcom/android/server/audio/FocusRequester;

    .line 813
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p0

    .line 812
    invoke-direct/range {v2 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V

    .line 814
    .local v2, "nfr":Lcom/android/server/audio/FocusRequester;
    if-eqz v14, :cond_7

    .line 817
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v16

    .line 818
    .local v16, "requestResult":I
    if-eqz v16, :cond_6

    .line 819
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    monitor-exit v17

    .line 821
    return v16

    .line 824
    .end local v16    # "requestResult":I
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 825
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 829
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    .line 832
    const/4 v4, 0x1

    .line 831
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v17

    .line 836
    const/4 v3, 0x1

    return v3

    .line 763
    .end local v2    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v9    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :catchall_0
    move-exception v3

    monitor-exit v17

    throw v3
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 639
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 638
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setRemoteStreamVolume(I)V
    .locals 9
    .param p1, "vol"    # I

    .prologue
    .line 2199
    const/4 v4, -0x1

    .line 2200
    .local v4, "rccId":I
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v7

    .line 2201
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v6, v6, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    monitor-exit v7

    .line 2202
    return-void

    .line 2204
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v4, v6, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 2206
    const/4 v5, 0x0

    .line 2207
    .local v5, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2212
    :try_start_2
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2213
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlayerRecord;

    .line 2215
    .local v3, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 2216
    iget-object v5, v3, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "index":I
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_1
    :goto_1
    monitor-exit v7

    .line 2225
    if-eqz v5, :cond_2

    .line 2227
    const/4 v6, 0x0

    :try_start_3
    invoke-interface {v5, v6, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2197
    :cond_2
    :goto_2
    return-void

    .line 2200
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2212
    .restart local v2    # "index":I
    .restart local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2220
    .end local v2    # "index":I
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v1

    .line 2222
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    const-string/jumbo v6, "MediaFocusControl"

    const-string/jumbo v8, "Wrong index accessing media button stack, lock error? "

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2207
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2228
    .end local v5    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catch_1
    move-exception v0

    .line 2229
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MediaFocusControl"

    const-string/jumbo v7, "Error dispatching absolute volume update"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 863
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 862
    return-void

    .line 863
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1670
    const-string/jumbo v0, "MediaFocusControl"

    const-string/jumbo v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    return-void

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v0

    .line 1674
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1667
    return-void

    .line 1673
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1631
    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1634
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 1635
    .local v0, "topOfStackWillChange":Z
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V

    .line 1636
    if-eqz v0, :cond_0

    .line 1638
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1629
    return-void

    .line 1633
    .end local v0    # "topOfStackWillChange":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 1644
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    .line 1645
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1644
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1643
    return-void
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1733
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1734
    const/4 v3, 0x0

    .line 1736
    .local v3, "topRccChange":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1737
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1738
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1739
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1738
    if-eqz v4, :cond_3

    .line 1741
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForNoRcc()V

    .line 1742
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    const/4 v3, 0x1

    .line 1751
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1753
    const/16 v4, 0xf

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v5

    .line 1731
    return-void

    .line 1742
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1736
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1747
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1749
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_2
    const-string/jumbo v4, "MediaFocusControl"

    const-string/jumbo v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1733
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1943
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1944
    if-nez p1, :cond_0

    monitor-exit v7

    .line 1945
    return-void

    .line 1948
    :cond_0
    const/4 v2, 0x0

    .line 1949
    .local v2, "displayWasPluggedIn":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1950
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v2, :cond_4

    .line 1959
    :cond_2
    if-eqz v2, :cond_5

    .line 1962
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1963
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1964
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 1965
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1967
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1968
    :catch_0
    move-exception v3

    .line 1969
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "MediaFocusControl"

    const-string/jumbo v8, "Error disconnecting remote control display to client: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1943
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1951
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_4
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1952
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->-get4(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1953
    const/4 v2, 0x1

    .line 1954
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1955
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_5
    monitor-exit v7

    .line 1941
    return-void
.end method
