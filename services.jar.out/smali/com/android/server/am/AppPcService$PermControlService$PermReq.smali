.class public final Lcom/android/server/am/AppPcService$PermControlService$PermReq;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PermReq"
.end annotation


# instance fields
.field public final code:I

.field public isPermUIShowing:Z

.field private mHandler:Landroid/os/Handler;

.field public mIsPermUIShowingLock:Ljava/lang/Object;

.field public final packageName:Ljava/lang/String;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 2016
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing:Z

    .line 2014
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mIsPermUIShowingLock:Ljava/lang/Object;

    .line 2017
    iput p2, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->uid:I

    .line 2018
    iput-object p3, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->packageName:Ljava/lang/String;

    .line 2019
    iput p4, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->code:I

    .line 2020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    .line 2024
    return-void
.end method


# virtual methods
.method public isPermUIShowing()Z
    .locals 2

    .prologue
    .line 2026
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mIsPermUIShowingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2027
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 2028
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyAll(Z)V
    .locals 2

    .prologue
    .line 2071
    monitor-enter p0

    .line 2072
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2077
    monitor-exit p0

    .line 2078
    return-void

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    .line 2074
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->set(Z)V

    .line 2075
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2077
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public quitHandle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2035
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2040
    :goto_0
    return-void

    .line 2036
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2037
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2038
    iput-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public register(Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;)V
    .locals 1

    .prologue
    .line 2065
    monitor-enter p0

    .line 2066
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    monitor-exit p0

    .line 2068
    return-void

    .line 2067
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendTimeOutMessageDelay()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2059
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2063
    :goto_0
    return-void

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2061
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setHandle(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mHandler:Landroid/os/Handler;

    .line 2033
    return-void
.end method

.method public setIfPermUIShowing(Z)V
    .locals 2

    .prologue
    .line 2042
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->mIsPermUIShowingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2043
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing:Z

    if-eq p1, v0, :cond_0

    .line 2054
    iput-boolean p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing:Z

    .line 2055
    monitor-exit v1

    .line 2056
    return-void

    .line 2044
    :cond_0
    monitor-exit v1

    return-void

    .line 2055
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
