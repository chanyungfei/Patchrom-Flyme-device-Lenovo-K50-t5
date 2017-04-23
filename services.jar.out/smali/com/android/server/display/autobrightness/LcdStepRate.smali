.class public Lcom/android/server/display/autobrightness/LcdStepRate;
.super Ljava/lang/Object;
.source "LcdStepRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;,
        Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;
    }
.end annotation


# static fields
.field private static synthetic -com_android_server_display_autobrightness_LcdStepRate$LCD_STEP_RATESwitchesValues:[I = null

.field private static final DEBUG:Z = true

.field private static final FILE_LCD_STEP_RATE:Ljava/lang/String; = "//sys//bus//i2c//devices//2-0036//dimming_step_time"

.field private static final MAX_FAST_STEPPING_TIME_MS:J = 0x12cL

.field private static final MSG_RESET_LCD_STEP_RATE:I = 0x1

.field private static final MS_RESET_LCD_STEP_RATE:J = 0x320L

.field private static final TAG:Ljava/lang/String; = "LcdStepRate"

.field private static sLcdStepRate:Lcom/android/server/display/autobrightness/LcdStepRate;


# instance fields
.field private mCallbacks:Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastBackLight:I

.field private mLastPollTime:J

.field private mLastScreenState:I

.field private mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

.field private mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;


# direct methods
.method private static synthetic -getcom_android_server_display_autobrightness_LcdStepRate$LCD_STEP_RATESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate;->-com_android_server_display_autobrightness_LcdStepRate$LCD_STEP_RATESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate;->-com_android_server_display_autobrightness_LcdStepRate$LCD_STEP_RATESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->values()[Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->FAST:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->IDLE:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->INSTANT:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->SLOW:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/server/display/autobrightness/LcdStepRate;->-com_android_server_display_autobrightness_LcdStepRate$LCD_STEP_RATESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mEnabled:Z

    .line 45
    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->IDLE:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 46
    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->IDLE:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastPollTime:J

    .line 50
    iput v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastScreenState:I

    .line 51
    iput v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastBackLight:I

    .line 140
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 130
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate;->getInstance()Lcom/android/server/display/autobrightness/LcdStepRate;

    move-result-object v0

    .line 132
    .local v0, "instance":Lcom/android/server/display/autobrightness/LcdStepRate;
    monitor-enter v0

    .line 133
    :try_start_0
    invoke-direct {v0, p0}, Lcom/android/server/display/autobrightness/LcdStepRate;->dumpLocked(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 129
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 313
    .local v1, "nodeValue":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "//sys//bus//i2c//devices//2-0036//dimming_step_time"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "...\n"

    const/16 v4, 0xa

    invoke-static {v2, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 319
    .end local v1    # "nodeValue":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 320
    const-string/jumbo v2, "LcdStepRate:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mStepRate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v3}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mPendingStepRate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v3}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  mLastPollTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastPollTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  node = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    return-void

    .line 314
    .restart local v1    # "nodeValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/server/display/autobrightness/LcdStepRate;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate;->sLcdStepRate:Lcom/android/server/display/autobrightness/LcdStepRate;

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, "LcdStepRate"

    const-string/jumbo v1, "new instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/android/server/display/autobrightness/LcdStepRate;

    invoke-direct {v0}, Lcom/android/server/display/autobrightness/LcdStepRate;-><init>()V

    sput-object v0, Lcom/android/server/display/autobrightness/LcdStepRate;->sLcdStepRate:Lcom/android/server/display/autobrightness/LcdStepRate;

    .line 70
    :cond_0
    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate;->sLcdStepRate:Lcom/android/server/display/autobrightness/LcdStepRate;

    return-object v0
.end method

.method public static isStepRateScheduled()Z
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate;->getInstance()Lcom/android/server/display/autobrightness/LcdStepRate;

    move-result-object v0

    .line 92
    .local v0, "instance":Lcom/android/server/display/autobrightness/LcdStepRate;
    monitor-enter v0

    .line 93
    :try_start_0
    invoke-direct {v0}, Lcom/android/server/display/autobrightness/LcdStepRate;->isStepRateScheduledLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isStepRateScheduledLocked()Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    iget-object v1, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onDisplayStateChanged(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 102
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate;->getInstance()Lcom/android/server/display/autobrightness/LcdStepRate;

    move-result-object v0

    .line 104
    .local v0, "instance":Lcom/android/server/display/autobrightness/LcdStepRate;
    monitor-enter v0

    .line 105
    :try_start_0
    invoke-direct {v0, p0}, Lcom/android/server/display/autobrightness/LcdStepRate;->onDisplayStateChangedLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 101
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private onDisplayStateChangedLocked(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    .line 189
    iget-boolean v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mEnabled:Z

    if-nez v0, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    if-eq p1, v1, :cond_1

    .line 194
    iget v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastScreenState:I

    if-ne v0, v1, :cond_2

    .line 196
    :cond_1
    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->IDLE:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 197
    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->INSTANT:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-direct {p0, v0}, Lcom/android/server/display/autobrightness/LcdStepRate;->prepareNewStepRateLocked(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)Z

    .line 200
    const-string/jumbo v0, "LcdStepRate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayStateChangedLocked: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string/jumbo v2, ", mPendingStepRate to "

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastBackLight:I

    invoke-direct {p0, v0}, Lcom/android/server/display/autobrightness/LcdStepRate;->pollLcdStepRateLocked(I)Z

    .line 209
    :cond_2
    iput p1, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastScreenState:I

    .line 188
    return-void
.end method

.method public static pollLcdStepRate(I)V
    .locals 2
    .param p0, "backlight"    # I

    .prologue
    .line 122
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate;->getInstance()Lcom/android/server/display/autobrightness/LcdStepRate;

    move-result-object v0

    .line 124
    .local v0, "instance":Lcom/android/server/display/autobrightness/LcdStepRate;
    monitor-enter v0

    .line 125
    :try_start_0
    invoke-direct {v0, p0}, Lcom/android/server/display/autobrightness/LcdStepRate;->pollLcdStepRateLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 121
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private pollLcdStepRateLocked(I)Z
    .locals 5
    .param p1, "backlight"    # I

    .prologue
    const/4 v4, 0x0

    .line 242
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastBackLight:I

    if-nez v2, :cond_1

    .line 243
    :cond_0
    sget-object v2, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->IDLE:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    iput-object v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 244
    sget-object v2, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->INSTANT:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-direct {p0, v2}, Lcom/android/server/display/autobrightness/LcdStepRate;->prepareNewStepRateLocked(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)Z

    .line 247
    :cond_1
    iput p1, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastBackLight:I

    .line 250
    iget-object v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    iget-object v3, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    if-ne v2, v3, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/LcdStepRate;->scheduleResetLcdStepRateIfNeededLock()V

    .line 252
    return v4

    .line 256
    :cond_2
    const-string/jumbo v2, "LcdStepRate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pollLcdStepRateLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 257
    const-string/jumbo v4, " -> "

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 257
    iget-object v4, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x0

    .line 263
    .local v1, "value":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate;->-getcom_android_server_display_autobrightness_LcdStepRate$LCD_STEP_RATESwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v3}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 277
    const-string/jumbo v2, "LcdStepRate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pollLcdStepRateLocked: unexpected step rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    .line 284
    :try_start_0
    const-string/jumbo v2, "//sys//bus//i2c//devices//2-0036//dimming_step_time"

    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    iput-object v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastPollTime:J

    .line 294
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/LcdStepRate;->scheduleResetLcdStepRateIfNeededLock()V

    .line 296
    const/4 v2, 0x1

    return v2

    .line 265
    .restart local v1    # "value":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v1, "1"

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 269
    .local v1, "value":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "2"

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 273
    .local v1, "value":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "7"

    .local v1, "value":Ljava/lang/String;
    goto :goto_0

    .line 285
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private prepareNewStepRateLocked(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)Z
    .locals 6
    .param p1, "rate"    # Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 169
    .local v0, "old":Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;
    invoke-virtual {p1}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v2}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 171
    iput-object p1, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 185
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    iget-object v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    if-ne v1, v2, :cond_0

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mLastPollTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 176
    iput-object p1, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    goto :goto_0

    .line 180
    :cond_2
    const-string/jumbo v1, "LcdStepRate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareNewStepRateLocked: keep "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v3}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static registerStepRateScheduledCallback(Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;)V
    .locals 2
    .param p0, "callback"    # Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;

    .prologue
    .line 110
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate;->getInstance()Lcom/android/server/display/autobrightness/LcdStepRate;

    move-result-object v0

    .line 112
    .local v0, "instance":Lcom/android/server/display/autobrightness/LcdStepRate;
    monitor-enter v0

    .line 113
    :try_start_0
    invoke-direct {v0, p0}, Lcom/android/server/display/autobrightness/LcdStepRate;->registerStepRateScheduledCallbackLocked(Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 109
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerStepRateScheduledCallbackLocked(Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mCallbacks:Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;

    .line 236
    return-void
.end method

.method private scheduleResetLcdStepRateIfNeededLock()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 301
    iget-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    sget-object v1, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->SLOW:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    if-eq v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 299
    :cond_0
    return-void
.end method

.method public static scheduleStepRate(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V
    .locals 2
    .param p0, "rate"    # Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .prologue
    .line 82
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate;->getInstance()Lcom/android/server/display/autobrightness/LcdStepRate;

    move-result-object v0

    .line 84
    .local v0, "instance":Lcom/android/server/display/autobrightness/LcdStepRate;
    monitor-enter v0

    .line 85
    :try_start_0
    invoke-direct {v0, p0}, Lcom/android/server/display/autobrightness/LcdStepRate;->scheduleStepRateLocked(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 81
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private scheduleStepRateLocked(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V
    .locals 3
    .param p1, "rate"    # Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mEnabled:Z

    if-nez v0, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/autobrightness/LcdStepRate;->prepareNewStepRateLocked(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const-string/jumbo v0, "LcdStepRate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleStepRateLocked: schedule to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mPendingStepRate:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mCallbacks:Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mCallbacks:Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;

    invoke-interface {v0}, Lcom/android/server/display/autobrightness/LcdStepRate$Callbacks;->onStepRateScheduled()V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/LcdStepRate;->scheduleResetLcdStepRateIfNeededLock()V

    goto :goto_0
.end method

.method public static setEnabled(ZLandroid/os/Looper;)V
    .locals 2
    .param p0, "enabled"    # Z
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 74
    invoke-static {}, Lcom/android/server/display/autobrightness/LcdStepRate;->getInstance()Lcom/android/server/display/autobrightness/LcdStepRate;

    move-result-object v0

    .line 76
    .local v0, "instance":Lcom/android/server/display/autobrightness/LcdStepRate;
    monitor-enter v0

    .line 77
    :try_start_0
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/autobrightness/LcdStepRate;->setEnabledLocked(ZLandroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 73
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setEnabledLocked(ZLandroid/os/Looper;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mEnabled:Z

    .line 147
    new-instance v0, Lcom/android/server/display/autobrightness/LcdStepRate$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/autobrightness/LcdStepRate$1;-><init>(Lcom/android/server/display/autobrightness/LcdStepRate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/LcdStepRate;->mHandler:Landroid/os/Handler;

    .line 144
    return-void
.end method
