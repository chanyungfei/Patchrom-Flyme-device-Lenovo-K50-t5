.class public final Lcom/android/server/am/BroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;,
        Lcom/android/server/am/BroadcastQueue$BroadcastHandler;,
        Lcom/android/server/am/BroadcastQueue$AppNotResponding;
    }
.end annotation


# static fields
.field static final BROADCAST_INTENT_MSG:I = 0xc8

.field static final BROADCAST_TIMEOUT_MSG:I = 0xc9

.field static final MAX_BROADCAST_HISTORY:I

.field static final MAX_BROADCAST_SUMMARY_HISTORY:I

.field static final SCHEDULE_TEMP_WHITELIST_MSG:I = 0xca

.field private static final TAG:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_BROADCAST:Ljava/lang/String; = "BroadcastQueue"

.field private static final TAG_MU:Ljava/lang/String; = "BroadcastQueue_MU"


# instance fields
.field final mAnrBroadcastQueue:Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;

.field final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field mBroadcastsScheduled:Z

.field final mDelayBehindServices:Z

.field final mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

.field mHistoryNext:I

.field final mOrderedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mParallelBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

.field mPendingBroadcastRecvIndex:I

.field mPendingBroadcastTimeoutMessage:Z

.field final mQueueName:Ljava/lang/String;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSummaryHistoryDispatchTime:[J

.field final mSummaryHistoryEnqueueTime:[J

.field final mSummaryHistoryFinishTime:[J

.field mSummaryHistoryNext:I

.field final mTimeoutPeriod:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    :goto_0
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    .line 82
    :goto_1
    sput v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 76
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x32

    goto :goto_0

    .line 83
    :cond_1
    const/16 v0, 0x12c

    goto :goto_1
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timeoutPeriod"    # J
    .param p6, "allowDelayBehindServices"    # Z

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    .line 125
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 126
    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 132
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 133
    iput v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 140
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    .line 141
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    .line 142
    sget v0, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    .line 147
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 241
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 242
    new-instance v0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    .line 243
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 244
    iput-wide p4, p0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    .line 245
    iput-boolean p6, p0, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    .line 246
    new-instance v0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;-><init>(Lcom/android/server/am/BroadcastQueue;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mAnrBroadcastQueue:Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;

    .line 240
    return-void
.end method

.method private final addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v6, 0x1

    .line 1398
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-gez v0, :cond_0

    .line 1400
    return-void

    .line 1402
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 1405
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v0, :cond_1

    .line 1406
    const-string/jumbo v1, "BroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Ordered"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1407
    const-string/jumbo v2, " ["

    .line 1406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1407
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 1406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1407
    const-string/jumbo v2, "] "

    .line 1406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1408
    const-string/jumbo v2, ", "

    .line 1406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1408
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1406
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1408
    const-string/jumbo v2, " receivers"

    .line 1406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1409
    const-string/jumbo v2, ", Total: "

    .line 1406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1409
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v4

    .line 1406
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1410
    const-string/jumbo v2, ", Waiting: "

    .line 1406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1410
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v4

    .line 1406
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1411
    const-string/jumbo v2, ", Processing: "

    .line 1406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1411
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v4, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v2, v4

    .line 1406
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    aput-object p1, v0, v1

    .line 1416
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    invoke-direct {p0, v0, v6, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 1418
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    aput-object v2, v0, v1

    .line 1419
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    aput-wide v2, v0, v1

    .line 1420
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    aput-wide v2, v0, v1

    .line 1421
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1422
    iget v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    sget v1, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    invoke-direct {p0, v0, v6, v1}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    .line 1397
    return-void

    .line 1406
    :cond_2
    const-string/jumbo v0, "Non-ordered"

    goto/16 :goto_0

    .line 1408
    :cond_3
    const-string/jumbo v0, "null"

    goto/16 :goto_1
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V
    .locals 19
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p3, "ordered"    # Z

    .prologue
    .line 533
    const/16 v18, 0x0

    .line 534
    .local v18, "skip":Z
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 536
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 535
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v17

    .line 537
    .local v17, "perm":I
    if-eqz v17, :cond_5

    .line 538
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    const-string/jumbo v5, " from "

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    const-string/jumbo v5, " (pid="

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    const-string/jumbo v5, ", uid="

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    const-string/jumbo v5, ")"

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    const-string/jumbo v5, " requires "

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    const-string/jumbo v5, " due to registered receiver "

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/16 v18, 0x1

    .line 561
    .end local v17    # "perm":I
    :cond_0
    :goto_0
    if-nez v18, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 562
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v15, v2, :cond_1

    .line 563
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v3, v2, v15

    .line 564
    .local v3, "requiredPermission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 565
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 564
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v17

    .line 566
    .restart local v17    # "perm":I
    if-eqz v17, :cond_6

    .line 567
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: receiving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 568
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 569
    const-string/jumbo v5, " to "

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 569
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 570
    const-string/jumbo v5, " (pid="

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 570
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 571
    const-string/jumbo v5, ", uid="

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 571
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 571
    const-string/jumbo v5, ")"

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 572
    const-string/jumbo v5, " requires "

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 573
    const-string/jumbo v5, " due to sender "

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 573
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 574
    const-string/jumbo v5, " (uid "

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 574
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 574
    const-string/jumbo v5, ")"

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/16 v18, 0x1

    .line 597
    .end local v3    # "requiredPermission":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "perm":I
    :cond_1
    :goto_2
    if-nez v18, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 598
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 599
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v6, v2, Lcom/android/server/am/ReceiverList;->pid:I

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v2, Lcom/android/server/am/ReceiverList;->uid:I

    .line 598
    const/4 v5, 0x0

    .line 599
    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 598
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v17

    .line 600
    .restart local v17    # "perm":I
    if-eqz v17, :cond_3

    .line 601
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: security check failed when receiving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 602
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 603
    const-string/jumbo v5, " to "

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 603
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 604
    const-string/jumbo v5, " (pid="

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 604
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 605
    const-string/jumbo v5, ", uid="

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 605
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 605
    const-string/jumbo v5, ")"

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 606
    const-string/jumbo v5, " due to sender "

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 606
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    const-string/jumbo v5, " (uid "

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    const-string/jumbo v5, ")"

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/16 v18, 0x1

    .line 611
    .end local v17    # "perm":I
    :cond_3
    if-nez v18, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 613
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 612
    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 615
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Appop Denial: receiving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 616
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 617
    const-string/jumbo v5, " to "

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 617
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 618
    const-string/jumbo v5, " (pid="

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 618
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 619
    const-string/jumbo v5, ", uid="

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 619
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 619
    const-string/jumbo v5, ")"

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 620
    const-string/jumbo v5, " requires appop "

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 620
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v5

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 621
    const-string/jumbo v5, " due to sender "

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 621
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 622
    const-string/jumbo v5, " (uid "

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 622
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 622
    const-string/jumbo v5, ")"

    .line 615
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/16 v18, 0x1

    .line 626
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 627
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v9, v2, Lcom/android/server/am/ReceiverList;->uid:I

    .line 626
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 628
    return-void

    .line 546
    .restart local v17    # "perm":I
    :cond_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v16

    .line 547
    .local v16, "opCode":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 549
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 548
    move/from16 v0, v16

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Appop Denial: broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 551
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 552
    const-string/jumbo v5, " from "

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 552
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 552
    const-string/jumbo v5, " (pid="

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 553
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 553
    const-string/jumbo v5, ", uid="

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 553
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 553
    const-string/jumbo v5, ")"

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 554
    const-string/jumbo v5, " requires appop "

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 555
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 554
    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 556
    const-string/jumbo v5, " due to registered receiver "

    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 578
    .end local v16    # "opCode":I
    .restart local v3    # "requiredPermission":Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_6
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v13

    .line 579
    .local v13, "appOp":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_7

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v13, v2, :cond_7

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    .line 581
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 580
    invoke-virtual {v2, v13, v4, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    .line 583
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Appop Denial: receiving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 584
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    const-string/jumbo v5, " to "

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 586
    const-string/jumbo v5, " (pid="

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 586
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 587
    const-string/jumbo v5, ", uid="

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 587
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->uid:I

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 587
    const-string/jumbo v5, ")"

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 588
    const-string/jumbo v5, " requires appop "

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 588
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 590
    const-string/jumbo v5, " due to sender "

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 590
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 591
    const-string/jumbo v5, " (uid "

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 591
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 591
    const-string/jumbo v5, ")"

    .line 583
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/16 v18, 0x1

    .line 593
    goto/16 :goto_2

    .line 562
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 631
    .end local v3    # "requiredPermission":Ljava/lang/String;
    .end local v13    # "appOp":I
    .end local v15    # "i":I
    .end local v17    # "perm":I
    :cond_8
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_9

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v2, :cond_a

    .line 632
    :cond_9
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skipping deliver ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 633
    const-string/jumbo v5, " to "

    .line 632
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 633
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 632
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 633
    const-string/jumbo v5, ": process crashing"

    .line 632
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/16 v18, 0x1

    .line 638
    :cond_a
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_b

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    if-eq v2, v4, :cond_b

    .line 639
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v5, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " has been restarted , so skip the broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/16 v18, 0x1

    .line 641
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 642
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 646
    :cond_b
    if-nez v18, :cond_10

    .line 650
    if-eqz p3, :cond_c

    .line 651
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 652
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 653
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 654
    const/4 v2, 0x2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 655
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_c

    .line 661
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 662
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 667
    :cond_c
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "BroadcastQueue"

    .line 668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Delivering to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 667
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_d
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_f

    .line 672
    :cond_e
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BDC-Delivering broadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 673
    const-string/jumbo v5, ", queue="

    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 673
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 674
    const-string/jumbo v5, ", ordered="

    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 675
    const-string/jumbo v5, ", filter="

    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 676
    const-string/jumbo v5, ", receiver="

    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 676
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_f
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v5, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    .line 681
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 682
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 680
    invoke-static/range {v4 .. v12}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 683
    if-eqz p3, :cond_10

    .line 684
    const/4 v2, 0x3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_10
    :goto_3
    return-void

    .line 686
    :catch_0
    move-exception v14

    .line 687
    .local v14, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failure sending broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    if-eqz p3, :cond_10

    .line 689
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 690
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 691
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 692
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_10

    .line 693
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    goto :goto_3
.end method

.method private static performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 10
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 515
    if-eqz p0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 520
    iget v9, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 519
    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 513
    :goto_0
    return-void

    .line 523
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "app.thread must not be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_1
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    goto :goto_0
.end method

.method private final processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 291
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BroadcastQueue"

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Process cur broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 296
    :cond_1
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 297
    iput-object p2, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 298
    iput-object p1, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 299
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 300
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 304
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 306
    const/4 v10, 0x0

    .line 308
    .local v10, "started":Z
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BroadcastQueue"

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Delivering to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const-string/jumbo v2, ": "

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 313
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_4

    .line 314
    :cond_3
    const-string/jumbo v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BDC-Delivering broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    const-string/jumbo v2, ", queue="

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    const-string/jumbo v2, ", ordered="

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 317
    const-string/jumbo v2, ", app="

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    const-string/jumbo v2, ", receiver="

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_4
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 322
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 323
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v7, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v8, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 324
    iget v9, p2, Lcom/android/server/am/ProcessRecord;->repProcState:I

    .line 321
    invoke-interface/range {v0 .. v9}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 325
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "BroadcastQueue"

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Process cur broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DELIVERED for app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_5
    const/4 v10, 0x1

    .line 329
    if-nez v10, :cond_7

    .line 330
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "BroadcastQueue"

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Process cur broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": NOT STARTED!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_6
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 333
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 334
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 290
    :cond_7
    return-void

    .line 328
    :catchall_0
    move-exception v0

    .line 329
    if-nez v10, :cond_9

    .line 330
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "BroadcastQueue"

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Process cur broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": NOT STARTED!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_8
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 333
    iput-object v11, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 334
    iput-object v11, p2, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 328
    :cond_9
    throw v0
.end method

.method private final ringAdvance(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "increment"    # I
    .param p3, "ringSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 1391
    add-int/2addr p1, p2

    .line 1392
    if-gez p1, :cond_0

    add-int/lit8 v0, p3, -0x1

    return v0

    .line 1393
    :cond_0
    if-lt p1, p3, :cond_1

    return v0

    .line 1394
    :cond_1
    return p1
.end method


# virtual methods
.method public backgroundServicesFinishedLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 500
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 502
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 503
    const-string/jumbo v1, "BroadcastQueue"

    const-string/jumbo v2, "BDC-Resuming delayed broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 505
    iput v3, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 506
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 499
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    return-void
.end method

.method final broadcastTimeoutLocked(Z)V
    .locals 24
    .param p1, "fromMsg"    # Z

    .prologue
    .line 1259
    if-eqz p1, :cond_0

    .line 1260
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1262
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v4

    const/4 v6, 0x2

    if-ne v6, v4, :cond_0

    .line 1263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    .line 1264
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/BroadcastQueue;->mAnrBroadcastQueue:Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;

    .line 1263
    const/16 v7, 0x3e9

    invoke-virtual {v4, v7, v6}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1269
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1270
    return-void

    .line 1273
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 1274
    .local v18, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    .line 1275
    .local v5, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz p1, :cond_6

    .line 1277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v4, :cond_2

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->isDidDexOpt(J)Z

    move-result v4

    .line 1277
    if-eqz v4, :cond_2

    .line 1279
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skip BROADCAST_TIMEOUT ANR due to DexOpt performing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1283
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_3

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    add-long v22, v6, v8

    .line 1287
    .local v22, "timeoutTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1288
    return-void

    .line 1290
    .end local v22    # "timeoutTime":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_4

    .line 1294
    return-void

    .line 1297
    :cond_4
    iget-wide v6, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    add-long v22, v6, v8

    .line 1298
    .restart local v22    # "timeoutTime":J
    cmp-long v4, v22, v18

    if-lez v4, :cond_6

    .line 1303
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "BroadcastQueue"

    .line 1304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Premature timeout ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1305
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 1304
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1305
    const-string/jumbo v7, "] @ "

    .line 1304
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1305
    const-string/jumbo v7, ": resetting BROADCAST_TIMEOUT_MSG for "

    .line 1304
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1303
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1308
    return-void

    .line 1312
    .end local v22    # "timeoutTime":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/BroadcastRecord;

    .line 1313
    .local v14, "br":Lcom/android/server/am/BroadcastRecord;
    iget v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_8

    .line 1318
    const-string/jumbo v6, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Waited long enough for: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_7

    .line 1319
    iget-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 1318
    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 v4, 0x0

    iput-object v4, v14, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1321
    const/4 v4, 0x0

    iput v4, v14, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1322
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 1323
    return-void

    .line 1319
    :cond_7
    const-string/jumbo v4, "(null)"

    goto :goto_0

    .line 1327
    :cond_8
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1328
    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v20, v0

    .line 1329
    .local v20, "record":Lcom/android/server/am/ProcessRecord;
    if-eqz v20, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v21, v0

    .line 1330
    .local v21, "userId":I
    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    move/from16 v0, v21

    invoke-static {v0, v6, v7}, Lcom/mediatek/common/mom/MobileManagerUtils;->getUserConfirmTime(IJ)J

    move-result-wide v16

    .line 1331
    .local v16, "extendTime":J
    const-wide/16 v6, 0x0

    cmp-long v4, v16, v6

    if-lez v4, :cond_a

    .line 1332
    const-string/jumbo v4, "BroadcastQueue"

    const-string/jumbo v6, "Skip BROADCAST_TIMEOUT ANR due to user confirm blocking"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long v22, v6, v16

    .line 1334
    .restart local v22    # "timeoutTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 1335
    return-void

    .line 1329
    .end local v16    # "extendTime":J
    .end local v21    # "userId":I
    .end local v22    # "timeoutTime":J
    :cond_9
    const/16 v21, -0x2710

    .restart local v21    # "userId":I
    goto :goto_1

    .line 1340
    .end local v20    # "record":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "userId":I
    :cond_a
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Timeout of broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - receiver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1341
    const-string/jumbo v7, ", started "

    .line 1340
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1341
    iget-wide v8, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    sub-long v8, v18, v8

    .line 1340
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1341
    const-string/jumbo v7, "ms ago"

    .line 1340
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 1343
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    .line 1346
    iget v4, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-gtz v4, :cond_b

    .line 1347
    const-string/jumbo v4, "BroadcastQueue"

    const-string/jumbo v6, "Timeout on receiver with nextReceiver <= 0"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return-void

    .line 1351
    :cond_b
    const/4 v12, 0x0

    .line 1352
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v11, 0x0

    .line 1354
    .local v11, "anrMessage":Ljava/lang/String;
    iget-object v4, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 1355
    .local v15, "curReceiver":Ljava/lang/Object;
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Receiver during timeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1357
    instance-of v4, v15, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_10

    move-object v13, v15

    .line 1358
    check-cast v13, Lcom/android/server/am/BroadcastFilter;

    .line 1359
    .local v13, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v4, :cond_c

    .line 1360
    iget-object v4, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v6, :cond_c

    .line 1361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1362
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    .line 1363
    iget-object v7, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    .line 1362
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    check-cast v12, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v6

    .line 1370
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_c
    :goto_2
    if-eqz v12, :cond_d

    .line 1371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Broadcast of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1374
    .end local v11    # "anrMessage":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-ne v4, v5, :cond_e

    .line 1375
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1379
    :cond_e
    iget v6, v5, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v7, v5, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1380
    iget-object v8, v5, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v9, v5, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v10, 0x0

    move-object/from16 v4, p0

    .line 1379
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1383
    if-eqz v11, :cond_f

    .line 1386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v6, Lcom/android/server/am/BroadcastQueue$AppNotResponding;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12, v11}, Lcom/android/server/am/BroadcastQueue$AppNotResponding;-><init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->post(Ljava/lang/Runnable;)Z

    .line 1258
    :cond_f
    return-void

    .line 1361
    .restart local v11    # "anrMessage":Ljava/lang/String;
    .restart local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 1367
    .end local v13    # "bf":Lcom/android/server/am/BroadcastFilter;
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    :cond_10
    iget-object v12, v5, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_2
.end method

.method final cancelBroadcastTimeoutLocked()V
    .locals 3

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1250
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    .line 1252
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mAnrBroadcastQueue:Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;

    .line 1251
    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1244
    :cond_0
    return-void
.end method

.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1427
    const/4 v0, 0x0

    .line 1428
    .local v0, "didSomething":Z
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .end local v0    # "didSomething":Z
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1429
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1431
    .local v0, "didSomething":Z
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 1432
    return v3

    .line 1428
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1436
    .end local v0    # "didSomething":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 1437
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastRecord;->cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1439
    .restart local v0    # "didSomething":Z
    if-nez p4, :cond_2

    if-eqz v0, :cond_2

    .line 1440
    return v3

    .line 1436
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1444
    .end local v0    # "didSomething":Z
    :cond_3
    return v0
.end method

.method final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;
    .param p7, "needSep"    # Z

    .prologue
    .line 1475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 1477
    :cond_0
    const/4 v8, 0x0

    .line 1478
    .local v8, "printed":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .end local p7    # "needSep":Z
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_d

    .line 1479
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 1480
    .local v2, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_1

    iget-object v12, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1483
    :cond_1
    if-nez v8, :cond_3

    .line 1484
    if-eqz p7, :cond_2

    .line 1485
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1487
    :cond_2
    const/16 p7, 0x1

    .line 1488
    .local p7, "needSep":Z
    const/4 v8, 0x1

    .line 1489
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Active broadcasts ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    .end local p7    # "needSep":Z
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Active Broadcast "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    const-string/jumbo v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1478
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1476
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    .end local v4    # "i":I
    .end local v8    # "printed":Z
    .local p7, "needSep":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v12, :cond_0

    .line 1528
    .end local p7    # "needSep":Z
    :cond_6
    :goto_1
    const/4 v8, 0x0

    .line 1530
    .restart local v8    # "printed":Z
    const/4 v4, -0x1

    .line 1531
    .restart local v4    # "i":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/BroadcastQueue;->mHistoryNext:I

    .line 1532
    .local v7, "lastIndex":I
    move v10, v7

    .line 1536
    .local v10, "ringIndex":I
    :cond_7
    sget v12, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_HISTORY:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v12}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v10

    .line 1537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v9, v12, v10

    .line 1538
    .local v9, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v9, :cond_16

    .line 1570
    :cond_8
    :goto_2
    if-ne v10, v7, :cond_7

    .line 1572
    if-nez p6, :cond_c

    .line 1573
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryNext:I

    move v7, v10

    .line 1574
    if-eqz p5, :cond_1c

    .line 1575
    const/4 v8, 0x0

    .line 1576
    const/4 v4, -0x1

    .line 1591
    :cond_9
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1593
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    :cond_a
    sget v12, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v12}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v10

    .line 1594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    aget-object v5, v12, v10

    .line 1595
    .local v5, "intent":Landroid/content/Intent;
    if-nez v5, :cond_1e

    .line 1620
    :cond_b
    :goto_3
    if-ne v10, v7, :cond_a

    .line 1623
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_c
    :goto_4
    return p7

    .line 1494
    .end local v7    # "lastIndex":I
    .end local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v10    # "ringIndex":I
    :cond_d
    const/4 v8, 0x0

    .line 1495
    const/16 p7, 0x1

    .line 1496
    .local p7, "needSep":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    :goto_5
    if-ltz v4, :cond_12

    .line 1497
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 1498
    .restart local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz p6, :cond_e

    iget-object v12, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1501
    :cond_e
    if-nez v8, :cond_10

    .line 1502
    if-eqz p7, :cond_f

    .line 1503
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1505
    :cond_f
    const/16 p7, 0x1

    .line 1506
    const/4 v8, 0x1

    .line 1507
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Active ordered broadcasts ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    :cond_10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Active Ordered Broadcast "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/BroadcastRecord;

    const-string/jumbo v13, "    "

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1496
    :cond_11
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_5

    .line 1512
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_12
    if-eqz p6, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v12, :cond_6

    .line 1513
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v12, v12, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1512
    if-eqz v12, :cond_6

    .line 1514
    :cond_13
    if-eqz p7, :cond_14

    .line 1515
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1517
    :cond_14
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Pending broadcast ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v12, :cond_15

    .line 1519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const-string/jumbo v13, "    "

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1523
    :goto_6
    const/16 p7, 0x1

    goto/16 :goto_1

    .line 1521
    :cond_15
    const-string/jumbo v12, "    (null)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 1542
    .end local p7    # "needSep":Z
    .restart local v7    # "lastIndex":I
    .restart local v9    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v10    # "ringIndex":I
    :cond_16
    add-int/lit8 v4, v4, 0x1

    .line 1543
    if-eqz p6, :cond_17

    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1546
    :cond_17
    if-nez v8, :cond_19

    .line 1547
    if-eqz p7, :cond_18

    .line 1548
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1550
    :cond_18
    const/16 p7, 0x1

    .line 1551
    .restart local p7    # "needSep":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Historical broadcasts ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    const/4 v8, 0x1

    .line 1554
    .end local p7    # "needSep":Z
    :cond_19
    if-eqz p5, :cond_1a

    .line 1555
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Historical Broadcast "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v12, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    const-string/jumbo v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v12}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1559
    :cond_1a
    const-string/jumbo v12, "  #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v12, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1560
    const-string/jumbo v12, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1561
    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v12, :cond_1b

    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object v13, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eq v12, v13, :cond_1b

    .line 1563
    const-string/jumbo v12, "    targetComp: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    :cond_1b
    iget-object v12, v9, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1566
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_8

    .line 1567
    const-string/jumbo v12, "    extras: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1579
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_1c
    move v6, v4

    .line 1580
    .local v6, "j":I
    :cond_1d
    :goto_7
    if-lez v6, :cond_9

    if-eq v10, v7, :cond_9

    .line 1581
    sget v12, Lcom/android/server/am/BroadcastQueue;->MAX_BROADCAST_SUMMARY_HISTORY:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v12}, Lcom/android/server/am/BroadcastQueue;->ringAdvance(III)I

    move-result v10

    .line 1582
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    aget-object v9, v12, v10

    .line 1583
    if-eqz v9, :cond_1d

    .line 1586
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 1598
    .end local v6    # "j":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v11    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1e
    if-nez v8, :cond_20

    .line 1599
    if-eqz p7, :cond_1f

    .line 1600
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1602
    :cond_1f
    const/16 p7, 0x1

    .line 1603
    .restart local p7    # "needSep":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Historical broadcasts summary ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    const/4 v8, 0x1

    .line 1606
    .end local p7    # "needSep":Z
    :cond_20
    if-nez p5, :cond_21

    const/16 v12, 0x32

    if-lt v4, v12, :cond_21

    .line 1607
    const-string/jumbo v12, "  ..."

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1610
    :cond_21
    add-int/lit8 v4, v4, 0x1

    .line 1611
    const-string/jumbo v12, "  #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v12, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1612
    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v5, v12, v13, v14, v15}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    const-string/jumbo v12, "    enq="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v12, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryEnqueueTime:[J

    aget-wide v14, v13, v10

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1614
    const-string/jumbo v12, " disp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v12, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryDispatchTime:[J

    aget-wide v14, v13, v10

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1615
    const-string/jumbo v12, " fin="

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v12, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/BroadcastQueue;->mSummaryHistoryFinishTime:[J

    aget-wide v14, v13, v10

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1617
    .restart local v3    # "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_b

    .line 1618
    const-string/jumbo v12, "    extras: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 258
    return-void
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 253
    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Ljava/lang/String;
    .param p4, "resultExtras"    # Landroid/os/Bundle;
    .param p5, "resultAbort"    # Z
    .param p6, "waitForServices"    # Z

    .prologue
    .line 427
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 428
    .local v4, "state":I
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 429
    .local v2, "receiver":Landroid/content/pm/ActivityInfo;
    const/4 v5, 0x0

    iput v5, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 430
    if-nez v4, :cond_0

    .line 431
    const-string/jumbo v5, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finishReceiver ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] called but state is IDLE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 434
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 435
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-ne v5, p1, :cond_1

    .line 436
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    .line 438
    :cond_1
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_2

    .line 439
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    iget-object v5, v5, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 441
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 442
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 443
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 444
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 446
    iput p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 447
    iput-object p3, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 448
    iput-object p4, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 449
    if-eqz p5, :cond_5

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x8000000

    and-int/2addr v5, v6

    if-nez v5, :cond_5

    .line 450
    iput-boolean p5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 455
    :goto_0
    if-eqz p6, :cond_9

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-boolean v5, v5, Lcom/android/server/am/BroadcastQueue;->mDelayBehindServices:Z

    if-eqz v5, :cond_9

    .line 456
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v5, v5, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 457
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v5, v5, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_9

    .line 459
    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v6, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 460
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 461
    .local v1, "obj":Ljava/lang/Object;
    instance-of v5, v1, Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_6

    move-object v0, v1

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 466
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_1
    if-eqz v2, :cond_3

    if-nez v0, :cond_8

    .line 473
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActiveServices;->hasBackgroundServices(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 476
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 477
    .local v3, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v3, :cond_4

    .line 478
    const-string/jumbo v5, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BDC-mStartingBackground size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mStartingBackground = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 479
    const-string/jumbo v7, " mMaxStartingBackground = "

    .line 478
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 479
    iget-object v7, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v7, v7, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 478
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_4
    const-string/jumbo v5, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BDC-Delay finish: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v5, 0x4

    iput v5, p1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 485
    const/4 v5, 0x0

    return v5

    .line 452
    .end local v3    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    goto/16 :goto_0

    .line 461
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_6
    const/4 v0, 0x0

    .local v0, "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_1

    .line 463
    .end local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_1

    .line 467
    .end local v0    # "nextReceiver":Landroid/content/pm/ActivityInfo;
    :cond_8
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_3

    .line 468
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 490
    :cond_9
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 495
    const/4 v5, 0x1

    if-eq v4, v5, :cond_a

    .line 496
    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    const/4 v5, 0x1

    .line 495
    :goto_2
    return v5

    :cond_a
    const/4 v5, 0x1

    goto :goto_2

    .line 496
    :cond_b
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getMatchingOrderedReceiver(Landroid/os/IBinder;)Lcom/android/server/am/BroadcastRecord;
    .locals 4
    .param p1, "receiver"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 416
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 418
    .local v0, "r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    .line 419
    return-object v0

    .line 422
    .end local v0    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    return-object v3
.end method

.method public isPendingBroadcastProcessLocked(I)Z
    .locals 2
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x0

    .line 250
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1448
    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v2, v4, -0x1

    .line 1449
    .local v2, "logIndex":I
    if-ltz v2, :cond_1

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1450
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1451
    .local v1, "curReceiver":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1452
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    .line 1453
    .local v0, "bf":Lcom/android/server/am/BroadcastFilter;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 1454
    iget v5, v0, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1455
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    .line 1453
    const/16 v5, 0x7548

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1447
    .end local v0    # "bf":Lcom/android/server/am/BroadcastFilter;
    .end local v1    # "curReceiver":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local v1    # "curReceiver":Ljava/lang/Object;
    :cond_0
    move-object v3, v1

    .line 1457
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1458
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 1459
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1460
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 1458
    const/16 v5, 0x7549

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1463
    .end local v1    # "curReceiver":Ljava/lang/Object;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-gez v2, :cond_2

    const-string/jumbo v4, "BroadcastQueue"

    .line 1464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Discarding broadcast before first receiver is invoked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1463
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_2
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 1466
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1467
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1468
    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 1469
    const-string/jumbo v5, "NONE"

    aput-object v5, v4, v11

    .line 1465
    const/16 v5, 0x7549

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method

.method final processNextBroadcast(Z)V
    .locals 49
    .param p1, "fromMsg"    # Z

    .prologue
    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v48, v0

    monitor-enter v48

    .line 729
    :try_start_0
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processNextBroadcast ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 730
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 730
    const-string/jumbo v7, "]: "

    .line 729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 731
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 731
    const-string/jumbo v7, " broadcasts, "

    .line 729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 732
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 732
    const-string/jumbo v7, " ordered broadcasts"

    .line 729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 736
    if-eqz p1, :cond_1

    .line 737
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 741
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/am/BroadcastRecord;

    .line 743
    .local v40, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v40

    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v40

    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 745
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    .line 747
    .local v14, "N":I
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v4, :cond_3

    .line 748
    :cond_2
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Processing parallel broadcast ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 749
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 748
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 749
    const-string/jumbo v7, "] "

    .line 748
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 749
    const-string/jumbo v7, ", "

    .line 748
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 749
    const-string/jumbo v7, " receivers"

    .line 748
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_3
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v14, :cond_6

    .line 753
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v45

    .line 754
    .local v45, "target":Ljava/lang/Object;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "BroadcastQueue"

    .line 755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delivering non-ordered on ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] to registered "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 756
    const-string/jumbo v7, ": "

    .line 755
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 754
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_4
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v4, :cond_5

    .line 759
    const-string/jumbo v6, "BroadcastQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", #"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    move-object v4, v0

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_5
    check-cast v45, Lcom/android/server/am/BroadcastFilter;

    .end local v45    # "target":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    .line 752
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 764
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 765
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Done with parallel broadcast ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 766
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 765
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 766
    const-string/jumbo v7, "] "

    .line 765
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 726
    .end local v14    # "N":I
    .end local v26    # "i":I
    .end local v40    # "r":Lcom/android/server/am/BroadcastRecord;
    :catchall_0
    move-exception v4

    monitor-exit v48

    throw v4

    .line 774
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_b

    .line 775
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "BroadcastQueue"

    .line 776
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processNextBroadcast ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: waiting for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 777
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 776
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 775
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/am/ProcessRecord;

    .line 782
    .local v39, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v39, :cond_9

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    move/from16 v29, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    if-nez v29, :cond_a

    monitor-exit v48

    .line 786
    return-void

    .line 782
    :cond_9
    const/16 v29, 0x1

    .local v29, "isDead":Z
    goto :goto_2

    .line 780
    .end local v29    # "isDead":Z
    .end local v39    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v6

    throw v4

    .line 788
    .restart local v39    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pending app  ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 789
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 788
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 789
    const-string/jumbo v7, "]"

    .line 788
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 789
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v7, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 788
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 790
    const-string/jumbo v7, " died before responding to broadcast"

    .line 788
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    const/4 v6, 0x0

    iput v6, v4, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v6, v4, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 793
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 797
    .end local v39    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_b
    const/16 v32, 0x0

    .line 800
    .local v32, "looped":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_e

    .line 802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 803
    if-eqz v32, :cond_d

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    monitor-exit v48

    .line 809
    return-void

    .line 811
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/am/BroadcastRecord;

    .line 812
    .restart local v40    # "r":Lcom/android/server/am/BroadcastRecord;
    const/16 v25, 0x0

    .line 822
    .local v25, "forceReceive":Z
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v4, :cond_11

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v36

    .line 823
    .local v36, "numReceivers":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, v40

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_f

    .line 824
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 825
    .local v34, "now":J
    if-lez v36, :cond_f

    .line 826
    move-object/from16 v0, v40

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    move/from16 v0, v36

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v4, v34, v6

    if-lez v4, :cond_f

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v40

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->isDidDexOpt(J)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 843
    .end local v34    # "now":J
    :cond_f
    :goto_4
    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v4, :cond_13

    .line 844
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_10

    const-string/jumbo v4, "BroadcastQueue"

    .line 845
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processNextBroadcast("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 846
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 845
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 846
    const-string/jumbo v7, ") called when not idle (state="

    .line 845
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 847
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 845
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 847
    const-string/jumbo v7, ")"

    .line 845
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 844
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_10
    monitor-exit v48

    .line 848
    return-void

    .line 822
    .end local v36    # "numReceivers":I
    :cond_11
    const/16 v36, 0x0

    .restart local v36    # "numReceivers":I
    goto :goto_3

    .line 828
    .restart local v34    # "now":J
    :cond_12
    :try_start_6
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Hung broadcast ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 829
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 829
    const-string/jumbo v7, "] discarded after timeout failure:"

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 830
    const-string/jumbo v7, " now="

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v34

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 831
    const-string/jumbo v7, " dispatchTime="

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 831
    move-object/from16 v0, v40

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 828
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 832
    const-string/jumbo v7, " startTime="

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 832
    move-object/from16 v0, v40

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 828
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 833
    const-string/jumbo v7, " intent="

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 833
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 834
    const-string/jumbo v7, " numReceivers="

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 835
    const-string/jumbo v7, " nextReceiver="

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 835
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 836
    const-string/jumbo v7, " state="

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 836
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 838
    const/16 v25, 0x1

    .line 839
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    goto/16 :goto_4

    .line 851
    .end local v34    # "now":J
    :cond_13
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v4, :cond_14

    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v0, v36

    if-lt v4, v0, :cond_21

    .line 855
    :cond_14
    :goto_5
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_16

    .line 857
    :try_start_7
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_15

    const-string/jumbo v4, "BroadcastQueue"

    .line 858
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finishing broadcast ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 859
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 858
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 859
    const-string/jumbo v7, " app="

    .line 858
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 859
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 858
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 857
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_15
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v40

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 861
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 862
    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v40

    iget v12, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 860
    invoke-static/range {v4 .. v12}, Lcom/android/server/am/BroadcastQueue;->performReceiveLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 865
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 874
    :cond_16
    :goto_6
    :try_start_8
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_17

    const-string/jumbo v4, "BroadcastQueue"

    const-string/jumbo v6, "Cancelling BROADCAST_TIMEOUT_MSG"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->cancelBroadcastTimeoutLocked()V

    .line 877
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v4, :cond_18

    const-string/jumbo v4, "BroadcastQueue"

    .line 878
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finished with ordered broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 877
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 883
    const/16 v40, 0x0

    .line 884
    .local v40, "r":Lcom/android/server/am/BroadcastRecord;
    const/16 v32, 0x1

    .line 887
    .end local v40    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_19
    if-eqz v40, :cond_c

    .line 890
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move/from16 v41, v0

    add-int/lit8 v4, v41, 0x1

    move-object/from16 v0, v40

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 894
    .local v41, "recIdx":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v40

    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    .line 895
    if-nez v41, :cond_1b

    .line 896
    move-object/from16 v0, v40

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, v40

    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v40

    iput-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 899
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v4, :cond_1a

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    if-eqz v4, :cond_1b

    .line 900
    :cond_1a
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Processing ordered broadcast ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 901
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 900
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 901
    const-string/jumbo v7, "] "

    .line 900
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 901
    const-string/jumbo v7, ", "

    .line 900
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 901
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 900
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 901
    const-string/jumbo v7, " receivers"

    .line 900
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v4, :cond_1d

    .line 906
    move-object/from16 v0, v40

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    add-long v46, v6, v8

    .line 907
    .local v46, "timeoutTime":J
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_1c

    const-string/jumbo v4, "BroadcastQueue"

    .line 908
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Submitting BROADCAST_TIMEOUT_MSG ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 909
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 908
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 909
    const-string/jumbo v7, "] for "

    .line 908
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 909
    const-string/jumbo v7, " at "

    .line 908
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v46

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 907
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_1c
    move-object/from16 v0, p0

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->setBroadcastTimeoutLocked(J)V

    .line 913
    .end local v46    # "timeoutTime":J
    :cond_1d
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v17, v0

    .line 914
    .local v17, "brOptions":Landroid/app/BroadcastOptions;
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v0, v41

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    .line 916
    .local v33, "nextReceiver":Ljava/lang/Object;
    move-object/from16 v0, v33

    instance-of v4, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_24

    .line 919
    move-object/from16 v0, v33

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v24, v0

    .line 920
    .local v24, "filter":Lcom/android/server/am/BroadcastFilter;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "BroadcastQueue"

    .line 921
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delivering ordered ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 922
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 921
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 922
    const-string/jumbo v7, "] to registered "

    .line 921
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 923
    const-string/jumbo v7, ": "

    .line 921
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 920
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_1e
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v4, :cond_1f

    .line 926
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_1f
    move-object/from16 v0, v40

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;Z)V

    .line 930
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v4, :cond_22

    move-object/from16 v0, v40

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v4, :cond_22

    .line 939
    if-eqz v17, :cond_20

    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_20

    .line 940
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    .line 941
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v6

    .line 940
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v6, v7, v1}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_20
    :goto_7
    monitor-exit v48

    .line 944
    return-void

    .line 852
    .end local v17    # "brOptions":Landroid/app/BroadcastOptions;
    .end local v24    # "filter":Lcom/android/server/am/BroadcastFilter;
    .end local v33    # "nextReceiver":Ljava/lang/Object;
    .end local v41    # "recIdx":I
    .local v40, "r":Lcom/android/server/am/BroadcastRecord;
    :cond_21
    :try_start_9
    move-object/from16 v0, v40

    iget-boolean v4, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 851
    if-nez v4, :cond_14

    if-eqz v25, :cond_19

    goto/16 :goto_5

    .line 866
    :catch_0
    move-exception v19

    .line 867
    .local v19, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 868
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 869
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 868
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 869
    const-string/jumbo v7, "] sending broadcast result of "

    .line 868
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 870
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 868
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 933
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v40    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v17    # "brOptions":Landroid/app/BroadcastOptions;
    .restart local v24    # "filter":Lcom/android/server/am/BroadcastFilter;
    .restart local v33    # "nextReceiver":Ljava/lang/Object;
    .restart local v41    # "recIdx":I
    :cond_22
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_23

    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Quick finishing ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 934
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 933
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 934
    const-string/jumbo v7, "]: ordered="

    .line 933
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 935
    move-object/from16 v0, v40

    iget-boolean v7, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 933
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 935
    const-string/jumbo v7, " receiver="

    .line 933
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 935
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 933
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto/16 :goto_7

    .line 951
    .end local v24    # "filter":Lcom/android/server/am/BroadcastFilter;
    :cond_24
    move-object/from16 v0, v33

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object/from16 v27, v0

    .line 952
    .local v27, "info":Landroid/content/pm/ResolveInfo;
    new-instance v18, Landroid/content/ComponentName;

    .line 953
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 954
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 952
    move-object/from16 v0, v18

    invoke-direct {v0, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    .local v18, "component":Landroid/content/ComponentName;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v4, :cond_25

    .line 957
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_25
    const/16 v44, 0x0

    .line 961
    .local v44, "skip":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 962
    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, v27

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 963
    move-object/from16 v0, v27

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 961
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v38

    .line 964
    .local v38, "perm":I
    if-eqz v38, :cond_30

    .line 965
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v4, :cond_2f

    .line 966
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: broadcasting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 967
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 968
    const-string/jumbo v7, " from "

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 968
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 968
    const-string/jumbo v7, " (pid="

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 968
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 969
    const-string/jumbo v7, ", uid="

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 969
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 969
    const-string/jumbo v7, ")"

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 970
    const-string/jumbo v7, " is not exported from uid "

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 970
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 971
    const-string/jumbo v7, " due to receiver "

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 971
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 966
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :goto_8
    const/16 v44, 0x1

    .line 997
    :cond_26
    :goto_9
    if-nez v44, :cond_27

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x3e8

    if-eq v4, v6, :cond_27

    .line 998
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_27

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_27

    .line 999
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_a
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_27

    .line 1000
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    aget-object v43, v4, v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1002
    .local v43, "requiredPermission":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1004
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1006
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1005
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1002
    move-object/from16 v0, v43

    invoke-interface {v4, v0, v6, v7}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v38

    .line 1010
    :goto_b
    if-eqz v38, :cond_31

    .line 1011
    :try_start_b
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: receiving "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1012
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1012
    const-string/jumbo v7, " to "

    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1013
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1014
    const-string/jumbo v7, " requires "

    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1015
    const-string/jumbo v7, " due to sender "

    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1015
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1016
    const-string/jumbo v7, " (uid "

    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1016
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1016
    const-string/jumbo v7, ")"

    .line 1011
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/16 v44, 0x1

    .line 1037
    .end local v26    # "i":I
    .end local v43    # "requiredPermission":Ljava/lang/String;
    :cond_27
    :goto_c
    if-nez v44, :cond_28

    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_28

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 1039
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v27

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1038
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_28

    .line 1041
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Appop Denial: receiving "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1042
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1042
    const-string/jumbo v7, " to "

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1043
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1044
    const-string/jumbo v7, " requires appop "

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1044
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v7

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1045
    const-string/jumbo v7, " due to sender "

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1045
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1046
    const-string/jumbo v7, " (uid "

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1046
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1046
    const-string/jumbo v7, ")"

    .line 1041
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/16 v44, 0x1

    .line 1049
    :cond_28
    if-nez v44, :cond_29

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, v40

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1051
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1050
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkBroadcast(Landroid/content/Intent;IILjava/lang/String;I)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v4

    if-eqz v4, :cond_33

    const/16 v44, 0x0

    .line 1053
    :cond_29
    :goto_d
    const/16 v31, 0x0

    .line 1055
    .local v31, "isSingleton":Z
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1056
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1057
    move-object/from16 v0, v27

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1055
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v31

    .line 1062
    .end local v31    # "isSingleton":Z
    :goto_e
    :try_start_d
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v4, v6

    if-eqz v4, :cond_2a

    .line 1064
    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS"

    .line 1065
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1063
    invoke-static {v4, v6}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2a

    .line 1067
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: Receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1068
    const-string/jumbo v7, " requests FLAG_SINGLE_USER, but app does not hold "

    .line 1067
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1069
    const-string/jumbo v7, "android.permission.INTERACT_ACROSS_USERS"

    .line 1067
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/16 v44, 0x1

    .line 1073
    :cond_2a
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2b

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v4, :cond_2b

    .line 1075
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping deliver ordered ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1076
    const-string/jumbo v7, " to "

    .line 1075
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1076
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    .line 1075
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1076
    const-string/jumbo v7, ": process crashing"

    .line 1075
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1077
    const/16 v44, 0x1

    .line 1079
    :cond_2b
    if-nez v44, :cond_2d

    .line 1080
    const/16 v28, 0x0

    .line 1082
    .local v28, "isAvailable":Z
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1083
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1084
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1082
    invoke-interface {v4, v6, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v28

    .line 1090
    .end local v28    # "isAvailable":Z
    :goto_f
    if-nez v28, :cond_2d

    .line 1091
    :try_start_f
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_2c

    const-string/jumbo v4, "BroadcastQueue"

    .line 1092
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping delivery to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1093
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1092
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1094
    const-string/jumbo v7, " : package no longer available"

    .line 1092
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1091
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_2c
    const/16 v44, 0x1

    .line 1099
    :cond_2d
    if-eqz v44, :cond_34

    .line 1100
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_2e

    const-string/jumbo v4, "BroadcastQueue"

    .line 1101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping delivery of ordered ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1102
    const-string/jumbo v7, " for whatever reason"

    .line 1101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1100
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_2e
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    .line 1104
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    .line 1105
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1106
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit v48

    .line 1107
    return-void

    .line 973
    :cond_2f
    :try_start_10
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: broadcasting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 974
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 975
    const-string/jumbo v7, " from "

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 975
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 975
    const-string/jumbo v7, " (pid="

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 975
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 976
    const-string/jumbo v7, ", uid="

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 976
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 976
    const-string/jumbo v7, ")"

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 977
    const-string/jumbo v7, " requires "

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 977
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 978
    const-string/jumbo v7, " due to receiver "

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 978
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 973
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 981
    :cond_30
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v4, :cond_26

    .line 982
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v37

    .line 983
    .local v37, "opCode":I
    const/4 v4, -0x1

    move/from16 v0, v37

    if-eq v0, v4, :cond_26

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 985
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 984
    move/from16 v0, v37

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_26

    .line 986
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Appop Denial: broadcasting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 987
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 988
    const-string/jumbo v7, " from "

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 988
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 988
    const-string/jumbo v7, " (pid="

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 989
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 989
    const-string/jumbo v7, ", uid="

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 989
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 989
    const-string/jumbo v7, ")"

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 990
    const-string/jumbo v7, " requires appop "

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 991
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 990
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 992
    const-string/jumbo v7, " due to registered receiver "

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 993
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 986
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/16 v44, 0x1

    goto/16 :goto_9

    .line 1007
    .end local v37    # "opCode":I
    .restart local v26    # "i":I
    .restart local v43    # "requiredPermission":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 1008
    .restart local v19    # "e":Landroid/os/RemoteException;
    const/16 v38, -0x1

    goto/16 :goto_b

    .line 1020
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_31
    invoke-static/range {v43 .. v43}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v16

    .line 1021
    .local v16, "appOp":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_32

    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v0, v16

    if-eq v0, v4, :cond_32

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    .line 1023
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1022
    move/from16 v0, v16

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_32

    .line 1025
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Appop Denial: receiving "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1026
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1026
    const-string/jumbo v7, " to "

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1027
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1028
    const-string/jumbo v7, " requires appop "

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1028
    invoke-static/range {v43 .. v43}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1030
    const-string/jumbo v7, " due to sender "

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1030
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1031
    const-string/jumbo v7, " (uid "

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1031
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1031
    const-string/jumbo v7, ")"

    .line 1025
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/16 v44, 0x1

    .line 1033
    goto/16 :goto_c

    .line 999
    :cond_32
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    .line 1050
    .end local v16    # "appOp":I
    .end local v26    # "i":I
    .end local v43    # "requiredPermission":Ljava/lang/String;
    :cond_33
    const/16 v44, 0x1

    goto/16 :goto_d

    .line 1058
    .restart local v31    # "isSingleton":Z
    :catch_2
    move-exception v23

    .line 1059
    .local v23, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "BroadcastQueue"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/16 v44, 0x1

    goto/16 :goto_e

    .line 1085
    .end local v23    # "e":Ljava/lang/SecurityException;
    .end local v31    # "isSingleton":Z
    .restart local v28    # "isAvailable":Z
    :catch_3
    move-exception v20

    .line 1087
    .local v20, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception getting recipient info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1088
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1087
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 1110
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v28    # "isAvailable":Z
    :cond_34
    const/4 v4, 0x1

    move-object/from16 v0, v40

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 1111
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1112
    .local v5, "targetProcess":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1113
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v42, v0

    .line 1115
    .local v42, "receiverUid":I
    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v6, 0x3e8

    if-eq v4, v6, :cond_35

    if-eqz v31, :cond_35

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v0, v42

    invoke-virtual {v4, v6, v0}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v4

    .line 1115
    if-eqz v4, :cond_35

    .line 1117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    move-object/from16 v0, v27

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1119
    :cond_35
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v40

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    .line 1120
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    if-eqz v4, :cond_36

    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const v6, 0x186a0

    if-le v4, v6, :cond_36

    .line 1121
    const-string/jumbo v4, "BroadcastQueue_MU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Updated broadcast record activity info for secondary user, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1122
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1122
    const-string/jumbo v7, ", callingUid = "

    .line 1121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1122
    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 1121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1122
    const-string/jumbo v7, ", uid = "

    .line 1121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1123
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_36
    if-eqz v17, :cond_37

    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_37

    .line 1128
    invoke-virtual/range {v17 .. v17}, Landroid/app/BroadcastOptions;->getTemporaryAppWhitelistDuration()J

    move-result-wide v6

    .line 1127
    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/server/am/BroadcastQueue;->scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1133
    :cond_37
    :try_start_11
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1134
    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v8, 0x0

    .line 1133
    invoke-interface {v4, v6, v8, v7}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1142
    :goto_10
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1143
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x0

    .line 1142
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v15

    .line 1144
    .local v15, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v15, :cond_38

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v4, :cond_38

    .line 1146
    :try_start_13
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1147
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1146
    invoke-virtual {v15, v4, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1148
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    monitor-exit v48

    .line 1149
    return-void

    .line 1136
    .end local v15    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_4
    move-exception v21

    .line 1137
    .local v21, "e":Ljava/lang/IllegalArgumentException;
    :try_start_14
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed trying to unstop package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1138
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1138
    const-string/jumbo v7, ": "

    .line 1137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1153
    .end local v21    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_5
    move-exception v22

    .line 1155
    .local v22, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed sending broadcast to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1156
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1156
    const-string/jumbo v7, " with "

    .line 1155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1156
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1155
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1164
    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1165
    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v40

    iget-boolean v9, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, v40

    .line 1164
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1166
    .end local v5    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1168
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    monitor-exit v48

    .line 1169
    return-void

    .line 1150
    .end local v22    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "targetProcess":Ljava/lang/String;
    :catch_6
    move-exception v19

    .line 1151
    .restart local v19    # "e":Landroid/os/RemoteException;
    :try_start_15
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception when sending broadcast to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1152
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1151
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_38
    const/16 v30, 0x1

    .line 1179
    .local v30, "isGranted":Z
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x2710

    if-lt v4, v6, :cond_39

    .line 1180
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/lenovo/common/SecurityManagerUtils;->checkAutoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    .line 1182
    .end local v30    # "isGranted":Z
    :cond_39
    if-nez v30, :cond_3a

    .line 1185
    const-string/jumbo v4, "SecurityManagerUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deny pn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    move-object/from16 v0, v40

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1187
    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v40

    iget-boolean v9, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, v40

    .line 1186
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1188
    .end local v5    # "targetProcess":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1189
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    monitor-exit v48

    .line 1190
    return-void

    .line 1196
    .restart local v5    # "targetProcess":Ljava/lang/String;
    :cond_3a
    :try_start_16
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_3b

    const-string/jumbo v4, "BroadcastQueue"

    .line 1197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Need to start app ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1198
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 1197
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1198
    const-string/jumbo v7, "] "

    .line 1197
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1198
    const-string/jumbo v7, " for broadcast "

    .line 1197
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1196
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1200
    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1201
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    or-int/lit8 v8, v7, 0x4

    .line 1202
    const-string/jumbo v9, "broadcast"

    move-object/from16 v0, v40

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    .line 1203
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v11, 0x2000000

    and-int/2addr v7, v11

    if-eqz v7, :cond_3c

    const/4 v11, 0x1

    .line 1200
    :goto_11
    const/4 v7, 0x1

    .line 1203
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1199
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    move-object/from16 v0, v40

    iput-object v4, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_3d

    .line 1207
    const-string/jumbo v4, "BroadcastQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to launch app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1208
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1208
    const-string/jumbo v7, "/"

    .line 1207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1209
    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1209
    const-string/jumbo v7, " for broadcast "

    .line 1207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1210
    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1210
    const-string/jumbo v7, ": process is bad"

    .line 1207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 1212
    move-object/from16 v0, v40

    iget v8, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, v40

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1213
    move-object/from16 v0, v40

    iget-object v10, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, v40

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, v40

    .line 1212
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 1215
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iput v4, v0, Lcom/android/server/am/BroadcastRecord;->state:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    monitor-exit v48

    .line 1216
    return-void

    .line 1203
    :cond_3c
    const/4 v11, 0x0

    goto/16 :goto_11

    .line 1219
    :cond_3d
    :try_start_17
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 1220
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    monitor-exit v48

    .line 725
    return-void

    .line 1135
    .end local v15    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_7
    move-exception v19

    .restart local v19    # "e":Landroid/os/RemoteException;
    goto/16 :goto_10
.end method

.method public final replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_2

    .line 278
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BroadcastQueue"

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "***** DROPPING ORDERED ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    const-string/jumbo v3, "]: "

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 281
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/4 v1, 0x1

    return v1

    .line 277
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 286
    :cond_2
    return v3
.end method

.method public final replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 265
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BroadcastQueue"

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "***** DROPPING PARALLEL ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    const-string/jumbo v3, "]: "

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    const/4 v1, 0x1

    return v1

    .line 264
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 273
    :cond_2
    return v3
.end method

.method public scheduleBroadcastsLocked()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 397
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Schedule broadcasts ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    const-string/jumbo v2, "]: current="

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 399
    iget-boolean v2, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_1

    .line 402
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v3, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 396
    return-void

    .line 406
    :cond_3
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "BroadcastQueue"

    const-string/jumbo v1, "Delay broadcast before system booted 3s"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v1, v3, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method final scheduleTempWhitelistLocked(IJLcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "duration"    # J
    .param p4, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 701
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 702
    const-wide/32 p2, 0x7fffffff

    .line 710
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    iget v1, p4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 713
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 715
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    long-to-int v2, p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v1, v4, p1, v2, v3}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 700
    return-void

    .line 716
    :cond_2
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 717
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 718
    :cond_3
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public sendPendingBroadcastsLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x0

    .line 340
    const/4 v7, 0x0

    .line 341
    .local v7, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 342
    .local v1, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v0, v2, :cond_0

    .line 344
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 345
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    const/4 v7, 0x1

    .line 361
    :cond_0
    return v7

    .line 347
    :catch_0
    move-exception v8

    .line 348
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BroadcastQueue"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in new application when starting receiver "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 349
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 353
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 354
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    .line 353
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 355
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 357
    iput v6, v1, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_1
    const-string/jumbo v0, "(null)"

    goto :goto_0
.end method

.method final setBroadcastTimeoutLocked(J)V
    .locals 9
    .param p1, "timeoutTime"    # J

    .prologue
    const-wide/16 v6, 0x2

    .line 1225
    iget-boolean v3, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    if-nez v3, :cond_1

    .line 1226
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v4, 0xc9

    invoke-virtual {v3, v4, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1227
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    invoke-virtual {v3, v0, p1, p2}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1228
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastTimeoutMessage:Z

    .line 1231
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_0

    .line 1232
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    .line 1233
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue;->mAnrBroadcastQueue:Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;

    const/16 v5, 0x3e9

    .line 1232
    invoke-virtual {v3, v5, v4}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1234
    .local v1, "msg2":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    div-long/2addr v4, v6

    sub-long v4, p1, v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1236
    .end local v1    # "msg2":Landroid/os/Message;
    :cond_0
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1237
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    const/16 v4, 0x3ef

    invoke-virtual {v3, v4}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1238
    .local v2, "msg3":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    iget-wide v4, p0, Lcom/android/server/am/BroadcastQueue;->mTimeoutPeriod:J

    div-long/2addr v4, v6

    sub-long v4, p1, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1224
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "msg3":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v6, 0x0

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    .line 378
    .local v7, "br":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, v7, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_0

    .line 379
    move-object v1, v7

    .line 382
    .end local v1    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v7    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_2

    .line 383
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BroadcastQueue"

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] skip & discard pending app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 388
    :cond_2
    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 390
    iget v2, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 391
    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, v1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object v0, p0

    .line 390
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 392
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 374
    :cond_3
    return-void
.end method

.method public skipPendingBroadcastLocked(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 366
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, p1, :cond_0

    .line 367
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 368
    iget v1, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcastRecvIndex:I

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 369
    iput-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mPendingBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 370
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 364
    :cond_0
    return-void
.end method
