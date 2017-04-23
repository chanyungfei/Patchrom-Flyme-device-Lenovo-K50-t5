.class public final Landroid/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$MemoryInfo;,
        Landroid/os/Debug$InstructionCount;,
        Landroid/os/Debug$DebugProperty;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field private static final DEFAULT_TRACE_FILE_PATH:Ljava/lang/String;

.field private static final DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

.field public static final MEMINFO_BUFFERS:I = 0x2

.field public static final MEMINFO_CACHED:I = 0x3

.field public static final MEMINFO_COUNT:I = 0x11

.field public static final MEMINFO_FREE:I = 0x1

.field public static final MEMINFO_GPU_CACHED:I = 0xe

.field public static final MEMINFO_ION_CACHED:I = 0xd

.field public static final MEMINFO_ION_DISP:I = 0xf

.field public static final MEMINFO_KERNEL_STACK:I = 0xc

.field public static final MEMINFO_MAPPED:I = 0x9

.field public static final MEMINFO_PAGE_TABLES:I = 0xb

.field public static final MEMINFO_SHMEM:I = 0x4

.field public static final MEMINFO_SLAB:I = 0x5

.field public static final MEMINFO_SWAP_FREE:I = 0x7

.field public static final MEMINFO_SWAP_TOTAL:I = 0x6

.field public static final MEMINFO_TOTAL:I = 0x0

.field public static final MEMINFO_TRACE:I = 0x10

.field public static final MEMINFO_VM_ALLOC_USED:I = 0xa

.field public static final MEMINFO_ZRAM_TOTAL:I = 0x8

.field private static final MIN_DEBUGGER_IDLE:I = 0x514

.field public static final SHOW_CLASSLOADER:I = 0x2

.field public static final SHOW_FULL_DETAIL:I = 0x1

.field public static final SHOW_INITIALIZED:I = 0x4

.field private static final SPIN_DELAY:I = 0xc8

.field private static final SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final TAG:Ljava/lang/String; = "Debug"

.field public static final TRACE_COUNT_ALLOCS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile mWaiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    sput-object v0, Landroid/os/Debug;->DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Debug;->DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dmtrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string/jumbo v1, ".trace"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    sput-object v0, Landroid/os/Debug;->DEFAULT_TRACE_FILE_PATH:Ljava/lang/String;

    .line 1934
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cacheRegisterMap(Ljava/lang/String;)Z
    .locals 1
    .param p0, "classAndMethodDesc"    # Ljava/lang/String;

    .prologue
    .line 1792
    invoke-static {p0}, Ldalvik/system/VMDebug;->cacheRegisterMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static changeDebugPort(I)V
    .locals 0
    .param p0, "port"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 802
    return-void
.end method

.method public static countInstancesOfClass(Ljava/lang/Class;)J
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 1743
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .locals 0
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1702
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    .line 1701
    return-void
.end method

.method public static dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1716
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 1715
    return-void
.end method

.method public static dumpHprofDataDdms()V
    .locals 0

    .prologue
    .line 1727
    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    .line 1726
    return-void
.end method

.method public static native dumpNativeBacktraceToFile(ILjava/lang/String;)V
.end method

.method public static native dumpNativeHeap(Ljava/io/FileDescriptor;)V
.end method

.method public static final dumpReferenceTables()V
    .locals 0

    .prologue
    .line 1802
    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    .line 1801
    return-void
.end method

.method public static dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2133
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2134
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 2135
    const-string/jumbo v2, "Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find service to dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    return v5

    .line 2140
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2141
    const/4 v2, 0x1

    return v2

    .line 2142
    :catch_0
    move-exception v0

    .line 2143
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t dump service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2144
    return v5
.end method

.method public static enableEmulatorTraceOutput()V
    .locals 0

    .prologue
    .line 895
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 894
    return-void
.end method

