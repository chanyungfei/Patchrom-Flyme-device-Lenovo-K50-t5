.class public Lcom/android/server/policy/LenovoFrameworkServiceDelegate;
.super Ljava/lang/Object;
.source "LenovoFrameworkServiceDelegate.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;,
        Lcom/android/server/policy/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;,
        Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final LENOVO_FRAMEWORK_CLASS:Ljava/lang/String; = "com.lenovo.framework.LenovoFrameworkService"

.field public static final LENOVO_FRAMEWORK_PACKAGE:Ljava/lang/String; = "com.lenovo.gesture"

.field public static final MSG_BIND_SERVICE:I = 0x64

.field public static final MSG_UNBIND_SERVICE:I = 0x65

.field private static final SERVICE_RESTART_DEALY_MS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "LenovoGesture_FrameworkServiceDelegate"

.field private static isEnabled:Z

.field private static mInstance:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKeyguardViewMediator:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private final mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

.field protected mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

.field private mShowListener:Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;)Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mShowListener:Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardViewMediator"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate$1;-><init>(Lcom/android/server/policy/LenovoFrameworkServiceDelegate;)V

    iput-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

    .line 60
    iput-object p2, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mKeyguardViewMediator:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 61
    iput-object p1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isEnabled:Z

    .line 64
    invoke-direct {p0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isFirstIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->initDefaultIntentUri()V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->setDefaultModeAndCaptureNum()V

    .line 67
    invoke-direct {p0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->setDefaultCheckBoxPrefsValues()V

    .line 70
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LenovoGesture_FrameworkServiceDelegate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private doBind()V
    .locals 5

    .prologue
    .line 76
    const-string/jumbo v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v2, "doBind."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.lenovo.gesture"

    const-string/jumbo v2, "com.lenovo.framework.LenovoFrameworkService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

    .line 81
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 80
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const-string/jumbo v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v2, "***: can\'t bind to com.lenovo.framework.LenovoFrameworkService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string/jumbo v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v2, "*** started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doUnBind()V
    .locals 2

    .prologue
    .line 89
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "doUnBind."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 88
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/LenovoFrameworkServiceDelegate;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyguardViewMediator"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    const-class v1, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mInstance:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    sput-object v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mInstance:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mInstance:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initDefaultIntentUri()V
    .locals 5

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 192
    .local v2, "intentUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v4, "Fisrt in ,initDefaultIntentUri"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string/jumbo v3, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v4, "Annan-->DefaultIntentUri()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/policy/LenovoFrameworkGestureConfig;->DEFAULT_PACKAGE_E:Ljava/lang/String;

    sget-object v4, Lcom/android/server/policy/LenovoFrameworkGestureConfig;->DEFAULT_CLASS_E:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "intentUri":Ljava/lang/String;
    const-string/jumbo v3, "black_gesture_wakeup_e_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 202
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 203
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.lenovo.scg"

    const-string/jumbo v4, "com.lenovo.scg.camera.CameraLauncher"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 205
    const-string/jumbo v3, "black_gesture_wakeup_c_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/policy/LenovoFrameworkGestureConfig;->DEFAULT_PACKAGE_M:Ljava/lang/String;

    sget-object v4, Lcom/android/server/policy/LenovoFrameworkGestureConfig;->DEFAULT_CLASS_M:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 210
    const-string/jumbo v3, "black_gesture_wakeup_m_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.lenovo.videoplayer"

    const-string/jumbo v4, "com.lenovo.videoplayer.VideoPlayerActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 215
    const-string/jumbo v3, "black_gesture_wakeup_v_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    return-void
.end method

.method private isFirstIn()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 136
    .local v0, "isFirstIn":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 137
    const-string/jumbo v4, "black_gesture_is_first_in"

    .line 136
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    const-string/jumbo v4, "black_gesture_is_first_in"

    .line 140
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "black_screen_snap_shot"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "black_screen_snap_shot"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_2
    move v1, v3

    .line 136
    goto :goto_0
.end method

.method private isInSupperClassicMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    const-string/jumbo v2, "supperClassicMode"

    .line 123
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "isInSupperClassicMode":Z
    :goto_0
    const-string/jumbo v1, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LenovoGestures isInSupperClassicMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v0

    .line 124
    .end local v0    # "isInSupperClassicMode":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isInSupperClassicMode":Z
    goto :goto_0
.end method

.method private setDefaultCheckBoxPrefsValues()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    const-string/jumbo v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v2, "Fisrt in ,setDefaultCheckBoxPrefsValues"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "slide_unlock_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    const-string/jumbo v1, "black_gesture_light_up_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    const-string/jumbo v1, "black_gesture_top_speed_snap_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    const-string/jumbo v1, "black_gesture_wakeup_c_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    const-string/jumbo v1, "black_gesture_wakeup_e_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    const-string/jumbo v1, "black_gesture_wakeup_m_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    const-string/jumbo v1, "black_gesture_wakeup_v_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    const-string/jumbo v1, "black_gesture_warning_pop_up_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    sget-boolean v1, Lcom/android/server/policy/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_PICK_UP_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 180
    const-string/jumbo v1, "black_gesture_pick_up_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    :cond_0
    sget-boolean v1, Lcom/android/server/policy/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_WAVE_HAND_SUPPORT:Z

    if-eqz v1, :cond_1

    .line 183
    const-string/jumbo v1, "black_gesture_wave_hand_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    :cond_1
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 104
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "disable LenovoFrameworkServiceDelegate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-boolean v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isEnabled:Z

    if-nez v0, :cond_0

    .line 106
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isEnabled:Z

    .line 110
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "enable LenovoFrameworkServiceDelegate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-boolean v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isEnabled:Z

    .line 100
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 308
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 318
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "un-handled message."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x0

    return v0

    .line 310
    :pswitch_0
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "msg: do bind service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->doBind()V

    .line 321
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 314
    :pswitch_1
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "msg: do UNbind service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->doUnBind()V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isReady()Z
    .locals 4

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/policy/LenovoFrameworkServiceWrapper;->isGestureUnlockScreenReady()Z

    move-result v1

    .line 115
    if-eqz v1, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isInSupperClassicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 118
    .local v0, "isready":Z
    :goto_0
    const-string/jumbo v1, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",gestureframeworkService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",isReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0

    .line 116
    .end local v0    # "isready":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isready":Z
    goto :goto_0

    .line 115
    .end local v0    # "isready":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isready":Z
    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/LenovoFrameworkServiceWrapper;->onScreenTurnedOff(I)V

    .line 299
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;)V
    .locals 1
    .param p1, "showListener"    # Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mShowListener:Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;

    .line 294
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/LenovoFrameworkServiceWrapper;->onScreenTurnedOn()V

    .line 291
    :cond_0
    return-void
.end method

.method public setDefaultModeAndCaptureNum()V
    .locals 3

    .prologue
    .line 153
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "Fisrt in ,setDefaultModeAndCaptureNum"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    const-string/jumbo v1, "black_gesture_flash_mode_value"

    const-string/jumbo v2, "auto"

    .line 154
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "black_gesture_capture_num_value"

    const/4 v2, 0x6

    .line 156
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    return-void
.end method

.method public showGestureUnlockScreen()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/LenovoFrameworkServiceWrapper;->showGestureUnlockScreen()V

    .line 275
    :cond_0
    return-void
.end method

.method public triggerSnapshot(I)V
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/server/policy/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/LenovoFrameworkServiceWrapper;->triggerSnapshot(I)V

    .line 282
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string/jumbo v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string/jumbo v1, "LenovoFrameworkService not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
