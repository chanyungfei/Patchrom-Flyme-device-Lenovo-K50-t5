.class Lcom/android/internal/telephony/cdma/utk/ListenPortManager;
.super Ljava/lang/Object;
.source "BipChannel.java"


# static fields
.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;


# instance fields
.field private mAcceptRunableHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/utk/AcceptRunable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    .line 826
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 828
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    .line 826
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/utk/ListenPortManager;
    .locals 2

    .prologue
    .line 832
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    if-nez v0, :cond_0

    .line 833
    const-string/jumbo v0, "ListenPortManager"

    const-string/jumbo v1, " new ListenPortManager"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    .line 837
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->sInstance:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    return-object v0
.end method


# virtual methods
.method public addListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 5
    .param p1, "port"    # I
    .param p2, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 841
    const-string/jumbo v2, "ListenPortManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " addListenPort:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    monitor-enter v3

    .line 845
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    check-cast v0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    monitor-exit v3

    .line 848
    if-nez v0, :cond_3

    .line 849
    if-eqz p2, :cond_0

    .line 850
    const-string/jumbo v2, "ListenPortManager"

    const-string/jumbo v3, " AcceptRunable = null, create itand set ch.mIsSocketReady = false by default."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mIsSocketReady:Z

    .line 854
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;

    .end local v0    # "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;-><init>(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 855
    .restart local v0    # "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    if-eqz p2, :cond_1

    iget-boolean v2, p2, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mIsSocketReady:Z

    if-eqz v2, :cond_2

    .line 861
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 862
    .local v1, "thd":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 864
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    monitor-enter v3

    .line 865
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 840
    .end local v1    # "thd":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 844
    .end local v0    # "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 856
    .restart local v0    # "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    :cond_2
    const-string/jumbo v2, "ListenPortManager"

    const-string/jumbo v3, " AcceptRunable = null, create itAcceptRunable owns a null ServerSocket instance, fail and return here."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-void

    .line 864
    .restart local v1    # "thd":Ljava/lang/Thread;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 868
    .end local v1    # "thd":Ljava/lang/Thread;
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->addRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    goto :goto_0
.end method

.method public removeListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 4
    .param p1, "port"    # I
    .param p2, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 873
    const-string/jumbo v1, "ListenPortManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " removeListenPort:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    monitor-enter v2

    .line 877
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    check-cast v0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    monitor-exit v2

    .line 880
    if-nez v0, :cond_1

    .line 881
    const-string/jumbo v1, "ListenPortManager"

    const-string/jumbo v2, " not found this ch"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 876
    .end local v0    # "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 883
    .restart local v0    # "r":Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->removeRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->stop()V

    .line 887
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    monitor-enter v2

    .line 888
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->mAcceptRunableHash:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    goto :goto_0

    .line 887
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method
