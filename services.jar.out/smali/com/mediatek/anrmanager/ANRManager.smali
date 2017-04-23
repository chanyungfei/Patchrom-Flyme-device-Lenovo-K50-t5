.class public final Lcom/mediatek/anrmanager/ANRManager;
.super Lcom/mediatek/anrappmanager/ANRManagerNative;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/anrmanager/ANRManager$BinderDumpThread;,
        Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;,
        Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;,
        Lcom/mediatek/anrmanager/ANRManager$DumpThread;,
        Lcom/mediatek/anrmanager/ANRManager$AnrDumpRecord;,
        Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;,
        Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;,
        Lcom/mediatek/anrmanager/ANRManager$IAnrBroadcastQueue;
    }
.end annotation


# static fields
.field static final ANR_BOOT_DEFER_TIME:J = 0x7530L

.field public static AnrOption:I = 0x0

.field public static final DISABLE_ALL_ANR_MECHANISM:I = 0x0

.field public static final DISABLE_PARTIAL_ANR_MECHANISM:I = 0x1

.field public static final ENABLE_ALL_ANR_MECHANISM:I = 0x2

.field private static final EVENT_BASE:I = 0x2328

.field public static final EVENT_BOOT_COMPLETED:I = 0x2329

.field public static final EVENT_DEXOPT_DONE:I = 0x232a

.field public static final IS_USER_BUILD:Z

.field protected static final MAX_MTK_TRACE_COUNT:I = 0xa

.field private static final MESSAGE_MAP_BUFFER_COUNT_MAX:I = 0x5

.field private static final MESSAGE_MAP_BUFFER_SIZE_MAX:I = 0xc350

.field private static final MONITOR_CPU_MIN_TIME:J = 0x9c4L

.field private static NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field protected static final REMOVE_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ed

.field public static final RENAME_TRACE_FILES_MSG:I = 0x3ee

.field public static final SIGNAL_STKFLT:I = 0x10

.field protected static final START_ANR_DUMP_MSG:I = 0x3eb

.field public static final START_MONITOR_BROADCAST_TIMEOUT_MSG:I = 0x3e9

.field protected static final START_MONITOR_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ec

.field public static final START_MONITOR_SERVICE_TIMEOUT_MSG:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "ANRManager"

.field public static final UPDATE_CPU_USAGE:I = 0x3ef

.field protected static additionNBTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

.field private static final mANRProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

.field private static final mDumpStackTraces:Ljava/lang/Object;

