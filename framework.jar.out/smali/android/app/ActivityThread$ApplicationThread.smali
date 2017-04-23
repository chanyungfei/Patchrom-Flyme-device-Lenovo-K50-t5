.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"


# instance fields
.field private mLastProcessState:I

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method static synthetic -wrap0(Landroid/app/ActivityThread$ApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    .line 624
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    .line 624
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1158
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1159
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1160
    .local v0, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1157
    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .locals 50
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z

    .prologue
    .line 1036
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v12, v4, v6

    .line 1037
    .local v12, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v14, v4, v6

    .line 1038
    .local v14, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v16, v4, v6

    .line 1040
    .local v16, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v37

    .line 1042
    .local v37, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v18, v4, v6

    .line 1043
    .local v18, "dalvikMax":J
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long v22, v4, v6

    .line 1044
    .local v22, "dalvikFree":J
    sub-long v20, v18, v22

    .line 1045
    .local v20, "dalvikAllocated":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v46

    .line 1046
    .local v46, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v48

    .line 1047
    .local v48, "viewRootInstanceCount":J
    const-class v4, Landroid/app/ContextImpl;

    invoke-static {v4}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v28

    .line 1048
    .local v28, "appContextInstanceCount":J
    const-class v4, Landroid/app/Activity;

    invoke-static {v4}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v26

    .line 1049
    .local v26, "activityInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v34

    .line 1050
    .local v34, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v35

    .line 1051
    .local v35, "globalAssetManagerCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v31

    .line 1052
    .local v31, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v32

    .line 1053
    .local v32, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v30

    .line 1054
    .local v30, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v42

    .line 1055
    .local v42, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v40

    .line 1056
    .local v40, "parcelCount":J
    const-class v4, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v4}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v38

    .line 1057
    .local v38, "openSslSocketCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v44

    .line 1060
    .local v44, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v4, v4, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v11, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_0
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 1059
    invoke-static/range {v4 .. v23}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    .line 1065
    if-eqz p3, :cond_2

    .line 1070
    move-object/from16 v0, p1

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1071
    move-object/from16 v0, p1

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1072
    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1073
    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1075
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1076
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1077
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1078
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1080
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1081
    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1084
    move-object/from16 v0, v44

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1085
    move-object/from16 v0, v44

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1086
    move-object/from16 v0, v44

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1087
    move-object/from16 v0, v44

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v4, v4, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1088
    const/16 v36, 0x0

    .local v36, "i":I
    :goto_1
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_1

    .line 1089
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1090
    .local v33, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v33

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1092
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v33

    iget-wide v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1093
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v33

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1094
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    const/16 v4, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    add-int/lit8 v36, v36, 0x1

    goto :goto_1

    .line 1061
    .end local v33    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v36    # "i":I
    :cond_0
    const-string/jumbo v11, "unknown"

    goto/16 :goto_0

    .line 1097
    .restart local v36    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1099
    return-void

    .line 1102
    .end local v36    # "i":I
    :cond_2
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const-string/jumbo v4, " Objects"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Views:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "ViewRootImpl:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 1105
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1104
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1107
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "AppContexts:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1108
    const-string/jumbo v6, "Activities:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1107
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Assets:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1111
    const-string/jumbo v6, "AssetManagers:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1110
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Local Binders:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1114
    const-string/jumbo v6, "Proxy Binders:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1113
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Parcel memory:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-wide/16 v6, 0x400

    div-long v6, v42, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1116
    const-string/jumbo v6, "Parcel count:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1115
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "Death Recipients:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 1118
    const-string/jumbo v6, "OpenSSL Sockets:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1117
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    const-string/jumbo v4, " SQL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    const-string/jumbo v4, "%21s %8d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "MEMORY_USED:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v44

    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    const-string/jumbo v4, "%21s %8d %21s %8d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "PAGECACHE_OVERFLOW:"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1125
    move-object/from16 v0, v44

    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "MALLOC_SIZE:"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    move-object/from16 v0, v44

    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1124
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1128
    .local v24, "N":I
    if-lez v24, :cond_6

    .line 1129
    const-string/jumbo v4, " DATABASES"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    const-string/jumbo v4, "  %8s %8s %14s %14s  %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "pgsz"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "dbsz"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "Lookaside(b)"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string/jumbo v6, "cache"

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 1131
    const-string/jumbo v6, "Dbname"

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 1130
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    const/16 v36, 0x0

    .restart local v36    # "i":I
    :goto_2
    move/from16 v0, v36

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 1133
    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1134
    .restart local v33    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string/jumbo v5, "  %8s %8s %14s %14s  %s"

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/Object;

    .line 1135
    move-object/from16 v0, v33

    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_3

    move-object/from16 v0, v33

    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 1136
    move-object/from16 v0, v33

    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_4

    move-object/from16 v0, v33

    iget-wide v8, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :goto_4
    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 1137
    move-object/from16 v0, v33

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v4, :cond_5

    move-object/from16 v0, v33

    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_5
    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 1138
    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v4, v6, v7

    move-object/from16 v0, v33

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v4, v6, v7

    .line 1134
    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 1135
    :cond_3
    const-string/jumbo v4, " "

    goto :goto_3

    .line 1136
    :cond_4
    const-string/jumbo v4, " "

    goto :goto_4

    .line 1137
    :cond_5
    const-string/jumbo v4, " "

    goto :goto_5

    .line 1143
    .end local v33    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v36    # "i":I
    :cond_6
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v25

    .line 1144
    .local v25, "assetAlloc":Ljava/lang/String;
    if-eqz v25, :cond_7

    .line 1145
    const-string/jumbo v4, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    const-string/jumbo v4, " Asset Allocations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    :cond_7
    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 630
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 631
    if-eqz v0, :cond_1

    .line 633
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 629
    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "instrumentationName"    # Landroid/content/ComponentName;
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p7, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p8, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p9, "debugMode"    # I
    .param p10, "enableOpenGlTrace"    # Z
    .param p11, "isRestrictedBackupMode"    # Z
    .param p12, "persistent"    # Z
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p16, "coreSettings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 826
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p15, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p15, :cond_0

    .line 828
    invoke-static/range {p15 .. p15}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 831
    :cond_0
    move-object/from16 v0, p16

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 849
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 850
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x0

    .line 852
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v4, v8, v10, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 855
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v3, :cond_1

    .line 856
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    .line 858
    .local v7, "sharedUserIdSet":Z
    :goto_1
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_4

    .line 859
    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x0

    .line 860
    .local v5, "processNameNotDefault":Z
    :goto_2
    if-nez v7, :cond_5

    move v6, v5

    .line 864
    :goto_3
    if-nez v6, :cond_1

    .line 865
    iget-object v8, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 866
    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 865
    invoke-static {v8, v9, v10}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .end local v5    # "processNameNotDefault":Z
    .end local v7    # "sharedUserIdSet":Z
    :cond_1
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 871
    .local v1, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 872
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 873
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 874
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 875
    move-object/from16 v0, p6

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 876
    move-object/from16 v0, p7

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 877
    move-object/from16 v0, p8

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 878
    move/from16 v0, p9

    iput v0, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 879
    move/from16 v0, p10

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    .line 880
    move/from16 v0, p11

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 881
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 882
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 883
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 884
    move-object/from16 v0, p5

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 885
    iget-object v8, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v9, 0x6e

    invoke-static {v8, v9, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 824
    return-void

    .line 856
    .end local v1    # "data":Landroid/app/ActivityThread$AppBindData;
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "sharedUserIdSet":Z
    goto :goto_1

    .line 859
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "processNameNotDefault":Z
    goto :goto_2

    .line 858
    .end local v5    # "processNameNotDefault":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "processNameNotDefault":Z
    goto :goto_2

    .line 860
    :cond_5
    const/4 v6, 0x1

    .local v6, "sharable":Z
    goto :goto_3

    .line 853
    .end local v5    # "processNameNotDefault":Z
    .end local v6    # "sharable":Z
    .end local v7    # "sharedUserIdSet":Z
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearDnsCache()V
    .locals 1

    .prologue
    .line 907
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 910
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    .line 905
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .prologue
    .line 988
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 987
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 997
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 999
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1000
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1001
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 1002
    iput-object p4, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1003
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x88

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :goto_0
    return-void

    .line 1004
    :catch_0
    move-exception v6

    .line 1005
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "dumpActivity failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpAllMessageHistory()V
    .locals 0

    .prologue
    .line 1291
    invoke-static {}, Lcom/mediatek/anrappmanager/ANRAppManager;->dumpAllMessageHistory()V

    .line 1290
    return-void
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_0

    .line 1169
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1165
    :goto_0
    return-void

    .line 1176
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1153
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->-wrap0(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1154
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1152
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "managed"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 969
    new-instance v2, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 970
    .local v2, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v2, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 971
    iput-object p3, v2, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 972
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p1, :cond_0

    move v3, v5

    :goto_0
    const/16 v1, 0x87

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 968
    return-void

    :cond_0
    move v3, v4

    .line 972
    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "args"    # [Ljava/lang/String;

    .prologue
    .line 1025
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1026
    .local v7, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .local v1, "pw":Ljava/io/PrintWriter;
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1028
    :try_start_0
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1024
    return-void

    .line 1029
    :catchall_0
    move-exception v0

    .line 1030
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1029
    throw v0
.end method

.method public dumpMessageHistory()V
    .locals 0

    .prologue
    .line 1286
    invoke-static {}, Lcom/mediatek/anrappmanager/ANRAppManager;->dumpMessageHistory()V

    .line 1285
    return-void
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1011
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1013
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1014
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1015
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1016
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :goto_0
    return-void

    .line 1017
    :catch_0
    move-exception v6

    .line 1018
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "dumpProvider failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 929
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 931
    .local v2, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 932
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 933
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 934
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v6

    .line 936
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "dumpService failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableLooperLog()V
    .locals 0

    .prologue
    .line 1280
    invoke-static {}, Landroid/app/ActivityThread;->enableLooperLog()V

    .line 1279
    return-void
.end method

.method public notifyCleartextNetwork([B)V
    .locals 1
    .param p1, "firstPacket"    # [B

    .prologue
    .line 1271
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    .line 1270
    :cond_0
    return-void
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 924
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 925
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 923
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 3
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .prologue
    .line 965
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x7f

    invoke-static {v1, v2, p2, v0, p3}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 964
    return-void

    .line 965
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I

    .prologue
    .line 1188
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 1189
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 1190
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 1191
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 1192
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1187
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 959
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 960
    new-instance v1, Landroid/app/ActivityThread$ActivityConfigChangeData;

    invoke-direct {v1, p1, p2}, Landroid/app/ActivityThread$ActivityConfigChangeData;-><init>(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 959
    const/16 v2, 0x7d

    invoke-static {v0, v2, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 958
    return-void
.end method

.method public scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 1261
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x94

    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1260
    return-void

    .line 1261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I

    .prologue
    .line 781
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 782
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 783
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 784
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 785
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 790
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 780
    return-void
.end method

.method public scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1256
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x93

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1255
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 897
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 898
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 896
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 992
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 991
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I

    .prologue
    .line 751
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 752
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 753
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 754
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 756
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 750
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    .prologue
    .line 770
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 771
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 772
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 773
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 774
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 776
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 769
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I

    .prologue
    .line 734
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x6d

    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 733
    return-void

    .line 734
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 761
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 762
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 763
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 765
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 760
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1266
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1265
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    .line 889
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 888
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1245
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "ident"    # I
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "curConfig"    # Landroid/content/res/Configuration;
    .param p6, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p7, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p8, "referrer"    # Ljava/lang/String;
    .param p9, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p10, "procState"    # I
    .param p11, "state"    # Landroid/os/Bundle;
    .param p12, "persistentState"    # Landroid/os/PersistableBundle;
    .param p15, "notResumed"    # Z
    .param p16, "isForward"    # Z
    .param p17, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;ZZ",
            "Landroid/app/ProfilerInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 687
    .local p13, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p14, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, p10, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 689
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 691
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 692
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 693
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 694
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    .line 695
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 696
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 697
    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 698
    iput-object p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 699
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 701
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 702
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 704
    move/from16 v0, p15

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 705
    move/from16 v0, p16

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 707
    move-object/from16 v0, p17

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 709
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 710
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 712
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x64

    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 685
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 952
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    .line 726
    .local v0, "data":Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 727
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 729
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 724
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1215
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1216
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1215
    const/16 v2, 0x92

    invoke-static {v0, v2, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1214
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    .prologue
    const/4 v0, 0x0

    .line 640
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 641
    if-eqz p2, :cond_1

    const/16 v1, 0x66

    move v2, v1

    .line 643
    :goto_0
    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz p5, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 640
    invoke-static {v3, v2, p1, v0, p4}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 639
    return-void

    .line 641
    :cond_1
    const/16 v1, 0x65

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 643
    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I

    .prologue
    .line 741
    const/4 v2, 0x0

    move/from16 v0, p9

    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 742
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    .line 743
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v9, p8

    .line 742
    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    .line 744
    .local v1, "r":Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 745
    iput-object p3, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 746
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x71

    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 740
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 947
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 945
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 720
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 721
    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 720
    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 719
    return-void
.end method

.method public scheduleRestoreActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "toMax"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1301
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1302
    .local v10, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string/jumbo v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[BMW] scheduleRestoreActivity r = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1303
    const-string/jumbo v3, ", notResumed = "

    .line 1302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1304
    const-string/jumbo v3, ", toMax = "

    .line 1302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    if-eqz v10, :cond_0

    .line 1307
    if-eqz p7, :cond_1

    .line 1308
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v2, v10, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, -0x201

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1312
    :goto_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1313
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 1312
    invoke-virtual/range {v1 .. v9}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 1300
    :cond_0
    return-void

    .line 1310
    :cond_1
    iget-object v1, v10, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "processState"    # I
    .param p3, "isForward"    # Z
    .param p4, "resumeArgs"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 666
    invoke-virtual {p0, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 667
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/16 v2, 0x6b

    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 665
    return-void
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 671
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    .line 672
    .local v0, "res":Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 673
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 674
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 670
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskRemoved"    # Z
    .param p3, "startId"    # I
    .param p4, "flags"    # I
    .param p5, "args"    # Landroid/content/Intent;

    .prologue
    .line 803
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 804
    .local v0, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 805
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 806
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 807
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 808
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 810
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 802
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .prologue
    .line 661
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x89

    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 660
    return-void

    .line 661
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z
    .param p3, "configChanges"    # I

    .prologue
    .line 649
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 650
    if-eqz p2, :cond_0

    const/16 v0, 0x67

    .line 651
    :goto_0
    const/4 v2, 0x0

    .line 649
    invoke-static {v1, v0, p1, v2, p3}, Landroid/app/ActivityThread;->-wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 648
    return-void

    .line 650
    :cond_0
    const/16 v0, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 814
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 813
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    .line 893
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 892
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .prologue
    .line 1211
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x90

    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1210
    return-void

    .line 1211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->-wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1206
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 794
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 795
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 796
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 798
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 793
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWindow"    # Z

    .prologue
    .line 655
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 656
    if-eqz p2, :cond_0

    const/16 v0, 0x69

    .line 655
    :goto_0
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 654
    return-void

    .line 656
    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .prologue
    .line 1196
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1195
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "pacFileUrl"    # Landroid/net/Uri;

    .prologue
    .line 914
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 915
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v1

    .line 916
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_0

    .line 917
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    .line 913
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setProcessState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1220
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1219
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .param p1, "group"    # I

    .prologue
    .line 981
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :goto_0
    return-void

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;

    .prologue
    .line 1182
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1181
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 1200
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1201
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1202
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1203
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1199
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 4
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .prologue
    .line 1224
    monitor-enter p0

    .line 1225
    :try_start_0
    iget v3, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    if-eq v3, p1, :cond_1

    .line 1226
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    .line 1228
    const/4 v1, 0x0

    .line 1229
    .local v1, "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    const/4 v0, 0x1

    .line 1230
    .local v0, "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    const/4 v2, 0x1

    .line 1232
    .local v2, "dalvikProcessState":I
    const/4 v3, 0x6

    if-gt p1, v3, :cond_0

    .line 1233
    const/4 v2, 0x0

    .line 1235
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldalvik/system/VMRuntime;->updateProcessState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    .end local v1    # "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    .end local v2    # "dalvikProcessState":I
    :cond_1
    monitor-exit p0

    .line 1223
    return-void

    .line 1224
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final updateTimePrefs(Z)V
    .locals 0
    .param p1, "is24Hour"    # Z

    .prologue
    .line 1251
    invoke-static {p1}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    .line 1250
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 901
    return-void
.end method