.method private static fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .locals 7
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1946
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 1947
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p1, :cond_0

    .line 1948
    return v5

    .line 1956
    :cond_0
    :try_start_0
    const-string/jumbo v4, "TYPE"

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1961
    .local v3, "primitiveTypeField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v4, :cond_1

    move v4, v5

    :goto_0
    return v4

    .line 1957
    .end local v3    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 1958
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    return v6

    .end local v1    # "ex":Ljava/lang/NoSuchFieldException;
    .restart local v3    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :cond_1
    move v4, v6

    .line 1961
    goto :goto_0

    .line 1962
    :catch_1
    move-exception v0

    .line 1963
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    return v6
.end method

.method private static fixTraceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "traceName"    # Ljava/lang/String;

    .prologue
    .line 994
    if-nez p0, :cond_0

    .line 995
    sget-object p0, Landroid/os/Debug;->DEFAULT_TRACE_FILE_PATH:Ljava/lang/String;

    .line 996
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Debug;->DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 998
    :cond_1
    const-string/jumbo v0, ".trace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1001
    :cond_2
    return-object p0
.end method

.method public static final native getBinderDeathObjectCount()I
.end method

.method public static final native getBinderLocalObjectCount()I
.end method

.method public static final native getBinderProxyObjectCount()I
.end method

.method public static native getBinderReceivedTransactions()I
.end method

.method public static native getBinderSentTransactions()I
.end method

