.class public Lcom/mediatek/perfservice/PerfServiceWrapper;
.super Ljava/lang/Object;
.source "PerfServiceWrapper.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceWrapper;


# static fields
.field private static final RENDER_THREAD_UPDATE_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "PerfServiceWrapper"


# instance fields
.field private inited:I

.field private mContext:Landroid/content/Context;

.field private mPreviousTime:J

.field private sService:Lcom/mediatek/perfservice/IPerfService;

.field private setTid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 54
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 56
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 77
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 76
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 64
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    if-nez v1, :cond_0

    .line 65
    const-string/jumbo v1, "mtk-perfservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 68
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_1

    .line 69
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 63
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_1
    const-string/jumbo v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string/jumbo v0, "@M_PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PerfServiceWrapper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 418
    const-string/jumbo v0, "@M_PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PerfServiceWrapper] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method public static native nativeGetPid()I
.end method

.method public static native nativeGetTid()I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 96
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in boostDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 85
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in boostEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeout(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 107
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in boostEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 118
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in boostEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpAll()V
    .locals 3

    .prologue
    .line 307
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 308
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->dumpAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in dumpAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastBoostPid()I
    .locals 4

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 391
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 392
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2}, Lcom/mediatek/perfservice/IPerfService;->getLastBoostPid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERR: RemoteException in getLastBoostPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPackName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 374
    const-string/jumbo v1, ""

    .line 377
    .local v1, "handle":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 378
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2}, Lcom/mediatek/perfservice/IPerfService;->getPackName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 384
    :cond_0
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERR: RemoteException in getPackName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "pid"    # I

    .prologue
    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 129
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/perfservice/IPerfService;->notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in notifyAppState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDisplayType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 364
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 366
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyDisplayType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in notifyDisplayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyFrameUpdate(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 342
    .local v2, "nowTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 344
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    if-nez v1, :cond_0

    .line 345
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result p1

    .line 346
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 349
    :cond_0
    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyFrameUpdate(I)V

    .line 353
    :cond_2
    iput-wide v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_3
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERR: RemoteException in notifyFrameUpdate:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyUserStatus(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 404
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 406
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->notifyUserStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in notifyUserStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restorePolicy(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 330
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->restorePolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in restorePolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFavorPid(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 319
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->setFavorPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in setFavorPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 246
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisableAll()V
    .locals 3

    .prologue
    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 288
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userDisableAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userDisableAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 234
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 235
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeout(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 256
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 257
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeoutMs(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 268
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userGetCapability(I)I
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    .line 180
    const/4 v1, -0x1

    .line 183
    .local v1, "value":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 184
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2, p1}, Lcom/mediatek/perfservice/IPerfService;->userGetCapability(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERR: RemoteException in userGetCapability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userReg(II)I
    .locals 6
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I

    .prologue
    .line 137
    const/4 v1, -0x1

    .line 140
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 141
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 142
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 143
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, p1, p2, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userReg(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 149
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERR: RemoteException in userReg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegBigLittle(IIII)I
    .locals 9
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I

    .prologue
    .line 153
    const/4 v8, -0x1

    .line 156
    .local v8, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 157
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v5

    .line 158
    .local v5, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v6

    .line 159
    .local v6, "tid":I
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegBigLittle(IIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 165
    .end local v5    # "pid":I
    .end local v6    # "tid":I
    :cond_0
    :goto_0
    return v8

    .line 161
    :catch_0
    move-exception v7

    .line 162
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ERR: RemoteException in userRegBigLittle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScn()I
    .locals 6

    .prologue
    .line 194
    const/4 v1, -0x1

    .line 197
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 198
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 199
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 200
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userRegScn(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 206
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERR: RemoteException in userRegScn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 213
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegScnConfig(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v7

    .line 216
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ERR: RemoteException in userRegScnConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userResetAll()V
    .locals 3

    .prologue
    .line 277
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 278
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userResetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userResetAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRestoreAll()V
    .locals 3

    .prologue
    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 298
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userRestoreAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userRestoreAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnreg(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 172
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnreg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userUnreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnregScn(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 223
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 224
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnregScn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userUnregScn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
