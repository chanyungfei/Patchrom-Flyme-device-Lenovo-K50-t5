.class public abstract Lcom/mediatek/mom/MultiUserControllerBase;
.super Lcom/mediatek/mom/ControllerBase;
.source "MultiUserControllerBase.java"


# instance fields
.field private mManagerApListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchers:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/MultiUserControllerBase;->mSwitchers:Landroid/util/SparseBooleanArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/MultiUserControllerBase;->mManagerApListeners:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public enableController(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 62
    if-eq p1, v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/mom/MultiUserControllerBase;->mSwitchers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 74
    return-void

    .line 63
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "MultiUserControllerBase"

    const-string/jumbo v2, "Contrller is disabled during monkey test"

    .line 66
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 p1, 0x0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    const-string/jumbo v2, "MultiUserControllerBase"

    const-string/jumbo v3, "isUserAMonkey() failed"

    .line 70
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getManagerApListener()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/mediatek/mom/MultiUserControllerBase;->mManagerApListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getManagerApListener(I)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/mom/MultiUserControllerBase;->mManagerApListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public isControllerEnabled()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/mediatek/mom/MultiUserControllerBase;->isControllerEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isControllerEnabled(I)Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/mom/MultiUserControllerBase;->mSwitchers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public registerManagerApListener(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/mediatek/mom/MultiUserControllerBase;->mManagerApListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "MultiUserControllerBase"

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerManagerApListener() listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
