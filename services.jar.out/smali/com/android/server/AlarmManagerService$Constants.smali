.class final Lcom/android/server/AlarmManagerService$Constants;
.super Landroid/database/ContentObserver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_ALLOW_WHILE_IDLE_LONG_TIME:J = 0xdbba0L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_SHORT_TIME:J = 0x1388L

.field private static final DEFAULT_ALLOW_WHILE_IDLE_WHITELIST_DURATION:J = 0x2710L

.field private static final DEFAULT_MIN_FUTURITY:J = 0x1388L

.field private static final DEFAULT_MIN_INTERVAL:J = 0xea60L

.field private static final KEY_ALLOW_WHILE_IDLE_LONG_TIME:Ljava/lang/String; = "allow_while_idle_long_time"

.field private static final KEY_ALLOW_WHILE_IDLE_SHORT_TIME:Ljava/lang/String; = "allow_while_idle_short_time"

.field private static final KEY_ALLOW_WHILE_IDLE_WHITELIST_DURATION:Ljava/lang/String; = "allow_while_idle_whitelist_duration"

.field private static final KEY_MIN_FUTURITY:Ljava/lang/String; = "min_futurity"

.field private static final KEY_MIN_INTERVAL:Ljava/lang/String; = "min_interval"


# instance fields
.field public ALLOW_WHILE_IDLE_LONG_TIME:J

.field public ALLOW_WHILE_IDLE_SHORT_TIME:J

.field public ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

.field public MIN_FUTURITY:J

.field public MIN_INTERVAL:J

.field private mLastAllowWhileIdleWhitelistDuration:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const-wide/16 v2, 0x1388

    .line 243
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    .line 244
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 224
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 227
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 230
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    .line 233
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    .line 237
    const-wide/16 v0, 0x2710

    .line 236
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 240
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 241
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 245
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V

    .line 243
    return-void
.end method

.method private updateConstants()V
    .locals 6

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 279
    const-string/jumbo v4, "alarm_manager_constants"

    .line 278
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "min_futurity"

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    .line 287
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "min_interval"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 288
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "allow_while_idle_short_time"

    .line 289
    const-wide/16 v4, 0x1388

    .line 288
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    .line 290
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "allow_while_idle_long_time"

    .line 291
    const-wide/32 v4, 0xdbba0

    .line 290
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    .line 292
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 293
    const-string/jumbo v3, "allow_while_idle_whitelist_duration"

    .line 294
    const-wide/16 v4, 0x2710

    .line 292
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    .line 296
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleWhitelistDurationLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 275
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v3, "Bad device idle settings"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 276
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 302
    const-string/jumbo v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_futurity"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 306
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 308
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 310
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 312
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "allow_while_idle_short_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 314
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 316
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "allow_while_idle_long_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 318
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 320
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "allow_while_idle_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 322
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 301
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateConstants()V

    .line 271
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 251
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 252
    const-string/jumbo v1, "alarm_manager_constants"

    .line 251
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 252
    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$Constants;->updateConstants()V

    .line 249
    return-void
.end method

.method public updateAllowWhileIdleMinTimeLocked()V
    .locals 3

    .prologue
    .line 257
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_0

    .line 258
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    .line 257
    :goto_0
    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    .line 256
    return-void

    .line 258
    :cond_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    goto :goto_0
.end method

.method public updateAllowWhileIdleWhitelistDurationLocked()V
    .locals 6

    .prologue
    .line 262
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 263
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->mLastAllowWhileIdleWhitelistDuration:J

    .line 264
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 265
    .local v0, "opts":Landroid/app/BroadcastOptions;
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 266
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Constants;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    .line 261
    .end local v0    # "opts":Landroid/app/BroadcastOptions;
    :cond_0
    return-void
.end method
