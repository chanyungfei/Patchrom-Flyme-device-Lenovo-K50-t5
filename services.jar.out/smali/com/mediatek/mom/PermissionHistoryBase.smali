.class public Lcom/mediatek/mom/PermissionHistoryBase;
.super Ljava/lang/Object;
.source "PermissionHistoryBase.java"


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0xd


# instance fields
.field private mEndTime:J

.field private mStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 54
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    cmp-long v0, p1, p3

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    move-wide v2, p1

    move-wide p1, p3

    move-wide p3, v2

    .line 62
    :cond_0
    iput-wide p1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    .line 63
    iput-wide p3, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    .line 64
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    if-eq p0, p1, :cond_1

    .line 134
    instance-of v0, p1, Lcom/mediatek/mom/PermissionHistoryBase;

    if-eqz v0, :cond_2

    .line 138
    check-cast p1, Lcom/mediatek/mom/PermissionHistoryBase;

    .line 140
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    invoke-virtual {p1}, Lcom/mediatek/mom/PermissionHistoryBase;->getStartTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    invoke-virtual {p1}, Lcom/mediatek/mom/PermissionHistoryBase;->getEndTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 142
    :cond_0
    return v4

    .line 131
    :cond_1
    return v5

    .line 135
    :cond_2
    return v4

    .line 144
    :cond_3
    return v5
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x12b

    .line 116
    mul-int/lit8 v0, v0, 0xd

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    return v0
.end method

.method public overlap(JJ)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget-wide v4, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 86
    iget-wide v4, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 87
    return v1

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0

    .line 89
    :cond_1
    return v2

    .line 92
    :cond_2
    iget-wide v4, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    cmp-long v0, v4, p3

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    iget-wide v4, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    cmp-long v0, v4, p1

    if-ltz v0, :cond_5

    move v0, v1

    :goto_2
    if-nez v0, :cond_6

    .line 93
    :cond_3
    return v2

    :cond_4
    move v0, v2

    .line 92
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 95
    :cond_6
    return v1
.end method

.method public setEndTime(J)V
    .locals 1

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackagePermissionHistory {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionHistoryBase;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionHistoryBase;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalTime()J
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public within(J)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    iget-wide v4, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iget-wide v4, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 76
    return v1

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    iget-wide v4, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    iget-wide v4, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    .line 78
    return v1

    :cond_2
    move v0, v2

    .line 77
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 80
    :cond_4
    return v2
.end method
