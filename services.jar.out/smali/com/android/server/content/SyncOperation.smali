.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8

.field public static final SYNC_TARGET_ADAPTER:I = 0x1

.field public static final SYNC_TARGET_SERVICE:I = 0x2

.field public static final SYNC_TARGET_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field public final allowParallelSyncs:Z

.field public appIdle:Z

.field public backoff:J

.field public delayUntil:J

.field public effectiveRunTime:J

.field private final expedited:Z

.field public extras:Landroid/os/Bundle;

.field public flexTime:J

.field public final key:Ljava/lang/String;

.field public latestRunTime:J

.field public pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

.field public final reason:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "DataSettingsChanged"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "AccountsUpdated"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "ServiceChanged"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "Periodic"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "IsSyncable"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "AutoSync"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "MasterSyncAuto"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "UserStart"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 53
    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V
    .locals 19
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "source"    # I
    .param p5, "provider"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "runTimeFromNow"    # J
    .param p9, "flexTime"    # J
    .param p11, "backoff"    # J
    .param p13, "delayUntil"    # J
    .param p15, "allowParallelSyncs"    # Z

    .prologue
    .line 104
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object/from16 v5, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move/from16 v18, p15

    invoke-direct/range {v5 .. v18}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V
    .locals 18
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "source"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "runTimeFromNow"    # J
    .param p8, "flexTime"    # J
    .param p10, "backoff"    # J
    .param p12, "delayUntil"    # J

    .prologue
    .line 112
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    .line 113
    const/16 v16, 0x1

    move-object/from16 v3, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    .line 112
    invoke-direct/range {v3 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;J)V
    .locals 18
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;
    .param p2, "newRunTimeFromNow"    # J

    .prologue
    .line 150
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/content/SyncOperation;->reason:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    new-instance v7, Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 153
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/content/SyncOperation;->backoff:J

    .line 154
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    .line 155
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    move/from16 v16, v0

    .line 152
    const-wide/16 v10, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v8, p2

    .line 150
    invoke-direct/range {v3 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V

    .line 149
    return-void
.end method

.method private constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "reason"    # I
    .param p3, "source"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "runTimeFromNow"    # J
    .param p7, "flexTime"    # J
    .param p9, "backoff"    # J
    .param p11, "delayUntil"    # J
    .param p13, "allowParallelSyncs"    # Z

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 120
    iput p2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 121
    iput p3, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 122
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 123
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v4}, Lcom/android/server/content/SyncOperation;->cleanBundle(Landroid/os/Bundle;)V

    .line 124
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    .line 125
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->backoff:J

    .line 126
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 130
    .local v2, "now":J
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-gez v4, :cond_1

    .line 131
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    .line 133
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "expedited"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "expedited"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    :cond_0
    iput-wide v2, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    .line 137
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    .line 145
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {p1, v4}, Lcom/android/server/content/SyncOperation;->toKey(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 118
    return-void

    .line 139
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    .line 140
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "expedited"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 141
    add-long v4, v2, p5

    iput-wide v4, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    .line 142
    iput-wide p7, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    goto :goto_0
.end method

.method private cleanBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const-string/jumbo v0, "upload"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "force"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "ignore_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v0, "ignore_backoff"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "do_not_retry"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "discard_deletions"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "expedited"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v0, "deletions_override"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v0, "allow_metered"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 321
    const-string/jumbo v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 325
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    return-void
.end method

.method public static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x0

    .line 244
    if-ltz p1, :cond_3

    .line 245
    if-eqz p0, :cond_2

    .line 246
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 248
    aget-object v3, v2, v5

    return-object v3

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 252
    return-object v1

    .line 254
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 256
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 259
    :cond_3
    neg-int v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 260
    .local v0, "index":I
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_4

    .line 261
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 263
    :cond_4
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    return-object v3
.end method

.method private removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "extraName"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method public static toKey(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_0

    .line 296
    const-string/jumbo v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v1, " account {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    const-string/jumbo v2, ", user="

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    const-string/jumbo v2, ", type="

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    const-string/jumbo v2, "}"

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :goto_0
    const-string/jumbo v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {p1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 303
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v1, :cond_1

    .line 304
    const-string/jumbo v1, "service {package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string/jumbo v2, " user="

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    const-string/jumbo v2, ", class="

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const-string/jumbo v2, "}"

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 312
    :cond_1
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Converting SyncOperaton to key, invalid target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string/jumbo v1, ""

    return-object v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 14
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x1

    const/4 v1, -0x1

    move-object v0, p1

    .line 365
    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 366
    .local v0, "other":Lcom/android/server/content/SyncOperation;
    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eq v7, v8, :cond_1

    .line 367
    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eqz v7, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v6

    goto :goto_0

    .line 369
    :cond_1
    iget-wide v8, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    iget-wide v10, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 371
    .local v4, "thisIntervalStart":J
    iget-wide v8, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    iget-wide v10, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    sub-long/2addr v8, v10

    .line 370
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 372
    .local v2, "otherIntervalStart":J
    cmp-long v7, v4, v2

    if-gez v7, :cond_2

    .line 373
    return v1

    .line 374
    :cond_2
    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 375
    return v6

    .line 377
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "useOneLine"    # Z

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    const-string/jumbo v2, " u"

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    const-string/jumbo v2, " ("

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string/jumbo v2, ")"

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    const-string/jumbo v2, ", "

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string/jumbo v2, ", "

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    const-string/jumbo v2, ", currentRunTime "

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    .line 228
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eqz v1, :cond_1

    .line 232
    const-string/jumbo v1, ", EXPEDITED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_1
    const-string/jumbo v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget v1, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    const-string/jumbo v2, " u"

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    const-string/jumbo v2, " ("

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    const-string/jumbo v2, ")"

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    const-string/jumbo v2, ", "

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 237
    :cond_4
    const-string/jumbo v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method public ignoreBackoff()Z
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isConflict(Lcom/android/server/content/SyncOperation;)Z
    .locals 5
    .param p1, "toRun"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 192
    .local v0, "other":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 193
    if-eqz v3, :cond_1

    .line 195
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v3, v4, :cond_1

    .line 196
    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    if-eqz v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 193
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    if-eqz v3, :cond_4

    :cond_3
    :goto_1
    return v2

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public isExpedited()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    return v0
.end method

.method public isIgnoreSettings()Z
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "ignore_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInitialization()Z
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isManual()Z
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "force"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotAllowedOnMetered()Z
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "allow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public matchesAuthority(Lcom/android/server/content/SyncOperation;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    return v0
.end method

.method public setDelayRunTime(J)V
    .locals 3
    .param p1, "delayTime"    # J

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    .line 381
    return-void
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 387
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 388
    .local v0, "logArray":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 389
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 390
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 392
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 399
    :goto_0
    return-object v0

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 395
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0

    .line 397
    :cond_1
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync op with invalid target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateEffectiveRunTime()V
    .locals 4

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->ignoreBackoff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    .line 353
    :goto_0
    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    .line 350
    return-void

    .line 355
    :cond_0
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->backoff:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public wakeLockName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v0, :cond_1

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    const-string/jumbo v1, "/"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string/jumbo v1, "/"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v0, :cond_2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    const-string/jumbo v1, "/"

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0

    .line 340
    :cond_2
    const-string/jumbo v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid target getting wakelock name for operation - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-object v3
.end method
