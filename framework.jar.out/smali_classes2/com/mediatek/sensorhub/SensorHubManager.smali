.class public Lcom/mediatek/sensorhub/SensorHubManager;
.super Ljava/lang/Object;
.source "SensorHubManager.java"

# interfaces
.implements Lcom/mediatek/sensorhub/ISensorHubManager;


# static fields
.field public static EXTRA_REQUEST_ID:Ljava/lang/String; = null

.field private static final LOG:Z

.field public static final REQUEST_ERROR_CONTEXT_INVALID:I = -0x3

.field public static final REQUEST_ERROR_NO_RESOURCE:I = -0x2

.field public static final REQUEST_ERROR_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SensorHubManager"

.field public static UPDATE_SENSORHUB_ACTION:Ljava/lang/String;

.field public static WAKE_DEVICE_SENSORHUB:Ljava/lang/String;


# instance fields
.field private mContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/mediatek/sensorhub/ISensorHubService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    const-string/jumbo v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    .line 179
    const-string/jumbo v0, "com.mediatek.permission.WAKE_DEVICE_SENSORHUB"

    sput-object v0, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "com.mediatek.permission.UPDATE_SENSORHUB_ACTION"

    sput-object v0, Lcom/mediatek/sensorhub/SensorHubManager;->UPDATE_SENSORHUB_ACTION:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "com.mediatek.sensorhub.EXTRA_REQUEST_ID"

    sput-object v0, Lcom/mediatek/sensorhub/SensorHubManager;->EXTRA_REQUEST_ID:Ljava/lang/String;

    .line 166
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mediatek/sensorhub/ISensorHubService;)V
    .locals 0
    .param p1, "service"    # Lcom/mediatek/sensorhub/ISensorHubService;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    .line 215
    return-void
.end method


# virtual methods
.method public cancelAction(I)Z
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "success":Z
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1}, Lcom/mediatek/sensorhub/ISensorHubService;->cancelAction(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 361
    .end local v1    # "success":Z
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_1

    .line 362
    const-string/jumbo v3, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelAction: rid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string/jumbo v2, " succeed."

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    return v1

    .line 357
    .restart local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelAction: RemoteException! rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "success":Z
    :cond_2
    const-string/jumbo v2, "failed!"

    goto :goto_1
.end method

.method public enableGestureWakeup(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "result":Z
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_0

    .line 385
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1}, Lcom/mediatek/sensorhub/ISensorHubService;->enableGestureWakeup(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_1

    .line 391
    const-string/jumbo v3, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableGestureWakeup: enable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string/jumbo v2, " succeed."

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_1
    return v1

    .line 386
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableGestureWakeup: RemoteException! enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 391
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :cond_2
    const-string/jumbo v2, " failed!"

    goto :goto_1
.end method

.method public getContextList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_0

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2}, Lcom/mediatek/sensorhub/ISensorHubService;->getContextList()Lcom/mediatek/sensorhub/ParcelableListInteger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/sensorhub/ParcelableListInteger;->toList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    :cond_1
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_2

    .line 238
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getContextList: list="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2
    return-object v1

    .line 230
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    const-string/jumbo v3, "getContextList: RemoteException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isContextSupported(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/mediatek/sensorhub/SensorHubManager;->getContextList()Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 256
    sget-boolean v1, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SensorHubManager"

    const-string/jumbo v2, "isContextSupported: null context list!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 259
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
    .locals 5
    .param p1, "condition"    # Lcom/mediatek/sensorhub/Condition;
    .param p2, "action"    # Lcom/mediatek/sensorhub/Action;

    .prologue
    .line 287
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 288
    :cond_0
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAction: failed! condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v2, -0x1

    return v2

    .line 291
    :cond_1
    const/4 v1, -0x1

    .line 292
    .local v1, "rid":I
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_2

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/sensorhub/ISensorHubService;->requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_3

    .line 300
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAction: condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", action["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->isRepeatable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    const-string/jumbo v4, ","

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->isOnConditionChanged()Z

    move-result v4

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    const-string/jumbo v4, "], rid="

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_3
    return v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    const-string/jumbo v3, "requestAction: RemoteException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCondition(ILcom/mediatek/sensorhub/Condition;)Z
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "condition"    # Lcom/mediatek/sensorhub/Condition;

    .prologue
    const/4 v5, 0x0

    .line 318
    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 319
    :cond_0
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCondition: failed! rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v5

    .line 323
    :cond_1
    const/4 v1, 0x0

    .line 324
    .local v1, "result":Z
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_2

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/sensorhub/ISensorHubService;->updateCondition(ILcom/mediatek/sensorhub/Condition;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 331
    .end local v1    # "result":Z
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_3

    .line 332
    const-string/jumbo v3, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCondition: rid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", condition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    const-string/jumbo v2, " succeed."

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3
    return v1

    .line 327
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCondition: RemoteException! rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :cond_4
    const-string/jumbo v2, " failed!"

    goto :goto_1
.end method
