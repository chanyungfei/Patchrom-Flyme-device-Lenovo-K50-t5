.class final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;,
        Lcom/android/server/WiredAccessoryManager$1;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x2

.field private static final BIT_HEADSET_NO_MIC:I = 0x1

.field private static final BIT_LINEOUT:I = 0x20

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final LOG:Z = true

.field private static final MSG_NEW_DEVICE_STATE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2

.field private static final NAME_H2W:Ljava/lang/String; = "h2w"

.field private static final NAME_HDMI:Ljava/lang/String; = "hdmi"

.field private static final NAME_HDMI_AUDIO:Ljava/lang/String; = "hdmi_audio"

.field private static final NAME_USB_AUDIO:Ljava/lang/String; = "usb_audio"

.field private static final SUPPORTED_HEADSETS:I = 0x3f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private illegal_state:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetState:I

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field private mSwitchValues:I

.field private final mUseDevInputEventForAudioJack:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/WiredAccessoryManager;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/WiredAccessoryManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/WiredAccessoryManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->getIllegalHeadset()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->showheadsetToast()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 104
    iput v5, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    .line 289
    new-instance v2, Lcom/android/server/WiredAccessoryManager$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 107
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 108
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "WiredAccessoryManager"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 109
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 110
    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 113
    iput-boolean v2, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 116
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {v2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private getIllegalHeadset()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 206
    const/4 v4, 0x0

    .line 208
    .local v4, "state":I
    const-string/jumbo v5, "/sys/devices/platform/Accdet_Driver/driver/accdet_pin_recognition"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "pinStateFilePath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "fw":Ljava/io/FileReader;
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v4

    .line 213
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 214
    .local v3, "pin_state":I
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 215
    sget-object v5, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PIN state for Accdet is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    return v3

    .line 217
    .end local v1    # "fw":Ljava/io/FileReader;
    .end local v3    # "pin_state":I
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    return v8
.end method

.method private onSystemReady()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, -0x100

    .line 123
    iget-boolean v1, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v1, :cond_3

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "switchValues":I
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 126
    const/4 v0, 0x4

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 129
    or-int/lit8 v0, v0, 0x10

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 132
    or-int/lit8 v0, v0, 0x40

    .line 134
    :cond_2
    const-wide/16 v2, 0x0

    .line 135
    const/16 v1, 0x54

    .line 134
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 138
    .end local v0    # "switchValues":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    .line 122
    return-void
.end method

.method private setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 9
    .param p1, "headset"    # I
    .param p2, "headsetState"    # I
    .param p3, "prevHeadsetState"    # I
    .param p4, "headsetName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 320
    and-int v4, p2, p1

    and-int v5, p3, p1

    if-eq v4, v5, :cond_3

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, "outDevice":I
    const/4 v1, 0x0

    .line 325
    .local v1, "inDevice":I
    and-int v4, p2, p1

    if-eqz v4, :cond_4

    .line 326
    const/4 v3, 0x1

    .line 331
    .local v3, "state":I
    :goto_0
    if-ne p1, v8, :cond_5

    .line 332
    const/4 v2, 0x4

    .line 333
    const v1, -0x7ffffff0

    .line 350
    :goto_1
    sget-object v5, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "device "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v3, v7, :cond_b

    const-string/jumbo v4, " connected"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-ne p3, v7, :cond_0

    if-ne p2, v8, :cond_0

    if-nez v3, :cond_0

    .line 355
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_3
    if-eqz v2, :cond_1

    .line 362
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v2, v3, v5, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1
    if-eqz v1, :cond_2

    .line 365
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v1, v3, v5, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_2
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager;->getIllegalHeadset()I

    move-result v4

    iput v4, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    .line 369
    iget v4, p0, Lcom/android/server/WiredAccessoryManager;->illegal_state:I

    const/16 v5, 0x31

    if-ne v5, v4, :cond_3

    .line 370
    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/WiredAccessoryManager$3;

    invoke-direct {v5, p0}, Lcom/android/server/WiredAccessoryManager$3;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    .line 382
    const-wide/16 v6, 0x1f4

    .line 370
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    .end local v1    # "inDevice":I
    .end local v2    # "outDevice":I
    .end local v3    # "state":I
    :cond_3
    return-void

    .line 328
    .restart local v1    # "inDevice":I
    .restart local v2    # "outDevice":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "state":I
    goto :goto_0

    .line 334
    :cond_5
    if-ne p1, v7, :cond_6

    .line 335
    const/16 v2, 0x8

    goto :goto_1

    .line 336
    :cond_6
    const/16 v4, 0x20

    if-ne p1, v4, :cond_7

    .line 337
    const/high16 v2, 0x20000

    goto :goto_1

    .line 338
    :cond_7
    const/4 v4, 0x4

    if-ne p1, v4, :cond_8

    .line 339
    const/16 v2, 0x800

    goto :goto_1

    .line 340
    :cond_8
    const/16 v4, 0x8

    if-ne p1, v4, :cond_9

    .line 341
    const/16 v2, 0x1000

    goto :goto_1

    .line 342
    :cond_9
    const/16 v4, 0x10

    if-ne p1, v4, :cond_a

    .line 343
    const/16 v2, 0x400

    goto :goto_1

    .line 345
    :cond_a
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDeviceState() invalid headset type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 350
    :cond_b
    const-string/jumbo v4, " disconnected"

    goto/16 :goto_2

    .line 356
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method private setDevicesState(IILjava/lang/String;)V
    .locals 4
    .param p1, "headsetState"    # I
    .param p2, "prevHeadsetState"    # I
    .param p3, "headsetName"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    const/16 v0, 0x3f

    .line 309
    .local v0, "allHeadsets":I
    const/4 v1, 0x1

    .local v1, "curHeadset":I
    :goto_0
    if-eqz v0, :cond_1

    .line 310
    and-int v3, v1, v0

    if-eqz v3, :cond_0

    .line 311
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    not-int v3, v1

    and-int/2addr v0, v3

    .line 309
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    .line 306
    return-void

    .line 307
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private showheadsetToast()V
    .locals 6

    .prologue
    .line 182
    sget-object v2, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "come in showheadsetToast++++++++"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x1

    .line 186
    .local v0, "duration":I
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    const v3, 0x80500c1

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WiredAccessoryManager;->toast:Landroid/widget/Toast;

    .line 192
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 195
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 196
    .local v1, "headset_timer":Ljava/util/Timer;
    new-instance v2, Lcom/android/server/WiredAccessoryManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    .line 201
    const-wide/16 v4, 0x1f4

    .line 196
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 181
    return-void
.end method

.method private switchCodeToString(II)Ljava/lang/String;
    .locals 2
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    .local v0, "sb":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 392
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 393
    const-string/jumbo v1, "SW_HEADPHONE_INSERT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    :cond_0
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1

    .line 396
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 397
    const-string/jumbo v1, "SW_MICROPHONE_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateLocked(Ljava/lang/String;I)V
    .locals 11
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newState"    # I

    .prologue
    .line 245
    and-int/lit8 v2, p2, 0x3f

    .line 246
    .local v2, "headsetState":I
    and-int/lit8 v5, v2, 0x4

    .line 247
    .local v5, "usb_headset_anlg":I
    and-int/lit8 v6, v2, 0x8

    .line 248
    .local v6, "usb_headset_dgtl":I
    and-int/lit8 v1, v2, 0x23

    .line 249
    .local v1, "h2w_headset":I
    const/4 v0, 0x1

    .line 250
    .local v0, "h2wStateChange":Z
    const/4 v4, 0x1

    .line 251
    .local v4, "usbStateChange":Z
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 252
    const-string/jumbo v9, " newState="

    .line 251
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 253
    const-string/jumbo v9, " headsetState="

    .line 251
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 254
    const-string/jumbo v9, " prev headsetState="

    .line 251
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 254
    iget v9, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 251
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget v7, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v7, v2, :cond_0

    .line 257
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "No state change."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 264
    :cond_0
    const/16 v7, 0x23

    if-ne v1, v7, :cond_1

    .line 265
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Invalid combination, unsetting h2w flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    .line 270
    :cond_1
    const/4 v7, 0x4

    if-ne v5, v7, :cond_2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 271
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Invalid combination, unsetting usb flag"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v4, 0x0

    .line 274
    :cond_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_4

    .line 279
    :cond_3
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 281
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "MSG_NEW_DEVICE_STATE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    .line 283
    iget v8, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v9, ""

    .line 282
    const/4 v10, 0x1

    invoke-virtual {v7, v10, v2, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 284
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 243
    return-void

    .line 275
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    sget-object v7, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "invalid transition, returning ..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method


# virtual methods
.method public notifyWiredAccessoryChanged(JII)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .prologue
    .line 143
    sget-object v1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyWiredAccessoryChanged: when="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    const-string/jumbo v3, " bits="

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    invoke-direct {p0, p3, p4}, Lcom/android/server/WiredAccessoryManager;->switchCodeToString(II)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    const-string/jumbo v3, " mask="

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_0
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int v3, p4

    and-int/2addr v1, v3

    or-int/2addr v1, p3

    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    .line 150
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 v1, v1, 0x54

    sparse-switch v1, :sswitch_data_0

    .line 173
    const/4 v0, 0x0

    .line 177
    .local v0, "headset":I
    :goto_0
    const-string/jumbo v1, "h2w"

    .line 178
    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v3, v3, -0x24

    or-int/2addr v3, v0

    .line 177
    invoke-direct {p0, v1, v3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 142
    return-void

    .line 153
    .end local v0    # "headset":I
    :sswitch_0
    const/4 v0, 0x0

    .line 154
    .restart local v0    # "headset":I
    goto :goto_0

    .line 157
    .end local v0    # "headset":I
    :sswitch_1
    const/4 v0, 0x1

    .line 158
    .restart local v0    # "headset":I
    goto :goto_0

    .line 161
    .end local v0    # "headset":I
    :sswitch_2
    const/16 v0, 0x20

    .line 162
    .restart local v0    # "headset":I
    goto :goto_0

    .line 165
    .end local v0    # "headset":I
    :sswitch_3
    const/4 v0, 0x2

    .line 166
    .restart local v0    # "headset":I
    goto :goto_0

    .line 169
    .end local v0    # "headset":I
    :sswitch_4
    const/4 v0, 0x2

    .line 170
    .restart local v0    # "headset":I
    goto :goto_0

    .line 147
    .end local v0    # "headset":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_4
        0x14 -> :sswitch_3
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 229
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 230
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 225
    return-void

    .line 226
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
