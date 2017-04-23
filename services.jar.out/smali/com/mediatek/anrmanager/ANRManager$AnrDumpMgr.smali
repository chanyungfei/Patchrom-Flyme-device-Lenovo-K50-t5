.class public Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnrDumpMgr"
.end annotation


# instance fields
.field public mDumpList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/anrmanager/ANRManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager;)V
    .locals 1

    .prologue
    .line 802
    iput-object p1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    return-void
.end method

.method private isDumpable(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 850
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 851
    if-nez p1, :cond_1

    .line 855
    :cond_0
    :try_start_0
    monitor-exit v1

    return v3

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    # invokes: Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->isValid()Z
    invoke-static {p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->access$200(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 855
    :catchall_0
    move-exception v0

    .line 857
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelDump(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 3

    .prologue
    .line 806
    if-nez p1, :cond_1

    .line 807
    :cond_0
    return-void

    .line 806
    :cond_1
    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;

    .line 812
    if-nez v0, :cond_2

    .line 815
    :goto_0
    monitor-exit v1

    .line 816
    return-void

    .line 813
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpAnrDebugInfo(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 3

    .prologue
    .line 861
    if-eqz p1, :cond_0

    const-string/jumbo v0, "ANRManager"

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpAnrDebugInfo begin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getShuttingDown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    iget-boolean v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppCrashing:Z

    if-nez v0, :cond_2

    .line 876
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->isDumpable(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    invoke-virtual {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->dumpAnrDebugInfoLocked(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V

    const-string/jumbo v0, "ANRManager"

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpAnrDebugInfo end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void

    :cond_0
    const-string/jumbo v0, "ANRManager"

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpAnrDebugInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void

    :cond_1
    const-string/jumbo v0, "ANRManager"

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpAnrDebugInfo During shutdown skipping ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void

    :cond_2
    const-string/jumbo v0, "ANRManager"

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpAnrDebugInfo Crashing app skipping ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void

    :cond_3
    const-string/jumbo v0, "ANRManager"

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpAnrDebugInfo dump stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return-void
.end method

.method protected dumpAnrDebugInfoLocked(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v0, 0x0

    .line 886
    monitor-enter p1

    :try_start_0
    const-string/jumbo v1, "ANRManager"

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dumpAnrDebugInfoLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->isDumpable(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 892
    iget v6, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    .line 893
    iget v3, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentAppPid:I

    .line 894
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 895
    new-instance v4, Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-direct {v4, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 899
    if-ne v6, v10, :cond_9

    move-object v5, v0

    .line 905
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    if-gtz v3, :cond_a

    move v1, v6

    .line 909
    :goto_1
    if-ne v1, v6, :cond_b

    .line 911
    :goto_2
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I
    invoke-static {v0}, Lcom/mediatek/anrmanager/ANRManager;->access$300(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v0

    if-ne v0, v6, :cond_c

    .line 915
    :cond_0
    :goto_3
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0, v6, v1, v2, v4}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getPidFromLruProcesses(IILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 918
    if-nez v5, :cond_d

    .line 933
    :cond_1
    if-ne v6, v10, :cond_f

    .line 943
    :goto_4
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 945
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    if-gtz v3, :cond_10

    .line 951
    :goto_5
    if-ne v1, v6, :cond_11

    .line 956
    :cond_2
    :goto_6
    if-nez v5, :cond_12

    .line 972
    :cond_3
    :goto_7
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 974
    :cond_4
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    .line 982
    iget-object v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 985
    iget-object v7, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 986
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v1, "ANR in "

    .line 987
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    iget-object v1, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mShortComponentName:Ljava/lang/String;

    if-nez v1, :cond_14

    :goto_9
    const-string/jumbo v1, ", time="

    .line 991
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAnrTime:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    .line 992
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    if-nez v0, :cond_15

    .line 996
    :goto_a
    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentAppPid:I

    if-ne v0, v10, :cond_16

    .line 1000
    :cond_5
    :goto_b
    new-instance v3, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 1002
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->isDumpable(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1008
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    # getter for: Lcom/mediatek/anrmanager/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$400()[Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1010
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->isDumpable(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1015
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getMonitorCpuUsage()Z

    move-result v1

    if-nez v1, :cond_19

    :goto_c
    const-string/jumbo v1, "ANRManager"

    .line 1029
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-direct {p0, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->isDumpable(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1034
    if-eqz v0, :cond_1b

    :cond_6
    :goto_d
    const-string/jumbo v0, "ro.monkey"

    .line 1042
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1046
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    .line 1047
    monitor-exit p1

    .line 1048
    return-void

    .line 889
    :cond_8
    monitor-exit p1

    return-void

    .line 900
    :cond_9
    invoke-static {v6, v6}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 908
    goto/16 :goto_1

    .line 909
    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 911
    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I
    invoke-static {v0}, Lcom/mediatek/anrmanager/ANRManager;->access$300(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 912
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I
    invoke-static {v0}, Lcom/mediatek/anrmanager/ANRManager;->access$300(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 918
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 919
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 920
    if-eqz v0, :cond_e

    .line 921
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 922
    if-eq v0, v6, :cond_e

    if-eq v0, v1, :cond_e

    iget-object v8, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I
    invoke-static {v8}, Lcom/mediatek/anrmanager/ANRManager;->access$300(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v8

    if-eq v0, v8, :cond_e

    .line 923
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 924
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_e

    .line 934
    :cond_f
    # invokes: Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->setTransactionTimeoutPids(ILjava/util/ArrayList;Landroid/util/SparseArray;)V
    invoke-static {v6, v2, v4}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->access$100(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    goto/16 :goto_4

    :cond_10
    move v1, v3

    .line 948
    goto/16 :goto_5

    .line 951
    :cond_11
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->isJavaProcess(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 952
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 956
    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 957
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 958
    if-eqz v0, :cond_3

    .line 959
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 960
    if-eq v0, v6, :cond_3

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I
    invoke-static {v1}, Lcom/mediatek/anrmanager/ANRManager;->access$300(Lcom/mediatek/anrmanager/ANRManager;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 961
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->isJavaProcess(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 964
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 975
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 976
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 977
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getInterestingPids()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_14
    const-string/jumbo v1, " ("

    .line 989
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_15
    const-string/jumbo v1, "Reason: "

    .line 994
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 996
    :cond_16
    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentAppPid:I

    iget v1, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    if-eq v0, v1, :cond_5

    const-string/jumbo v0, "Parent: "

    .line 997
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mParentShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1003
    :cond_17
    monitor-exit p1

    return-void

    .line 1011
    :cond_18
    monitor-exit p1

    return-void

    .line 1017
    :cond_19
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getProcessCpuTracker()Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v4}, Lcom/mediatek/anrmanager/ANRManager;->getAndroidTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->getProcessCpuTracker()Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v4

    iget-wide v8, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAnrTime:J

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 1022
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1023
    :try_start_3
    # getter for: Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;->updateCpuStatsNow()V

    .line 1024
    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_c

    .line 1022
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 1032
    :cond_1a
    monitor-exit p1

    return-void

    .line 1037
    :cond_1b
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    invoke-virtual {v0, v6}, Lcom/mediatek/anrmanager/ANRManager;->isProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x3

    .line 1038
    invoke-static {v6, v0}, Landroid/os/Process;->sendSignal(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_d
.end method

.method public removeDumpRecord(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 3

    .prologue
    .line 819
    if-nez p1, :cond_1

    .line 820
    :cond_0
    return-void

    .line 819
    :cond_1
    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;

    .line 825
    monitor-exit v1

    .line 826
    return-void

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startAsyncDump(Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;)V
    .locals 8

    .prologue
    .line 829
    if-nez p1, :cond_1

    .line 830
    :cond_0
    return-void

    .line 829
    :cond_1
    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "ANRManager"

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAsyncDump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget v0, p1, Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;->mAppPid:I

    .line 837
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 838
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 842
    iget-object v2, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    iget-object v0, v0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, p1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 845
    iget-object v2, p0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;->this$0:Lcom/mediatek/anrmanager/ANRManager;

    iget-object v2, v2, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, v0, v4, v5}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 846
    monitor-exit v1

    .line 847
    return-void

    .line 839
    :cond_2
    monitor-exit v1

    return-void

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
