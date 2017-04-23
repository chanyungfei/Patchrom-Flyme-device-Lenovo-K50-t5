.class public Lcom/lenovo/memoryclean/MemorySizeUtil;
.super Ljava/lang/Object;
.source "MemorySizeUtil.java"


# static fields
.field static mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private static totalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 17
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static getAvailMemory(Landroid/content/Context;)J
    .locals 6

    .prologue
    .line 62
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 65
    :cond_0
    sget-object v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    const-string/jumbo v0, "activity"

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 67
    sget-object v1, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v2

    sget-object v1, Lcom/lenovo/memoryclean/MemorySizeUtil;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getBackgroundProcessMemory(Landroid/app/ActivityManager;)J

    move-result-wide v0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getBackgroundProcessMemory(Landroid/app/ActivityManager;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 115
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    .line 120
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    return-wide v2

    .line 117
    :cond_0
    return-wide v0

    .line 120
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 121
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-ge v1, v5, :cond_2

    move-wide v0, v2

    :goto_1
    move-wide v2, v0

    .line 125
    goto :goto_0

    .line 123
    :cond_2
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {p0, v0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getMemInfoForPid(Landroid/app/ActivityManager;I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method private static getMemInfoForPid(Landroid/app/ActivityManager;I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 135
    new-array v1, v1, [I

    aput p1, v1, v0

    .line 138
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 140
    array-length v2, v1

    if-gtz v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    .line 142
    if-lez v1, :cond_0

    move v0, v1

    .line 143
    goto :goto_0
.end method

.method private static getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 2

    .prologue
    const-string/jumbo v0, "activity"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 72
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 74
    return-object v1
.end method

.method private static getTotalMemory(J)J
    .locals 6

    .prologue
    const-wide/16 v2, 0x200

    const-wide/16 v4, 0x400

    .line 49
    div-long v0, p0, v4

    div-long/2addr v0, v4

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 50
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 51
    sput-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 58
    :cond_0
    :goto_1
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    return-wide v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_2
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    rem-long/2addr v0, v4

    const-wide/16 v2, 0x0

    .line 54
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 55
    sget-wide v2, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    sub-long v0, v2, v0

    add-long/2addr v0, v4

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    goto :goto_1
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 27
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getMemoryInfo(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 29
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(J)J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 31
    :cond_0
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    return-wide v0
.end method

.method public static getUsageMemory(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 99
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 100
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 103
    :cond_0
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    mul-long/2addr v0, v4

    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getUsedMemory(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 84
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    .line 88
    :cond_0
    sget-wide v0, Lcom/lenovo/memoryclean/MemorySizeUtil;->totalMemory:J

    invoke-static {p0}, Lcom/lenovo/memoryclean/MemorySizeUtil;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