.method public static getCaller()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2223
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 3
    .param p0, "callStack"    # [Ljava/lang/StackTraceElement;
    .param p1, "depth"    # I

    .prologue
    .line 2163
    add-int/lit8 v1, p1, 0x4

    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 2164
    const-string/jumbo v1, "<bottom of call stack>"

    return-object v1

    .line 2166
    :cond_0
    add-int/lit8 v1, p1, 0x4

    aget-object v0, p0, v1

    .line 2167
    .local v0, "caller":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCallers(I)Ljava/lang/String;
    .locals 5
    .param p0, "depth"    # I

    .prologue
    .line 2177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2178
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2179
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 2180
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2182
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCallers(II)Ljava/lang/String;
    .locals 5
    .param p0, "start"    # I
    .param p1, "depth"    # I

    .prologue
    .line 2192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2193
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2194
    .local v2, "sb":Ljava/lang/StringBuffer;
    add-int/2addr p1, p0

    .line 2195
    move v1, p0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 2196
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2198
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCallers(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "depth"    # I
    .param p1, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 2210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2211
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2212
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 2213
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2215
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static native getCompZram()J
.end method

.method public static native getExtraMemInfo([J)V
.end method

.method public static getGlobalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1100
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1122
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1211
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitTime()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1234
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1254
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1277
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalFreedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1286
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalFreedSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1302
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalFreedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1144
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalFreedSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1166
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalGcInvocationCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1188
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getLoadedClassCount()I
    .locals 1

    .prologue
    .line 1690
    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    move-result v0

    return v0
.end method

.method public static native getMemInfo([J)V
.end method

.method public static native getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V
.end method

.method public static native getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static getMethodTracingMode()I
    .locals 1

    .prologue
    .line 1037
    invoke-static {}, Ldalvik/system/VMDebug;->getMethodTracingMode()I

    move-result v0

    return v0
.end method

.method public static native getNativeHeapAllocatedSize()J
.end method

.method public static native getNativeHeapFreeSize()J
.end method

.method public static native getNativeHeapSize()J
.end method

.method public static native getOrigZram()J
.end method

.method public static native getPss()J
.end method

.method public static native getPss(I[J[J)J
.end method

.method public static native getPswap(I)J
.end method

.method public static getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "statName"    # Ljava/lang/String;

    .prologue
    .line 1513
    invoke-static {p0}, Ldalvik/system/VMDebug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRuntimeStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1523
    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStats()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1320
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1343
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadExternalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1363
    const/4 v0, 0x0

    return v0
.end method

.method public static getThreadExternalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1379
    const/4 v0, 0x0

    return v0
.end method

.method public static getThreadGcInvocationCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1397
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static native getTotalZram()J
.end method

.method public static getVmFeatureList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getZramCompressMethod()S
.end method

.method public static isDebuggerConnected()Z
    .locals 1

    .prologue
    .line 782
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method private static modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .locals 6
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "properties"    # Lcom/android/internal/util/TypedProperties;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 1974
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 1975
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    move-result v1

    .line 1976
    .local v1, "stringInfo":I
    packed-switch v1, :pswitch_data_0

    .line 1995
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 1996
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected getStringInfo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") return value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1995
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1982
    :pswitch_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    return-void

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1985
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot set field for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1984
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1989
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :pswitch_1
    return-void

    .line 1991
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1992
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1993
    const-string/jumbo v5, " does not match field type ("

    .line 1992
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1993
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 1992
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1993
    const-string/jumbo v5, ")"

    .line 1992
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1991
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2000
    .end local v1    # "stringInfo":I
    :cond_0
    :pswitch_3
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2001
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 2002
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2003
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 2004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2005
    const-string/jumbo v5, " does not match field type ("

    .line 2004
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2005
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 2004
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2005
    const-string/jumbo v5, ")"

    .line 2004
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2003
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2008
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1973
    :cond_2
    return-void

    .line 2009
    :catch_1
    move-exception v0

    .line 2010
    .restart local v0    # "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 2011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot set field for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2010
    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1976
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printLoadedClasses(I)V
    .locals 0
    .param p0, "flags"    # I

    .prologue
    .line 1682
    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    .line 1681
    return-void
.end method

.method public static resetAllCounts()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1419
    const/4 v0, -0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1418
    return-void
.end method

.method public static resetGlobalAllocCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1111
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1110
    return-void
.end method

.method public static resetGlobalAllocSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1133
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1132
    return-void
.end method

.method public static resetGlobalClassInitCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1222
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1221
    return-void
.end method

.method public static resetGlobalClassInitTime()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1245
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1244
    return-void
.end method

.method public static resetGlobalExternalAllocCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1269
    return-void
.end method

.method public static resetGlobalExternalAllocSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1262
    return-void
.end method

.method public static resetGlobalExternalFreedCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1294
    return-void
.end method

.method public static resetGlobalExternalFreedSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1310
    return-void
.end method

.method public static resetGlobalFreedCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1155
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1154
    return-void
.end method

.method public static resetGlobalFreedSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1177
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1176
    return-void
.end method

.method public static resetGlobalGcInvocationCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1199
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1198
    return-void
.end method

.method public static resetThreadAllocCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1331
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1330
    return-void
.end method

.method public static resetThreadAllocSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1354
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1353
    return-void
.end method

.method public static resetThreadExternalAllocCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1371
    return-void
.end method

.method public static resetThreadExternalAllocSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1387
    return-void
.end method

.method public static resetThreadGcInvocationCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1408
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1407
    return-void
.end method

.method public static setAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1660
    const/4 v0, -0x1

    return v0
.end method

.method public static setFieldsOn(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2025
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    .line 2024
    return-void
.end method

.method public static setFieldsOn(Ljava/lang/Class;Z)V
    .locals 3
    .param p1, "partial"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 2104
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v1, "Debug"

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFieldsOn("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2106
    const-string/jumbo v2, ") called in non-DEBUG build"

    .line 2105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2104
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    return-void

    .line 2105
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setGlobalAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1673
    const/4 v0, -0x1

    return v0
.end method

.method public static startAllocCounting()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1079
    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    .line 1078
    return-void
.end method

.method public static startMethodTracing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 905
    sget-object v0, Landroid/os/Debug;->DEFAULT_TRACE_FILE_PATH:Ljava/lang/String;

    invoke-static {v0, v1, v1, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 904
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;)V
    .locals 1
    .param p0, "traceName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 921
    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 920
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;I)V
    .locals 1
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I

    .prologue
    .line 938
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 937
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;II)V
    .locals 2
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 968
    invoke-static {p0}, Landroid/os/Debug;->fixTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 967
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .locals 6
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bufferSize"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    .line 1015
    invoke-static/range {v0 .. v5}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V

    .line 1014
    return-void
.end method

.method public static startMethodTracingDdms(IIZI)V
    .locals 0
    .param p0, "bufferSize"    # I
    .param p1, "flags"    # I
    .param p2, "samplingEnabled"    # Z
    .param p3, "intervalUs"    # I

    .prologue
    .line 1027
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdms(IIZI)V

    .line 1026
    return-void
.end method

.method public static startMethodTracingSampling(Ljava/lang/String;II)V
    .locals 3
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "intervalUs"    # I

    .prologue
    .line 987
    invoke-static {p0}, Landroid/os/Debug;->fixTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    .line 986
    return-void
.end method

.method public static startNativeTracing()V
    .locals 5

    .prologue
    .line 840
    const/4 v2, 0x0

    .line 842
    .local v2, "outStream":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string/jumbo v4, "/sys/qemu_trace/state"

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 843
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    .local v3, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    const-string/jumbo v4, "1"

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 847
    if-eqz v3, :cond_0

    .line 848
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v2, v3

    .line 851
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 838
    return-void

    .line 845
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 847
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_1

    .line 848
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 846
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v4

    .line 847
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    :goto_2
    if-eqz v2, :cond_2

    .line 848
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 846
    :cond_2
    throw v4

    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v2, "outStream":Ljava/io/PrintWriter;
    goto :goto_2

    .line 845
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method public static stopAllocCounting()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1089
    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    .line 1088
    return-void
.end method

.method public static stopMethodTracing()V
    .locals 0

    .prologue
    .line 1044
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    .line 1043
    return-void
.end method

.method public static stopNativeTracing()V
    .locals 5

    .prologue
    .line 865
    invoke-static {}, Ldalvik/system/VMDebug;->stopEmulatorTracing()V

    .line 868
    const/4 v2, 0x0

    .line 870
    .local v2, "outStream":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string/jumbo v4, "/sys/qemu_trace/state"

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 871
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    .local v3, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    const-string/jumbo v4, "0"

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 877
    if-eqz v3, :cond_0

    .line 878
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v2, v3

    .line 864
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 873
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 877
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v2, :cond_1

    .line 878
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 876
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v4

    .line 877
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    :goto_2
    if-eqz v2, :cond_2

    .line 878
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 876
    :cond_2
    throw v4

    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .local v2, "outStream":Ljava/io/PrintWriter;
    goto :goto_2

    .line 873
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method public static threadCpuTimeNanos()J
    .locals 2

    .prologue
    .line 1059
    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static waitForDebugger()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 721
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 723
    return-void

    .line 725
    :cond_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 726
    return-void

    .line 729
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "Sending WAIT chunk"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 730
    new-array v0, v7, [B

    aput-byte v8, v0, v8

    .line 731
    .local v0, "data":[B
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string/jumbo v5, "WAIT"

    invoke-static {v5}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5, v0, v8, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 732
    .local v4, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 734
    sput-boolean v7, Landroid/os/Debug;->mWaiting:Z

    .line 735
    :goto_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 736
    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v1

    .local v1, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 739
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    sput-boolean v8, Landroid/os/Debug;->mWaiting:Z

    .line 741
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "Debugger has connected"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 753
    :goto_1
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    move-result-wide v2

    .line 754
    .local v2, "delta":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    .line 755
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "debugger detached?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 720
    :goto_2
    return-void

    .line 759
    :cond_3
    const-wide/16 v6, 0x514

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    .line 760
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "waiting for debugger to settle..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 761
    const-wide/16 v6, 0xc8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 762
    :catch_1
    move-exception v1

    .restart local v1    # "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 764
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "debugger has settled ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static waitingForDebugger()Z
    .locals 1

    .prologue
    .line 775
    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    return v0
.end method
