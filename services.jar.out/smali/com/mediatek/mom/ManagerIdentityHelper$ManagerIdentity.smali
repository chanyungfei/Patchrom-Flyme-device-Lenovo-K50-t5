.class Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;
.super Ljava/lang/Object;
.source "ManagerIdentityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/ManagerIdentityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManagerIdentity"
.end annotation


# static fields
.field private static final VERIFYCOUNT_RESET_TIMES:I = 0xa


# instance fields
.field private mAppId:I

.field private mDefVerified:Z

.field private mIdentity:I

.field private mInitServiceName:Ljava/lang/String;

.field private mInstalled:Z

.field private mPackageName:Ljava/lang/String;

.field private mSignature:Landroid/content/pm/Signature;

.field private mTag:Ljava/lang/String;

.field private mVerified:Z

.field private mVerifiyCount:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/Signature;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v1, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mIdentity:I

    .line 79
    iput-object v2, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mTag:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mPackageName:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mInitServiceName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mAppId:I

    .line 83
    iput-boolean v1, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mInstalled:Z

    .line 84
    iput-object v2, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mSignature:Landroid/content/pm/Signature;

    .line 85
    iput-boolean v1, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerified:Z

    .line 86
    iput-boolean v1, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mDefVerified:Z

    .line 87
    iput v1, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerifiyCount:I

    .line 91
    iput p1, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mIdentity:I

    .line 92
    iput-object p2, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mTag:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mPackageName:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mInitServiceName:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mSignature:Landroid/content/pm/Signature;

    .line 96
    iput-boolean p6, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerified:Z

    iput-boolean p6, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mDefVerified:Z

    .line 97
    return-void
.end method

.method private declared-synchronized noteVerified()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 137
    :try_start_0
    iget v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerifiyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerifiyCount:I

    .line 138
    iget v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerifiyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    .line 141
    return-void

    .line 139
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->resetVerified()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mAppId:I

    return v0
.end method

.method public getIdentity()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mIdentity:I

    return v0
.end method

.method public getInitSrvName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mInitServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Landroid/content/pm/Signature;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mSignature:Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mInstalled:Z

    return v0
.end method

.method public declared-synchronized isVerified()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->noteVerified()V

    .line 130
    iget-boolean v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetVerified()Z
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .line 133
    :try_start_0
    iput v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerifiyCount:I

    .line 134
    iget-boolean v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mDefVerified:Z

    iput-boolean v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppId(I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mAppId:I

    .line 118
    return-void
.end method

.method public setInstalled(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mInstalled:Z

    .line 100
    return-void
.end method

.method public declared-synchronized verified()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 126
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;->mVerified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 127
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
