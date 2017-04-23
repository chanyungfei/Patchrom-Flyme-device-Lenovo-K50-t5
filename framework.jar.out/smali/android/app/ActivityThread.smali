.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$ProviderKey;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$ActivityConfigChangeData;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$EventLoggingReporter;,
        Landroid/app/ActivityThread$DropBoxReporter;,
        Landroid/app/ActivityThread$QueryHistoryRecord;,
        Landroid/app/ActivityThread$QueryHistory;
    }
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x3

.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field public static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

.field private static final DISABLE_ALL_ANR_MECHANISM:I = 0x0

.field private static final ENABLE_ALL_ANR_MECHANISM:I = 0x2

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final ONE_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s"

.field public static final QUERY_HISTORY_CURSOR:I = 0x1

.field public static final QUERY_HISTORY_PFD:I = 0x2

.field public static final QUERY_TAG:Ljava/lang/String; = "ProviderLeakDetecter"

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field static final localLOGV:Z

.field public static mBooted:Z

.field public static mEnableAppLaunchLog:Z

.field public static mEnableLooperLog:Z

.field private static final mIsEngBuild:Z

.field public static mIsUserBuild:Z

.field private static sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field static sMainThreadHandler:Landroid/os/Handler;

.field static sPackageManager:Landroid/content/pm/IPackageManager;


# instance fields
.field exceptionLog:Lcom/mediatek/aee/ExceptionLog;

.field final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

.field final mBackupAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mCompatConfiguration:Landroid/content/res/Configuration;

.field mConfiguration:Landroid/content/res/Configuration;

.field mCoreSettings:Landroid/os/Bundle;

.field mCurDefaultDisplayDpi:I

.field mDensityCompatMode:Z

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationLibDir:Ljava/lang/String;

.field mInstrumentationPackageName:Ljava/lang/String;

.field mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedLibDir:Ljava/lang/String;

.field mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field mJitEnabled:Z

.field mLastAssistStructure:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/assist/AssistStructure;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field private mMainThreadConfig:Landroid/content/res/Configuration;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHistory:Landroid/app/ActivityThread$QueryHistory;

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mResourcePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSomeActivitiesChanged:Z

.field private mSystemContext:Landroid/app/ContextImpl;

.field mSystemThread:Z

