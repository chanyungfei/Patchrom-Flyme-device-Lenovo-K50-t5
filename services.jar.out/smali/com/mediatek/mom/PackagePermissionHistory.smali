.class Lcom/mediatek/mom/PackagePermissionHistory;
.super Lcom/mediatek/mom/PermissionHistoryBase;
.source "PackagePermissionHistory.java"


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0xd


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPermissionName:Ljava/lang/String;

.field private mStatus:I

.field private mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 52
    invoke-direct {p0, p4, p5, v0, v1}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 53
    iput p1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mUserId:I

    .line 54
    iput-object p2, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPackageName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPermissionName:Ljava/lang/String;

    .line 56
    iput p6, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mStatus:I

    .line 57
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p4, p5, p6, p7}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 62
    iput p1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mUserId:I

    .line 63
    iput-object p2, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPackageName:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPermissionName:Ljava/lang/String;

    .line 65
    iput p8, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mStatus:I

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    if-eq p0, p1, :cond_1

    .line 114
    instance-of v0, p1, Lcom/mediatek/mom/PackagePermissionHistory;

    if-eqz v0, :cond_2

    .line 118
    check-cast p1, Lcom/mediatek/mom/PackagePermissionHistory;

    .line 120
    iget v0, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mStatus:I

    invoke-virtual {p1}, Lcom/mediatek/mom/PackagePermissionHistory;->getStatus()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 124
    :cond_0
    return v2

    .line 111
    :cond_1
    return v3

    .line 115
    :cond_2
    return v2

    .line 120
    :cond_3
    iget v0, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mUserId:I

    invoke-virtual {p1}, Lcom/mediatek/mom/PackagePermissionHistory;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mediatek/mom/PackagePermissionHistory;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPermissionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mediatek/mom/PackagePermissionHistory;->getPermissionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    return v3
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mStatus:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mUserId:I

    add-int/lit16 v0, v0, 0x12b

    .line 88
    iget-object v1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPermissionName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 94
    :goto_1
    mul-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mStatus:I

    add-int/2addr v0, v1

    .line 96
    return v0

    .line 89
    :cond_0
    mul-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 92
    :cond_1
    mul-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PackagePermissionHistory {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/PackagePermissionHistory;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/PackagePermissionHistory;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/PackagePermissionHistory;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
