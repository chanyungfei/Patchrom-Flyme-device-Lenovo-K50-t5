.class Lcom/mediatek/mom/ManagerControlToken;
.super Ljava/lang/Object;
.source "ManagerControlToken.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ManagerControlToken"


# instance fields
.field private mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

.field private mEnabled:Z

.field private mIdentity:I

.field private mUid:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mUid:I

    .line 47
    iput v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mIdentity:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 49
    iput-boolean v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mEnabled:Z

    .line 51
    return-void
.end method

.method public constructor <init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mUid:I

    .line 47
    iput v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mIdentity:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 49
    iput-boolean v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mEnabled:Z

    .line 53
    iput p1, p0, Lcom/mediatek/mom/ManagerControlToken;->mUid:I

    .line 54
    iput p2, p0, Lcom/mediatek/mom/ManagerControlToken;->mIdentity:I

    .line 55
    iput-object p3, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 56
    iput-boolean v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mEnabled:Z

    .line 57
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/mediatek/common/mom/IMobileConnectionCallback;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    return-object v0
.end method

.method public getIdentity()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/mediatek/mom/ManagerControlToken;->mIdentity:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/mom/ManagerControlToken;->mUid:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/mom/ManagerControlToken;->mEnabled:Z

    return v0
.end method

.method public notifyConnectionEnded()Z
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x1

    .line 97
    iget-object v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    if-nez v1, :cond_0

    .line 104
    :goto_0
    return v0

    .line 99
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileConnectionCallback;->onConnectionEnded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyConnectionResume()Z
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    if-nez v1, :cond_0

    .line 116
    :goto_0
    return v0

    .line 111
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileConnectionCallback;->onConnectionResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 89
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/mom/ManagerControlToken;->mEnabled:Z

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ManagerControlToken {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mIdentity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateToken(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V
    .locals 1

    .prologue
    .line 60
    iput p1, p0, Lcom/mediatek/mom/ManagerControlToken;->mUid:I

    .line 61
    iput p2, p0, Lcom/mediatek/mom/ManagerControlToken;->mIdentity:I

    .line 62
    iput-object p3, p0, Lcom/mediatek/mom/ManagerControlToken;->mCallback:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/ManagerControlToken;->mEnabled:Z

    .line 64
    return-void
.end method