.field private mThumbnailCanvas:Landroid/graphics/Canvas;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static synthetic -get0(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic -wrap10(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 0
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$NewIntentData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZ)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    return-void
.end method

.method static synthetic -wrap16(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0
    .param p1, "res"    # Landroid/app/ActivityThread$ResultData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic -wrap20(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method static synthetic -wrap21(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap22(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic -wrap23(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static synthetic -wrap24(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic -wrap25(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap26(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic -wrap27(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method static synthetic -wrap28(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 212
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 211
    sput-boolean v0, Landroid/app/ActivityThread;->mIsEngBuild:Z

    .line 322
    sput-boolean v2, Landroid/app/ActivityThread;->mBooted:Z

    .line 323
    sput-boolean v2, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    .line 324
    sput-boolean v2, Landroid/app/ActivityThread;->mEnableLooperLog:Z

    .line 325
    sput-boolean v2, Landroid/app/ActivityThread;->mIsUserBuild:Z

    .line 2863
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    .line 181
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 220
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 221
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 222
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 225
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 227
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 229
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    .line 244
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 245
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 246
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 247
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 248
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 249
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 250
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 251
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 252
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 253
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 267
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 266
    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 269
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 268
    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 272
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 302
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 301
    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 304
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 303
    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 306
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 305
    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 308
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 307
    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 311
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 310
    iput-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 313
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 314
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 318
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 1837
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 3480
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 3481
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 3482
    iput-object v1, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 3483
    iput-object v1, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 6121
    new-instance v0, Landroid/app/ActivityThread$QueryHistory;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$QueryHistory;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$QueryHistory;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mQueryHistory:Landroid/app/ActivityThread$QueryHistory;

    .line 2008
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2007
    return-void
.end method

.method private attach(Z)V
    .locals 7
    .param p1, "system"    # Z

    .prologue
    .line 5533
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 5534
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 5535
    if-nez p1, :cond_0

    .line 5536
    new-instance v4, Landroid/app/ActivityThread$1;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    .line 5542
    const-string/jumbo v4, "<pre-initialized>"

    .line 5543
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 5542
    invoke-static {v4, v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 5544
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 5545
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 5547
    .local v3, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    const-string/jumbo v4, "ActivityThread"

    const-string/jumbo v5, "attachApplication -> AMS"

    invoke-static {v4, v5}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 5548
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5553
    :goto_0
    new-instance v4, Landroid/app/ActivityThread$2;

    invoke-direct {v4, p0, v3}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 5591
    .end local v3    # "mgr":Landroid/app/IActivityManager;
    :goto_1
    new-instance v4, Landroid/app/ActivityThread$DropBoxReporter;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$DropBoxReporter;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Llibcore/io/DropBox;->setReporter(Llibcore/io/DropBox$Reporter;)V

    .line 5593
    new-instance v4, Landroid/app/ActivityThread$3;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 5532
    return-void

    .line 5576
    :cond_0
    const-string/jumbo v4, "system_process"

    .line 5577
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 5576
    invoke-static {v4, v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 5579
    :try_start_1
    new-instance v4, Landroid/app/Instrumentation;

    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 5581
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 5580
    invoke-static {p0, v4}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 5582
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v4, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v4

    iput-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 5583
    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5584
    .end local v0    # "context":Landroid/app/ContextImpl;
    :catch_0
    move-exception v1

    .line 5585
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    .line 5586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to instantiate Application():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5585
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 5549
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "mgr":Landroid/app/IActivityManager;
    :catch_1
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 4341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4342
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 4343
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4344
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 4345
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4346
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 4345
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 4340
    :goto_0
    return-void

    .line 4348
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 5
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    const/4 v4, 0x0

    .line 3345
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3346
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3347
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3348
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 3349
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    .line 3350
    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Activity"

    .line 3349
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 3353
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_0
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    .line 3354
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 3344
    return-void
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;)Landroid/content/Context;
    .locals 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x0

    .line 2595
    const/4 v4, 0x0

    .line 2597
    .local v4, "displayId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->getActivityDisplayId(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2602
    :goto_0
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 2601
    invoke-static {p0, v10, v4, v11}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 2603
    .local v0, "appContext":Landroid/app/ContextImpl;
    invoke-virtual {v0, p2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2604
    move-object v1, v0

    .line 2606
    .local v1, "baseContext":Landroid/content/Context;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    .line 2610
    .local v5, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const-string/jumbo v10, "debug.second-display.pkg"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2611
    .local v8, "pkgName":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2623
    :cond_0
    :goto_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2624
    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v9}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingIntent(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2625
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v9

    .line 2626
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2625
    invoke-virtual {v9, v10}, Lcom/mediatek/multiwindow/MultiWindowProxy;->shouldChangeConfig(Ljava/lang/String;)Z

    move-result v9

    .line 2624
    if-eqz v9, :cond_1

    .line 2627
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v9, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2628
    .local v2, "config":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v9

    .line 2629
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 2628
    invoke-virtual {v9, v2, v10, v11}, Lcom/mediatek/multiwindow/MultiWindowProxy;->adjustActivityConfig(Landroid/content/res/Configuration;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 2630
    invoke-virtual {v1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 2632
    instance-of v9, v1, Landroid/app/ContextImpl;

    if-eqz v9, :cond_1

    move-object v9, v1

    .line 2633
    check-cast v9, Landroid/app/ContextImpl;

    invoke-virtual {v9, p2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 2638
    .end local v2    # "config":Landroid/content/res/Configuration;
    :cond_1
    return-object v1

    .line 2612
    :cond_2
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v10, v10, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 2611
    if-eqz v10, :cond_0

    .line 2613
    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v10

    array-length v11, v10

    :goto_2
    if-ge v9, v11, :cond_0

    aget v7, v10, v9

    .line 2614
    .local v7, "id":I
    if-eqz v7, :cond_3

    .line 2616
    invoke-virtual {v0, v7}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v3

    .line 2617
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    goto :goto_1

    .line 2613
    .end local v3    # "display":Landroid/view/Display;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2598
    .end local v0    # "appContext":Landroid/app/ContextImpl;
    .end local v1    # "baseContext":Landroid/content/Context;
    .end local v5    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v7    # "id":I
    .end local v8    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 3486
    iget-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 3488
    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 3489
    :try_start_0
    iget v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 3491
    .local v6, "w":I
    if-gez v6, :cond_4

    .line 3492
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3493
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x1050002

    .line 3494
    .local v7, "wId":I
    const v3, 0x1050001

    .line 3495
    .local v3, "hId":I
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 3496
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "h":I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 3502
    .end local v3    # "hId":I
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v7    # "wId":I
    :goto_0
    if-lez v6, :cond_0

    if-lez v2, :cond_0

    .line 3503
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 3504
    sget-object v9, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 3503
    invoke-static {v8, v6, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3505
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 3509
    .end local v2    # "h":I
    .end local v6    # "w":I
    :cond_0
    if-eqz v5, :cond_3

    .line 3510
    iget-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 3511
    .local v0, "cv":Landroid/graphics/Canvas;
    if-nez v0, :cond_1

    .line 3512
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0    # "cv":Landroid/graphics/Canvas;
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .restart local v0    # "cv":Landroid/graphics/Canvas;
    iput-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 3515
    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3516
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v5, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3517
    iput-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 3518
    const/4 v5, 0x0

    .line 3520
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3533
    .end local v0    # "cv":Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    return-object v5

    .line 3498
    .restart local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v6    # "w":I
    :cond_4
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "h":I
    goto :goto_0

    .line 3523
    .end local v2    # "h":I
    .end local v5    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v6    # "w":I
    :catch_0
    move-exception v1

    .line 3524
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3525
    new-instance v8, Ljava/lang/RuntimeException;

    .line 3526
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to create thumbnail of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3527
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    .line 3526
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3528
    const-string/jumbo v10, ": "

    .line 3526
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3528
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3526
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3525
    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 3530
    :cond_5
    const/4 v5, 0x0

    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .prologue
    .line 1795
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1821
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1822
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    :cond_0
    return-object v1
.end method

.method public static currentOpPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1803
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1804
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1805
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1804
    :cond_0
    return-object v1
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1809
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1810
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_0

    .line 1811
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1810
    :cond_0
    return-object v1
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1815
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1816
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_0

    .line 1817
    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1816
    :cond_0
    return-object v1
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2730
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2731
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2732
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 2733
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2734
    invoke-virtual {v2}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess()V

    .line 2735
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 2736
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 2731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2729
    .end local v2    # "intent":Lcom/android/internal/content/ReferrerIntent;
    :cond_0
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3935
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3936
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3937
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResultInfo;

    .line 3939
    .local v3, "ri":Landroid/app/ResultInfo;
    :try_start_0
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 3940
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3941
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3945
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    .line 3946
    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    .line 3945
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3936
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3947
    :catch_0
    move-exception v1

    .line 3948
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3949
    new-instance v4, Ljava/lang/RuntimeException;

    .line 3950
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3951
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 3950
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3952
    const-string/jumbo v6, ": "

    .line 3950
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3952
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3950
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3949
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3934
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ri":Landroid/app/ResultInfo;
    :cond_2
    return-void
.end method

.method private native dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .locals 24
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "checkin"    # Z
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;
    .param p8, "nativeMax"    # J
    .param p10, "nativeAllocated"    # J
    .param p12, "nativeFree"    # J
    .param p14, "dalvikMax"    # J
    .param p16, "dalvikAllocated"    # J
    .param p18, "dalvikFree"    # J

    .prologue
    .line 2116
    if-eqz p2, :cond_1

    .line 2121
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2122
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2123
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2126
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2127
    move-object/from16 v0, p0

    move-wide/from16 v1, p14

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2128
    const-string/jumbo v19, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2129
    add-long v20, p8, p14

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2132
    move-object/from16 v0, p0

    move-wide/from16 v1, p10

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2133
    move-object/from16 v0, p0

    move-wide/from16 v1, p16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2134
    const-string/jumbo v19, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2135
    add-long v20, p10, p16

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2138
    move-object/from16 v0, p0

    move-wide/from16 v1, p12

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2139
    move-object/from16 v0, p0

    move-wide/from16 v1, p18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2140
    const-string/jumbo v19, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2141
    add-long v20, p12, p18

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2144
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2145
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2146
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2147
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2150
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2151
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2152
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2156
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2157
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2158
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2159
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2162
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2163
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2164
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2168
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2169
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2170
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2171
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2174
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2175
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2176
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2177
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2180
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v19, 0x11

    move/from16 v0, v19

    if-ge v4, v0, :cond_0

    .line 2181
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2182
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2183
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2184
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2185
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2186
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2187
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2180
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2189
    :cond_0
    return-void

    .line 2192
    .end local v4    # "i":I
    :cond_1
    if-nez p5, :cond_d

    .line 2193
    if-eqz p3, :cond_4

    .line 2194
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const-string/jumbo v21, "Pss"

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const-string/jumbo v21, "Pss"

    const/16 v22, 0x2

    aput-object v21, v20, v22

    const-string/jumbo v21, "Shared"

    const/16 v22, 0x3

    aput-object v21, v20, v22

    const-string/jumbo v21, "Private"

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2195
    const-string/jumbo v21, "Shared"

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, "Private"

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, "Swapped"

    const/16 v22, 0x7

    aput-object v21, v20, v22

    const-string/jumbo v21, "Heap"

    const/16 v22, 0x8

    aput-object v21, v20, v22

    const-string/jumbo v21, "Heap"

    const/16 v22, 0x9

    aput-object v21, v20, v22

    const-string/jumbo v21, "Heap"

    const/16 v22, 0xa

    aput-object v21, v20, v22

    .line 2194
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2196
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const-string/jumbo v21, "Total"

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const-string/jumbo v21, "Clean"

    const/16 v22, 0x2

    aput-object v21, v20, v22

    const-string/jumbo v21, "Dirty"

    const/16 v22, 0x3

    aput-object v21, v20, v22

    const-string/jumbo v21, "Dirty"

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2197
    const-string/jumbo v21, "Clean"

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, "Clean"

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, "Dirty"

    const/16 v22, 0x7

    aput-object v21, v20, v22

    const-string/jumbo v21, "Size"

    const/16 v22, 0x8

    aput-object v21, v20, v22

    const-string/jumbo v21, "Alloc"

    const/16 v22, 0x9

    aput-object v21, v20, v22

    const-string/jumbo v21, "Free"

    const/16 v22, 0xa

    aput-object v21, v20, v22

    .line 2196
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2198
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x2

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x3

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2199
    const-string/jumbo v21, "------"

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x7

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x8

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x9

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0xa

    aput-object v21, v20, v22

    .line 2198
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2200
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Native Heap"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2201
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    .line 2202
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v20, v22

    .line 2203
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x6

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2204
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x8

    aput-object v21, v20, v22

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x9

    aput-object v21, v20, v22

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0xa

    aput-object v21, v20, v22

    .line 2200
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2205
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Dalvik Heap"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2206
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    .line 2207
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v20, v22

    .line 2208
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x6

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2209
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x8

    aput-object v21, v20, v22

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x9

    aput-object v21, v20, v22

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0xa

    aput-object v21, v20, v22

    .line 2205
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2227
    :goto_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 2228
    .local v14, "otherPss":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    move/from16 v17, v0

    .line 2229
    .local v17, "otherSwappablePss":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v16, v0

    .line 2230
    .local v16, "otherSharedDirty":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 2231
    .local v13, "otherPrivateDirty":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 2232
    .local v15, "otherSharedClean":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 2233
    .local v12, "otherPrivateClean":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    move/from16 v18, v0

    .line 2235
    .local v18, "otherSwappedOut":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    const/16 v19, 0x11

    move/from16 v0, v19

    if-ge v4, v0, :cond_7

    .line 2236
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v7

    .line 2237
    .local v7, "myPss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v10

    .line 2238
    .local v10, "mySwappablePss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v9

    .line 2239
    .local v9, "mySharedDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v6

    .line 2240
    .local v6, "myPrivateDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 2241
    .local v8, "mySharedClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v5

    .line 2242
    .local v5, "myPrivateClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v11

    .line 2243
    .local v11, "mySwappedOut":I
    if-nez v7, :cond_2

    if-eqz v9, :cond_5

    .line 2245
    :cond_2
    :goto_3
    if-eqz p3, :cond_6

    .line 2246
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 2247
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2248
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v20, v22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x6

    aput-object v21, v20, v22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x7

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x8

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x9

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0xa

    aput-object v21, v20, v22

    .line 2246
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2254
    :goto_4
    sub-int/2addr v14, v7

    .line 2255
    sub-int v17, v17, v10

    .line 2256
    sub-int v16, v16, v9

    .line 2257
    sub-int/2addr v13, v6

    .line 2258
    sub-int/2addr v15, v8

    .line 2259
    sub-int/2addr v12, v5

    .line 2260
    sub-int v18, v18, v11

    .line 2235
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2211
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "otherPrivateClean":I
    .end local v13    # "otherPrivateDirty":I
    .end local v14    # "otherPss":I
    .end local v15    # "otherSharedClean":I
    .end local v16    # "otherSharedDirty":I
    .end local v17    # "otherSwappablePss":I
    .end local v18    # "otherSwappedOut":I
    :cond_4
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const-string/jumbo v21, "Pss"

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const-string/jumbo v21, "Private"

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 2212
    const-string/jumbo v21, "Private"

    const/16 v22, 0x3

    aput-object v21, v20, v22

    const-string/jumbo v21, "Swapped"

    const/16 v22, 0x4

    aput-object v21, v20, v22

    const-string/jumbo v21, "Heap"

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, "Heap"

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, "Heap"

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2211
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2213
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const-string/jumbo v21, "Total"

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const-string/jumbo v21, "Dirty"

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 2214
    const-string/jumbo v21, "Clean"

    const/16 v22, 0x3

    aput-object v21, v20, v22

    const-string/jumbo v21, "Dirty"

    const/16 v22, 0x4

    aput-object v21, v20, v22

    const-string/jumbo v21, "Size"

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, "Alloc"

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, "Free"

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2213
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2215
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x9

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x2

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x3

    aput-object v21, v20, v22

    .line 2216
    const-string/jumbo v21, "------"

    const/16 v22, 0x4

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x7

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x8

    aput-object v21, v20, v22

    .line 2215
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2217
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Native Heap"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2218
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 2219
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2220
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v20, v22

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x6

    aput-object v21, v20, v22

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2217
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2221
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Dalvik Heap"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2222
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 2223
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2224
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v20, v22

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x6

    aput-object v21, v20, v22

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2221
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2243
    .restart local v4    # "i":I
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    .restart local v12    # "otherPrivateClean":I
    .restart local v13    # "otherPrivateDirty":I
    .restart local v14    # "otherPss":I
    .restart local v15    # "otherSharedClean":I
    .restart local v16    # "otherSharedDirty":I
    .restart local v17    # "otherSwappablePss":I
    .restart local v18    # "otherSwappedOut":I
    :cond_5
    if-nez v6, :cond_2

    .line 2244
    if-nez v8, :cond_2

    if-nez v5, :cond_2

    if-eqz v11, :cond_3

    goto/16 :goto_3

    .line 2250
    :cond_6
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 2251
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 2252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2250
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2264
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    :cond_7
    if-eqz p3, :cond_a

    .line 2265
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Unknown"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 2266
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v20, v22

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x6

    aput-object v21, v20, v22

    .line 2267
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x7

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x8

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x9

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0xa

    aput-object v21, v20, v22

    .line 2265
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2268
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "TOTAL"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2269
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 2270
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2271
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x6

    aput-object v21, v20, v22

    .line 2272
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x7

    aput-object v21, v20, v22

    add-long v22, p8, p14

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x8

    aput-object v21, v20, v22

    .line 2273
    add-long v22, p10, p16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x9

    aput-object v21, v20, v22

    add-long v22, p12, p18

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0xa

    aput-object v21, v20, v22

    .line 2268
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2286
    :goto_5
    if-eqz p4, :cond_d

    .line 2287
    const-string/jumbo v19, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    const-string/jumbo v19, " Dalvik Details"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2290
    const/16 v4, 0x11

    .line 2291
    :goto_6
    const/16 v19, 0x19

    .line 2290
    move/from16 v0, v19

    if-ge v4, v0, :cond_d

    .line 2292
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v7

    .line 2293
    .restart local v7    # "myPss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v10

    .line 2294
    .restart local v10    # "mySwappablePss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v9

    .line 2295
    .restart local v9    # "mySharedDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v6

    .line 2296
    .restart local v6    # "myPrivateDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 2297
    .restart local v8    # "mySharedClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v5

    .line 2298
    .restart local v5    # "myPrivateClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v11

    .line 2299
    .restart local v11    # "mySwappedOut":I
    if-nez v7, :cond_8

    if-eqz v9, :cond_b

    .line 2301
    :cond_8
    :goto_7
    if-eqz p3, :cond_c

    .line 2302
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 2303
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2304
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v20, v22

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x6

    aput-object v21, v20, v22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x7

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x8

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x9

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0xa

    aput-object v21, v20, v22

    .line 2302
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2291
    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 2275
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    :cond_a
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Unknown"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2276
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2277
    const-string/jumbo v21, ""

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2275
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2278
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, "TOTAL"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2279
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 2280
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    .line 2281
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    .line 2282
    add-long v22, p8, p14

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x5

    aput-object v21, v20, v22

    .line 2283
    add-long v22, p10, p16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x6

    aput-object v21, v20, v22

    add-long v22, p12, p18

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2278
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2299
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    :cond_b
    if-nez v6, :cond_8

    .line 2300
    if-nez v8, :cond_8

    if-eqz v5, :cond_9

    goto/16 :goto_7

    .line 2306
    :cond_c
    const-string/jumbo v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    .line 2307
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    .line 2308
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x4

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x5

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x6

    aput-object v21, v20, v22

    const-string/jumbo v21, ""

    const/16 v22, 0x7

    aput-object v21, v20, v22

    .line 2306
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2315
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "otherPrivateClean":I
    .end local v13    # "otherPrivateDirty":I
    .end local v14    # "otherPss":I
    .end local v15    # "otherSharedClean":I
    .end local v16    # "otherSharedDirty":I
    .end local v17    # "otherSwappablePss":I
    .end local v18    # "otherSwappedOut":I
    :cond_d
    const-string/jumbo v19, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2316
    const-string/jumbo v19, " App Summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
    const-string/jumbo v19, "%21s %8s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const-string/jumbo v21, "Pss(KB)"

    const/16 v22, 0x1

    aput-object v21, v20, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2318
    const-string/jumbo v19, "%21s %8s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const-string/jumbo v21, "------"

    const/16 v22, 0x1

    aput-object v21, v20, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2319
    const-string/jumbo v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 2320
    const-string/jumbo v21, "Java Heap:"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2319
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2321
    const-string/jumbo v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 2322
    const-string/jumbo v21, "Native Heap:"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2321
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2323
    const-string/jumbo v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 2324
    const-string/jumbo v21, "Code:"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2323
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2325
    const-string/jumbo v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 2326
    const-string/jumbo v21, "Stack:"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2325
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2327
    const-string/jumbo v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 2328
    const-string/jumbo v21, "Graphics:"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2327
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2329
    const-string/jumbo v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 2330
    const-string/jumbo v21, "Private Other:"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2329
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2331
    const-string/jumbo v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 2332
    const-string/jumbo v21, "System:"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2331
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2333
    const-string/jumbo v19, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2334
    const-string/jumbo v19, "%21s %8d %21s %8d"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 2335
    const-string/jumbo v21, "TOTAL:"

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 2336
    const-string/jumbo v21, "TOTAL SWAP (KB):"

    const/16 v22, 0x2

    aput-object v21, v20, v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    .line 2334
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2113
    return-void
.end method

.method public static enableLooperLog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5788
    const-string/jumbo v0, "ActivityThread"

    const-string/jumbo v1, "Enable Looper Log"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5789
    sput-boolean v2, Landroid/app/ActivityThread;->mEnableLooperLog:Z

    .line 5791
    sput-boolean v2, Lcom/mediatek/anrappmanager/MessageLogger;->mEnableLooperLog:Z

    .line 5787
    return-void
.end method

.method static freeTextLayoutCachesIfNeeded(I)V
    .locals 2
    .param p0, "configDiff"    # I

    .prologue
    .line 4519
    if-eqz p0, :cond_0

    .line 4521
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 4522
    .local v0, "hasLocaleConfigChange":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 4523
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 4518
    .end local v0    # "hasLocaleConfigChange":Z
    :cond_0
    return-void

    .line 4521
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "hasLocaleConfigChange":Z
    goto :goto_0
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2871
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .locals 11
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z

    .prologue
    .line 1963
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v8, 0x1

    .line 1964
    .local v8, "differentUser":Z
    :goto_0
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v10

    .line 1966
    if-eqz v8, :cond_2

    .line 1968
    const/4 v9, 0x0

    .line 1975
    :goto_1
    if-eqz v9, :cond_4

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk;

    .line 1976
    :goto_2
    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 1977
    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    :goto_3
    monitor-exit v10

    .line 2003
    return-object v0

    .line 1963
    .end local v8    # "differentUser":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "differentUser":Z
    goto :goto_0

    .line 1969
    :cond_2
    if-eqz p5, :cond_3

    .line 1970
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .local v9, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 1972
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 1975
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    const/4 v0, 0x0

    .local v0, "packageInfo":Landroid/app/LoadedApk;
    goto :goto_2

    .line 1984
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_5
    new-instance v0, Landroid/app/LoadedApk;

    .line 1985
    if-eqz p5, :cond_8

    .line 1986
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    const/4 v6, 0x1

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v7, p6

    .line 1984
    invoke-direct/range {v0 .. v7}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 1988
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "android"

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1990
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1989
    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 1993
    :cond_6
    if-nez v8, :cond_0

    .line 1995
    if-eqz p5, :cond_9

    .line 1996
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1997
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1996
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1964
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 1986
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 1985
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 1999
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_9
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2000
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1999
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 1826
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 1828
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1

    .line 1830
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1832
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 1834
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 34
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    .line 4700
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 4701
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 4702
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 4704
    new-instance v2, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v2}, Landroid/app/ActivityThread$Profiler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 4705
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v2, :cond_0

    .line 4706
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 4707
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 4708
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v4, v4, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v4, v2, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 4709
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v4, v4, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 4712
    :cond_0
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v4, "handleBindApplication is called"

    invoke-static {v2, v4}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 4715
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 4716
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 4717
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 4716
    invoke-static {v2, v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 4719
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    if-eqz v2, :cond_1

    .line 4723
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4725
    const-wide/32 v12, 0x10000000

    .line 4726
    .local v12, "LOW_MEMORY_SIZE":J
    new-instance v28, Lcom/android/internal/util/MemInfoReader;

    invoke-direct/range {v28 .. v28}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 4727
    .local v28, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 4728
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v4

    const-wide/32 v8, 0x10000000

    cmp-long v2, v4, v8

    if-lez v2, :cond_b

    const-string/jumbo v2, "com.android.systemui"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4735
    .end local v12    # "LOW_MEMORY_SIZE":J
    .end local v28    # "minfo":Lcom/android/internal/util/MemInfoReader;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 4736
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 4743
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xc

    if-gt v2, v4, :cond_3

    .line 4744
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 4747
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2}, Landroid/os/Message;->updateCheckRecycle(I)V

    .line 4755
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 4760
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 4767
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v4, v5}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 4768
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 4769
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    .line 4771
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 4776
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_4

    .line 4778
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 4779
    const/16 v2, 0xa0

    invoke-static {v2}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 4781
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 4783
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v14

    .line 4784
    .local v14, "appContext":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 4785
    invoke-virtual {v14}, Landroid/app/ContextImpl;->getCacheDir()Ljava/io/File;

    move-result-object v17

    .line 4787
    .local v17, "cacheDir":Ljava/io/File;
    if-eqz v17, :cond_c

    .line 4789
    const-string/jumbo v2, "java.io.tmpdir"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4795
    :goto_1
    invoke-virtual {v14}, Landroid/app/ContextImpl;->getCodeCacheDir()Ljava/io/File;

    move-result-object v19

    .line 4796
    .local v19, "codeCacheDir":Ljava/io/File;
    if-eqz v19, :cond_d

    .line 4797
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V

    .line 4804
    .end local v17    # "cacheDir":Ljava/io/File;
    .end local v19    # "codeCacheDir":Ljava/io/File;
    :cond_5
    :goto_2
    const-string/jumbo v2, "24"

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v5, "time_12_24"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 4805
    .local v26, "is24Hr":Z
    invoke-static/range {v26 .. v26}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    .line 4808
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v4, "debug_view_attributes"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    .line 4807
    :goto_3
    sput-boolean v2, Landroid/view/View;->mDebugViewAttributes:Z

    .line 4814
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_6

    .line 4817
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    .line 4827
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x9

    if-le v2, v4, :cond_7

    .line 4828
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnNetwork()V

    .line 4831
    :cond_7
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v4

    .line 4832
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x8000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    .line 4831
    :goto_4
    invoke-virtual {v4, v2}, Landroid/security/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    .line 4834
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-eqz v2, :cond_8

    .line 4836
    const/16 v2, 0x1fa4

    invoke-static {v2}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 4837
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_10

    .line 4838
    const-string/jumbo v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4839
    const-string/jumbo v5, " is waiting for the debugger on port 8100..."

    .line 4838
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v27

    .line 4843
    .local v27, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    .line 4847
    :goto_5
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 4850
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 4861
    .end local v27    # "mgr":Landroid/app/IActivityManager;
    :cond_8
    :goto_6
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    if-eqz v2, :cond_9

    .line 4862
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/opengl/GLUtils;->setTracingLevel(I)V

    .line 4866
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_11

    const/4 v15, 0x1

    .line 4867
    .local v15, "appTracingAllowed":Z
    :goto_7
    invoke-static {v15}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 4872
    const-string/jumbo v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    .line 4873
    .local v16, "b":Landroid/os/IBinder;
    if-eqz v16, :cond_a

    .line 4877
    invoke-static/range {v16 .. v16}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v33

    .line 4879
    .local v33, "service":Landroid/net/IConnectivityManager;
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v31

    .line 4880
    .local v31, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-static/range {v31 .. v31}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4884
    .end local v31    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v33    # "service":Landroid/net/IConnectivityManager;
    :cond_a
    :goto_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v2, :cond_17

    .line 4885
    const/16 v25, 0x0

    .line 4887
    .local v25, "ii":Landroid/content/pm/InstrumentationInfo;
    :try_start_3
    invoke-virtual {v14}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4888
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    .line 4887
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v25

    .line 4891
    .end local v25    # "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_9
    if-nez v25, :cond_12

    .line 4892
    new-instance v2, Ljava/lang/RuntimeException;

    .line 4893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find instrumentation info for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4894
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 4893
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4892
    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4729
    .end local v14    # "appContext":Landroid/app/ContextImpl;
    .end local v15    # "appTracingAllowed":Z
    .end local v16    # "b":Landroid/os/IBinder;
    .end local v26    # "is24Hr":Z
    .restart local v12    # "LOW_MEMORY_SIZE":J
    .restart local v28    # "minfo":Lcom/android/internal/util/MemInfoReader;
    :cond_b
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 4730
    const-string/jumbo v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Disable HWUI for Process("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "); Total Memory = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4791
    .end local v12    # "LOW_MEMORY_SIZE":J
    .end local v28    # "minfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v14    # "appContext":Landroid/app/ContextImpl;
    .restart local v17    # "cacheDir":Ljava/io/File;
    :cond_c
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4799
    .restart local v19    # "codeCacheDir":Ljava/io/File;
    :cond_d
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v4, "Unable to setupGraphicsSupport due to missing code-cache directory"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4808
    .end local v17    # "cacheDir":Ljava/io/File;
    .end local v19    # "codeCacheDir":Ljava/io/File;
    .restart local v26    # "is24Hr":Z
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 4832
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 4855
    :cond_10
    const-string/jumbo v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4856
    const-string/jumbo v5, " can be debugged on port 8100..."

    .line 4855
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4866
    :cond_11
    const/4 v15, 0x0

    .restart local v15    # "appTracingAllowed":Z
    goto/16 :goto_7

    .line 4897
    .restart local v16    # "b":Landroid/os/IBinder;
    :cond_12
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 4898
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 4899
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 4900
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 4901
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 4902
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 4903
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 4905
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 4906
    .local v3, "instrApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4907
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 4908
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 4909
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 4910
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 4911
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4912
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 4913
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 4914
    invoke-virtual {v14}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    .line 4913
    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v29

    .line 4915
    .local v29, "pi":Landroid/app/LoadedApk;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v6

    .line 4918
    .local v6, "instrContext":Landroid/app/ContextImpl;
    :try_start_4
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    .line 4920
    .local v18, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation;

    .line 4919
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 4927
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4928
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v5, v0, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 4929
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object/from16 v5, p0

    move-object v7, v14

    .line 4927
    invoke-virtual/range {v4 .. v10}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 4931
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object/from16 v0, v25

    iget-boolean v2, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-eqz v2, :cond_16

    .line 4943
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v18    # "cl":Ljava/lang/ClassLoader;
    .end local v29    # "pi":Landroid/app/LoadedApk;
    :cond_13
    :goto_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-eqz v2, :cond_18

    .line 4944
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 4954
    :goto_b
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v32

    .line 4958
    .local v32, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v11

    .line 4959
    .local v11, "app":Landroid/app/Application;
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 4963
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    if-nez v2, :cond_14

    .line 4964
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    move-object/from16 v30, v0

    .line 4965
    .local v30, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v30, :cond_14

    .line 4966
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v11, v1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 4969
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const-wide/16 v4, 0x2710

    const/16 v7, 0x84

    invoke-virtual {v2, v7, v4, v5}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4976
    .end local v30    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_14
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4985
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v11}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4994
    :cond_15
    invoke-static/range {v32 .. v32}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4699
    return-void

    .line 4921
    .end local v11    # "app":Landroid/app/Application;
    .end local v32    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "instrContext":Landroid/app/ContextImpl;
    .restart local v29    # "pi":Landroid/app/LoadedApk;
    :catch_0
    move-exception v22

    .line 4922
    .local v22, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 4923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to instantiate instrumentation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4924
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 4923
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4924
    const-string/jumbo v5, ": "

    .line 4923
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4924
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4923
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4922
    move-object/from16 v0, v22

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4932
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v18    # "cl":Ljava/lang/ClassLoader;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_13

    .line 4933
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 4934
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4935
    .local v24, "file":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 4936
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x800000

    invoke-static {v2, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 4940
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v18    # "cl":Ljava/lang/ClassLoader;
    .end local v24    # "file":Ljava/io/File;
    .end local v29    # "pi":Landroid/app/LoadedApk;
    :cond_17
    new-instance v2, Landroid/app/Instrumentation;

    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    goto/16 :goto_a

    .line 4948
    :cond_18
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    goto/16 :goto_b

    .line 4978
    .restart local v11    # "app":Landroid/app/Application;
    .restart local v32    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_1
    move-exception v22

    .line 4979
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    .line 4980
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4981
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 4980
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4981
    const-string/jumbo v5, ": "

    .line 4980
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4981
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4980
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4979
    move-object/from16 v0, v22

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4993
    .end local v11    # "app":Landroid/app/Application;
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 4994
    invoke-static/range {v32 .. v32}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4993
    throw v2

    .line 4986
    .restart local v11    # "app":Landroid/app/Application;
    :catch_2
    move-exception v22

    .line 4987
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v22

    invoke-virtual {v2, v11, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 4988
    new-instance v2, Ljava/lang/RuntimeException;

    .line 4989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to create application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/app/Application;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4990
    const-string/jumbo v5, ": "

    .line 4989
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4990
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4989
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4988
    move-object/from16 v0, v22

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4889
    .end local v11    # "app":Landroid/app/Application;
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v32    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v25    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_3
    move-exception v20

    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_9

    .line 4881
    .end local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v25    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v33    # "service":Landroid/net/IConnectivityManager;
    :catch_4
    move-exception v21

    .local v21, "e":Landroid/os/RemoteException;
    goto/16 :goto_8

    .line 4851
    .end local v15    # "appTracingAllowed":Z
    .end local v16    # "b":Landroid/os/IBinder;
    .end local v21    # "e":Landroid/os/RemoteException;
    .end local v33    # "service":Landroid/net/IConnectivityManager;
    .restart local v27    # "mgr":Landroid/app/IActivityManager;
    :catch_5
    move-exception v23

    .local v23, "ex":Landroid/os/RemoteException;
    goto/16 :goto_6

    .line 4844
    .end local v23    # "ex":Landroid/os/RemoteException;
    :catch_6
    move-exception v23

    .restart local v23    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_5
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 9
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    .line 3105
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 3107
    .local v3, "s":Landroid/app/Service;
    sget-boolean v4, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v4, :cond_1

    .line 3110
    :goto_0
    if-eqz v3, :cond_0

    .line 3112
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3113
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3115
    :try_start_1
    iget-boolean v4, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v4, :cond_2

    .line 3116
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 3117
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3118
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 3117
    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 3124
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_1
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3104
    :cond_0
    :goto_2
    return-void

    .line 3108
    :cond_1
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleBindService s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rebind="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3120
    :cond_2
    :try_start_2
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 3121
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3122
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3121
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3125
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_2

    .line 3127
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3128
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3129
    new-instance v4, Ljava/lang/RuntimeException;

    .line 3130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to bind to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3131
    const-string/jumbo v6, " with "

    .line 3130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3131
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 3130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3131
    const-string/jumbo v6, ": "

    .line 3130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3131
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3129
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 15
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    .line 2956
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 2957
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    const/4 v14, 0x0

    .line 2956
    invoke-interface {v11, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 2958
    .local v10, "requestedPackage":Landroid/content/pm/PackageInfo;
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    if-eq v11, v12, :cond_0

    .line 2959
    const-string/jumbo v11, "ActivityThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Asked to instantiate non-matching package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2960
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2959
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2961
    return-void

    .line 2963
    .end local v10    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 2964
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "ActivityThread"

    const-string/jumbo v12, "Can\'t reach package manager"

    invoke-static {v11, v12, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2965
    return-void

    .line 2969
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v10    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2972
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v11, v12}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v8

    .line 2973
    .local v8, "packageInfo":Landroid/app/LoadedApk;
    iget-object v9, v8, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 2974
    .local v9, "packageName":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 2975
    const-string/jumbo v11, "ActivityThread"

    const-string/jumbo v12, "Asked to create backup agent for nonexistent package"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    return-void

    .line 2979
    :cond_1
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2981
    .local v4, "classname":Ljava/lang/String;
    if-nez v4, :cond_3

    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 2982
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 2983
    :cond_2
    const-string/jumbo v4, "android.app.backup.FullBackupAgent"

    .line 2987
    :cond_3
    const/4 v2, 0x0

    .line 2988
    .local v2, "binder":Landroid/os/IBinder;
    :try_start_1
    iget-object v11, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/BackupAgent;

    .line 2989
    .local v1, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v1, :cond_5

    .line 2994
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 3024
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_4
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11, v9, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2951
    :goto_1
    return-void

    .line 2999
    .restart local v2    # "binder":Landroid/os/IBinder;
    :cond_5
    :try_start_3
    invoke-virtual {v8}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 3000
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/app/backup/BackupAgent;

    move-object v1, v0

    .line 3003
    invoke-static {p0, v8}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v5

    .line 3004
    .local v5, "context":Landroid/app/ContextImpl;
    invoke-virtual {v5, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3005
    invoke-virtual {v1, v5}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 3007
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 3008
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    .line 3009
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v11, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3010
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "context":Landroid/app/ContextImpl;
    :catch_1
    move-exception v7

    .line 3013
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v11, "ActivityThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Agent threw during creation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    .line 3015
    move-object/from16 v0, p1

    iget v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    .line 3016
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3028
    .end local v1    # "agent":Landroid/app/backup/BackupAgent;
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 3029
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to create BackupAgent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3030
    const-string/jumbo v13, ": "

    .line 3029
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3030
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3029
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 3025
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "agent":Landroid/app/backup/BackupAgent;
    :catch_3
    move-exception v6

    .restart local v6    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 13
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .prologue
    .line 3057
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3060
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 3059
    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v11

    .line 3061
    .local v11, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 3063
    .local v1, "service":Landroid/app/Service;
    :try_start_0
    invoke-virtual {v11}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 3064
    .local v8, "cl":Ljava/lang/ClassLoader;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/Service;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3076
    .end local v1    # "service":Landroid/app/Service;
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    sget-boolean v3, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v3, :cond_1

    .line 3077
    const-string/jumbo v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SVC-Creating service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :cond_1
    invoke-static {p0, v11}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v2

    .line 3082
    .local v2, "context":Landroid/app/ContextImpl;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3084
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 3085
    .local v6, "app":Landroid/app/Application;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 3086
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    move-object v3, p0

    .line 3085
    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 3087
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 3088
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3090
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 3091
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 3090
    invoke-interface {v3, v4, v5, v7, v12}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3054
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v6    # "app":Landroid/app/Application;
    :cond_2
    :goto_0
    return-void

    .line 3065
    .restart local v1    # "service":Landroid/app/Service;
    :catch_0
    move-exception v10

    .line 3066
    .local v10, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3067
    new-instance v3, Ljava/lang/RuntimeException;

    .line 3068
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3069
    const-string/jumbo v5, ": "

    .line 3068
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3069
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3068
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3067
    invoke-direct {v3, v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3095
    .end local v1    # "service":Landroid/app/Service;
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 3096
    .restart local v10    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3097
    new-instance v3, Ljava/lang/RuntimeException;

    .line 3098
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3099
    const-string/jumbo v5, ": "

    .line 3098
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3099
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3098
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3097
    invoke-direct {v3, v4, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3092
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v2    # "context":Landroid/app/ContextImpl;
    .restart local v6    # "app":Landroid/app/Application;
    :catch_2
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    .prologue
    const/4 v9, 0x0

    .line 4103
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v2

    .line 4105
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_5

    .line 4106
    invoke-static {v2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4107
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 4108
    .local v4, "wm":Landroid/view/WindowManager;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4109
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 4110
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v6, :cond_0

    .line 4111
    iget v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4113
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 4114
    .local v5, "wtoken":Landroid/os/IBinder;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v6, :cond_1

    .line 4115
    iget-boolean v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-eqz v6, :cond_7

    .line 4118
    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    .line 4119
    iput-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 4124
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-nez v6, :cond_2

    .line 4125
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v6

    .line 4126
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Activity"

    .line 4125
    invoke-virtual {v6, v5, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4128
    :cond_2
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-object v9, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4130
    .end local v5    # "wtoken":Landroid/os/IBinder;
    :cond_3
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-nez v6, :cond_4

    .line 4137
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v6

    .line 4138
    iget-object v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Activity"

    .line 4137
    invoke-virtual {v6, p1, v7, v8}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    :cond_4
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 4146
    .local v0, "c":Landroid/content/Context;
    instance-of v6, v0, Landroid/app/ContextImpl;

    if-eqz v6, :cond_5

    .line 4147
    check-cast v0, Landroid/app/ContextImpl;

    .line 4148
    .end local v0    # "c":Landroid/content/Context;
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Activity"

    .line 4147
    invoke-virtual {v0, v6, v7}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_5
    if-eqz p2, :cond_6

    .line 4153
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4158
    :cond_6
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4102
    return-void

    .line 4121
    .restart local v3    # "v":Landroid/view/View;
    .restart local v4    # "wm":Landroid/view/WindowManager;
    .restart local v5    # "wtoken":Landroid/os/IBinder;
    :cond_7
    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 4154
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "wm":Landroid/view/WindowManager;
    .end local v5    # "wtoken":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    .line 3038
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    .line 3039
    .local v2, "packageInfo":Landroid/app/LoadedApk;
    iget-object v3, v2, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 3040
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/BackupAgent;

    .line 3041
    .local v0, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v0, :cond_0

    .line 3043
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3048
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3035
    :goto_1
    return-void

    .line 3044
    :catch_0
    move-exception v1

    .line 3045
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3050
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Attempt to destroy unknown backup agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3181
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3183
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3184
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 3185
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    .line 3186
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 3185
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3187
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3188
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3191
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3192
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3180
    return-void

    .line 3190
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v3

    .line 3191
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3192
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3190
    throw v3
.end method

.method static final handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V
    .locals 5
    .param p0, "managed"    # Z
    .param p1, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    .prologue
    .line 4579
    if-eqz p0, :cond_0

    .line 4581
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4587
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4596
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4578
    :goto_1
    return-void

    .line 4588
    :catch_0
    move-exception v1

    .line 4589
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4582
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 4583
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Managed heap dump failed on path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4584
    const-string/jumbo v4, " -- can the process access this path?"

    .line 4583
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4587
    :try_start_4
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 4588
    :catch_2
    move-exception v1

    .line 4589
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4585
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 4587
    :try_start_5
    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4585
    :goto_2
    throw v2

    .line 4588
    :catch_3
    move-exception v1

    .line 4589
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ActivityThread"

    const-string/jumbo v4, "Failure closing profile fd"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4593
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 4597
    :catch_4
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3197
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3199
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3200
    .local v2, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v3, :cond_0

    .line 3201
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    .line 3202
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 3201
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3203
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3204
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3207
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3208
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3196
    return-void

    .line 3206
    .end local v2    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v3

    .line 3207
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3208
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3206
    throw v3
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3165
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3167
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 3168
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 3169
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    .line 3170
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 3169
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3171
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3172
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3175
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3176
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3164
    return-void

    .line 3174
    .end local v2    # "s":Landroid/app/Service;
    :catchall_0
    move-exception v3

    .line 3175
    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3176
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3174
    throw v3
.end method

.method private handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2857
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2858
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 2859
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 2856
    :cond_0
    return-void
.end method

.method private handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 2644
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2645
    iput-boolean v7, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 2647
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v5, :cond_0

    .line 2648
    iget-object v5, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v5, v8}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 2649
    iget-object v5, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v5}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 2653
    :cond_0
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v8, "handleLaunchActivity is called"

    invoke-static {v5, v8}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    invoke-virtual {p0, v9, v9}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 2659
    sget-boolean v5, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v5, :cond_3

    .line 2665
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 2667
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 2669
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_7

    .line 2670
    new-instance v5, Landroid/content/res/Configuration;

    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v5, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 2671
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2672
    .local v4, "oldState":Landroid/os/Bundle;
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 2673
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_1

    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v5, :cond_4

    :cond_1
    move v5, v6

    .line 2672
    :goto_1
    invoke-virtual {p0, v8, v6, v9, v5}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZ)V

    .line 2675
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_6

    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v5, :cond_6

    .line 2686
    :try_start_0
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/app/Activity;->mCalled:Z

    .line 2687
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2695
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2696
    iput-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2698
    :cond_2
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mCalled:Z

    if-nez v5, :cond_5

    .line 2699
    new-instance v5, Landroid/util/SuperNotCalledException;

    .line 2700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2701
    const-string/jumbo v8, " did not call through to super.onPause()"

    .line 2700
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2699
    invoke-direct {v5, v6}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2704
    :catch_0
    move-exception v1

    .line 2705
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 2660
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    .end local v4    # "oldState":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v5, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Handling launch of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " startsNotResumed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v0    # "a":Landroid/app/Activity;
    .restart local v4    # "oldState":Landroid/os/Bundle;
    :cond_4
    move v5, v7

    .line 2673
    goto :goto_1

    .line 2707
    :catch_1
    move-exception v2

    .line 2708
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v6, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2709
    new-instance v5, Ljava/lang/RuntimeException;

    .line 2710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to pause activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2711
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    .line 2710
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2712
    const-string/jumbo v7, ": "

    .line 2710
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2712
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2710
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2709
    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2715
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iput-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2641
    .end local v4    # "oldState":Landroid/os/Bundle;
    :cond_6
    :goto_2
    return-void

    .line 2721
    :cond_7
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 2722
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 2721
    invoke-interface {v5, v6, v7, v8, v9}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 2723
    :catch_2
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2
    .param p1, "data"    # Landroid/app/ActivityThread$NewIntentData;

    .prologue
    .line 2757
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2756
    return-void
.end method

.method private handlePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    .prologue
    .line 3538
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3539
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_3

    .line 3541
    if-eqz p3, :cond_0

    .line 3542
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3545
    :cond_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p4

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3546
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    invoke-virtual {p0, p1, p2, v2}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    .line 3549
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3550
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 3554
    :cond_1
    if-nez p5, :cond_2

    .line 3556
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3560
    :cond_2
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3537
    :cond_3
    return-void

    .line 3557
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 12
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .prologue
    const/4 v11, 0x0

    .line 2877
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2879
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2882
    .local v2, "component":Ljava/lang/String;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 2881
    invoke-virtual {p0, v8, v9}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v6

    .line 2884
    .local v6, "packageInfo":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 2888
    .local v5, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {v6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 2889
    .local v1, "cl":Ljava/lang/ClassLoader;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2890
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 2891
    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2892
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2903
    .local v7, "receiver":Landroid/content/BroadcastReceiver;
    :try_start_1
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    .line 2913
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/ContextImpl;

    .line 2914
    .local v3, "context":Landroid/app/ContextImpl;
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2915
    invoke-virtual {v7, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 2917
    sget-boolean v8, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v8, :cond_0

    .line 2918
    const-string/jumbo v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BDC-Calling onReceive: intent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2919
    iget-object v10, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 2918
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2920
    const-string/jumbo v10, ", receiver="

    .line 2918
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :cond_0
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v8

    .line 2924
    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 2923
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2927
    sget-boolean v8, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v8, :cond_1

    .line 2928
    const-string/jumbo v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BDC-Calling onReceive end receiver="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2942
    :cond_1
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2945
    .end local v0    # "app":Landroid/app/Application;
    .end local v3    # "context":Landroid/app/ContextImpl;
    :goto_0
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2946
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 2874
    :cond_2
    return-void

    .line 2893
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v4

    .line 2896
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 2897
    new-instance v8, Ljava/lang/RuntimeException;

    .line 2898
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to instantiate receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2899
    const-string/jumbo v10, ": "

    .line 2898
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2899
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2898
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2897
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 2932
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    .restart local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v4

    .line 2935
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 2936
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v8, v7, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2937
    new-instance v8, Ljava/lang/RuntimeException;

    .line 2938
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to start receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2939
    const-string/jumbo v10, ": "

    .line 2938
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2939
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2938
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2937
    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2941
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 2942
    sget-object v9, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2941
    throw v8

    .line 2942
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 12
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 4230
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4231
    iput-boolean v11, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4233
    const/4 v1, 0x0

    .line 4234
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .line 4239
    .local v2, "configChanges":I
    iget-object v8, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v8

    .line 4240
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4241
    .local v0, "N":I
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 4242
    .local v6, "token":Landroid/os/IBinder;
    const/4 p1, 0x0

    .line 4243
    .local p1, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v4, 0x0

    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 4244
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4245
    .local v5, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v7, v6, :cond_0

    .line 4246
    move-object p1, v5

    .line 4247
    .local p1, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    iget v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v2, v7

    .line 4248
    iget-object v7, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4249
    add-int/lit8 v4, v4, -0x1

    .line 4250
    add-int/lit8 v0, v0, -0x1

    .line 4243
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4254
    .end local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    if-nez p1, :cond_2

    monitor-exit v8

    .line 4256
    return-void

    .line 4263
    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_3

    .line 4264
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 4265
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "changedConfig":Landroid/content/res/Configuration;
    :cond_3
    monitor-exit v8

    .line 4269
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_6

    .line 4273
    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_4

    .line 4274
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4275
    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7

    if-eqz v7, :cond_6

    .line 4276
    :cond_4
    if-eqz v1, :cond_5

    .line 4277
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    .line 4276
    if-eqz v7, :cond_6

    .line 4278
    :cond_5
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 4287
    :cond_6
    if-eqz v1, :cond_7

    .line 4288
    iget v7, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v7, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 4289
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 4290
    invoke-virtual {p0, v1, v9}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 4293
    :cond_7
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4295
    .restart local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v5, :cond_8

    .line 4296
    return-void

    .line 4239
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v6    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 4299
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v6    # "token":Landroid/os/IBinder;
    :cond_8
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v8, v2

    iput v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4300
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 4301
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v7, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 4303
    .local v3, "currentIntent":Landroid/content/Intent;
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v11, v7, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 4306
    iget-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v7, :cond_9

    .line 4307
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v8

    invoke-virtual {p0, v7, v10, v8}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    .line 4309
    :cond_9
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v7, :cond_a

    iget-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v7, :cond_d

    .line 4313
    :cond_a
    :goto_1
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, v7, v10, v2, v11}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    .line 4315
    iput-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4316
    iput-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4317
    iput-boolean v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 4318
    iput-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4320
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v7, :cond_b

    .line 4321
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v7, :cond_e

    .line 4322
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 4327
    :cond_b
    :goto_2
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v7, :cond_c

    .line 4328
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v7, :cond_f

    .line 4329
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 4334
    :cond_c
    :goto_3
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-boolean v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 4335
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iput-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 4337
    invoke-direct {p0, v5, v3}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    .line 4227
    return-void

    .line 4309
    :cond_d
    invoke-virtual {v5}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v7

    if-nez v7, :cond_a

    .line 4310
    invoke-direct {p0, v5}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_1

    .line 4324
    :cond_e
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 4331
    :cond_f
    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method private handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .locals 8
    .param p1, "res"    # Landroid/app/ActivityThread$ResultData;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3959
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3961
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_3

    .line 3962
    iget-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 3963
    .local v3, "resumed":Z
    :goto_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_0

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, v4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 3964
    iget-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 3963
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 3968
    invoke-direct {p0, v2, v6}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3970
    :cond_0
    if-eqz v3, :cond_2

    .line 3973
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    .line 3974
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3975
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3976
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_2

    .line 3977
    new-instance v4, Landroid/util/SuperNotCalledException;

    .line 3978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3979
    const-string/jumbo v6, " did not call through to super.onPause()"

    .line 3978
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3977
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3981
    :catch_0
    move-exception v0

    .line 3982
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    .line 3962
    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    .end local v3    # "resumed":Z
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "resumed":Z
    goto :goto_0

    .line 3983
    :catch_1
    move-exception v1

    .line 3984
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3985
    new-instance v4, Ljava/lang/RuntimeException;

    .line 3986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to pause activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3987
    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 3986
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3988
    const-string/jumbo v6, ": "

    .line 3986
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3988
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3986
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3985
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3992
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3993
    if-eqz v3, :cond_3

    .line 3994
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->performResume()V

    .line 3995
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v7, v4, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3958
    .end local v3    # "resumed":Z
    :cond_3
    return-void
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 8
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .prologue
    .line 3213
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 3214
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_2

    .line 3216
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 3217
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3218
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3221
    :cond_0
    iget-boolean v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v4, :cond_3

    .line 3223
    sget-boolean v4, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v4, :cond_1

    .line 3224
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SVC-Calling onStartCommand: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3225
    const-string/jumbo v6, ", flags="

    .line 3224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3225
    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 3224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3226
    const-string/jumbo v6, ", startId="

    .line 3224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3226
    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 3224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    :cond_1
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 3235
    .local v2, "res":I
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3238
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3239
    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    const/4 v7, 0x1

    .line 3238
    invoke-interface {v4, v5, v7, v6, v2}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3243
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 3212
    .end local v2    # "res":I
    :cond_2
    return-void

    .line 3231
    :cond_3
    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3232
    const/16 v2, 0x3e8

    .restart local v2    # "res":I
    goto :goto_0

    .line 3244
    .end local v2    # "res":I
    :catch_0
    move-exception v1

    .line 3245
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3246
    new-instance v4, Ljava/lang/RuntimeException;

    .line 3247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to start service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3248
    const-string/jumbo v6, " with "

    .line 3247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3248
    iget-object v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 3247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3248
    const-string/jumbo v6, ": "

    .line 3247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3248
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3246
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3240
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "res":I
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .prologue
    .line 3902
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 3903
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3905
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 3901
    return-void

    .line 3902
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .prologue
    .line 3860
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3862
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v2, :cond_0

    .line 3863
    const-string/jumbo v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSleeping: no activity for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    return-void

    .line 3867
    :cond_0
    if-eqz p2, :cond_6

    .line 3868
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3884
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3885
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 3890
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3859
    :cond_3
    :goto_1
    return-void

    .line 3871
    :cond_4
    :try_start_1
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3880
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0

    .line 3872
    :catch_0
    move-exception v0

    .line 3873
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3874
    new-instance v3, Ljava/lang/RuntimeException;

    .line 3875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3876
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    .line 3875
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3877
    const-string/jumbo v5, ": "

    .line 3875
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3877
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3875
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3874
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3894
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v3, :cond_3

    .line 3895
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->performRestart()V

    .line 3896
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_1

    .line 3891
    :catch_1
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private handleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3788
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3791
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_0

    .line 3792
    const-string/jumbo v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleStopActivity: no activity for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    return-void

    .line 3797
    :cond_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 3799
    new-instance v0, Landroid/app/ActivityThread$StopInfo;

    invoke-direct {v0, v4}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$StopInfo;)V

    .line 3800
    .local v0, "info":Landroid/app/ActivityThread$StopInfo;
    invoke-direct {p0, v1, v0, p2, v5}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 3802
    sget-boolean v2, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v2, :cond_2

    .line 3806
    :goto_0
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3809
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3810
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 3818
    :cond_1
    iput-object v1, v0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3819
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    .line 3820
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    iput-object v2, v0, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    .line 3821
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 3822
    iput-boolean v5, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3787
    return-void

    .line 3803
    :cond_2
    const-string/jumbo v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finishing stop of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3804
    const-string/jumbo v4, " win="

    .line 3803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3804
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 3803
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3802
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3255
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 3256
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_3

    .line 3260
    :try_start_0
    sget-boolean v5, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v5, :cond_0

    .line 3261
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SVC-Destroying service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    :cond_0
    invoke-virtual {v3}, Landroid/app/Service;->onDestroy()V

    .line 3265
    invoke-virtual {v3}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3266
    .local v0, "context":Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ContextImpl;

    if-eqz v5, :cond_1

    .line 3267
    invoke-virtual {v3}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 3268
    .local v4, "who":Ljava/lang/String;
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0    # "context":Landroid/content/Context;
    const-string/jumbo v5, "Service"

    invoke-virtual {v0, v4, v5}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    .end local v4    # "who":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3274
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 3275
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3274
    invoke-interface {v5, p1, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3254
    :goto_0
    return-void

    .line 3276
    :catch_0
    move-exception v1

    .line 3278
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleStopService: unable to execute serviceDoneExecuting for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3281
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3282
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v3, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3283
    new-instance v5, Ljava/lang/RuntimeException;

    .line 3284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to stop service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3285
    const-string/jumbo v7, ": "

    .line 3284
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3285
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3284
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3283
    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3287
    :cond_2
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleStopService: exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3290
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleStopService: token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 9
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    .line 3138
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 3139
    .local v3, "s":Landroid/app/Service;
    if-eqz v3, :cond_0

    .line 3141
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3142
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3143
    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3145
    .local v0, "doRebind":Z
    if-eqz v0, :cond_1

    .line 3146
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3147
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 3146
    invoke-interface {v4, v5, v6, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 3137
    .end local v0    # "doRebind":Z
    :cond_0
    :goto_0
    return-void

    .line 3149
    .restart local v0    # "doRebind":Z
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 3150
    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3149
    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3152
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3154
    .end local v0    # "doRebind":Z
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 3155
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3156
    new-instance v4, Ljava/lang/RuntimeException;

    .line 3157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to unbind to service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3158
    const-string/jumbo v6, " with "

    .line 3157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3158
    iget-object v6, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 3157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3158
    const-string/jumbo v6, ": "

    .line 3157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3158
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3156
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .prologue
    .line 3922
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 3923
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_0

    .line 3924
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 3926
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 3927
    if-eqz v0, :cond_1

    .line 3928
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 3930
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 3931
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 3921
    return-void
.end method

.method private handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3834
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3836
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    .line 3837
    const-string/jumbo v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWindowVisibility: no activity for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    return-void

    .line 3841
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_4

    .line 3843
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_2

    .line 3846
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3848
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 3849
    iput-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3851
    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 3854
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3856
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3833
    return-void

    .line 3842
    :cond_4
    invoke-direct {p0, v0, v2, p2, v3}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    goto :goto_0
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 6
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;
    .param p2, "stable"    # Z

    .prologue
    const/16 v5, 0x83

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5096
    if-eqz p2, :cond_2

    .line 5097
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 5098
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v2, v3, :cond_0

    .line 5101
    iget-boolean v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v2, :cond_1

    .line 5105
    const/4 v1, -0x1

    .line 5111
    .local v1, "unstableDelta":I
    iput-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 5114
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v5, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 5124
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5125
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v4, 0x1

    .line 5124
    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5095
    .end local v1    # "unstableDelta":I
    :cond_0
    :goto_1
    return-void

    .line 5116
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "unstableDelta":I
    goto :goto_0

    .line 5131
    .end local v1    # "unstableDelta":I
    :cond_2
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 5132
    iget v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v2, v3, :cond_0

    .line 5134
    iget-boolean v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v2, :cond_3

    .line 5143
    iput-boolean v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 5144
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v5, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 5153
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5154
    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 5153
    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5155
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 5126
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "unstableDelta":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 5015
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5017
    .local v10, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "cpi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 5027
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    .line 5026
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v7

    .line 5028
    .local v7, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v7, :cond_0

    .line 5029
    iput-boolean v5, v7, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 5030
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5035
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5036
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 5035
    invoke-interface {v0, v1, v10}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5013
    :goto_1
    return-void

    .line 5037
    :catch_0
    move-exception v9

    .local v9, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/app/IActivityManager$ContentProviderHolder;
    .param p3, "info"    # Landroid/content/pm/ProviderInfo;
    .param p4, "noisy"    # Z
    .param p5, "noReleaseNeeded"    # Z
    .param p6, "stable"    # Z

    .prologue
    .line 5411
    const/4 v13, 0x0

    .line 5413
    .local v13, "localProvider":Landroid/content/ContentProvider;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 5414
    :cond_0
    if-eqz p4, :cond_1

    .line 5415
    const-string/jumbo v18, "ActivityThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Loading provider "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5416
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 5415
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5418
    :cond_1
    const/4 v4, 0x0

    .line 5419
    .local v4, "c":Landroid/content/Context;
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5420
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v18, "ActivityThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "installProvider: context.getPackageName()="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5421
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 5422
    move-object/from16 v4, p1

    .line 5434
    .end local v4    # "c":Landroid/content/Context;
    :goto_0
    if-nez v4, :cond_4

    .line 5435
    const-string/jumbo v18, "ActivityThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unable to get context for package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5436
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 5435
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5437
    const-string/jumbo v20, " while loading content provider "

    .line 5435
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5438
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 5435
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    const/16 v18, 0x0

    return-object v18

    .line 5423
    .restart local v4    # "c":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 5424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 5423
    if-eqz v18, :cond_3

    .line 5425
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .local v4, "c":Landroid/content/Context;
    goto :goto_0

    .line 5428
    .local v4, "c":Landroid/content/Context;
    :cond_3
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 5429
    const/16 v19, 0x1

    .line 5428
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .local v4, "c":Landroid/content/Context;
    goto :goto_0

    .line 5442
    .end local v4    # "c":Landroid/content/Context;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 5444
    .local v5, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 5443
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/content/ContentProvider;

    move-object v13, v0

    .line 5445
    .local v13, "localProvider":Landroid/content/ContentProvider;
    invoke-virtual {v13}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v16

    .line 5446
    .local v16, "provider":Landroid/content/IContentProvider;
    if-nez v16, :cond_5

    .line 5447
    const-string/jumbo v18, "ActivityThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to instantiate class "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5448
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 5447
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5448
    const-string/jumbo v20, " from sourceDir "

    .line 5447
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5449
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 5447
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5450
    const/16 v18, 0x0

    return-object v18

    .line 5455
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5472
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    .end local v13    # "localProvider":Landroid/content/ContentProvider;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 5475
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 5476
    .local v12, "jBinder":Landroid/os/IBinder;
    if-eqz v13, :cond_9

    .line 5477
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5478
    .local v7, "cname":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5479
    .local v14, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v14, :cond_8

    .line 5484
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v16, v0

    .line 5493
    :goto_2
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    move-object/from16 v17, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .local v17, "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    :goto_3
    monitor-exit v19

    .line 5529
    return-object v17

    .line 5456
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v16    # "provider":Landroid/content/IContentProvider;
    .end local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v10

    .line 5457
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 5458
    new-instance v18, Ljava/lang/RuntimeException;

    .line 5459
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unable to get provider "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5460
    const-string/jumbo v20, ": "

    .line 5459
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 5460
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    .line 5459
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 5458
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 5462
    :cond_6
    const/16 v18, 0x0

    return-object v18

    .line 5465
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "e":Ljava/lang/Exception;
    .local v13, "localProvider":Landroid/content/ContentProvider;
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object/from16 v16, v0

    .restart local v16    # "provider":Landroid/content/IContentProvider;
    goto/16 :goto_1

    .line 5486
    .end local v13    # "localProvider":Landroid/content/ContentProvider;
    .restart local v7    # "cname":Landroid/content/ComponentName;
    .restart local v12    # "jBinder":Landroid/os/IBinder;
    .restart local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_8
    :try_start_3
    new-instance v11, Landroid/app/IActivityManager$ContentProviderHolder;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5487
    .end local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .local v11, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_4
    move-object/from16 v0, v16

    iput-object v0, v11, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 5488
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v11, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 5489
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v11}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v14

    .line 5490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 p2, v11

    .end local v11    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_2

    .line 5495
    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5496
    .local v15, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v15, :cond_b

    .line 5504
    if-nez p5, :cond_a

    .line 5505
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v15, v1}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5507
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    .line 5508
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    move-object/from16 v20, v0

    .line 5507
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, p6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5525
    :cond_a
    :goto_4
    :try_start_7
    iget-object v0, v15, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    move-object/from16 v17, v0

    .restart local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_3

    .line 5514
    .end local v17    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v6

    .line 5516
    .local v6, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_c

    .line 5517
    new-instance v15, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v18, 0x3e8

    const/16 v20, 0x3e8

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v15, v0, v6, v1, v2}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .line 5523
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 5472
    .end local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v18

    :goto_6
    monitor-exit v19

    throw v18

    .line 5519
    .restart local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v12    # "jBinder":Landroid/os/IBinder;
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_c
    if-eqz p6, :cond_d

    .line 5520
    :try_start_8
    new-instance v15, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v18, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v15, v0, v6, v1, v2}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_5

    .line 5521
    :cond_d
    new-instance v15, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v15, v0, v6, v1, v2}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_5

    .line 5472
    .end local v6    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v7    # "cname":Landroid/content/ComponentName;
    .restart local v11    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_1
    move-exception v18

    move-object/from16 p2, v11

    .end local v11    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto :goto_6

    .line 5509
    .end local v7    # "cname":Landroid/content/ComponentName;
    .end local v14    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 5430
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "jBinder":Landroid/os/IBinder;
    .end local v15    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v16    # "provider":Landroid/content/IContentProvider;
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v4, "c":Landroid/content/Context;
    .restart local v13    # "localProvider":Landroid/content/ContentProvider;
    :catch_2
    move-exception v8

    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 11
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "localProvider"    # Landroid/content/ContentProvider;
    .param p3, "holder"    # Landroid/app/IActivityManager$ContentProviderHolder;

    .prologue
    .line 5376
    iget-object v1, p3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5377
    .local v2, "auths":[Ljava/lang/String;
    iget-object v1, p3, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 5379
    .local v9, "userId":I
    new-instance v0, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)V

    .line 5381
    .local v0, "pcr":Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v6, v2, v1

    .line 5382
    .local v6, "auth":Ljava/lang/String;
    new-instance v8, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v8, v6, v9}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 5383
    .local v8, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5384
    .local v7, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v7, :cond_0

    .line 5385
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Content provider "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v10, v10, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5386
    const-string/jumbo v10, " already published as "

    .line 5385
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5381
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5388
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5391
    .end local v6    # "auth":Ljava/lang/String;
    .end local v7    # "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v8    # "key":Landroid/app/ActivityThread$ProviderKey;
    :cond_1
    return-object v0
.end method

.method public static isSystem()Z
    .locals 1

    .prologue
    .line 1799
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x40

    .line 5779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logAppLaunchTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5780
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_0

    .line 5781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[AppLaunch] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5783
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 5778
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v12, 0x40

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5683
    const-string/jumbo v6, "ActivityThreadMain"

    invoke-static {v12, v13, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5686
    if-eqz p0, :cond_4

    array-length v6, p0

    if-ne v6, v11, :cond_4

    .line 5687
    aget-object v6, p0, v10

    const-string/jumbo v7, "enable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5688
    sput-boolean v8, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    .line 5690
    :cond_0
    aget-object v6, p0, v8

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5691
    sput-boolean v8, Landroid/app/ActivityThread;->mIsUserBuild:Z

    .line 5693
    :cond_1
    const/4 v6, 0x2

    aget-object v6, p0, v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5694
    sput-boolean v8, Landroid/app/ActivityThread;->mBooted:Z

    .line 5696
    :cond_2
    array-length v6, p0

    if-lt v6, v11, :cond_3

    const/4 v6, 0x3

    aget-object v6, p0, v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5697
    sput-boolean v8, Landroid/app/ActivityThread;->mEnableLooperLog:Z

    .line 5699
    :cond_3
    sget-boolean v6, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v6, :cond_4

    .line 5700
    const-string/jumbo v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MAIN-ARGS launch log: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", user build: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5701
    sget-boolean v8, Landroid/app/ActivityThread;->mIsUserBuild:Z

    .line 5700
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5701
    const-string/jumbo v8, ", booted: "

    .line 5700
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5701
    sget-boolean v8, Landroid/app/ActivityThread;->mBooted:Z

    .line 5700
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5701
    const-string/jumbo v8, ", looper log: "

    .line 5700
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5701
    sget-boolean v8, Landroid/app/ActivityThread;->mEnableLooperLog:Z

    .line 5700
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5706
    :cond_4
    const-string/jumbo v6, "ActivityThread"

    const-string/jumbo v7, "ActivityThread is created"

    invoke-static {v6, v7}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 5710
    const-string/jumbo v6, "persist.sys.lenovoactivitylog"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5712
    .local v0, "activitylog":Ljava/lang/String;
    if-eqz v0, :cond_5

    :try_start_0
    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_8

    .line 5722
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 5727
    invoke-static {v10}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 5729
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 5732
    new-instance v6, Landroid/app/ActivityThread$EventLoggingReporter;

    invoke-direct {v6, v9}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>(Landroid/app/ActivityThread$EventLoggingReporter;)V

    invoke-static {v6}, Llibcore/io/EventLogger;->setReporter(Llibcore/io/EventLogger$Reporter;)V

    .line 5734
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    .line 5737
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 5738
    .local v1, "configDir":Ljava/io/File;
    invoke-static {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 5740
    const-string/jumbo v6, "<pre-initialized>"

    invoke-static {v6}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 5742
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 5744
    new-instance v5, Landroid/app/ActivityThread;

    invoke-direct {v5}, Landroid/app/ActivityThread;-><init>()V

    .line 5745
    .local v5, "thread":Landroid/app/ActivityThread;
    invoke-direct {v5, v10}, Landroid/app/ActivityThread;->attach(Z)V

    .line 5747
    sget-object v6, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v6, :cond_6

    .line 5748
    invoke-virtual {v5}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    sput-object v6, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 5757
    :cond_6
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 5760
    sget-boolean v6, Landroid/app/ActivityThread;->mIsEngBuild:Z

    if-eqz v6, :cond_7

    .line 5762
    :try_start_1
    new-instance v6, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;

    invoke-direct {v6}, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;-><init>()V

    invoke-static {v6}, Lcom/mediatek/anrappmanager/ANRAppManager;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/ANRAppManager;

    move-result-object v4

    .line 5763
    .local v4, "mANRAppManager":Lcom/mediatek/anrappmanager/ANRAppManager;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    sget-boolean v7, Landroid/app/ActivityThread;->mEnableLooperLog:Z

    invoke-virtual {v4, v7}, Lcom/mediatek/anrappmanager/ANRAppManager;->newMessageLogger(Z)Landroid/util/Printer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5770
    .end local v4    # "mANRAppManager":Lcom/mediatek/anrappmanager/ANRAppManager;
    :cond_7
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5772
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Main thread loop unexpectedly exited"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5713
    .end local v1    # "configDir":Ljava/io/File;
    .end local v5    # "thread":Landroid/app/ActivityThread;
    :cond_8
    :try_start_2
    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5714
    .local v3, "enabled":Ljava/lang/String;
    const-string/jumbo v6, "on"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 5716
    .end local v3    # "enabled":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5717
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ActivityThread"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 5765
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "configDir":Ljava/io/File;
    .restart local v5    # "thread":Landroid/app/ActivityThread;
    :catch_1
    move-exception v2

    .line 5766
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set ANR debugging mechanism state fair "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onCoreSettingsChange()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 3910
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v1, "debug_view_attributes"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    .line 3911
    .local v9, "debugViewAttributes":Z
    :goto_0
    sget-boolean v0, Landroid/view/View;->mDebugViewAttributes:Z

    if-eq v9, v0, :cond_1

    .line 3912
    sput-boolean v9, Landroid/view/View;->mDebugViewAttributes:Z

    .line 3915
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 3916
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    move-object v0, p0

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    goto :goto_1

    .line 3910
    .end local v9    # "debugViewAttributes":Z
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "debugViewAttributes":Z
    goto :goto_0

    .line 3908
    :cond_1
    return-void
.end method

.method private static performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 6
    .param p0, "cb"    # Landroid/content/ComponentCallbacks2;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    .line 4407
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 4408
    :goto_0
    if-eqz v0, :cond_0

    .line 4409
    iput-boolean v4, v0, Landroid/app/Activity;->mCalled:Z

    .line 4412
    :cond_0
    const/4 v2, 0x0

    .line 4413
    .local v2, "shouldChangeConfig":Z
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v3, :cond_4

    .line 4414
    :cond_1
    const/4 v2, 0x1

    .line 4433
    :cond_2
    :goto_1
    if-eqz v2, :cond_6

    .line 4434
    invoke-interface {p0, p1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4436
    if-eqz v0, :cond_6

    .line 4437
    iget-boolean v3, v0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_5

    .line 4438
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 4439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4440
    const-string/jumbo v5, " did not call through to super.onConfigurationChanged()"

    .line 4439
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4438
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4407
    .end local v2    # "shouldChangeConfig":Z
    :cond_3
    const/4 v0, 0x0

    .local v0, "activity":Landroid/app/Activity;
    goto :goto_0

    .line 4420
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "shouldChangeConfig":Z
    :cond_4
    iget-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 4421
    .local v1, "diff":I
    if-eqz v1, :cond_2

    .line 4425
    iget-object v3, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v3

    not-int v3, v3

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 4426
    const/4 v2, 0x1

    goto :goto_1

    .line 4442
    .end local v1    # "diff":I
    :cond_5
    iput v4, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4443
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 4403
    :cond_6
    return-void
.end method

.method private performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    .prologue
    const/4 v7, 0x1

    .line 4006
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4007
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    .line 4009
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v3, :cond_8

    .line 4010
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4011
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v5, v4, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v5, p3

    iput v5, v4, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4012
    if-eqz p2, :cond_0

    .line 4013
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v7, v4, Landroid/app/Activity;->mFinished:Z

    .line 4015
    :cond_0
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v4, :cond_3

    .line 4017
    :try_start_0
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    .line 4018
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 4019
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 4020
    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 4019
    const/16 v5, 0x7545

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4022
    sget-boolean v4, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v4, :cond_1

    .line 4023
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACT-AM_ON_PAUSE_CALLED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    :cond_1
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_2

    .line 4026
    new-instance v4, Landroid/util/SuperNotCalledException;

    .line 4027
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4028
    const-string/jumbo v6, " did not call through to super.onPause()"

    .line 4027
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4026
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4030
    :catch_0
    move-exception v1

    .line 4031
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 4032
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v2

    .line 4033
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4034
    new-instance v4, Ljava/lang/RuntimeException;

    .line 4035
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to pause activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4036
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 4035
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4037
    const-string/jumbo v6, ": "

    .line 4035
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4037
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4035
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4034
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4040
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iput-boolean v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 4042
    :cond_3
    iget-boolean v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v4, :cond_5

    .line 4044
    :try_start_1
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 4055
    :cond_4
    iput-boolean v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4057
    :cond_5
    if-eqz p4, :cond_6

    .line 4060
    :try_start_2
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v4

    .line 4059
    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 4071
    :cond_6
    :try_start_3
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/app/Activity;->mCalled:Z

    .line 4072
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 4073
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_7

    .line 4074
    new-instance v4, Landroid/util/SuperNotCalledException;

    .line 4075
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4076
    const-string/jumbo v6, " did not call through to super.onDestroy()"

    .line 4075
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4074
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 4081
    :catch_2
    move-exception v1

    .line 4082
    .restart local v1    # "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 4047
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_3
    move-exception v2

    .line 4048
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4049
    new-instance v4, Ljava/lang/RuntimeException;

    .line 4050
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to stop activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4051
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 4050
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4052
    const-string/jumbo v6, ": "

    .line 4050
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4052
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4050
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4049
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4045
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 4046
    .restart local v1    # "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 4061
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_5
    move-exception v2

    .line 4062
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 4063
    new-instance v4, Ljava/lang/RuntimeException;

    .line 4064
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to retain activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4065
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4066
    const-string/jumbo v6, ": "

    .line 4064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4066
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4064
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4063
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4078
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_4
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v4, :cond_8

    .line 4079
    iget-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->closeAllPanels()V
    :try_end_4
    .catch Landroid/util/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 4091
    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_8
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4092
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 4093
    return-object v3

    .line 4083
    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :catch_6
    move-exception v2

    .line 4084
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 4085
    new-instance v4, Ljava/lang/RuntimeException;

    .line 4086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to destroy activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v6}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4087
    const-string/jumbo v6, ": "

    .line 4086
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4087
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4086
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4085
    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 24
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .prologue
    .line 2452
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    .line 2453
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-nez v4, :cond_0

    .line 2454
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 2455
    const/4 v6, 0x1

    .line 2454
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 2458
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    .line 2459
    .local v20, "component":Landroid/content/ComponentName;
    if-nez v20, :cond_1

    .line 2460
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 2461
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2460
    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v20

    .line 2462
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2465
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2466
    new-instance v20, Landroid/content/ComponentName;

    .end local v20    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2467
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 2466
    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    .restart local v20    # "component":Landroid/content/ComponentName;
    :cond_2
    const/4 v2, 0x0

    .line 2472
    .local v2, "activity":Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v4}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    .line 2473
    .local v19, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 2474
    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 2473
    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5, v6}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v2

    .line 2475
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 2476
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2477
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 2478
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 2479
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2490
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v19    # "cl":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v8

    .line 2493
    .local v8, "app":Landroid/app/Application;
    sget-boolean v4, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v4, :cond_6

    .line 2500
    :goto_0
    if-eqz v2, :cond_f

    .line 2501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v3

    .line 2502
    .local v3, "appContext":Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 2503
    .local v11, "title":Ljava/lang/CharSequence;
    new-instance v15, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v15, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2507
    .local v15, "config":Landroid/content/res/Configuration;
    invoke-static {v3}, Landroid/content/res/ThemeExtraConfiguration;->onActivityLaunch(Landroid/content/Context;)V

    .line 2513
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 2514
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 2515
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2516
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v17, v0

    move-object/from16 v4, p0

    .line 2513
    invoke-virtual/range {v2 .. v17}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 2518
    if-eqz p2, :cond_4

    .line 2519
    move-object/from16 v0, p2

    iput-object v0, v2, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 2521
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2522
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 2523
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v23

    .line 2524
    .local v23, "theme":I
    if-eqz v23, :cond_5

    .line 2525
    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 2528
    :cond_5
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    .line 2529
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2530
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2534
    :goto_1
    iget-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_8

    .line 2535
    new-instance v4, Landroid/util/SuperNotCalledException;

    .line 2536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2537
    const-string/jumbo v6, " did not call through to super.onCreate()"

    .line 2536
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2535
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2580
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v8    # "app":Landroid/app/Application;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v23    # "theme":I
    :catch_0
    move-exception v21

    .line 2581
    .local v21, "e":Landroid/util/SuperNotCalledException;
    throw v21

    .line 2481
    .end local v21    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v22

    .line 2482
    .local v22, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v22

    invoke-virtual {v4, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2483
    new-instance v4, Ljava/lang/RuntimeException;

    .line 2484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to instantiate activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2485
    const-string/jumbo v6, ": "

    .line 2484
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2485
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2484
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2483
    move-object/from16 v0, v22

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2494
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v8    # "app":Landroid/app/Application;
    :cond_6
    :try_start_2
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": app="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2495
    const-string/jumbo v6, ", appName="

    .line 2494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2495
    invoke-virtual {v8}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2496
    const-string/jumbo v6, ", pkg="

    .line 2494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2496
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v6}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2497
    const-string/jumbo v6, ", comp="

    .line 2494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2497
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 2494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2498
    const-string/jumbo v6, ", dir="

    .line 2494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2498
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v6}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v6

    .line 2494
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2493
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2583
    .end local v8    # "app":Landroid/app/Application;
    :catch_2
    move-exception v22

    .line 2584
    .restart local v22    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v22

    invoke-virtual {v4, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2585
    new-instance v4, Ljava/lang/RuntimeException;

    .line 2586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to start activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2587
    const-string/jumbo v6, ": "

    .line 2586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2587
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2586
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2585
    move-object/from16 v0, v22

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2532
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v3    # "appContext":Landroid/content/Context;
    .restart local v8    # "app":Landroid/app/Application;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    .restart local v15    # "config":Landroid/content/res/Configuration;
    .restart local v23    # "theme":I
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 2539
    :cond_8
    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2540
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2541
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_9

    .line 2542
    invoke-virtual {v2}, Landroid/app/Activity;->performStart()V

    .line 2543
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2545
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_b

    .line 2546
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2547
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v4, :cond_a

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v4, :cond_b

    .line 2548
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2549
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 2548
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2555
    :cond_b
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_e

    .line 2556
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    .line 2557
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2558
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2559
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 2558
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 2563
    :goto_3
    iget-boolean v4, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_e

    .line 2564
    new-instance v4, Landroid/util/SuperNotCalledException;

    .line 2565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2566
    const-string/jumbo v6, " did not call through to super.onPostCreate()"

    .line 2565
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2564
    invoke-direct {v4, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2551
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v4, :cond_b

    .line 2552
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_2

    .line 2561
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v5}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_3

    .line 2570
    :cond_e
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2571
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BMW] activityCreated r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/mediatek/multiwindow/MultiWindowProxy;->activityCreated(Landroid/os/IBinder;)V

    .line 2576
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v15    # "config":Landroid/content/res/Configuration;
    .end local v23    # "theme":I
    :cond_f
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2578
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2591
    .end local v8    # "app":Landroid/app/Application;
    :cond_10
    return-object v2
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/ActivityThread$StopInfo;
    .param p3, "keepShown"    # Z
    .param p4, "saveState"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3692
    if-eqz p1, :cond_7

    .line 3693
    if-nez p3, :cond_1

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_1

    .line 3694
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-eqz v2, :cond_0

    .line 3698
    return-void

    .line 3700
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 3701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Performing stop of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3702
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 3701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3700
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3703
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "ActivityThread"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3707
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mResumed:Z

    if-eqz v2, :cond_2

    .line 3708
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Skipping stop of activity that is in resumed state"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    return-void

    .line 3713
    :cond_2
    if-eqz p2, :cond_3

    .line 3718
    :try_start_0
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3730
    :cond_3
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_4

    if-eqz p4, :cond_4

    .line 3731
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v2, :cond_4

    .line 3732
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3736
    :cond_4
    if-nez p3, :cond_6

    .line 3739
    :try_start_1
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3748
    :cond_5
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3751
    :cond_6
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3690
    :cond_7
    return-void

    .line 3719
    :catch_0
    move-exception v0

    .line 3720
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3721
    new-instance v2, Ljava/lang/RuntimeException;

    .line 3722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to save state of activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3723
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 3722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3724
    const-string/jumbo v4, ": "

    .line 3722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3724
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3722
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3721
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3740
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3741
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3742
    new-instance v2, Ljava/lang/RuntimeException;

    .line 3743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3744
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 3743
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3745
    const-string/jumbo v4, ": "

    .line 3743
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3745
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3743
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3742
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 2106
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    return-void
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4097
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4098
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string/jumbo v1, "[Unknown]"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    .line 2414
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 2413
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    .line 2418
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 2417
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 2422
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 2421
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .prologue
    .line 2429
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2430
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2431
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2432
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2433
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 2434
    if-eqz p5, :cond_0

    .line 2435
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2437
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2425
    return-void
.end method

.method private setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V
    .locals 5
    .param p1, "info"    # Landroid/app/LoadedApk;
    .param p2, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 4665
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4667
    return-void

    .line 4670
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 4671
    .local v2, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4675
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4676
    invoke-static {p2}, Landroid/view/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 4677
    invoke-static {p2}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4664
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_1
    :goto_0
    return-void

    .line 4679
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5625
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5626
    invoke-static {v2}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 5630
    :goto_0
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 5631
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-direct {v0, v2}, Landroid/app/ActivityThread;->attach(Z)V

    .line 5632
    return-object v0

    .line 5628
    .end local v0    # "thread":Landroid/app/ActivityThread;
    :cond_0
    invoke-static {}, Landroid/view/HardwareRenderer;->enableForegroundTrimming()V

    goto :goto_0
.end method

.method private updateDefaultDensity()V
    .locals 3

    .prologue
    .line 4685
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    if-eqz v0, :cond_0

    .line 4686
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq v0, v1, :cond_0

    .line 4687
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    if-eqz v0, :cond_1

    .line 4684
    :cond_0
    :goto_0
    return-void

    .line 4688
    :cond_1
    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Switching default density from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4689
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 4688
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4689
    const-string/jumbo v2, " to "

    .line 4688
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4690
    iget v2, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 4688
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 4694
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    goto :goto_0
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3756
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3757
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3758
    if-eqz p2, :cond_3

    .line 3759
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v1, :cond_0

    .line 3760
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3761
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3762
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_0

    .line 3763
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    .line 3766
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_2

    .line 3767
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3768
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    .line 3769
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3773
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 3774
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 3775
    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 3755
    :cond_2
    :goto_0
    return-void

    .line 3778
    :cond_3
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v1, :cond_2

    .line 3779
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3780
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3781
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .prologue
    const/4 v9, 0x0

    .line 5165
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 5166
    :try_start_0
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 5167
    .local v1, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5168
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-nez v2, :cond_0

    monitor-exit v6

    .line 5169
    return-object v9

    .line 5172
    :cond_0
    :try_start_1
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 5173
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5174
    .local v0, "jBinder":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5177
    const-string/jumbo v5, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Acquiring provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5178
    const-string/jumbo v8, ": existing object\'s process dead"

    .line 5177
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 5180
    return-object v9

    .line 5185
    :cond_1
    :try_start_2
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5186
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    .line 5187
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v6

    .line 5189
    return-object v4

    .line 5165
    .end local v0    # "jBinder":Landroid/os/IBinder;
    .end local v1    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .prologue
    .line 5043
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v8

    .line 5044
    .local v8, "provider":Landroid/content/IContentProvider;
    if-eqz v8, :cond_0

    .line 5045
    return-object v8

    .line 5054
    :cond_0
    const/4 v2, 0x0

    .line 5056
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5057
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 5056
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 5060
    .end local v2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :goto_0
    if-nez v2, :cond_1

    .line 5061
    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to find provider info for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    const/4 v0, 0x0

    return-object v0

    .line 5074
    :cond_1
    :try_start_1
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 5075
    iget-boolean v5, v2, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    .line 5074
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 5092
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :goto_1
    iget-object v0, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object v0

    .line 5076
    .end local v2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catch_0
    move-exception v9

    .line 5078
    .local v9, "sex":Ljava/lang/SecurityException;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5079
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    .line 5078
    invoke-interface {v0, v1, p2, p3, p4}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 5083
    :goto_2
    if-nez v2, :cond_2

    .line 5084
    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to find provider info for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    const/4 v0, 0x0

    return-object v0

    .line 5088
    :cond_2
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 5089
    iget-boolean v5, v2, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    .line 5088
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v2

    .restart local v2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto :goto_1

    .line 5080
    .end local v2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catch_1
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_2

    .line 5058
    .end local v7    # "ex":Landroid/os/RemoteException;
    .end local v9    # "sex":Ljava/lang/SecurityException;
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catch_2
    move-exception v7

    .restart local v7    # "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public addToQueryHistory(Ljava/lang/String;Ljava/lang/Throwable;II)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Throwable;
    .param p3, "hashCode"    # I
    .param p4, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 6084
    if-ne p4, v3, :cond_0

    .line 6085
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mQueryHistory:Landroid/app/ActivityThread$QueryHistory;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/ActivityThread$QueryHistory;->add(Ljava/lang/String;Ljava/lang/Throwable;I)Z

    move-result v1

    return v1

    .line 6086
    :cond_0
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    .line 6087
    iget-object v1, p0, Landroid/app/ActivityThread;->mQueryHistory:Landroid/app/ActivityThread$QueryHistory;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/ActivityThread$QueryHistory;->addPfd(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6089
    :catch_0
    move-exception v0

    .line 6090
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ProviderLeakDetecter"

    const-string/jumbo v2, "AddToQueryHistory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6092
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method final appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "provider"    # Landroid/os/IBinder;

    .prologue
    .line 5362
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 5363
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5364
    .local v1, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v1, :cond_0

    .line 5366
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5367
    iget-object v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v4, v4, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 5366
    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 5361
    return-void

    .line 5362
    .end local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 5368
    .restart local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final applyCompatConfiguration(I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "displayDensity"    # I

    .prologue
    .line 4455
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 4456
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    .line 4457
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 4459
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4460
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyCompatConfiguration(ILandroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4461
    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 4463
    :cond_1
    return-object v0
.end method

.method applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v0, 0x0

    .line 1840
    if-nez p2, :cond_0

    .line 1841
    return-object v0

    .line 1843
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1844
    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1845
    iget-object p2, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 1846
    invoke-virtual {p3, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 1848
    :cond_1
    return-object p2
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 4449
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 4450
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4448
    return-void

    .line 4449
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "allActivities"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4355
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4357
    .local v6, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v10

    .line 4358
    :try_start_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4359
    .local v1, "NAPP":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 4360
    iget-object v9, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4359
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4362
    :cond_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4363
    .local v0, "NACT":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_4

    .line 4364
    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4365
    .local v5, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4366
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_2

    .line 4368
    iget v9, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 4369
    iget-object v11, v5, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v11}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    .line 4367
    invoke-virtual {p0, v9, p2, v11}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    move-result-object v8

    .line 4370
    .local v8, "thisConfig":Landroid/content/res/Configuration;
    iget-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v9, v9, Landroid/app/Activity;->mFinished:Z

    if-nez v9, :cond_1

    if-nez p1, :cond_3

    iget-boolean v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v9, :cond_3

    .line 4374
    :cond_1
    if-eqz v8, :cond_2

    .line 4384
    iput-object v8, v5, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 4363
    .end local v8    # "thisConfig":Landroid/content/res/Configuration;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4373
    .restart local v8    # "thisConfig":Landroid/content/res/Configuration;
    :cond_3
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 4357
    .end local v0    # "NACT":I
    .end local v1    # "NAPP":I
    .end local v4    # "a":Landroid/app/Activity;
    .end local v5    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "i":I
    .end local v8    # "thisConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4388
    .restart local v0    # "NACT":I
    .restart local v1    # "NAPP":I
    .restart local v7    # "i":I
    :cond_4
    :try_start_1
    iget-object v9, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 4389
    .local v3, "NSVC":I
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_5

    .line 4390
    iget-object v9, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4389
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    monitor-exit v10

    .line 4393
    iget-object v10, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 4394
    :try_start_2
    iget-object v9, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4395
    .local v2, "NPRV":I
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_6

    .line 4396
    iget-object v9, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v9, v9, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4395
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    monitor-exit v10

    .line 4400
    return-object v6

    .line 4393
    .end local v2    # "NPRV":I
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 9
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;

    .prologue
    .line 5283
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 5284
    :try_start_0
    iget-boolean v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit v7

    .line 5290
    return-void

    .line 5296
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 5298
    iget-object v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v6, v6, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5299
    .local v3, "jBinder":Landroid/os/IBinder;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5300
    .local v1, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v1, p1, :cond_1

    .line 5301
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5304
    :cond_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 5305
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5306
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 5307
    .local v4, "myBinder":Landroid/os/IBinder;
    if-ne v4, v3, :cond_2

    .line 5308
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5304
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v4    # "myBinder":Landroid/os/IBinder;
    .end local v5    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_3
    monitor-exit v7

    .line 5318
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 5319
    iget-object v7, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v7, v7, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v8, 0x0

    .line 5318
    invoke-interface {v6, v7, v8}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5282
    :goto_1
    return-void

    .line 5283
    .end local v1    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v2    # "i":I
    .end local v3    # "jBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 5320
    .restart local v1    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v2    # "i":I
    .restart local v3    # "jBinder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method doGcIfNeeded()V
    .locals 6

    .prologue
    .line 2084
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2085
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2088
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 2090
    const-string/jumbo v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 2083
    :cond_0
    return-void
.end method

.method public dumpQueryHistory()V
    .locals 1

    .prologue
    .line 6118
    iget-object v0, p0, Landroid/app/ActivityThread;->mQueryHistory:Landroid/app/ActivityThread$QueryHistory;

    invoke-virtual {v0}, Landroid/app/ActivityThread$QueryHistory;->dump()V

    .line 6117
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    .prologue
    .line 2061
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    if-nez v0, :cond_0

    .line 2062
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 2063
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 2060
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 4999
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5000
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v2, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v2, :cond_0

    .line 5001
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_0

    .line 5002
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 5007
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v2, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4998
    :goto_0
    return-void

    .line 5008
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2400
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 5642
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 5643
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5644
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 5646
    return p2

    .line 5642
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 1919
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    .line 1920
    .local v5, "includeCode":Z
    :goto_0
    if-eqz v5, :cond_4

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v0, :cond_4

    .line 1921
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_3

    .line 1922
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    .line 1924
    .local v4, "securityViolation":Z
    :goto_1
    if-eqz v5, :cond_5

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p3

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    .line 1925
    .local v6, "registerPackage":Z
    :goto_2
    and-int/lit8 v0, p3, 0x3

    .line 1927
    const/4 v1, 0x1

    .line 1925
    if-ne v0, v1, :cond_6

    .line 1928
    if-eqz v4, :cond_6

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Requesting code from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1930
    const-string/jumbo v1, " (with uid "

    .line 1929
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1930
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1929
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1930
    const-string/jumbo v1, ")"

    .line 1929
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1931
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_0

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to be run in process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1933
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1933
    const-string/jumbo v1, " (with uid "

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1934
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1934
    const-string/jumbo v1, ")"

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1936
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1919
    .end local v4    # "securityViolation":Z
    .end local v5    # "includeCode":Z
    .end local v6    # "registerPackage":Z
    .end local v7    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "includeCode":Z
    goto/16 :goto_0

    .line 1922
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "securityViolation":Z
    goto :goto_1

    .line 1923
    .end local v4    # "securityViolation":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "securityViolation":Z
    goto :goto_1

    .line 1920
    .end local v4    # "securityViolation":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "securityViolation":Z
    goto :goto_1

    .line 1924
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "registerPackage":Z
    goto :goto_2

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1939
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .prologue
    .line 1867
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1872
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v5, p4, :cond_1

    const/4 v1, 0x1

    .line 1873
    .local v1, "differentUser":Z
    :goto_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6

    .line 1875
    if-eqz v1, :cond_2

    .line 1877
    const/4 v4, 0x0

    .line 1884
    :goto_1
    if-eqz v4, :cond_4

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    .line 1888
    :goto_2
    if-eqz v3, :cond_6

    iget-object v5, v3, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v5, :cond_0

    .line 1889
    iget-object v5, v3, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v5

    .line 1888
    if-eqz v5, :cond_6

    .line 1890
    :cond_0
    invoke-virtual {v3}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1891
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_5

    .line 1892
    new-instance v5, Ljava/lang/SecurityException;

    .line 1893
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requesting code from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1894
    const-string/jumbo v8, " to be run in process "

    .line 1893
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1895
    iget-object v8, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v8, v8, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1893
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1896
    const-string/jumbo v8, "/"

    .line 1893
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1896
    iget-object v8, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v8, v8, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1893
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1892
    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1872
    .end local v1    # "differentUser":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "differentUser":Z
    goto :goto_0

    .line 1878
    :cond_2
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_3

    .line 1879
    :try_start_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 1881
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 1884
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_4
    const/4 v3, 0x0

    .local v3, "packageInfo":Landroid/app/LoadedApk;
    goto :goto_2

    .end local v3    # "packageInfo":Landroid/app/LoadedApk;
    :cond_5
    monitor-exit v6

    .line 1898
    return-object v3

    :cond_6
    monitor-exit v6

    .line 1902
    const/4 v0, 0x0

    .line 1904
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 1905
    const/16 v6, 0x400

    .line 1904
    invoke-interface {v5, p1, v6, p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1910
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_3
    if-eqz v0, :cond_7

    .line 1911
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v5

    return-object v5

    .line 1914
    :cond_7
    return-object v7

    .line 1906
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v4, 0x0

    .line 1945
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2039
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2027
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 1

    .prologue
    .line 2043
    monitor-enter p0

    .line 2044
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    .line 2045
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 2047
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2043
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "pkgInfo"    # Landroid/app/LoadedApk;

    .prologue
    .line 1857
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 1858
    invoke-virtual {p7}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 1857
    invoke-virtual/range {v0 .. v7}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method final handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$ActivityConfigChangeData;

    .prologue
    .line 4530
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4531
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 4532
    :cond_0
    return-void

    .line 4538
    :cond_1
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4539
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_2

    .line 4540
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 4541
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4543
    :cond_2
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 4545
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 4547
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4529
    return-void
.end method

.method public handleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 2819
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2820
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_1

    .line 2821
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 2822
    iget-object v0, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2823
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v3, v0, Landroid/app/Activity;->mVisibleBehind:Z

    if-eqz v3, :cond_1

    .line 2824
    iput-boolean v4, v0, Landroid/app/Activity;->mCalled:Z

    .line 2825
    invoke-virtual {v0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    .line 2827
    iget-boolean v3, v0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_0

    .line 2828
    new-instance v3, Landroid/util/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2829
    const-string/jumbo v5, " did not call through to super.onVisibleBehindCanceled()"

    .line 2828
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2831
    :cond_0
    iput-boolean v4, v0, Landroid/app/Activity;->mVisibleBehind:Z

    .line 2835
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->backgroundResourcesReleased(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2818
    :goto_0
    return-void

    .line 2836
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 4468
    const/4 v2, 0x0

    .line 4470
    .local v2, "configDiff":I
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v5

    .line 4471
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_1

    .line 4472
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4473
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 4474
    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 4475
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 4477
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4480
    :cond_1
    if-nez p1, :cond_2

    monitor-exit v5

    .line 4481
    return-void

    .line 4487
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v4, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 4489
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v4, :cond_3

    .line 4490
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 4492
    :cond_3
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    if-nez p2, :cond_4

    monitor-exit v5

    .line 4493
    return-void

    .line 4496
    :cond_4
    :try_start_2
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    .line 4497
    iget v4, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-virtual {p0, v4}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    monitor-exit v5

    .line 4500
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4502
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-static {v2}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 4506
    iget-object v4, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-static {v4, p1, v2}, Landroid/content/res/ThemeExtraConfiguration;->handleConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;I)V

    .line 4510
    if-eqz v1, :cond_5

    .line 4511
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4512
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 4513
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-static {v4, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 4512
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4470
    .end local v0    # "N":I
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 4466
    .restart local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    :cond_5
    return-void
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .prologue
    .line 4602
    const/4 v0, 0x0

    .line 4603
    .local v0, "hasPkgInfo":Z
    if-eqz p2, :cond_3

    .line 4604
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 4605
    :try_start_0
    array-length v3, p2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4607
    if-nez v0, :cond_0

    .line 4609
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4610
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4611
    const/4 v0, 0x1

    .line 4619
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4620
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4605
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4613
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4614
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4615
    const/4 v0, 0x1

    goto :goto_1

    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    monitor-exit v4

    .line 4624
    .end local v1    # "i":I
    :cond_3
    invoke-static {p1, p2, v0}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 4601
    return-void

    .line 4604
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 2848
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2850
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2852
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2847
    return-void

    .line 2851
    :catchall_0
    move-exception v1

    .line 2852
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2851
    throw v1
.end method

.method final handleLowMemory()V
    .locals 6

    .prologue
    .line 4629
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4631
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4632
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4633
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-interface {v4}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 4632
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4637
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_1

    .line 4638
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v3

    .line 4639
    .local v3, "sqliteReleased":I
    const v4, 0x124fb

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4643
    .end local v3    # "sqliteReleased":I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 4646
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 4648
    const-string/jumbo v4, "mem"

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 4628
    return-void
.end method

.method public handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 2841
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2842
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 2843
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onBackgroundVisibleBehindChanged(Z)V

    .line 2840
    :cond_0
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .prologue
    .line 4551
    if-eqz p1, :cond_0

    .line 4555
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 4556
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4564
    :try_start_1
    iget-object v2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4550
    :goto_0
    return-void

    .line 4565
    :catch_0
    move-exception v0

    .line 4566
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4559
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 4560
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string/jumbo v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Profiling failed on path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4561
    const-string/jumbo v4, " -- can the process access this path?"

    .line 4560
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4564
    :try_start_3
    iget-object v2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 4565
    :catch_2
    move-exception v0

    .line 4566
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4562
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 4564
    :try_start_4
    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4562
    :goto_1
    throw v2

    .line 4565
    :catch_3
    move-exception v0

    .line 4566
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ActivityThread"

    const-string/jumbo v4, "Failure closing profile fd"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4572
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    goto :goto_0
.end method

.method public handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .locals 11
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    .prologue
    .line 2761
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructure:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 2762
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructure:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure;

    .line 2763
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v3, :cond_0

    .line 2764
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 2767
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2768
    .local v2, "data":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 2769
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    new-instance v4, Landroid/app/assist/AssistContent;

    invoke-direct {v4}, Landroid/app/assist/AssistContent;-><init>()V

    .line 2770
    .local v4, "content":Landroid/app/assist/AssistContent;
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v10, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2771
    .local v9, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v5, 0x0

    .line 2772
    .local v5, "referrer":Landroid/net/Uri;
    if-eqz v9, :cond_2

    .line 2773
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v10, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v10, v2}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2774
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 2775
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v5

    .line 2776
    .local v5, "referrer":Landroid/net/Uri;
    iget v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    .line 2777
    new-instance v3, Landroid/app/assist/AssistStructure;

    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {v3, v1}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;)V

    .line 2778
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2779
    .local v6, "activityIntent":Landroid/content/Intent;
    if-eqz v6, :cond_4

    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v1, :cond_1

    .line 2780
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_4

    .line 2782
    :cond_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2783
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x43

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2785
    invoke-virtual {v8}, Landroid/content/Intent;->removeUnsafeExtras()V

    .line 2786
    invoke-virtual {v4, v8}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 2790
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 2793
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v5    # "referrer":Landroid/net/Uri;
    .end local v6    # "activityIntent":Landroid/content/Intent;
    :cond_2
    if-nez v3, :cond_3

    .line 2794
    new-instance v3, Landroid/app/assist/AssistStructure;

    invoke-direct {v3}, Landroid/app/assist/AssistStructure;-><init>()V

    .line 2796
    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructure:Ljava/lang/ref/WeakReference;

    .line 2797
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2799
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2760
    :goto_1
    return-void

    .line 2788
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .restart local v3    # "structure":Landroid/app/assist/AssistStructure;
    .restart local v5    # "referrer":Landroid/net/Uri;
    .restart local v6    # "activityIntent":Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v1}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2800
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    .end local v5    # "referrer":Landroid/net/Uri;
    .end local v6    # "activityIntent":Landroid/content/Intent;
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZZ)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z
    .param p3, "isForward"    # Z
    .param p4, "reallyResume"    # Z

    .prologue
    .line 3361
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3362
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3365
    invoke-virtual/range {p0 .. p2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v7

    .line 3367
    .local v7, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v7, :cond_11

    .line 3368
    iget-object v1, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3370
    .local v1, "a":Landroid/app/Activity;
    sget-boolean v10, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v10, :cond_6

    .line 3375
    :goto_0
    if-eqz p3, :cond_7

    .line 3376
    const/16 v5, 0x100

    .line 3381
    .local v5, "forwardBit":I
    :goto_1
    iget-boolean v10, v1, Landroid/app/Activity;->mStartedActivity:Z

    if-eqz v10, :cond_8

    const/4 v8, 0x0

    .line 3382
    .local v8, "willBeVisible":Z
    :goto_2
    if-nez v8, :cond_0

    .line 3384
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 3385
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v11

    .line 3384
    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    .line 3389
    .end local v8    # "willBeVisible":Z
    :cond_0
    :goto_3
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v10, :cond_1

    iget-boolean v10, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v10, :cond_9

    .line 3406
    :cond_1
    if-nez v8, :cond_2

    .line 3407
    sget-boolean v10, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v10, :cond_a

    .line 3409
    :goto_4
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 3413
    :cond_2
    :goto_5
    invoke-static {v7}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3417
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v10, v10, Landroid/app/Activity;->mFinished:Z

    if-nez v10, :cond_3

    if-eqz v8, :cond_3

    .line 3418
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v10, v10, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v10, :cond_3

    iget-boolean v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v10, :cond_b

    .line 3452
    :cond_3
    :goto_6
    iget-boolean v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-nez v10, :cond_4

    .line 3453
    iget-object v10, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3454
    iput-object v7, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3455
    sget-boolean v10, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v10, :cond_10

    .line 3457
    :goto_7
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v10

    new-instance v11, Landroid/app/ActivityThread$Idler;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler;)V

    invoke-virtual {v10, v11}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3459
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 3462
    if-eqz p4, :cond_5

    .line 3464
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10, p1}, Landroid/app/IActivityManager;->activityResumed(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3358
    .end local v1    # "a":Landroid/app/Activity;
    .end local v5    # "forwardBit":I
    :cond_5
    :goto_8
    return-void

    .line 3371
    .restart local v1    # "a":Landroid/app/Activity;
    :cond_6
    const-string/jumbo v10, "ActivityThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Resume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " started activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3372
    iget-boolean v12, v1, Landroid/app/Activity;->mStartedActivity:Z

    .line 3371
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3372
    const-string/jumbo v12, ", hideForNow: "

    .line 3371
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3372
    iget-boolean v12, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 3371
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3373
    const-string/jumbo v12, ", finished: "

    .line 3371
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3373
    iget-boolean v12, v1, Landroid/app/Activity;->mFinished:Z

    .line 3371
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3370
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3376
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "forwardBit":I
    goto/16 :goto_1

    .line 3381
    :cond_8
    const/4 v8, 0x1

    .restart local v8    # "willBeVisible":Z
    goto/16 :goto_2

    .line 3389
    .end local v8    # "willBeVisible":Z
    :cond_9
    if-eqz v8, :cond_1

    .line 3390
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    iput-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 3391
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 3392
    .local v2, "decor":Landroid/view/View;
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3393
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    .line 3394
    .local v9, "wm":Landroid/view/ViewManager;
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 3395
    .local v6, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 3396
    const/4 v10, 0x1

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3397
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v10, v5

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3398
    iget-boolean v10, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v10, :cond_2

    .line 3399
    const/4 v10, 0x1

    iput-boolean v10, v1, Landroid/app/Activity;->mWindowAdded:Z

    .line 3400
    invoke-interface {v9, v2, v6}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 3408
    .end local v2    # "decor":Landroid/view/View;
    .end local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "wm":Landroid/view/ViewManager;
    :cond_a
    const-string/jumbo v10, "ActivityThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Launch "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " mStartedActivity set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3407
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3419
    :cond_b
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v10, :cond_d

    .line 3420
    invoke-static {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v11, v7, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10, v11}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3421
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v10, :cond_c

    .line 3422
    invoke-static {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v11, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10, v11}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3426
    :cond_c
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 3427
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v10, v10, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->-get0(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v10

    invoke-static {v10}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 3428
    const/4 v10, 0x0

    iput-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 3430
    :cond_d
    sget-boolean v10, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v10, :cond_f

    .line 3432
    :goto_9
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 3433
    .restart local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v10, v10, 0x100

    if-eq v10, v5, :cond_e

    .line 3436
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v10, v10, -0x101

    or-int/2addr v10, v5

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3439
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v10, v10, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v10, :cond_e

    .line 3440
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    .line 3441
    .restart local v9    # "wm":Landroid/view/ViewManager;
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 3442
    .restart local v2    # "decor":Landroid/view/View;
    invoke-interface {v9, v2, v6}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3445
    .end local v2    # "decor":Landroid/view/View;
    .end local v9    # "wm":Landroid/view/ViewManager;
    :cond_e
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 3446
    iget v10, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 3447
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v10, v10, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v10, :cond_3

    .line 3448
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->makeVisible()V

    goto/16 :goto_6

    .line 3430
    .end local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_f
    const-string/jumbo v10, "ActivityThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Resuming "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " with isForward="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3456
    :cond_10
    const-string/jumbo v10, "ActivityThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Scheduling idle handler for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3455
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3473
    .end local v1    # "a":Landroid/app/Activity;
    .end local v5    # "forwardBit":I
    :cond_11
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 3474
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 3473
    invoke-interface {v10, p1, v11, v12, v13}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 3475
    :catch_0
    move-exception v4

    .local v4, "ex":Landroid/os/RemoteException;
    goto/16 :goto_8

    .line 3465
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "a":Landroid/app/Activity;
    .restart local v5    # "forwardBit":I
    :catch_1
    move-exception v4

    .restart local v4    # "ex":Landroid/os/RemoteException;
    goto/16 :goto_8

    .line 3386
    .end local v4    # "ex":Landroid/os/RemoteException;
    .restart local v8    # "willBeVisible":Z
    :catch_2
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto/16 :goto_3
.end method

.method public handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .prologue
    .line 2805
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2806
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 2807
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 2804
    :cond_0
    return-void
.end method

.method final handleTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 4654
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4656
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4657
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 4658
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 4657
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4661
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 4651
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .prologue
    .line 5326
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5327
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 5325
    return-void

    .line 5326
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method final handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .prologue
    .line 5332
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 5333
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    .line 5336
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5337
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5338
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 5339
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 5340
    const-string/jumbo v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing dead content provider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5341
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5337
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5345
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_1
    if-eqz p2, :cond_2

    .line 5352
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 5353
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v5, v5, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 5352
    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5331
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 5354
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2052
    monitor-enter p0

    .line 2053
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2056
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2051
    return-void

    .line 2052
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5636
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_0

    .line 5637
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 5635
    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2022
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2023
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2022
    :cond_0
    return v0
.end method

.method public onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 2812
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2813
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 2814
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    .line 2811
    :cond_0
    return-void
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeCode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1949
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 1951
    if-eqz p2, :cond_1

    .line 1952
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1956
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v1

    .line 1954
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 1949
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4001
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2741
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2742
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 2743
    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 2744
    .local v1, "resumed":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2745
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/Activity;->mTemporaryPause:Z

    .line 2746
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2748
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2749
    if-eqz v1, :cond_1

    .line 2750
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    .line 2751
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mTemporaryPause:Z

    .line 2740
    .end local v1    # "resumed":Z
    :cond_1
    return-void

    .line 2743
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "resumed":Z
    goto :goto_0
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;
    .locals 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 3576
    iget-boolean v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v6, :cond_1

    .line 3577
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-eqz v6, :cond_0

    .line 3581
    return-object v7

    .line 3583
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    .line 3584
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Performing pause of activity that is not resumed: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3585
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    .line 3584
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3583
    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3586
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "ActivityThread"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3588
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_1
    if-eqz p2, :cond_2

    .line 3589
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v10, v6, Landroid/app/Activity;->mFinished:Z

    .line 3593
    :cond_2
    :try_start_0
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_3

    if-eqz p3, :cond_3

    .line 3594
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3597
    :cond_3
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/app/Activity;->mCalled:Z

    .line 3598
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3599
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    .line 3600
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    .line 3599
    const/16 v8, 0x7545

    invoke-static {v8, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3602
    sget-boolean v6, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v6, :cond_4

    .line 3603
    const-string/jumbo v6, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ACT-AM_ON_PAUSE_CALLED "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    :cond_4
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_5

    .line 3606
    new-instance v6, Landroid/util/SuperNotCalledException;

    .line 3607
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3608
    const-string/jumbo v9, " did not call through to super.onPause()"

    .line 3607
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3606
    invoke-direct {v6, v8}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3611
    :catch_0
    move-exception v0

    .line 3612
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    .line 3614
    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v1

    .line 3615
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v8, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3616
    new-instance v6, Ljava/lang/RuntimeException;

    .line 3617
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to pause activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3618
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    .line 3617
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3619
    const-string/jumbo v8, ": "

    .line 3617
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3619
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3617
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3616
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 3622
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iput-boolean v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3626
    iget-object v8, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 3627
    :try_start_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v8

    .line 3629
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3630
    .local v5, "size":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_7

    .line 3631
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/OnActivityPausedListener;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v6, v8}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 3630
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3626
    .end local v3    # "i":I
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    .line 3629
    .restart local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "size":I
    goto :goto_0

    .line 3634
    .restart local v3    # "i":I
    :cond_7
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_8

    if-eqz p3, :cond_8

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :goto_2
    return-object v6

    :cond_8
    move-object v6, v7

    goto :goto_2
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3570
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3571
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method final performRestartActivity(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3826
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3827
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 3828
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 3829
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3825
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3297
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3298
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    sget-boolean v2, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v2, :cond_1

    .line 3299
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-eqz v2, :cond_2

    .line 3341
    :cond_0
    :goto_1
    return-object v1

    .line 3298
    :cond_1
    const-string/jumbo v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Performing resume of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3300
    :cond_2
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_8

    .line 3304
    :cond_3
    if-eqz p2, :cond_4

    .line 3305
    iput-boolean v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 3306
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v5, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 3309
    :cond_4
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onStateNotSaved()V

    .line 3310
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 3311
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 3312
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3313
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 3315
    :cond_5
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 3316
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3317
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 3319
    :cond_6
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    .line 3321
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 3322
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3321
    const/16 v3, 0x7546

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3324
    sget-boolean v2, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v2, :cond_7

    .line 3325
    const-string/jumbo v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACT-AM_ON_RESUME_CALLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3329
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3330
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3331
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3332
    :catch_0
    move-exception v0

    .line 3333
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3334
    new-instance v2, Ljava/lang/RuntimeException;

    .line 3335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to resume activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3336
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 3335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3337
    const-string/jumbo v4, ": "

    .line 3335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3337
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3334
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3301
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    const-string/jumbo v2, "ActivityThread"

    const-string/jumbo v3, "Skipping resume of activity that is already resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    return-object v1
.end method

.method final performStopActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z

    .prologue
    .line 3638
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3639
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 3637
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 3565
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 3564
    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .prologue
    .line 2341
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2342
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2343
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v0, :cond_0

    .line 2344
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2345
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2340
    return-void

    .line 2341
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 11
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "stable"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5194
    if-nez p1, :cond_0

    .line 5195
    return v5

    .line 5198
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5199
    .local v1, "jBinder":Landroid/os/IBinder;
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 5200
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5201
    .local v4, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v4, :cond_1

    monitor-exit v7

    .line 5203
    return v5

    .line 5206
    :cond_1
    const/4 v2, 0x0

    .line 5207
    .local v2, "lastRef":Z
    if-eqz p2, :cond_7

    .line 5208
    :try_start_1
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_2

    monitor-exit v7

    .line 5211
    return v5

    .line 5213
    :cond_2
    :try_start_2
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 5214
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v8, :cond_4

    .line 5221
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_6

    const/4 v2, 0x1

    .line 5227
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    .line 5228
    iget-object v9, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    if-eqz v2, :cond_3

    move v5, v6

    :cond_3
    const/4 v10, -0x1

    .line 5227
    invoke-interface {v8, v9, v10, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5260
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 5261
    :try_start_4
    iget-boolean v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v5, :cond_a

    .line 5271
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 5272
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v8, 0x83

    invoke-virtual {v5, v8, v4}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 5273
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v5, v3}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    :goto_2
    monitor-exit v7

    .line 5278
    return v6

    .line 5221
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 5234
    :cond_7
    :try_start_5
    iget v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v8, :cond_8

    monitor-exit v7

    .line 5237
    return v5

    .line 5239
    :cond_8
    :try_start_6
    iget v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 5240
    iget v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v5, :cond_4

    .line 5244
    iget v5, v4, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_9

    const/4 v2, 0x1

    .line 5245
    :goto_3
    if-nez v2, :cond_4

    .line 5251
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 5252
    iget-object v8, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 5251
    invoke-interface {v5, v8, v9, v10}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 5253
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 5244
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 5275
    :cond_a
    :try_start_8
    const-string/jumbo v5, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Duplicate remove pending of provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v9, v9, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 5199
    .end local v2    # "lastRef":Z
    .end local v4    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .line 5229
    .restart local v2    # "lastRef":Z
    .restart local v4    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public removeFromQueryHistory(II)V
    .locals 3
    .param p1, "hashCode"    # I
    .param p2, "type"    # I

    .prologue
    .line 6103
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 6104
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mQueryHistory:Landroid/app/ActivityThread$QueryHistory;

    invoke-virtual {v1, p1}, Landroid/app/ActivityThread$QueryHistory;->remove(I)V

    .line 6101
    :cond_0
    :goto_0
    return-void

    .line 6105
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 6106
    iget-object v1, p0, Landroid/app/ActivityThread;->mQueryHistory:Landroid/app/ActivityThread$QueryHistory;

    invoke-virtual {v1, p1}, Landroid/app/ActivityThread$QueryHistory;->removePfd(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6108
    :catch_0
    move-exception v0

    .line 6109
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ProviderLeakDetecter"

    const-string/jumbo v2, "RemoveFromQueryHistory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "fromServer"    # Z
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
            "Z)V"
        }
    .end annotation

    .prologue
    .line 4165
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v3, 0x0

    .line 4167
    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6

    .line 4168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 4169
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4170
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_9

    .line 4171
    move-object v3, v2

    .line 4172
    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz p2, :cond_0

    .line 4173
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 4174
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4179
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 4180
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v5, :cond_8

    .line 4181
    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_2
    move-object v4, v3

    .line 4190
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v4, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_3
    if-nez v4, :cond_a

    .line 4191
    :try_start_1
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4192
    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_2
    iput-object p1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 4193
    iput-object p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 4194
    iput-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 4195
    if-nez p8, :cond_3

    .line 4196
    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4197
    .local v0, "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_2

    .line 4198
    iget-boolean v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 4199
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iput-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 4202
    sget-boolean v5, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v5, :cond_2

    iget-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v5, :cond_2

    .line 4203
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v7, "requestRelaunchActivity startsNotResumed"

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 4209
    .end local v0    # "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3
    iget-object v5, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4210
    const/16 v5, 0x7e

    invoke-direct {p0, v5, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 4213
    :goto_4
    if-eqz p8, :cond_4

    .line 4214
    iput-boolean p5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 4215
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 4217
    :cond_4
    if-eqz p6, :cond_5

    .line 4218
    iput-object p6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 4220
    :cond_5
    if-eqz p7, :cond_6

    .line 4221
    iput-object p7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 4223
    :cond_6
    iget v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v5, p4

    iput v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    .line 4164
    return-void

    .line 4176
    .restart local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_7
    :try_start_3
    iput-object p2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4167
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v5

    :goto_5
    monitor-exit v6

    throw v5

    .line 4183
    .restart local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_8
    :try_start_4
    iput-object p3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 4168
    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 4167
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_5

    .end local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_a
    move-object v3, v4

    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_4

    .local v3, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_b
    move-object v4, v3

    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_3
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2363
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    .line 2362
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2364
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 2367
    const/4 v1, -0x2

    .line 2366
    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 2369
    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 2442
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 2443
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 2444
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 2445
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 2446
    const/16 v1, 0x77

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2441
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    .prologue
    .line 2068
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 2069
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2070
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2072
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2067
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .prologue
    .line 2408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2409
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2410
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2405
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "state"    # Landroid/os/Bundle;
    .param p7, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;

    .prologue
    .line 2375
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 2376
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 2377
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 2378
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 2379
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2380
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 2381
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 2382
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2383
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2396
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .prologue
    .line 2353
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2354
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2355
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v0, :cond_0

    .line 2356
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 2352
    return-void

    .line 2353
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method unscheduleGcIdler()V
    .locals 2

    .prologue
    .line 2076
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 2077
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2078
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2080
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2075
    return-void
.end method