.field public static mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mZygotePids:[I

.field private static sInstance:Lcom/mediatek/anrmanager/ANRManager;


# instance fields
.field private AnrFlow:I

.field private mAmsContext:Landroid/content/Context;

.field private mAmsPid:I

.field public mAnrDumpMgr:Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;

.field public mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

.field private mDexoptDone:J

.field private mEventBootCompleted:J

.field private final mLastCpuUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    sput v4, Lcom/mediatek/anrmanager/ANRManager;->AnrOption:I

    const-string/jumbo v0, "user"

    .line 95
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/mediatek/anrmanager/ANRManager;->IS_USER_BUILD:Z

    .line 98
    sput-object v5, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->mDumpStackTraces:Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "/system/bin/mediaserver"

    aput-object v3, v0, v1

    const-string/jumbo v1, "/system/bin/surfaceflinger"

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/bin/netd"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    .line 122
    sput-object v5, Lcom/mediatek/anrmanager/ANRManager;->sInstance:Lcom/mediatek/anrmanager/ANRManager;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    :cond_1
    const-string/jumbo v0, "userdebug"

    .line 95
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 128
    invoke-direct {p0}, Lcom/mediatek/anrappmanager/ANRManagerNative;-><init>()V

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mLastCpuUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1461
    iput-wide v2, p0, Lcom/mediatek/anrmanager/ANRManager;->mEventBootCompleted:J

    .line 1464
    iput-wide v2, p0, Lcom/mediatek/anrmanager/ANRManager;->mDexoptDone:J

    const/4 v0, -0x1

    .line 1511
    iput v0, p0, Lcom/mediatek/anrmanager/ANRManager;->AnrFlow:I

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;ILandroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 139
    invoke-direct {p0}, Lcom/mediatek/anrappmanager/ANRManagerNative;-><init>()V

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mLastCpuUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1461
    iput-wide v2, p0, Lcom/mediatek/anrmanager/ANRManager;->mEventBootCompleted:J

    .line 1464
    iput-wide v2, p0, Lcom/mediatek/anrmanager/ANRManager;->mDexoptDone:J

    const/4 v0, -0x1

    .line 1511
    iput v0, p0, Lcom/mediatek/anrmanager/ANRManager;->AnrFlow:I

    .line 140
    iput p2, p0, Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I

    .line 141
    iput-object p3, p0, Lcom/mediatek/anrmanager/ANRManager;->mAmsContext:Landroid/content/Context;

    .line 142
    sput-object p1, Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    const-string/jumbo v0, "eng"

    .line 144
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;

    invoke-direct {v1}, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;-><init>()V

    invoke-static {v1}, Lcom/mediatek/anrappmanager/ANRAppManager;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/ANRAppManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/anrappmanager/ANRAppManager;->newMessageLogger(ZLjava/lang/String;)Landroid/util/Printer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/anrmanager/ANRManager;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I

    return v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-object v0
.end method

.method public static enableANRDebuggingMechanism()I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1240
    sget v0, Lcom/mediatek/anrmanager/ANRManager;->AnrOption:I

    packed-switch v0, :pswitch_data_0

    .line 1248
    return v1

    .line 1242
    :pswitch_0
    return v1

    :pswitch_1
    const/4 v0, 0x1

    .line 1244
    return v0

    :pswitch_2
    const/4 v0, 0x0

    .line 1246
    return v0

    .line 1240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefault(Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;)Lcom/mediatek/anrmanager/ANRManager;
    .locals 1

    .prologue
    .line 132
    sput-object p0, Lcom/mediatek/anrmanager/ANRManager;->mAMService:Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;

    .line 133
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->sInstance:Lcom/mediatek/anrmanager/ANRManager;

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->sInstance:Lcom/mediatek/anrmanager/ANRManager;

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lcom/mediatek/anrmanager/ANRManager;

    invoke-direct {v0}, Lcom/mediatek/anrmanager/ANRManager;-><init>()V

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->sInstance:Lcom/mediatek/anrmanager/ANRManager;

    goto :goto_0
.end method

.method private isException()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v1, "ro.have_aee_feature"

    .line 1155
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 1161
    :goto_0
    if-nez v0, :cond_2

    .line 1164
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1156
    :cond_1
    :try_start_1
    new-instance v1, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v1}, Lcom/mediatek/aee/ExceptionLog;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1161
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/aee/ExceptionLog;->isException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1160
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final preDumpStackTraces(I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 246
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    const-string/jumbo v0, "5"

    .line 251
    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->setZramTag(Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v9}, Landroid/util/SparseArray;-><init>(I)V

    .line 259
    if-ne p1, v8, :cond_2

    .line 263
    :goto_0
    iget v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I

    if-ne p1, v0, :cond_3

    :goto_1
    const-string/jumbo v0, "dalvik.vm.mtk-stack-trace-file"

    .line 268
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "ANRManager"

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preDumpStackTraces Begin tracePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-nez v3, :cond_4

    .line 273
    :cond_0
    return-void

    .line 247
    :cond_1
    return-void

    .line 260
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_3
    iget v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ANRManager"

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preDumpStackTraces Stage I Begin tracePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0, v3, v1, v6, v7}, Lcom/mediatek/anrmanager/ANRManager;->preDumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;Z)V

    .line 281
    if-ne p1, v8, :cond_5

    :goto_2
    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v4, "preDumpStackTraces Stage II Begin"

    .line 298
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    new-instance v0, Ljava/lang/Integer;

    iget v4, p0, Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    invoke-direct {p0, v3, v1, v2, v9}, Lcom/mediatek/anrmanager/ANRManager;->preDumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;Z)V

    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v1, "preDumpStackTraces Stage II End"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 282
    :cond_5
    invoke-static {p1, p1}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    if-nez v0, :cond_7

    .line 294
    :cond_6
    # invokes: Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->setTransactionTimeoutPids(ILjava/util/ArrayList;Landroid/util/SparseArray;)V
    invoke-static {p1, v1, v6}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->access$100(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    goto :goto_2

    .line 283
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 284
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 285
    if-eqz v0, :cond_8

    .line 286
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    if-eq v0, p1, :cond_8

    iget v5, p0, Lcom/mediatek/anrmanager/ANRManager;->mAmsPid:I

    if-eq v0, v5, :cond_8

    .line 288
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private preDumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 309
    new-instance v2, Lcom/mediatek/anrmanager/ANRManager$1;

    const/16 v1, 0x8

    invoke-direct {v2, p0, p1, v1}, Lcom/mediatek/anrmanager/ANRManager$1;-><init>(Lcom/mediatek/anrmanager/ANRManager;Ljava/lang/String;I)V

    .line 314
    :try_start_0
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    if-nez p2, :cond_1

    .line 342
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 344
    if-nez p4, :cond_3

    .line 347
    :goto_1
    return-void

    .line 319
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 320
    :goto_2
    if-ge v1, v3, :cond_0

    .line 321
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 322
    :try_start_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 323
    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->isJavaProcess(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "ANRManager"

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preDumpStackTraces native process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " zygote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {v0, p1}, Landroid/os/Debug;->dumpNativeBacktraceToFile(ILjava/lang/String;)V

    :goto_3
    const-wide/16 v4, 0xc8

    .line 334
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 335
    monitor-exit v2

    .line 320
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    const-string/jumbo v4, "ANRManager"

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preDumpStackTraces process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " zygote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x10

    .line 327
    invoke-static {v0, v4}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_3

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "ANRManager"

    .line 338
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 343
    :catchall_1
    move-exception v0

    .line 342
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    throw v0

    :cond_3
    const-string/jumbo v0, "/data/anr/mtk_traces.txt"

    const-string/jumbo v1, "/data/anr/mtk_traces_"

    .line 345
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/mediatek/anrmanager/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    goto/16 :goto_1
.end method

.method public static renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 724
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "ANRManager"

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renameFiles Begin, clearTraces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", nativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", subnativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 729
    if-nez v0, :cond_1

    .line 736
    :goto_0
    if-nez p0, :cond_3

    .line 753
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 754
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v2, "renameFiles End"

    .line 760
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-object v1

    .line 730
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 733
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ANRManager"

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to prepare ANR traces file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    return-object v7

    .line 731
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 736
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    sget-object v2, Lcom/mediatek/anrmanager/ANRManager;->mDumpStackTraces:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v0, 0x8

    .line 740
    :goto_3
    if-gtz v0, :cond_4

    .line 748
    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "1.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 750
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 741
    :cond_4
    :try_start_5
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 740
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 743
    :cond_5
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method private writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1403
    if-eqz p1, :cond_0

    .line 1407
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1410
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 1411
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 1414
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1416
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1420
    if-nez v1, :cond_1

    .line 1428
    :goto_0
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1430
    :goto_1
    return-void

    .line 1404
    :cond_0
    return-void

    .line 1422
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1426
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ANRManager"

    .line 1424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile close error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1429
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    const-string/jumbo v2, "ANRManager"

    .line 1418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToFile error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1420
    if-nez v1, :cond_2

    .line 1428
    :goto_3
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 1422
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1426
    :catch_2
    move-exception v0

    const-string/jumbo v1, "ANRManager"

    .line 1424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile close error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1429
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1420
    :goto_4
    if-nez v1, :cond_3

    .line 1428
    :goto_5
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 1422
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 1426
    :catch_3
    move-exception v1

    const-string/jumbo v2, "ANRManager"

    .line 1424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToFile close error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1429
    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public checkNBTDumpPid(I)V
    .locals 3

    .prologue
    .line 1197
    invoke-virtual {p0, p1}, Lcom/mediatek/anrmanager/ANRManager;->isJavaProcess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ANRManager"

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1266
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    :goto_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/mediatek/anrmanager/ANRManager;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1278
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1284
    :goto_1
    return v0

    .line 1267
    :cond_0
    return v1

    .line 1270
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 1271
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1283
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v2, "createFile fail"

    .line 1281
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1282
    goto :goto_1

    .line 1279
    :catchall_0
    move-exception v0

    .line 1278
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1289
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1000

    .line 1291
    :try_start_1
    new-array v0, v0, [B

    .line 1293
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-gez v2, :cond_0

    .line 1297
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1299
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1303
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1305
    return v5

    :cond_0
    const/4 v3, 0x0

    .line 1294
    :try_start_5
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1304
    :catchall_0
    move-exception v0

    .line 1297
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1299
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1303
    :goto_2
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1305
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v1, "copyToFile fail"

    .line 1307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return v4

    .line 1302
    :catch_1
    move-exception v0

    :try_start_9
    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v2, "copyToFile: getFD fail"

    .line 1301
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1302
    :catch_2
    move-exception v2

    const-string/jumbo v2, "ANRManager"

    const-string/jumbo v3, "copyToFile: getFD fail"

    .line 1301
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_2
.end method

.method public createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1255
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1256
    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v1, "file isn\'t exist"

    .line 1257
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-object v2

    .line 1256
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    return-object v0
.end method

.method public delayRenameTraceFiles(I)V
    .locals 4

    .prologue
    const/16 v1, 0x3ee

    .line 717
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    .line 718
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 719
    return-void
.end method

.method public dumpBinderInfo(I)V
    .locals 5

    .prologue
    .line 1333
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/anr/binderinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "/sys/kernel/debug/binder/failed_transaction_log"

    .line 1346
    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1347
    if-nez v1, :cond_3

    :goto_1
    const-string/jumbo v1, "sys/kernel/debug/binder/timeout_log"

    .line 1352
    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1353
    if-nez v1, :cond_4

    :goto_2
    const-string/jumbo v1, "/sys/kernel/debug/binder/transaction_log"

    .line 1358
    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1359
    if-nez v1, :cond_5

    :goto_3
    const-string/jumbo v1, "/sys/kernel/debug/binder/transactions"

    .line 1364
    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1365
    if-nez v1, :cond_6

    :goto_4
    const-string/jumbo v1, "/sys/kernel/debug/binder/stats"

    .line 1370
    invoke-virtual {p0, v1}, Lcom/mediatek/anrmanager/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1371
    if-nez v1, :cond_7

    .line 1376
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1377
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1379
    if-nez v2, :cond_8

    .line 1387
    :goto_6
    return-void

    .line 1335
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1339
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1343
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1386
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v1, "dumpBinderInfo fail"

    .line 1385
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v1, "dumpBinderInfo fail due to file likely to be locked by others"

    .line 1336
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return-void

    :cond_2
    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v1, "dumpBinderInfo fail due to file cannot be created"

    .line 1340
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return-void

    :cond_3
    const-string/jumbo v2, "/data/anr/binderinfo"

    const-string/jumbo v3, "------ BINDER FAILED TRANSACTION LOG ------\n"

    .line 1348
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v2, "/data/anr/binderinfo"

    const-string/jumbo v3, "------ BINDER TIMEOUT LOG ------\n"

    .line 1354
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v2, "/data/anr/binderinfo"

    const-string/jumbo v3, "------ BINDER TRANSACTION LOG ------\n"

    .line 1360
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v2, "/data/anr/binderinfo"

    const-string/jumbo v3, "------ BINDER TRANSACTIONS ------\n"

    .line 1366
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v2, "/data/anr/binderinfo"

    const-string/jumbo v3, "------ BINDER STATS ------\n"

    .line 1372
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto/16 :goto_5

    :cond_8
    const-string/jumbo v1, "/data/anr/binderinfo"

    const-string/jumbo v3, "------ BINDER PROCESS STATE: $i ------\n"

    .line 1380
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/anrmanager/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/anrmanager/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method

.method public getAndroidTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1073
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1074
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1075
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Android time :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1066
    sget-object v1, Lcom/mediatek/anrmanager/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v2, "getProcessState"

    .line 1067
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 1069
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public informMessageDump(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1213
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 1224
    :goto_0
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string/jumbo v0, "ANRManager"

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "informMessageDump pid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return-void

    .line 1214
    :cond_0
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-gt v1, v2, :cond_1

    .line 1218
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1219
    sget-object v1, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_2

    .line 1222
    :cond_2
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method

.method public isANRFlowSkipped(ILjava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1519
    iget v0, p0, Lcom/mediatek/anrmanager/ANRManager;->AnrFlow:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    const-string/jumbo v0, "ANRManager"

    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isANRFlowSkipped() AnrFlow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/anrmanager/ANRManager;->AnrFlow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget v0, p0, Lcom/mediatek/anrmanager/ANRManager;->AnrFlow:I

    packed-switch v0, :pswitch_data_0

    .line 1555
    return v3

    :cond_0
    const-string/jumbo v0, "persist.dbg.anrflow"

    .line 1520
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/anrmanager/ANRManager;->AnrFlow:I

    goto :goto_0

    .line 1526
    :pswitch_0
    return v3

    :pswitch_1
    const-string/jumbo v0, "ANRManager"

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping ANR flow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    return v4

    .line 1532
    :pswitch_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1553
    :goto_1
    return v4

    :cond_1
    const-string/jumbo v0, "ANRManager"

    .line 1533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping ANR flow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    if-nez p4, :cond_2

    .line 1540
    if-nez p5, :cond_3

    .line 1544
    if-nez p6, :cond_4

    const-string/jumbo v0, "ANRManager"

    .line 1550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Kill process ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") due to ANR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "ANRManager"

    .line 1537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "During shutdown skipping ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    return v4

    :cond_3
    const-string/jumbo v0, "ANRManager"

    .line 1541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping duplicate ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return v4

    :cond_4
    const-string/jumbo v0, "ANRManager"

    .line 1545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Crashing app skipping ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    return v4

    .line 1524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAnrDeferrable(J)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1490
    iget-wide v6, p0, Lcom/mediatek/anrmanager/ANRManager;->mDexoptDone:J

    cmp-long v0, p1, v6

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "ANRManager"

    .line 1492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAnrDeferrable(): true since timerStartTimeMs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mDexoptDone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/mediatek/anrmanager/ANRManager;->mDexoptDone:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    return v1

    :cond_0
    move v0, v2

    .line 1490
    goto :goto_0

    .line 1496
    :cond_1
    sget-boolean v0, Lcom/mediatek/anrmanager/ANRManager;->IS_USER_BUILD:Z

    if-eqz v0, :cond_3

    .line 1508
    :cond_2
    return v2

    .line 1497
    :cond_3
    iget-wide v6, p0, Lcom/mediatek/anrmanager/ANRManager;->mEventBootCompleted:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    iget-wide v6, p0, Lcom/mediatek/anrmanager/ANRManager;->mEventBootCompleted:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v0, v6, v8

    if-ltz v0, :cond_5

    move v0, v1

    :goto_1
    if-nez v0, :cond_6

    :cond_4
    const-string/jumbo v0, "ANRManager"

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAnrDeferrable(): true since mEventBootCompleted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/mediatek/anrmanager/ANRManager;->mEventBootCompleted:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " now = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    return v1

    :cond_5
    move v0, v2

    .line 1497
    goto :goto_1

    .line 1503
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/anrmanager/ANRManager;->isException()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v2, "isAnrDeferrable(): true since exception"

    .line 1504
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    return v1
.end method

.method public isJavaProcess(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1433
    if-lez p1, :cond_1

    .line 1437
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    if-eqz v0, :cond_2

    .line 1445
    :goto_0
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    if-nez v0, :cond_3

    :cond_0
    const-string/jumbo v0, "ANRManager"

    .line 1453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a Java process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    return v1

    .line 1434
    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x2

    .line 1438
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "zygote64"

    aput-object v2, v0, v1

    const-string/jumbo v2, "zygote"

    aput-object v2, v0, v6

    .line 1442
    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    goto :goto_0

    .line 1446
    :cond_3
    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result v2

    .line 1447
    sget-object v3, Lcom/mediatek/anrmanager/ANRManager;->mZygotePids:[I

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    .line 1448
    if-eq v2, v5, :cond_4

    .line 1447
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1449
    :cond_4
    return v6
.end method

.method public isProcDoCoredump(I)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v1, "ro.have_aee_feature"

    .line 1138
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 1144
    :goto_0
    if-nez v0, :cond_2

    .line 1148
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1139
    :cond_1
    :try_start_1
    new-instance v1, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v1}, Lcom/mediatek/aee/ExceptionLog;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1144
    :cond_2
    invoke-virtual {v0, p1}, Lcom/mediatek/aee/ExceptionLog;->isNativeException(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ANRManager"

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[coredump] Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is doing coredump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public notifyLightWeightANR(ILjava/lang/String;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    const/16 v1, 0x3ef

    const/16 v5, 0x3ec

    const/4 v4, 0x0

    .line 1083
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v0

    if-nez v0, :cond_2

    .line 1101
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 1105
    packed-switch p3, :pswitch_data_0

    .line 1121
    :cond_1
    :goto_1
    return-void

    .line 1084
    :cond_2
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 1086
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1090
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_0

    .line 1102
    :cond_3
    return-void

    .line 1107
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v5, p1, v4}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1109
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1112
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v5}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v5}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_1

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1084
    :pswitch_data_1
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prepareStackTraceFile(Ljava/lang/String;)V
    .locals 5

    .prologue
    const-string/jumbo v0, "ANRManager"

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareStackTraceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-nez p1, :cond_1

    .line 634
    :cond_0
    return-void

    .line 633
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 641
    if-nez v1, :cond_2

    .line 649
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 652
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b6

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 656
    :goto_2
    return-void

    .line 642
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 646
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ANRManager"

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to prepare stack trace file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 643
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_3

    .line 650
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public registerDumpNBTReceiver()V
    .locals 3

    .prologue
    .line 1169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_ADD_NBT_DUMP_PID"

    .line 1170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_REMOVE_NBT_DUMP_PID"

    .line 1171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1172
    iget-object v1, p0, Lcom/mediatek/anrmanager/ANRManager;->mAmsContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/anrmanager/ANRManager$2;

    invoke-direct {v2, p0}, Lcom/mediatek/anrmanager/ANRManager$2;-><init>(Lcom/mediatek/anrmanager/ANRManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1194
    return-void
.end method

.method public removeNBTDumpPid(I)V
    .locals 3

    .prologue
    .line 1204
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1205
    :cond_0
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    sget-object v1, Lcom/mediatek/anrmanager/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string/jumbo v0, "ANRManager"

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setZramMonitor(Z)V
    .locals 3

    .prologue
    const-string/jumbo v0, "ANRManager"

    .line 1392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZramMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "/sys/module/mlog/parameters/timer_intval"

    .line 1393
    if-nez p1, :cond_0

    const-string/jumbo v0, "6000"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/mediatek/anrmanager/ANRManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    return-void

    :cond_0
    const-string/jumbo v0, "100"

    goto :goto_0
.end method

.method public setZramTag(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "ANRManager"

    .line 1397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZramTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "/sys/module/mlog/parameters/do_mlog"

    .line 1398
    invoke-direct {p0, v0, p1}, Lcom/mediatek/anrmanager/ANRManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    return-void
.end method

.method public skipANR(I)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1128
    invoke-virtual {p0, p1}, Lcom/mediatek/anrmanager/ANRManager;->isProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1131
    return-object v0
.end method

.method public startANRManager()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AnrMonitorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 156
    new-instance v1, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;-><init>(Lcom/mediatek/anrmanager/ANRManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrHandler:Lcom/mediatek/anrmanager/ANRManager$AnrMonitorHandler;

    .line 157
    new-instance v0, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;

    invoke-direct {v0, p0}, Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;-><init>(Lcom/mediatek/anrmanager/ANRManager;)V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mAnrDumpMgr:Lcom/mediatek/anrmanager/ANRManager$AnrDumpMgr;

    .line 158
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    const-string/jumbo v0, "dalvik.vm.mtk-stack-trace-file"

    .line 160
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    const-string/jumbo v0, "dalvik.vm.stack-trace-file"

    .line 161
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    const-string/jumbo v0, "/data/anr/native1.txt"

    .line 162
    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    const-string/jumbo v0, "/data/anr/native2.txt"

    .line 163
    invoke-virtual {p0, v0}, Lcom/mediatek/anrmanager/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "dalvik.vm.stack-trace-file"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 166
    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ANRManager"

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startANRManager SELinux.restoreconRecursive fail dir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1315
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 1319
    return-void

    .line 1318
    :catchall_0
    move-exception v1

    .line 1317
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public updateProcessStats()V
    .locals 8

    .prologue
    .line 1054
    sget-object v1, Lcom/mediatek/anrmanager/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1056
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1057
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mLastCpuUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x9c4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mLastCpuUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1059
    sget-object v0, Lcom/mediatek/anrmanager/ANRManager;->mANRProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1062
    :cond_0
    monitor-exit v1

    .line 1063
    return-void

    .line 1057
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeEvent(I)V
    .locals 2

    .prologue
    .line 1471
    packed-switch p1, :pswitch_data_0

    .line 1481
    :goto_0
    return-void

    .line 1473
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mEventBootCompleted:J

    goto :goto_0

    .line 1476
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/anrmanager/ANRManager;->mDexoptDone:J

    goto :goto_0

    .line 1471
    :pswitch_data_0
    .packed-switch 0x2329
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
