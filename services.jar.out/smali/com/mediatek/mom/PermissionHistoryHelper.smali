.class Lcom/mediatek/mom/PermissionHistoryHelper;
.super Ljava/lang/Object;
.source "PermissionHistoryHelper.java"


# static fields
.field private static final HISTORY_TIME_BOUND:I = 0xea60

.field private static final STATUS_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PermissionHistoryHelper"

.field private static mInstance:Lcom/mediatek/mom/PermissionHistoryHelper;


# instance fields
.field private mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/PackagePermissionHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/mediatek/mom/PermissionHistoryHelper;->mInstance:Lcom/mediatek/mom/PermissionHistoryHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    .line 53
    return-void
.end method

.method private findHistoryNotEnd(ILjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/PackagePermissionHistory;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v2, p0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 232
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 247
    :cond_1
    monitor-exit v2

    return-object v0

    .line 233
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PackagePermissionHistory;

    .line 234
    invoke-virtual {v0}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/PackagePermissionHistory;->getUserId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/PackagePermissionHistory;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/PackagePermissionHistory;->getPermissionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    .line 238
    if-eq p4, v4, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/mediatek/mom/PackagePermissionHistory;->getStatus()I

    move-result v4

    if-eq v4, p4, :cond_1

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/mediatek/mom/PermissionHistoryHelper;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/mediatek/mom/PermissionHistoryHelper;->mInstance:Lcom/mediatek/mom/PermissionHistoryHelper;

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    sget-object v0, Lcom/mediatek/mom/PermissionHistoryHelper;->mInstance:Lcom/mediatek/mom/PermissionHistoryHelper;

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lcom/mediatek/mom/PermissionHistoryHelper;

    invoke-direct {v0}, Lcom/mediatek/mom/PermissionHistoryHelper;-><init>()V

    sput-object v0, Lcom/mediatek/mom/PermissionHistoryHelper;->mInstance:Lcom/mediatek/mom/PermissionHistoryHelper;

    goto :goto_0
.end method

.method private getMergedHistory(IJJ)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/PermissionHistoryBase;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 163
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    monitor-enter v11

    .line 166
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 167
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    .line 205
    cmp-long v4, v8, v4

    if-eqz v4, :cond_1

    .line 206
    new-instance v4, Lcom/mediatek/mom/PermissionHistoryBase;

    invoke-direct {v4, v8, v9, v6, v7}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 208
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_1
    monitor-exit v11

    return-object v10

    .line 168
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mom/PackagePermissionHistory;

    .line 170
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getUserId()I

    move-result v5

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 173
    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/mediatek/mom/PackagePermissionHistory;->overlap(JJ)Z

    move-result v5

    const/4 v13, 0x1

    if-eq v5, v13, :cond_3

    .line 198
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_a

    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getStartTime()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-ltz v4, :cond_b

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_a

    move-wide/from16 v4, p4

    move-wide/from16 v6, p2

    :goto_2
    move-wide v8, v6

    move-wide v6, v4

    .line 203
    goto :goto_0

    :cond_3
    const-wide/16 v14, 0x0

    .line 174
    cmp-long v5, v8, v14

    if-nez v5, :cond_5

    .line 175
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getStartTime()J

    move-result-wide v6

    .line 176
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-nez v5, :cond_4

    move-wide/from16 v4, p4

    .line 177
    goto :goto_2

    .line 179
    :cond_4
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v4

    goto :goto_2

    .line 183
    :cond_5
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getStartTime()J

    move-result-wide v14

    cmp-long v5, v14, v6

    if-gtz v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_7

    .line 185
    new-instance v5, Lcom/mediatek/mom/PermissionHistoryBase;

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 187
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getStartTime()J

    move-result-wide v6

    .line 190
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v4

    goto :goto_2

    .line 183
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 193
    :cond_7
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v14

    cmp-long v5, v14, v6

    if-gtz v5, :cond_8

    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_9

    .line 194
    invoke-virtual {v4}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v4

    move-wide v6, v8

    goto :goto_2

    .line 193
    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    move-wide v4, v6

    move-wide v6, v8

    goto :goto_2

    :cond_a
    move-wide v4, v6

    move-wide v6, v8

    .line 198
    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    .line 210
    :catchall_0
    move-exception v4

    .line 211
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public addHistory(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 75
    iget-object v7, p0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    monitor-enter v7

    .line 77
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/mom/PermissionHistoryHelper;->findHistoryNotEnd(ILjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/PackagePermissionHistory;

    move-result-object v0

    .line 78
    if-nez v0, :cond_2

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 85
    new-instance v0, Lcom/mediatek/mom/PackagePermissionHistory;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/PackagePermissionHistory;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    .line 87
    iget-object v1, p0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "PermissionHistoryHelper"

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addHistory() history: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/mom/PackagePermissionHistory;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0xea60

    .line 92
    cmp-long v0, v4, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_4

    const-wide/32 v0, 0xea60

    sub-long v0, v4, v0

    move-wide v2, v0

    :goto_1
    const-wide/16 v0, 0x0

    .line 93
    cmp-long v0, v2, v0

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 95
    :cond_0
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 102
    :cond_1
    monitor-exit v7

    .line 103
    return-void

    :cond_2
    const-string/jumbo v1, "PermissionHistoryHelper"

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Avoid adding non-finished permission history: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/mom/PackagePermissionHistory;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    monitor-exit v7

    return-void

    .line 92
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v0, -0x1

    move-wide v2, v0

    goto :goto_1

    .line 93
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 96
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PackagePermissionHistory;

    .line 97
    invoke-virtual {v0}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_0

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getInteractionTime(IJ)J
    .locals 12

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const-string/jumbo v0, "PermissionHistoryHelper"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInteractionTime() userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timeBound(ns): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v10, p0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    monitor-enter v10

    .line 125
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 126
    cmp-long v0, v4, p2

    if-ltz v0, :cond_0

    move v0, v8

    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "PermissionHistoryHelper"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid timeBound! currentTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timeBound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    monitor-exit v10

    return-wide v6

    :cond_0
    move v0, v9

    .line 126
    goto :goto_0

    .line 131
    :cond_1
    sub-long v2, v4, p2

    const-string/jumbo v0, "PermissionHistoryHelper"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getInteractionTime() currentTime: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v11, " searchTime: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/PermissionHistoryHelper;->getMergedHistory(IJJ)Ljava/util/List;

    move-result-object v0

    .line 136
    if-nez v0, :cond_2

    move-wide v0, v6

    .line 152
    :goto_1
    cmp-long v2, v0, p2

    if-gtz v2, :cond_8

    move v2, v8

    :goto_2
    if-nez v2, :cond_9

    .line 155
    :goto_3
    monitor-exit v10

    return-wide p2

    .line 137
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 138
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-wide v0, v6

    goto :goto_1

    .line 139
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionHistoryBase;

    .line 140
    invoke-virtual {v0, v2, v3}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v1

    if-nez v1, :cond_5

    .line 143
    :cond_4
    invoke-virtual {v0, v2, v3}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 145
    invoke-virtual {v0, v4, v5}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v1

    if-nez v1, :cond_7

    .line 148
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionHistoryBase;->totalTime()J

    move-result-wide v0

    add-long/2addr v0, v6

    :goto_5
    move-wide v6, v0

    .line 150
    goto :goto_4

    .line 140
    :cond_5
    invoke-virtual {v0, v4, v5}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v1

    if-eqz v1, :cond_4

    move-wide v0, p2

    .line 142
    goto :goto_1

    .line 144
    :cond_6
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionHistoryBase;->getEndTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    add-long/2addr v0, v6

    goto :goto_5

    .line 146
    :cond_7
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionHistoryBase;->getStartTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    goto :goto_5

    :cond_8
    move v2, v9

    .line 152
    goto :goto_2

    :cond_9
    move-wide p2, v0

    goto :goto_3

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPackageChecking(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    monitor-enter v1

    .line 217
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v0, 0x2

    .line 218
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/mom/PermissionHistoryHelper;->findHistoryNotEnd(ILjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/PackagePermissionHistory;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    .line 223
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    .line 221
    :cond_0
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 223
    :catchall_0
    move-exception v0

    .line 224
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEnd(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 106
    iget-object v1, p0, Lcom/mediatek/mom/PermissionHistoryHelper;->mHistoryList:Ljava/util/List;

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/mom/PermissionHistoryHelper;->findHistoryNotEnd(ILjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/PackagePermissionHistory;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    .line 114
    :goto_0
    monitor-exit v1

    .line 115
    return-void

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/mom/PackagePermissionHistory;->setEndTime(J)V

    const-string/jumbo v0, "PermissionHistoryHelper"

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnd() userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " endTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
