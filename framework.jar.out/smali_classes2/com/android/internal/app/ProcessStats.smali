.class public final Lcom/android/internal/app/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ProcessStats$PssAggr;,
        Lcom/android/internal/app/ProcessStats$DurationsTable;,
        Lcom/android/internal/app/ProcessStats$ProcessStateHolder;,
        Lcom/android/internal/app/ProcessStats$ProcessState;,
        Lcom/android/internal/app/ProcessStats$ServiceState;,
        Lcom/android/internal/app/ProcessStats$PackageState;,
        Lcom/android/internal/app/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;,
        Lcom/android/internal/app/ProcessStats$1;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

.field static final ADJ_MEM_TAGS:[Ljava/lang/String;

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String;

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field static final LONGS_SIZE:I = 0x1000

.field private static final MAGIC:I = 0x50535453

.field public static final NON_CACHED_PROC_STATES:[I

.field static OFFSET_ARRAY_MASK:I = 0x0

.field static OFFSET_ARRAY_SHIFT:I = 0x0

.field static OFFSET_INDEX_MASK:I = 0x0

.field static OFFSET_INDEX_SHIFT:I = 0x0

.field static OFFSET_TYPE_MASK:I = 0x0

.field static OFFSET_TYPE_SHIFT:I = 0x0

.field private static final PARCEL_VERSION:I = 0x12

.field static final PROCESS_STATE_TO_STATE:[I

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field static final STATE_NAMES:[Ljava/lang/String;

.field public static final STATE_NAMES_CSV:[Ljava/lang/String;

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field static final STATE_TAGS:[Ljava/lang/String;

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field mAddLongTable:[I

.field mAddLongTableSize:I

.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field mNextLong:I

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/app/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsageArgs:[J

.field public mSysMemUsageTable:[I

.field public mSysMemUsageTableSize:I

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    .line 66
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    .line 127
    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 130
    filled-new-array {v3, v7}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 138
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 144
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    .line 164
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    .line 171
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 172
    const-string/jumbo v1, "Persist"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Top    "

    aput-object v1, v0, v4

    const-string/jumbo v1, "ImpFg  "

    aput-object v1, v0, v5

    const-string/jumbo v1, "ImpBg  "

    aput-object v1, v0, v6

    .line 173
    const-string/jumbo v1, "Backup "

    aput-object v1, v0, v7

    const-string/jumbo v1, "HeavyWt"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Service"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ServRst"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "Receivr"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Home   "

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "LastAct"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "CchAct "

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "CchCAct"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "CchEmty"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 171
    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    .line 178
    new-array v0, v5, [Ljava/lang/String;

    .line 179
    const-string/jumbo v1, "off"

    aput-object v1, v0, v3

    const-string/jumbo v1, "on"

    aput-object v1, v0, v4

    .line 178
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 182
    new-array v0, v7, [Ljava/lang/String;

    .line 183
    const-string/jumbo v1, "norm"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mod"

    aput-object v1, v0, v4

    const-string/jumbo v1, "low"

    aput-object v1, v0, v5

    const-string/jumbo v1, "crit"

    aput-object v1, v0, v6

    .line 182
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 186
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 187
    const-string/jumbo v1, "pers"

    aput-object v1, v0, v3

    const-string/jumbo v1, "top"

    aput-object v1, v0, v4

    const-string/jumbo v1, "impfg"

    aput-object v1, v0, v5

    const-string/jumbo v1, "impbg"

    aput-object v1, v0, v6

    const-string/jumbo v1, "backup"

    aput-object v1, v0, v7

    const-string/jumbo v1, "heavy"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "service"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "service-rs"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "receiver"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "home"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "lastact"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "cch-activity"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "cch-aclient"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "cch-empty"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 186
    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 192
    new-array v0, v5, [Ljava/lang/String;

    .line 193
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1"

    aput-object v1, v0, v4

    .line 192
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 196
    new-array v0, v7, [Ljava/lang/String;

    .line 197
    const-string/jumbo v1, "n"

    aput-object v1, v0, v3

    const-string/jumbo v1, "m"

    aput-object v1, v0, v4

    const-string/jumbo v1, "l"

    aput-object v1, v0, v5

    const-string/jumbo v1, "c"

    aput-object v1, v0, v6

    .line 196
    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 200
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 201
    const-string/jumbo v1, "p"

    aput-object v1, v0, v3

    const-string/jumbo v1, "t"

    aput-object v1, v0, v4

    const-string/jumbo v1, "f"

    aput-object v1, v0, v5

    const-string/jumbo v1, "b"

    aput-object v1, v0, v6

    const-string/jumbo v1, "u"

    aput-object v1, v0, v7

    const-string/jumbo v1, "w"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "s"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "x"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "r"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "h"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "l"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "a"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "c"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "e"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 200
    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    .line 213
    sput v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    .line 214
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    .line 216
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    .line 217
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    .line 219
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    .line 220
    const v0, 0xffff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    .line 417
    new-instance v0, Lcom/android/internal/app/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessStats$1;-><init>()V

    .line 416
    sput-object v0, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1403
    new-array v0, v3, [I

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    .line 52
    return-void

    .line 132
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 138
    :array_1
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 144
    :array_2
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    .line 164
    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 226
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 228
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 230
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    .line 236
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 264
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 226
    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 228
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 230
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    .line 236
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 260
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 259
    return-void
.end method

.method static addSysMemUsage([JI[JI)V
    .locals 12
    .param p0, "dstData"    # [J
    .param p1, "dstOff"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    .prologue
    .line 392
    add-int/lit8 v5, p1, 0x0

    aget-wide v2, p0, v5

    .line 393
    .local v2, "dstCount":J
    add-int/lit8 v5, p3, 0x0

    aget-wide v0, p2, v5

    .line 394
    .local v0, "addCount":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 395
    add-int/lit8 v5, p1, 0x0

    aput-wide v0, p0, v5

    .line 396
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    .line 397
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    .end local v4    # "i":I
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    .line 400
    add-int/lit8 v5, p1, 0x0

    add-long v6, v2, v0

    aput-wide v6, p0, v5

    .line 401
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    .line 402
    add-int v5, p1, v4

    aget-wide v6, p0, v5

    add-int v5, p3, v4

    aget-wide v8, p2, v5

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 403
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    .line 405
    :cond_1
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    .line 406
    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, p0, v6

    long-to-double v6, v6

    long-to-double v8, v2

    mul-double/2addr v6, v8

    .line 407
    add-int v8, p3, v4

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, p2, v8

    long-to-double v8, v8

    long-to-double v10, v0

    mul-double/2addr v8, v10

    .line 406
    add-double/2addr v6, v8

    .line 408
    add-long v8, v2, v0

    long-to-double v8, v8

    .line 405
    div-double/2addr v6, v8

    double-to-long v6, v6

    aput-wide v6, p0, v5

    .line 409
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v6, p0, v5

    add-int v5, p3, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v8, p2, v5

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 410
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, p2, v6

    aput-wide v6, p0, v5

    .line 401
    :cond_2
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 391
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method static binarySearch([III)I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 1982
    const/4 v1, 0x0

    .line 1983
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 1985
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 1986
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 1987
    .local v2, "mid":I
    aget v4, p0, v2

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int/2addr v4, v5

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v4, v5

    .line 1989
    .local v3, "midVal":I
    if-ge v3, p2, :cond_0

    .line 1990
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 1991
    :cond_0
    if-le v3, p2, :cond_1

    .line 1992
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 1994
    :cond_1
    return v2

    .line 1997
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_2
    not-int v4, v1

    return v4
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 4

    .prologue
    .line 1399
    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    .line 1400
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1399
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 1398
    return-void
.end method

.method public static computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V
    .locals 28
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    .prologue
    .line 595
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 597
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 596
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 598
    const/4 v11, 0x0

    .local v11, "is":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_8

    .line 599
    const/4 v9, 0x0

    .local v9, "im":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_7

    .line 600
    const/4 v10, 0x0

    .local v10, "ip":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_6

    .line 601
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    add-int v22, v22, v23

    mul-int/lit8 v22, v22, 0xe

    .line 602
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v10

    .line 601
    add-int v8, v22, v23

    .line 603
    .local v8, "bucket":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v24

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 604
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v20

    .line 605
    .local v20, "samples":J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_1

    .line 606
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v16

    .line 607
    .local v16, "minPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 608
    .local v4, "avgPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v12

    .line 609
    .local v12, "maxPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v18

    .line 610
    .local v18, "minUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    .line 611
    .local v6, "avgUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    .line 612
    .local v14, "maxUss":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_2

    .line 613
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 614
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 615
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 616
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 617
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 618
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 637
    :cond_0
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    add-long v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 600
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 620
    .restart local v4    # "avgPss":J
    .restart local v6    # "avgUss":J
    .restart local v12    # "maxPss":J
    .restart local v14    # "maxUss":J
    .restart local v16    # "minPss":J
    .restart local v18    # "minUss":J
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v16, v22

    if-gez v22, :cond_3

    .line 621
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 623
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    .line 624
    long-to-double v0, v4

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    .line 623
    add-double v22, v22, v24

    .line 624
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 623
    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 625
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v12, v22

    if-lez v22, :cond_4

    .line 626
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 628
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v18, v22

    if-gez v22, :cond_5

    .line 629
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 631
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    .line 632
    long-to-double v0, v6

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    .line 631
    add-double v22, v22, v24

    .line 632
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 631
    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 633
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-lez v22, :cond_0

    .line 634
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    goto/16 :goto_3

    .line 599
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v8    # "bucket":I
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    .end local v20    # "samples":J
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 598
    .end local v10    # "ip":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 594
    .end local v9    # "im":I
    :cond_8
    return-void
.end method

.method static computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J
    .locals 8
    .param p0, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .prologue
    .line 646
    const-wide/16 v4, 0x0

    .line 656
    .local v4, "totalTime":J
    const/4 v3, 0x0

    .local v3, "is":I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 657
    const/4 v1, 0x0

    .local v1, "im":I
    :goto_1
    array-length v6, p2

    if-ge v1, v6, :cond_1

    .line 658
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_2
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 659
    aget v6, p1, v3

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    .line 660
    aget v7, p3, v2

    .line 659
    add-int v0, v6, v7

    .line 661
    .local v0, "bucket":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 658
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 657
    .end local v0    # "bucket":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 656
    .end local v2    # "ip":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 665
    .end local v1    # "im":I
    :cond_2
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    .line 666
    return-wide v4
.end method

.method static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 541
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_3

    .line 542
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 543
    add-int v2, v0, v1

    .line 544
    .local v2, "state":I
    aget-wide v4, p2, v2

    .line 545
    .local v4, "time":J
    if-ne p3, v2, :cond_0

    .line 546
    sub-long v6, p6, p4

    add-long/2addr v4, v6

    .line 548
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 549
    invoke-static {p0, v2, v4, v5}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 542
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 541
    .end local v2    # "state":I
    .end local v4    # "time":J
    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 540
    .end local v0    # "imem":I
    :cond_3
    return-void
.end method

.method static dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    .line 1240
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v8, v15, :cond_0

    .line 1241
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v9, v15, v8

    .line 1242
    .local v9, "off":I
    sget v15, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v15, v9, v15

    sget v22, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v14, v15, v22

    .line 1243
    .local v14, "type":I
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    .line 1244
    .local v6, "count":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v12

    .line 1245
    .local v12, "min":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    .line 1246
    .local v4, "avg":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v10

    .line 1247
    .local v10, "max":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v20

    .line 1248
    .local v20, "umin":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v16

    .line 1249
    .local v16, "uavg":J
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v18

    .line 1250
    .local v18, "umax":J
    const/16 v15, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1251
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1252
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1253
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1254
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1255
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1256
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1257
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1258
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1259
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1260
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1261
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1262
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1263
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1264
    const/16 v15, 0x3a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 1265
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1240
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1239
    .end local v4    # "avg":J
    .end local v6    # "count":J
    .end local v9    # "off":I
    .end local v10    # "max":J
    .end local v12    # "min":J
    .end local v14    # "type":I
    .end local v16    # "uavg":J
    .end local v18    # "umax":J
    .end local v20    # "umin":J
    :cond_0
    return-void
.end method

.method static dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "now"    # J

    .prologue
    .line 1223
    const/4 v0, 0x0

    .line 1224
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    if-ge v1, v6, :cond_1

    .line 1225
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    aget v2, v6, v1

    .line 1226
    .local v2, "off":I
    sget v6, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v6, v2, v6

    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v6, v7

    .line 1227
    .local v3, "type":I
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    .line 1228
    .local v4, "time":J
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v6, v3, :cond_0

    .line 1229
    const/4 v0, 0x1

    .line 1230
    iget-wide v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    .line 1232
    :cond_0
    invoke-static {p0, v3, v4, v5}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1234
    .end local v2    # "off":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    :cond_1
    if-nez v0, :cond_2

    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1235
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iget-wide v8, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v8, p2, v8

    invoke-static {p0, v6, v8, v9}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1222
    :cond_2
    return-void
.end method

.method private dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p4, "dumpAll"    # Z

    .prologue
    .line 2104
    if-eqz p4, :cond_1

    .line 2105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2106
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2107
    const-string/jumbo v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2108
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2109
    const-string/jumbo v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2110
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_0

    .line 2111
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2113
    :cond_0
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq p3, v0, :cond_1

    .line 2114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2115
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2116
    const-string/jumbo v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2119
    :cond_1
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    if-eqz v0, :cond_2

    .line 2120
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2122
    :cond_2
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v0, :cond_3

    .line 2123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2125
    :cond_3
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_4

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_5

    .line 2126
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2127
    const-string/jumbo v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2128
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2103
    :cond_5
    return-void
.end method

.method static dumpProcessList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJ)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJ)V"
        }
    .end annotation

    .prologue
    .line 1067
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1069
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1070
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    iget-object v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1074
    const-string/jumbo v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    const-string/jumbo v0, " entries)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    .line 1078
    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 1079
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1080
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 1068
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1066
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    .prologue
    .line 1165
    .local p1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const-string/jumbo v0, "process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1168
    const-string/jumbo v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v0, "vers"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    const-string/jumbo v4, "\t"

    if-eqz p2, :cond_0

    move-object v3, p3

    .line 1171
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v2, p5

    .line 1172
    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    .line 1170
    :goto_2
    invoke-static {p0, v4, v3, v2, v0}, Lcom/android/internal/app/ProcessStats;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 1173
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1174
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_3

    .line 1175
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1176
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    const-string/jumbo v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1179
    const-string/jumbo v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    .line 1181
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V

    .line 1183
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1174
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 1170
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "i":I
    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    .line 1171
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    .line 1172
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1164
    .restart local v10    # "i":I
    :cond_3
    return-void
.end method

.method static dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V
    .locals 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I

    .prologue
    .line 877
    const/4 v10, 0x0

    .line 878
    .local v10, "printedHeader":Z
    const/4 v12, -0x1

    .line 879
    .local v12, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v8, v13, :cond_8

    .line 880
    const/4 v11, -0x1

    .line 881
    .local v11, "printedMem":I
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v3, v13, :cond_7

    .line 882
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_2
    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v7, v13, :cond_6

    .line 883
    aget v9, p3, v8

    .line 884
    .local v9, "iscreen":I
    aget v6, p4, v3

    .line 885
    .local v6, "imem":I
    add-int v13, v9, v6

    mul-int/lit8 v13, v13, 0xe

    aget v14, p5, v7

    add-int v2, v13, v14

    .line 886
    .local v2, "bucket":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v4

    .line 887
    .local v4, "count":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_3

    .line 888
    if-nez v10, :cond_0

    .line 889
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    const-string/jumbo v13, "PSS/USS ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 892
    const-string/jumbo v13, " entries):"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const/4 v10, 0x1

    .line 895
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    const-string/jumbo v13, "  "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 898
    if-eq v12, v9, :cond_4

    move v13, v9

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 900
    move v12, v9

    .line 902
    :cond_1
    move-object/from16 v0, p4

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    .line 903
    if-eq v11, v6, :cond_5

    move v13, v6

    :goto_4
    const/16 v14, 0x2f

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 904
    move v11, v6

    .line 906
    :cond_2
    sget-object v13, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v14, p5, v7

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 908
    const-string/jumbo v13, " samples "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 909
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 910
    const-string/jumbo v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 912
    const-string/jumbo v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 914
    const-string/jumbo v13, " / "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 916
    const-string/jumbo v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 918
    const-string/jumbo v13, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 882
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 899
    :cond_4
    const/4 v13, -0x1

    goto/16 :goto_3

    .line 903
    :cond_5
    const/4 v13, -0x1

    goto/16 :goto_4

    .line 881
    .end local v2    # "bucket":I
    .end local v4    # "count":J
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 879
    .end local v7    # "ip":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 925
    .end local v3    # "im":I
    .end local v11    # "printedMem":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-eqz v13, :cond_9

    .line 926
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "Killed for excessive wake locks: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v13, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    :cond_9
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-eqz v13, :cond_a

    .line 930
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "Killed for excessive CPU use: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v13, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    :cond_a
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-eqz v13, :cond_b

    .line 934
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "Killed from cached state: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v13, " times from pss "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 936
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 876
    :cond_b
    return-void
.end method

.method static dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V
    .locals 20
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .prologue
    .line 829
    const-wide/16 v16, 0x0

    .line 830
    .local v16, "totalTime":J
    const/4 v11, -0x1

    .line 831
    .local v11, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v8, v13, :cond_8

    .line 832
    const/4 v10, -0x1

    .line 833
    .local v10, "printedMem":I
    const/4 v5, 0x0

    .local v5, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v5, v13, :cond_7

    .line 834
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_2
    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v7, v13, :cond_6

    .line 835
    aget v9, p3, v8

    .line 836
    .local v9, "iscreen":I
    aget v6, p4, v5

    .line 837
    .local v6, "imem":I
    add-int v13, v9, v6

    mul-int/lit8 v13, v13, 0xe

    aget v18, p5, v7

    add-int v4, v13, v18

    .line 838
    .local v4, "bucket":I
    move-object/from16 v0, p2

    move-wide/from16 v1, p6

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v14

    .line 839
    .local v14, "time":J
    const-string/jumbo v12, ""

    .line 840
    .local v12, "running":Ljava/lang/String;
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v13, v4, :cond_0

    .line 841
    const-string/jumbo v12, " (running)"

    .line 843
    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v13, v14, v18

    if-eqz v13, :cond_3

    .line 844
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    move-object/from16 v0, p3

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_1

    .line 846
    if-eq v11, v9, :cond_4

    move v13, v9

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 848
    move v11, v9

    .line 850
    :cond_1
    move-object/from16 v0, p4

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_2

    .line 851
    if-eq v10, v6, :cond_5

    move v13, v6

    :goto_4
    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 852
    move v10, v6

    .line 854
    :cond_2
    sget-object v13, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v18, p5, v7

    aget-object v13, v13, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    add-long v16, v16, v14

    .line 834
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 847
    :cond_4
    const/4 v13, -0x1

    goto :goto_3

    .line 851
    :cond_5
    const/4 v13, -0x1

    goto :goto_4

    .line 833
    .end local v4    # "bucket":I
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    .end local v12    # "running":Ljava/lang/String;
    .end local v14    # "time":J
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 831
    .end local v7    # "ip":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 861
    .end local v5    # "im":I
    .end local v10    # "printedMem":I
    :cond_8
    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_b

    .line 862
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p3

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_9

    .line 864
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 866
    :cond_9
    move-object/from16 v0, p4

    array-length v13, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v13, v0, :cond_a

    .line 867
    const/4 v13, -0x1

    const/16 v18, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 869
    :cond_a
    const-string/jumbo v13, "TOTAL  : "

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 828
    :cond_b
    return-void
.end method

.method static dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V
    .locals 28
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    .prologue
    .line 1033
    if-eqz p2, :cond_0

    move-object/from16 v0, p3

    array-length v9, v0

    .line 1034
    .local v9, "NSS":I
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p5

    array-length v5, v0

    .line 1035
    .local v5, "NMS":I
    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    array-length v7, v0

    .line 1036
    .local v7, "NPS":I
    :goto_2
    const/16 v16, 0x0

    .local v16, "iss":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_11

    .line 1037
    const/4 v12, 0x0

    .local v12, "ims":I
    :goto_4
    if-ge v12, v5, :cond_10

    .line 1038
    const/4 v14, 0x0

    .local v14, "ips":I
    :goto_5
    if-ge v14, v7, :cond_f

    .line 1039
    if-eqz p2, :cond_3

    aget v24, p3, v16

    .line 1040
    .local v24, "vsscreen":I
    :goto_6
    if-eqz p4, :cond_4

    aget v22, p5, v12

    .line 1041
    .local v22, "vsmem":I
    :goto_7
    if-eqz p6, :cond_5

    aget v23, p7, v14

    .line 1042
    .local v23, "vsproc":I
    :goto_8
    if-eqz p2, :cond_6

    const/4 v8, 0x1

    .line 1043
    .local v8, "NSA":I
    :goto_9
    if-eqz p4, :cond_7

    const/4 v4, 0x1

    .line 1044
    .local v4, "NMA":I
    :goto_a
    if-eqz p6, :cond_8

    const/4 v6, 0x1

    .line 1045
    .local v6, "NPA":I
    :goto_b
    const-wide/16 v18, 0x0

    .line 1046
    .local v18, "totalTime":J
    const/4 v15, 0x0

    .local v15, "isa":I
    :goto_c
    if-ge v15, v8, :cond_e

    .line 1047
    const/4 v11, 0x0

    .local v11, "ima":I
    :goto_d
    if-ge v11, v4, :cond_d

    .line 1048
    const/4 v13, 0x0

    .local v13, "ipa":I
    :goto_e
    if-ge v13, v6, :cond_c

    .line 1049
    if-eqz p2, :cond_9

    const/16 v21, 0x0

    .line 1050
    .local v21, "vascreen":I
    :goto_f
    if-eqz p4, :cond_a

    const/16 v17, 0x0

    .line 1051
    .local v17, "vamem":I
    :goto_10
    if-eqz p6, :cond_b

    const/16 v20, 0x0

    .line 1052
    .local v20, "vaproc":I
    :goto_11
    add-int v25, v24, v21

    add-int v25, v25, v22

    add-int v25, v25, v17

    mul-int/lit8 v25, v25, 0xe

    add-int v25, v25, v23

    add-int v10, v25, v20

    .line 1054
    .local v10, "bucket":I
    move-object/from16 v0, p1

    move-wide/from16 v1, p8

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v26

    add-long v18, v18, v26

    .line 1048
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1033
    .end local v4    # "NMA":I
    .end local v5    # "NMS":I
    .end local v6    # "NPA":I
    .end local v7    # "NPS":I
    .end local v8    # "NSA":I
    .end local v9    # "NSS":I
    .end local v10    # "bucket":I
    .end local v11    # "ima":I
    .end local v12    # "ims":I
    .end local v13    # "ipa":I
    .end local v14    # "ips":I
    .end local v15    # "isa":I
    .end local v16    # "iss":I
    .end local v17    # "vamem":I
    .end local v18    # "totalTime":J
    .end local v20    # "vaproc":I
    .end local v21    # "vascreen":I
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_0
    const/4 v9, 0x1

    .restart local v9    # "NSS":I
    goto :goto_0

    .line 1034
    :cond_1
    const/4 v5, 0x1

    .restart local v5    # "NMS":I
    goto :goto_1

    .line 1035
    :cond_2
    const/4 v7, 0x1

    .restart local v7    # "NPS":I
    goto :goto_2

    .line 1039
    .restart local v12    # "ims":I
    .restart local v14    # "ips":I
    .restart local v16    # "iss":I
    :cond_3
    const/16 v24, 0x0

    .restart local v24    # "vsscreen":I
    goto :goto_6

    .line 1040
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "vsmem":I
    goto :goto_7

    .line 1041
    :cond_5
    const/16 v23, 0x0

    .restart local v23    # "vsproc":I
    goto :goto_8

    .line 1042
    :cond_6
    move-object/from16 v0, p3

    array-length v8, v0

    .restart local v8    # "NSA":I
    goto :goto_9

    .line 1043
    :cond_7
    move-object/from16 v0, p5

    array-length v4, v0

    .restart local v4    # "NMA":I
    goto :goto_a

    .line 1044
    :cond_8
    move-object/from16 v0, p7

    array-length v6, v0

    .restart local v6    # "NPA":I
    goto :goto_b

    .line 1049
    .restart local v11    # "ima":I
    .restart local v13    # "ipa":I
    .restart local v15    # "isa":I
    .restart local v18    # "totalTime":J
    :cond_9
    aget v21, p3, v15

    .restart local v21    # "vascreen":I
    goto :goto_f

    .line 1050
    :cond_a
    aget v17, p5, v11

    .restart local v17    # "vamem":I
    goto :goto_10

    .line 1051
    :cond_b
    aget v20, p7, v13

    .restart local v20    # "vaproc":I
    goto :goto_11

    .line 1047
    .end local v17    # "vamem":I
    .end local v20    # "vaproc":I
    .end local v21    # "vascreen":I
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 1046
    .end local v13    # "ipa":I
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 1058
    .end local v11    # "ima":I
    :cond_e
    const-string/jumbo v25, "\t"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1038
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 1037
    .end local v4    # "NMA":I
    .end local v6    # "NPA":I
    .end local v8    # "NSA":I
    .end local v15    # "isa":I
    .end local v18    # "totalTime":J
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 1036
    .end local v14    # "ips":I
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 1032
    .end local v12    # "ims":I
    :cond_11
    return-void
.end method

.method static dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    .prologue
    .line 1088
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v6, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 1090
    .local v6, "totals":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-wide/from16 v0, p7

    invoke-static {p1, v6, v0, v1}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 1091
    iget-wide v8, v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v8, v8

    move-wide/from16 v0, p9

    long-to-double v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v4, v8, v10

    .line 1093
    .local v4, "percentage":D
    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v7, v4, v8

    if-gez v7, :cond_0

    iget-wide v8, v6, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 1094
    :cond_0
    if-eqz p2, :cond_1

    .line 1095
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    :cond_1
    if-eqz p3, :cond_2

    .line 1098
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1100
    :cond_2
    move-wide/from16 v0, p9

    move/from16 v2, p11

    invoke-virtual {v6, p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 1101
    if-eqz p2, :cond_3

    .line 1102
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1087
    :cond_3
    return-void
.end method

.method static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V
    .locals 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "inclUidVers"    # Z
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IZJJ)V"
        }
    .end annotation

    .prologue
    .line 1110
    .local p2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1111
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1112
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1113
    const-string/jumbo v1, "* "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1114
    iget-object v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    const-string/jumbo v1, " / "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1116
    iget v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1117
    const-string/jumbo v1, " / v"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    iget v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1119
    const-string/jumbo v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    const-string/jumbo v4, "         TOTAL: "

    .line 1121
    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1120
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1122
    const-string/jumbo v4, "    Persistent: "

    .line 1123
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1122
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1124
    const-string/jumbo v4, "           Top: "

    .line 1125
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1124
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1126
    const-string/jumbo v4, "        Imp Fg: "

    .line 1127
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x2

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1126
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1128
    const-string/jumbo v4, "        Imp Bg: "

    .line 1129
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x3

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1128
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1130
    const-string/jumbo v4, "        Backup: "

    .line 1131
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x4

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1130
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1132
    const-string/jumbo v4, "     Heavy Wgt: "

    .line 1133
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x5

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1132
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1134
    const-string/jumbo v4, "       Service: "

    .line 1135
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x6

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1134
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1136
    const-string/jumbo v4, "    Service Rs: "

    .line 1137
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, 0x7

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1136
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1138
    const-string/jumbo v4, "      Receiver: "

    .line 1139
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/16 v1, 0x8

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1138
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1140
    const-string/jumbo v4, "        (Home): "

    .line 1141
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/16 v1, 0x9

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1140
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1142
    const-string/jumbo v4, "    (Last Act): "

    .line 1143
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/16 v1, 0xa

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1142
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1144
    const-string/jumbo v4, "      (Cached): "

    .line 1145
    const/16 v1, 0xb

    const/16 v3, 0xc

    .line 1146
    const/16 v5, 0xd

    .line 1145
    filled-new-array {v1, v3, v5}, [I

    move-result-object v7

    .line 1146
    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 1144
    invoke-static/range {v1 .. v12}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 1110
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1109
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    return-void
.end method

.method static dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "svc"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "serviceType"    # I
    .param p8, "opCount"    # I
    .param p9, "curState"    # I
    .param p10, "curStartTime"    # J
    .param p12, "now"    # J

    .prologue
    .line 558
    if-gtz p8, :cond_0

    .line 559
    return-void

    .line 561
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    const-string/jumbo v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    const-string/jumbo v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 566
    const-string/jumbo v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 568
    const-string/jumbo v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    const-string/jumbo v9, ","

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    move/from16 v0, p8

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 572
    const/4 v2, 0x0

    .line 573
    .local v2, "didCurState":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p6

    iget v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mDurationsTableSize:I

    if-ge v3, v9, :cond_3

    .line 574
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mDurationsTable:[I

    aget v5, v9, v3

    .line 575
    .local v5, "off":I
    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v9, v5, v9

    sget v10, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v8, v9, v10

    .line 576
    .local v8, "type":I
    div-int/lit8 v4, v8, 0x4

    .line 577
    .local v4, "memFactor":I
    rem-int/lit8 v8, v8, 0x4

    .line 578
    move/from16 v0, p7

    if-eq v8, v0, :cond_1

    .line 573
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 581
    :cond_1
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    .line 582
    .local v6, "time":J
    move/from16 v0, p9

    if-ne v0, v4, :cond_2

    .line 583
    const/4 v2, 0x1

    .line 584
    sub-long v10, p12, p10

    add-long/2addr v6, v10

    .line 586
    :cond_2
    invoke-static {p0, v4, v6, v7}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    goto :goto_1

    .line 588
    .end local v4    # "memFactor":I
    .end local v5    # "off":I
    .end local v6    # "time":J
    .end local v8    # "type":I
    :cond_3
    if-nez v2, :cond_4

    const/4 v9, -0x1

    move/from16 v0, p9

    if-eq v0, v9, :cond_4

    .line 589
    sub-long v10, p12, p10

    move/from16 v0, p9

    invoke-static {p0, v0, v10, v11}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 591
    :cond_4
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 557
    return-void
.end method

.method public static dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J
    .locals 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p3, "serviceType"    # I
    .param p4, "curState"    # I
    .param p5, "curStartTime"    # J
    .param p7, "now"    # J

    .prologue
    .line 2338
    const-wide/16 v20, 0x0

    .line 2339
    .local v20, "totalTime":J
    const/4 v15, -0x1

    .line 2340
    .local v15, "printedScreen":I
    const/4 v13, 0x0

    .local v13, "iscreen":I
    :goto_0
    const/16 v4, 0x8

    if-ge v13, v4, :cond_6

    .line 2341
    const/4 v14, -0x1

    .line 2342
    .local v14, "printedMem":I
    const/4 v12, 0x0

    .local v12, "imem":I
    :goto_1
    const/4 v4, 0x4

    if-ge v12, v4, :cond_5

    .line 2343
    add-int v9, v12, v13

    .local v9, "state":I
    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v10, p7

    .line 2344
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats$ServiceState;->-wrap0(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J

    move-result-wide v18

    .line 2346
    .local v18, "time":J
    const-string/jumbo v16, ""

    .line 2347
    .local v16, "running":Ljava/lang/String;
    move/from16 v0, p4

    if-ne v0, v9, :cond_0

    if-eqz p0, :cond_0

    .line 2348
    const-string/jumbo v16, " (running)"

    .line 2350
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-eqz v4, :cond_2

    .line 2351
    if-eqz p0, :cond_1

    .line 2352
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2353
    if-eq v15, v13, :cond_3

    move v4, v13

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 2355
    move v15, v13

    .line 2356
    if-eq v14, v12, :cond_4

    move v4, v12

    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 2357
    move v14, v12

    .line 2358
    const-string/jumbo v4, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2359
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    :cond_1
    add-long v20, v20, v18

    .line 2342
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2354
    :cond_3
    const/4 v4, -0x1

    goto :goto_2

    .line 2356
    :cond_4
    const/4 v4, -0x1

    goto :goto_3

    .line 2340
    .end local v9    # "state":I
    .end local v16    # "running":Ljava/lang/String;
    .end local v18    # "time":J
    :cond_5
    add-int/lit8 v13, v13, 0x4

    goto :goto_0

    .line 2365
    .end local v12    # "imem":I
    .end local v14    # "printedMem":I
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-eqz v4, :cond_7

    if-eqz p0, :cond_7

    .line 2366
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2367
    const-string/jumbo v4, "    TOTAL: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2369
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 2371
    :cond_7
    return-wide v20
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .locals 12
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "durations"    # [J
    .param p3, "curState"    # I
    .param p4, "curStartTime"    # J
    .param p6, "now"    # J

    .prologue
    .line 501
    const-wide/16 v8, 0x0

    .line 502
    .local v8, "totalTime":J
    const/4 v3, -0x1

    .line 503
    .local v3, "printedScreen":I
    const/4 v1, 0x0

    .local v1, "iscreen":I
    :goto_0
    const/16 v10, 0x8

    if-ge v1, v10, :cond_6

    .line 504
    const/4 v2, -0x1

    .line 505
    .local v2, "printedMem":I
    const/4 v0, 0x0

    .local v0, "imem":I
    :goto_1
    const/4 v10, 0x4

    if-ge v0, v10, :cond_5

    .line 506
    add-int v5, v0, v1

    .line 507
    .local v5, "state":I
    aget-wide v6, p2, v5

    .line 508
    .local v6, "time":J
    const-string/jumbo v4, ""

    .line 509
    .local v4, "running":Ljava/lang/String;
    if-ne p3, v5, :cond_0

    .line 510
    sub-long v10, p6, p4

    add-long/2addr v6, v10

    .line 511
    if-eqz p0, :cond_0

    .line 512
    const-string/jumbo v4, " (running)"

    .line 515
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_2

    .line 516
    if-eqz p0, :cond_1

    .line 517
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 518
    if-eq v3, v1, :cond_3

    move v10, v1

    :goto_2
    invoke-static {p0, v10}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 520
    move v3, v1

    .line 521
    if-eq v2, v0, :cond_4

    move v10, v0

    :goto_3
    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 522
    move v2, v0

    .line 523
    const-string/jumbo v10, ": "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    :cond_1
    add-long/2addr v8, v6

    .line 505
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    :cond_3
    const/4 v10, -0x1

    goto :goto_2

    .line 521
    :cond_4
    const/4 v10, -0x1

    goto :goto_3

    .line 503
    .end local v4    # "running":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v6    # "time":J
    :cond_5
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 530
    .end local v0    # "imem":I
    .end local v2    # "printedMem":I
    :cond_6
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_7

    if-eqz p0, :cond_7

    .line 531
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    const-string/jumbo v10, "    TOTAL: "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 534
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 536
    :cond_7
    return-wide v8
.end method

.method static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "screenStates"    # [I
    .param p3, "memStates"    # [I
    .param p4, "procStates"    # [I

    .prologue
    const/4 v9, 0x1

    .line 1000
    if-eqz p2, :cond_5

    array-length v2, p2

    .line 1001
    .local v2, "NS":I
    :goto_0
    if-eqz p3, :cond_6

    array-length v0, p3

    .line 1002
    .local v0, "NM":I
    :goto_1
    if-eqz p4, :cond_7

    array-length v1, p4

    .line 1003
    .local v1, "NP":I
    :goto_2
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_3
    if-ge v5, v2, :cond_a

    .line 1004
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_4
    if-ge v3, v0, :cond_9

    .line 1005
    const/4 v4, 0x0

    .local v4, "ip":I
    :goto_5
    if-ge v4, v1, :cond_8

    .line 1006
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1007
    const/4 v6, 0x0

    .line 1008
    .local v6, "printed":Z
    if-eqz p2, :cond_0

    array-length v7, p2

    if-le v7, v9, :cond_0

    .line 1009
    aget v7, p2, v5

    invoke-static {p0, v7}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1010
    const/4 v6, 0x1

    .line 1012
    :cond_0
    if-eqz p3, :cond_2

    array-length v7, p3

    if-le v7, v9, :cond_2

    .line 1013
    if-eqz v6, :cond_1

    .line 1014
    const-string/jumbo v7, "-"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    :cond_1
    aget v7, p3, v3

    invoke-static {p0, v7}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1017
    const/4 v6, 0x1

    .line 1019
    :cond_2
    if-eqz p4, :cond_4

    array-length v7, p4

    if-le v7, v9, :cond_4

    .line 1020
    if-eqz v6, :cond_3

    .line 1021
    const-string/jumbo v7, "-"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    :cond_3
    sget-object v7, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v8, p4, v4

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1005
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1000
    .end local v0    # "NM":I
    .end local v1    # "NP":I
    .end local v2    # "NS":I
    .end local v3    # "im":I
    .end local v4    # "ip":I
    .end local v5    # "is":I
    .end local v6    # "printed":Z
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "NS":I
    goto :goto_0

    .line 1001
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "NM":I
    goto :goto_1

    .line 1002
    :cond_7
    const/4 v1, 0x1

    .restart local v1    # "NP":I
    goto :goto_2

    .line 1004
    .restart local v3    # "im":I
    .restart local v4    # "ip":I
    .restart local v5    # "is":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1003
    .end local v4    # "ip":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 999
    .end local v3    # "im":I
    :cond_a
    return-void
.end method

.method static printAdjTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 1204
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 1205
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1203
    return-void
.end method

.method static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 1216
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1217
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printAdjTag(Ljava/io/PrintWriter;I)V

    .line 1218
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1219
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1215
    return-void
.end method

.method static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mod"    # I

    .prologue
    .line 1188
    div-int v0, p2, p3

    .line 1189
    .local v0, "index":I
    if-ltz v0, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1190
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    :goto_0
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1

    .line 1192
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0
.end method

.method static printLongOffset(I)Ljava/lang/String;
    .locals 3
    .param p0, "off"    # I

    .prologue
    .line 1964
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1965
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1966
    const-string/jumbo v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1967
    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1968
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printMemLabel(Ljava/io/PrintWriter;IC)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I
    .param p2, "sep"    # C

    .prologue
    .line 461
    packed-switch p1, :pswitch_data_0

    .line 483
    const-string/jumbo v0, "????"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 463
    :pswitch_0
    const-string/jumbo v0, "    "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    if-eqz p2, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 467
    :pswitch_1
    const-string/jumbo v0, "Norm"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 471
    :pswitch_2
    const-string/jumbo v0, "Mod "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 475
    :pswitch_3
    const-string/jumbo v0, "Low "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 479
    :pswitch_4
    const-string/jumbo v0, "Crit"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 490
    if-ltz p1, :cond_0

    .line 491
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 492
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const-string/jumbo v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static printPercent(Ljava/io/PrintWriter;D)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "fraction"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1151
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    .line 1152
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 1153
    const-string/jumbo v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1159
    :goto_0
    const-string/jumbo v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    return-void

    .line 1154
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 1155
    const-string/jumbo v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :cond_1
    const-string/jumbo v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static printProcStateTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I

    .prologue
    .line 1198
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 1199
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 1200
    sget-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 1197
    return-void
.end method

.method static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "state"    # I
    .param p2, "value"    # J

    .prologue
    .line 1209
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1210
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1211
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1212
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1208
    return-void
.end method

.method private static printScreenLabel(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 428
    packed-switch p1, :pswitch_data_0

    .line 439
    :pswitch_0
    const-string/jumbo v0, "????/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    :goto_0
    return-void

    .line 430
    :pswitch_1
    const-string/jumbo v0, "     "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :pswitch_2
    const-string/jumbo v0, "SOff/"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :pswitch_3
    const-string/jumbo v0, "SOn /"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "offset"    # I

    .prologue
    .line 445
    packed-switch p1, :pswitch_data_0

    .line 455
    :pswitch_0
    const-string/jumbo v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    :goto_0
    :pswitch_1
    return-void

    .line 449
    :pswitch_2
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :pswitch_3
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "val"    # I
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 1646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "got":I
    if-eq v0, p2, :cond_0

    .line 1647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1648
    const/4 v1, 0x0

    return v1

    .line 1650
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I

    .prologue
    .line 1484
    const/16 v2, 0x9

    if-gt p2, v2, :cond_0

    .line 1485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1487
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1488
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1489
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 1491
    :cond_1
    not-int v0, v0

    .line 1492
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    .line 1494
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1496
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1497
    return-object v1
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "version"    # I
    .param p3, "array"    # [J
    .param p4, "num"    # I

    .prologue
    .line 1447
    const/16 v4, 0xa

    if-gt p2, v4, :cond_0

    .line 1448
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 1449
    return-void

    .line 1451
    :cond_0
    array-length v0, p3

    .line 1452
    .local v0, "alen":I
    if-le p4, v0, :cond_1

    .line 1453
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad array lengths: got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " array is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1456
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_3

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1458
    .local v3, "val":I
    if-ltz v3, :cond_2

    .line 1459
    int-to-long v4, v3

    aput-wide v4, p3, v2

    .line 1456
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1461
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1462
    .local v1, "bottom":I
    not-int v4, v3

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p3, v2

    goto :goto_1

    .line 1465
    .end local v1    # "bottom":I
    .end local v3    # "val":I
    :cond_3
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1466
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    .line 1467
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1446
    :cond_4
    return-void
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "outLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1654
    const/4 v4, 0x0

    .line 1655
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1656
    .local v2, "initialAvail":I
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    :goto_0
    new-array v1, v5, [B

    .line 1658
    .local v1, "data":[B
    :cond_0
    :goto_1
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1661
    .local v0, "amt":I
    if-gez v0, :cond_2

    .line 1664
    aput v4, p1, v6

    .line 1665
    return-object v1

    .line 1656
    .end local v0    # "amt":I
    .end local v1    # "data":[B
    :cond_1
    const/16 v5, 0x4000

    goto :goto_0

    .line 1667
    .restart local v0    # "amt":I
    .restart local v1    # "data":[B
    :cond_2
    add-int/2addr v4, v0

    .line 1668
    array-length v5, v1

    if-lt v4, v5, :cond_0

    .line 1669
    add-int/lit16 v5, v4, 0x4000

    new-array v3, v5, [B

    .line 1672
    .local v3, "newData":[B
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1673
    move-object v1, v3

    goto :goto_1
.end method

.method private readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1407
    .local v1, "size":I
    if-gez v1, :cond_0

    .line 1408
    const-string/jumbo v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring existing stats; bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    sget-object v3, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    return-object v3

    .line 1411
    :cond_0
    if-nez v1, :cond_1

    .line 1412
    return-object v6

    .line 1414
    :cond_1
    new-array v2, v1, [I

    .line 1415
    .local v2, "table":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 1419
    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ProcessStats;->validateLongOffset(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1420
    const-string/jumbo v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring existing stats; bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " table entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1421
    aget v5, v2, v0

    invoke-static {v5}, Lcom/android/internal/app/ProcessStats;->printLongOffset(I)Ljava/lang/String;

    move-result-object v5

    .line 1420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return-object v6

    .line 1415
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1425
    :cond_3
    return-object v2
.end method

.method private resetCommon()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1370
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1372
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    .line 1373
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1374
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1376
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 1377
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 1378
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    .line 1379
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1380
    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1381
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 1368
    return-void
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1472
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1473
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    return-void

    .line 1477
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1478
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1480
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "array"    # [J
    .param p3, "num"    # I

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 1429
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 1430
    aget-wide v4, p2, v1

    .line 1431
    .local v4, "val":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1432
    const-string/jumbo v3, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Time val negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const-wide/16 v4, 0x0

    .line 1435
    :cond_0
    cmp-long v3, v4, v8

    if-gtz v3, :cond_1

    .line 1436
    long-to-int v3, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1438
    :cond_1
    const/16 v3, 0x20

    shr-long v6, v4, v3

    and-long/2addr v6, v8

    long-to-int v3, v6

    not-int v2, v3

    .line 1439
    .local v2, "top":I
    const-wide/32 v6, 0xfffffff

    and-long/2addr v6, v4

    long-to-int v0, v6

    .line 1440
    .local v0, "bottom":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1428
    .end local v0    # "bottom":I
    .end local v2    # "top":I
    .end local v4    # "val":J
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/ProcessStats;)V
    .locals 40
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats;

    .prologue
    .line 270
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v29

    .line 271
    .local v29, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/16 v18, 0x0

    .local v18, "ip":I
    :goto_0
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    .line 272
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 273
    .local v5, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/util/SparseArray;

    .line 274
    .local v35, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v21, 0x0

    .local v21, "iu":I
    :goto_1
    invoke-virtual/range {v35 .. v35}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_5

    .line 275
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 276
    .local v6, "uid":I
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/util/SparseArray;

    .line 277
    .local v37, "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v22, 0x0

    .local v22, "iv":I
    :goto_2
    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_4

    .line 278
    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 279
    .local v7, "vers":I
    move-object/from16 v0, v37

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 280
    .local v27, "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 281
    .local v14, "NPROCS":I
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 282
    .local v15, "NSRVS":I
    const/16 v19, 0x0

    .local v19, "iproc":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v14, :cond_2

    .line 283
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 284
    .local v26, "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, v26

    if-eq v4, v0, :cond_1

    .line 288
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 287
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v8

    .line 289
    .local v8, "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-ne v4, v8, :cond_0

    .line 291
    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 293
    .local v24, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v30

    .line 295
    .local v30, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v4, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-wide/from16 v0, v24

    invoke-virtual {v8, v4, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v8

    .line 296
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v9, v8, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v24    # "now":J
    .end local v30    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_0
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 282
    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 301
    .end local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/16 v20, 0x0

    .local v20, "isvc":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v15, :cond_3

    .line 302
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 306
    .local v28, "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v28

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    move-object/from16 v4, p0

    .line 305
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v34

    .line 307
    .local v34, "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->add(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 301
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 277
    .end local v28    # "otherSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v34    # "thisSvc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 274
    .end local v7    # "vers":I
    .end local v14    # "NPROCS":I
    .end local v15    # "NSRVS":I
    .end local v19    # "iproc":I
    .end local v20    # "isvc":I
    .end local v27    # "otherState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 271
    .end local v6    # "uid":I
    .end local v22    # "iv":I
    .end local v37    # "versions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 313
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v21    # "iu":I
    .end local v35    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v31

    .line 314
    .local v31, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v18, 0x0

    :goto_5
    invoke-virtual/range {v31 .. v31}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_9

    .line 315
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/util/SparseArray;

    .line 316
    .local v36, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v21, 0x0

    .restart local v21    # "iu":I
    :goto_6
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_8

    .line 317
    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 318
    .restart local v6    # "uid":I
    move-object/from16 v0, v36

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 319
    .restart local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 321
    .restart local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v8, :cond_7

    .line 323
    new-instance v8, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v26

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 324
    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v9, p0

    move v11, v6

    .line 323
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 325
    .restart local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v6, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 327
    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v9}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v33

    .line 328
    .local v33, "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 329
    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v33    # "thisState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_7
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 316
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 314
    .end local v6    # "uid":I
    .end local v8    # "thisProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v26    # "otherProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 336
    .end local v21    # "iu":I
    .end local v36    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_9
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_7
    const/16 v4, 0x8

    move/from16 v0, v17

    if-ge v0, v4, :cond_a

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v10, v4, v17

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v12, v9, v17

    add-long/2addr v10, v12

    aput-wide v10, v4, v17

    .line 336
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 343
    :cond_a
    const/16 v17, 0x0

    :goto_8
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v0, v17

    if-ge v0, v4, :cond_b

    .line 344
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    aget v16, v4, v17

    .line 345
    .local v16, "ent":I
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v4, v16, v4

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v32, v4, v9

    .line 346
    .local v32, "state":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v9, v16, v9

    sget v10, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v9, v10

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [J

    .line 347
    .local v23, "longs":[J
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v4, v16, v4

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v4, v9

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(I[JI)V

    .line 343
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 350
    .end local v16    # "ent":I
    .end local v23    # "longs":[J
    .end local v32    # "state":I
    :cond_b
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v4, v10, v12

    if-gez v4, :cond_c

    .line 351
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 352
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 354
    :cond_c
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v38, v0

    sub-long v12, v12, v38

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 355
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    move-wide/from16 v38, v0

    sub-long v12, v12, v38

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 269
    return-void
.end method

.method addLongData(III)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "num"    # I

    .prologue
    .line 1927
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ProcessStats;->allocLongData(I)I

    move-result v0

    .line 1929
    .local v0, "off":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 1930
    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    or-int v3, p2, v0

    .line 1928
    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 1931
    iget v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 1932
    return v0

    .line 1929
    :cond_0
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    goto :goto_0
.end method

.method addSysMemUsage(I[JI)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "data"    # [J
    .param p3, "dataOff"    # I

    .prologue
    .line 375
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    invoke-static {v3, v4, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 377
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 378
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    aget v2, v3, v0

    .line 386
    .local v2, "off":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v4, v2, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 387
    .local v1, "longs":[J
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v3, v2, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v0, v3, v4

    .line 388
    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage([JI[JI)V

    .line 374
    return-void

    .line 380
    .end local v1    # "longs":[J
    .end local v2    # "off":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 381
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 382
    not-int v3, v0

    const/16 v4, 0x10

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v2

    .line 383
    .restart local v2    # "off":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 384
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    goto :goto_0
.end method

.method public addSysMemUsage(JJJJJ)V
    .locals 7
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .prologue
    .line 360
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 361
    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    mul-int/lit8 v1, v2, 0xe

    .line 362
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x1

    aput-wide p1, v2, v3

    .line 365
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x4

    aput-wide p3, v2, v3

    .line 366
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x7

    aput-wide p5, v2, v3

    .line 367
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xa

    aput-wide p7, v2, v3

    .line 368
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xd

    aput-wide p9, v2, v3

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(I[JI)V

    .line 359
    .end local v0    # "i":I
    .end local v1    # "state":I
    :cond_1
    return-void
.end method

.method allocLongData(I)I
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 1936
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1937
    .local v2, "whichLongs":I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1938
    .local v0, "longs":[J
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    array-length v4, v0

    if-le v3, v4, :cond_0

    .line 1939
    const/16 v3, 0x1000

    new-array v0, v3, [J

    .line 1940
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1941
    add-int/lit8 v2, v2, 0x1

    .line 1942
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1944
    :cond_0
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shl-int v3, v2, v3

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shl-int/2addr v4, v5

    or-int v1, v3, v4

    .line 1945
    .local v1, "off":I
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1946
    return v1
.end method

.method collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;

    .prologue
    .line 2552
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2553
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2554
    .local v0, "ITEMLEN":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2555
    .local v1, "PKGLEN":I
    if-ne v0, v1, :cond_0

    .line 2556
    const-string/jumbo v2, ""

    return-object v2

    .line 2557
    :cond_0
    if-lt v0, v1, :cond_1

    .line 2558
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 2559
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2563
    .end local v0    # "ITEMLEN":I
    .end local v1    # "PKGLEN":I
    :cond_1
    return-object p2
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 23
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "sortProcStates"    # [I
    .param p5, "now"    # J
    .param p7, "reqPackage"    # Ljava/lang/String;
    .param p8, "activeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2502
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2503
    .local v10, "foundProcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    .line 2504
    .local v17, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v12, v3, :cond_7

    .line 2505
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2506
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/SparseArray;

    .line 2507
    .local v20, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v14, 0x0

    .local v14, "iu":I
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_6

    .line 2508
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    .line 2509
    .local v22, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 2510
    .local v9, "NVERS":I
    const/4 v15, 0x0

    .local v15, "iv":I
    :goto_2
    if-ge v15, v9, :cond_5

    .line 2511
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2512
    .local v21, "state":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 2513
    .local v8, "NPROCS":I
    if-eqz p7, :cond_3

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 2514
    :goto_3
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_4
    if-ge v13, v8, :cond_4

    .line 2515
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2516
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v18, :cond_0

    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2519
    :cond_0
    if-eqz p8, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2522
    :cond_1
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2514
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2513
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v13    # "iproc":I
    :cond_3
    const/16 v18, 0x1

    .local v18, "pkgMatch":Z
    goto :goto_3

    .line 2510
    .end local v18    # "pkgMatch":Z
    .restart local v13    # "iproc":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2507
    .end local v8    # "NPROCS":I
    .end local v13    # "iproc":I
    .end local v21    # "state":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2504
    .end local v9    # "NVERS":I
    .end local v15    # "iv":I
    .end local v22    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2527
    .end local v14    # "iu":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_7
    new-instance v16, Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2528
    .local v16, "outProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v11, v3, :cond_9

    .line 2529
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    .line 2530
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_8

    .line 2531
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 2533
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    .line 2528
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 2537
    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_9
    new-instance v3, Lcom/android/internal/app/ProcessStats$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ProcessStats$2;-><init>(Lcom/android/internal/app/ProcessStats;)V

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2548
    return-object v16
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 48
    .param p1, "data"    # Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    .prologue
    .line 681
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 682
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/16 v41, 0xe

    move/from16 v0, v41

    if-ge v14, v0, :cond_0

    .line 683
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 684
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 685
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 686
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aput v42, v41, v14

    .line 682
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 688
    :cond_0
    const/4 v14, 0x0

    :goto_1
    const/16 v41, 0x10

    move/from16 v0, v41

    if-ge v14, v0, :cond_1

    .line 689
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v41, v0

    const-wide/16 v42, 0x0

    aput-wide v42, v41, v14

    .line 688
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 691
    :cond_1
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 692
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 693
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 694
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 695
    const-wide/16 v42, 0x0

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 696
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 697
    const/16 v41, 0x10

    move/from16 v0, v41

    new-array v0, v0, [J

    move-object/from16 v38, v0

    .line 698
    .local v38, "totalMemUsage":[J
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_2

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    move-object/from16 v41, v0

    aget v9, v41, v14

    .line 700
    .local v9, "ent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v42, v9, v42

    sget v43, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [J

    .line 701
    .local v20, "longs":[J
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v41, v9, v41

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v15, v41, v42

    .line 702
    .local v15, "idx":I
    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v41

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage([JI[JI)V

    .line 698
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 704
    .end local v9    # "ent":I
    .end local v15    # "idx":I
    .end local v20    # "longs":[J
    :cond_2
    const/16 v18, 0x0

    .local v18, "is":I
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v18

    move/from16 v1, v41

    if-ge v0, v1, :cond_6

    .line 705
    const/16 v16, 0x0

    .local v16, "im":I
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    move/from16 v0, v16

    move/from16 v1, v41

    if-ge v0, v1, :cond_5

    .line 706
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v41, v0

    aget v41, v41, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v42, v0

    aget v42, v42, v16

    add-int v21, v41, v42

    .line 707
    .local v21, "memBucket":I
    mul-int/lit8 v32, v21, 0xe

    .line 708
    .local v32, "stateBucket":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v41, v0

    aget-wide v22, v41, v21

    .line 709
    .local v22, "memTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 710
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v42, v0

    sub-long v42, p2, v42

    add-long v22, v22, v42

    .line 712
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-wide/from16 v42, v0

    add-long v42, v42, v22

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v42, v0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v33

    .line 714
    .local v33, "sysIdx":I
    move-object/from16 v20, v38

    .line 715
    .restart local v20    # "longs":[J
    const/4 v15, 0x0

    .line 716
    .restart local v15    # "idx":I
    if-ltz v33, :cond_4

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    move-object/from16 v41, v0

    aget v9, v41, v33

    .line 718
    .restart local v9    # "ent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v42, v9, v42

    sget v43, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v42, v42, v43

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [J

    .line 719
    .local v37, "tmpLongs":[J
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v41, v9, v41

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v36, v41, v42

    .line 720
    .local v36, "tmpIdx":I
    add-int/lit8 v41, v36, 0x0

    aget-wide v42, v37, v41

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-ltz v41, :cond_4

    .line 721
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage([JI[JI)V

    .line 722
    move-object/from16 v20, v37

    .line 723
    move/from16 v15, v36

    .line 726
    .end local v9    # "ent":I
    .end local v36    # "tmpIdx":I
    .end local v37    # "tmpLongs":[J
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x2

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    .line 727
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    .line 726
    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 728
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x5

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    .line 729
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    .line 728
    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 730
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x8

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    .line 731
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    .line 730
    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 732
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0xb

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    .line 733
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    .line 732
    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 734
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0xe

    aget-wide v44, v20, v41

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    .line 735
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v46, v0

    .line 734
    mul-double v44, v44, v46

    add-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 736
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-int/lit8 v41, v15, 0x0

    aget-wide v44, v20, v41

    add-long v42, v42, v44

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    .line 705
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 704
    .end local v15    # "idx":I
    .end local v20    # "longs":[J
    .end local v21    # "memBucket":I
    .end local v22    # "memTime":J
    .end local v32    # "stateBucket":I
    .end local v33    # "sysIdx":I
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 739
    .end local v16    # "im":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v28

    .line 740
    .local v28, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v17, 0x0

    .local v17, "iproc":I
    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v41

    move/from16 v0, v17

    move/from16 v1, v41

    if-ge v0, v1, :cond_1b

    .line 741
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/util/SparseArray;

    .line 742
    .local v40, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v19, 0x0

    .local v19, "iu":I
    :goto_6
    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    move-result v41

    move/from16 v0, v19

    move/from16 v1, v41

    if-ge v0, v1, :cond_1a

    .line 743
    move-object/from16 v0, v40

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 744
    .local v27, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v12, Lcom/android/internal/app/ProcessStats$PssAggr;

    invoke-direct {v12}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    .line 745
    .local v12, "fgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    new-instance v7, Lcom/android/internal/app/ProcessStats$PssAggr;

    invoke-direct {v7}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    .line 746
    .local v7, "bgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    new-instance v8, Lcom/android/internal/app/ProcessStats$PssAggr;

    invoke-direct {v8}, Lcom/android/internal/app/ProcessStats$PssAggr;-><init>()V

    .line 747
    .local v8, "cachedPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    const/4 v13, 0x0

    .line 748
    .local v13, "havePss":Z
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_a

    .line 749
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    move-object/from16 v41, v0

    aget v26, v41, v14

    .line 750
    .local v26, "off":I
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v41, v26, v41

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v39, v41, v42

    .line 751
    .local v39, "type":I
    rem-int/lit8 v29, v39, 0xe

    .line 752
    .local v29, "procState":I
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v30

    .line 753
    .local v30, "samples":J
    const-wide/16 v42, 0x0

    cmp-long v41, v30, v42

    if-lez v41, :cond_7

    .line 754
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 755
    .local v4, "avg":J
    const/4 v13, 0x1

    .line 756
    const/16 v41, 0x2

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_8

    .line 757
    move-wide/from16 v0, v30

    invoke-virtual {v12, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 748
    .end local v4    # "avg":J
    :cond_7
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 758
    .restart local v4    # "avg":J
    :cond_8
    const/16 v41, 0x8

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_9

    .line 759
    move-wide/from16 v0, v30

    invoke-virtual {v7, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    goto :goto_8

    .line 761
    :cond_9
    move-wide/from16 v0, v30

    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    goto :goto_8

    .line 765
    .end local v4    # "avg":J
    .end local v26    # "off":I
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v39    # "type":I
    :cond_a
    if-nez v13, :cond_c

    .line 742
    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 768
    :cond_c
    const/4 v10, 0x0

    .line 769
    .local v10, "fgHasBg":Z
    const/4 v11, 0x0

    .line 770
    .local v11, "fgHasCached":Z
    const/4 v6, 0x0

    .line 771
    .local v6, "bgHasCached":Z
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_d

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_d

    .line 772
    const/4 v10, 0x1

    .line 773
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 775
    :cond_d
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_e

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_e

    .line 776
    const/4 v11, 0x1

    .line 777
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 779
    :cond_e
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_f

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_f

    .line 780
    const/4 v6, 0x1

    .line 781
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    .line 783
    :cond_f
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_10

    if-eqz v10, :cond_14

    .line 786
    :cond_10
    :goto_9
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_11

    if-eqz v6, :cond_15

    .line 789
    :cond_11
    :goto_a
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3

    cmp-long v41, v42, v44

    if-gez v41, :cond_12

    if-eqz v11, :cond_16

    .line 792
    :cond_12
    :goto_b
    const/4 v14, 0x0

    :goto_c
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v14, v0, :cond_b

    .line 793
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTable:[I

    move-object/from16 v41, v0

    aget v26, v41, v14

    .line 794
    .restart local v26    # "off":I
    sget v41, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v41, v26, v41

    sget v42, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v39, v41, v42

    .line 795
    .restart local v39    # "type":I
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v34

    .line 796
    .local v34, "time":J
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    .line 797
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    move-wide/from16 v42, v0

    sub-long v42, p2, v42

    add-long v34, v34, v42

    .line 799
    :cond_13
    rem-int/lit8 v29, v39, 0xe

    .line 800
    .restart local v29    # "procState":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v41, v0

    aget-wide v42, v41, v29

    add-long v42, v42, v34

    aput-wide v42, v41, v29

    .line 801
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v30

    .line 803
    .restart local v30    # "samples":J
    const-wide/16 v42, 0x0

    cmp-long v41, v30, v42

    if-lez v41, :cond_17

    .line 804
    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 815
    .restart local v4    # "avg":J
    :goto_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v41, v0

    aget-wide v42, v41, v29

    move-wide/from16 v0, v42

    long-to-double v0, v0

    move-wide/from16 v42, v0

    .line 816
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    aget v41, v41, v29

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v44, v0

    .line 815
    mul-double v42, v42, v44

    .line 817
    long-to-double v0, v4

    move-wide/from16 v44, v0

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    .line 815
    add-double v42, v42, v44

    .line 818
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    aget v41, v41, v29

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v44, v44, v30

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v44, v0

    .line 815
    div-double v24, v42, v44

    .line 819
    .local v24, "newAvg":D
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v41, v0

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v42, v0

    aput-wide v42, v41, v29

    .line 820
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v41, v0

    aget v42, v41, v29

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v42, v42, v30

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v42, v0

    aput v42, v41, v29

    .line 821
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v41, v0

    aget-wide v42, v41, v29

    long-to-double v0, v4

    move-wide/from16 v44, v0

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v44, v44, v46

    add-double v42, v42, v44

    aput-wide v42, v41, v29

    .line 792
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_c

    .line 783
    .end local v4    # "avg":J
    .end local v24    # "newAvg":D
    .end local v26    # "off":I
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v34    # "time":J
    .end local v39    # "type":I
    :cond_14
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_10

    .line 784
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    goto/16 :goto_9

    .line 786
    :cond_15
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_11

    .line 787
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    goto/16 :goto_a

    .line 789
    :cond_16
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmp-long v41, v42, v44

    if-lez v41, :cond_12

    .line 790
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    move-wide/from16 v42, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v42

    move-wide/from16 v2, v44

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$PssAggr;->add(JJ)V

    goto/16 :goto_b

    .line 805
    .restart local v26    # "off":I
    .restart local v29    # "procState":I
    .restart local v30    # "samples":J
    .restart local v34    # "time":J
    .restart local v39    # "type":I
    :cond_17
    const/16 v41, 0x2

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_18

    .line 806
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v30, v0

    .line 807
    iget-wide v4, v12, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_d

    .line 808
    .end local v4    # "avg":J
    :cond_18
    const/16 v41, 0x8

    move/from16 v0, v29

    move/from16 v1, v41

    if-gt v0, v1, :cond_19

    .line 809
    iget-wide v0, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v30, v0

    .line 810
    iget-wide v4, v7, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_d

    .line 812
    .end local v4    # "avg":J
    :cond_19
    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->samples:J

    move-wide/from16 v30, v0

    .line 813
    iget-wide v4, v8, Lcom/android/internal/app/ProcessStats$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_d

    .line 740
    .end local v4    # "avg":J
    .end local v6    # "bgHasCached":Z
    .end local v7    # "bgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v8    # "cachedPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v10    # "fgHasBg":Z
    .end local v11    # "fgHasCached":Z
    .end local v12    # "fgPss":Lcom/android/internal/app/ProcessStats$PssAggr;
    .end local v13    # "havePss":Z
    .end local v26    # "off":I
    .end local v27    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v29    # "procState":I
    .end local v30    # "samples":J
    .end local v34    # "time":J
    .end local v39    # "type":I
    :cond_1a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 680
    .end local v19    # "iu":I
    .end local v40    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1b
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1502
    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 48
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 2567
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 2568
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v37

    .line 2569
    .local v37, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const-string/jumbo v4, "vers,5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    const-string/jumbo v4, "period,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2571
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2572
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2573
    const/16 v36, 0x1

    .line 2574
    .local v36, "partial":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 2575
    const-string/jumbo v4, ",shutdown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2576
    const/16 v36, 0x0

    .line 2578
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 2579
    const-string/jumbo v4, ",sysprops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2580
    const/16 v36, 0x0

    .line 2582
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 2583
    const-string/jumbo v4, ",complete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2584
    const/16 v36, 0x0

    .line 2586
    :cond_2
    if-eqz v36, :cond_3

    .line 2587
    const-string/jumbo v4, ",partial"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2589
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2590
    const-string/jumbo v4, "config,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2591
    const/16 v29, 0x0

    .local v29, "ip":I
    :goto_1
    invoke-virtual/range {v37 .. v37}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_e

    .line 2592
    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2593
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2596
    :cond_4
    move-object/from16 v0, v37

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/util/SparseArray;

    .line 2597
    .local v45, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v32, 0x0

    .local v32, "iu":I
    :goto_2
    invoke-virtual/range {v45 .. v45}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_d

    .line 2598
    move-object/from16 v0, v45

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2599
    .local v7, "uid":I
    move-object/from16 v0, v45

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/util/SparseArray;

    .line 2600
    .local v47, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v33, 0x0

    .local v33, "iv":I
    :goto_3
    invoke-virtual/range {v47 .. v47}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v33

    if-ge v0, v4, :cond_c

    .line 2601
    move-object/from16 v0, v47

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 2602
    .local v8, "vers":I
    move-object/from16 v0, v47

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2603
    .local v38, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v26

    .line 2604
    .local v26, "NPROCS":I
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v27

    .line 2605
    .local v27, "NSRVS":I
    const/16 v30, 0x0

    .local v30, "iproc":I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 2606
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2607
    .local v39, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const-string/jumbo v4, "pkgproc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2608
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2609
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2610
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2611
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2612
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2613
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2614
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2615
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2616
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2617
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v4, :cond_5

    .line 2618
    const-string/jumbo v4, "pkgpss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2619
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2620
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2621
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2622
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2623
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2624
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2625
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2626
    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2627
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2629
    :cond_5
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v4, :cond_6

    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-lez v4, :cond_9

    .line 2631
    :cond_6
    :goto_5
    const-string/jumbo v4, "pkgkills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2632
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2633
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2634
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2635
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2636
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 2637
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2638
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2639
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2640
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2641
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2642
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2643
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2644
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2645
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2646
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2647
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2648
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2649
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2650
    move-object/from16 v0, v39

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2651
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2605
    :cond_7
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_4

    .line 2572
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "vers":I
    .end local v26    # "NPROCS":I
    .end local v27    # "NSRVS":I
    .end local v29    # "ip":I
    .end local v30    # "iproc":I
    .end local v32    # "iu":I
    .end local v33    # "iv":I
    .end local v36    # "partial":Z
    .end local v38    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v39    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v45    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v47    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto/16 :goto_0

    .line 2630
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v8    # "vers":I
    .restart local v26    # "NPROCS":I
    .restart local v27    # "NSRVS":I
    .restart local v29    # "ip":I
    .restart local v30    # "iproc":I
    .restart local v32    # "iu":I
    .restart local v33    # "iv":I
    .restart local v36    # "partial":Z
    .restart local v38    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v39    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v45    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v47    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_9
    move-object/from16 v0, v39

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v4, :cond_7

    goto/16 :goto_5

    .line 2654
    .end local v39    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_a
    const/16 v31, 0x0

    .local v31, "isvc":I
    :goto_6
    move/from16 v0, v31

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 2656
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2655
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2657
    .local v9, "serviceName":Ljava/lang/String;
    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2658
    .local v10, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    const-string/jumbo v5, "pkgsvc-run"

    .line 2659
    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 2660
    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 2659
    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 2658
    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2661
    const-string/jumbo v5, "pkgsvc-start"

    .line 2662
    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 2663
    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    .line 2662
    const/4 v11, 0x1

    move-object/from16 v4, p1

    .line 2661
    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2664
    const-string/jumbo v5, "pkgsvc-bound"

    .line 2665
    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 2666
    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    .line 2665
    const/4 v11, 0x2

    move-object/from16 v4, p1

    .line 2664
    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2667
    const-string/jumbo v5, "pkgsvc-exec"

    .line 2668
    iget v12, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 2669
    iget v13, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    iget-wide v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    .line 2668
    const/4 v11, 0x3

    move-object/from16 v4, p1

    .line 2667
    invoke-static/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2654
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 2600
    .end local v9    # "serviceName":Ljava/lang/String;
    .end local v10    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_b
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_3

    .line 2597
    .end local v8    # "vers":I
    .end local v26    # "NPROCS":I
    .end local v27    # "NSRVS":I
    .end local v30    # "iproc":I
    .end local v31    # "isvc":I
    .end local v38    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_c
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_2

    .line 2591
    .end local v7    # "uid":I
    .end local v32    # "iu":I
    .end local v33    # "iv":I
    .end local v45    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v47    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_d
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    .line 2675
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v40

    .line 2676
    .local v40, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v29, 0x0

    :goto_7
    invoke-virtual/range {v40 .. v40}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_15

    .line 2677
    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 2678
    .local v41, "procName":Ljava/lang/String;
    move-object/from16 v0, v40

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/util/SparseArray;

    .line 2679
    .local v46, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v32, 0x0

    .restart local v32    # "iu":I
    :goto_8
    invoke-virtual/range {v46 .. v46}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_14

    .line 2680
    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2681
    .restart local v7    # "uid":I
    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2682
    .local v42, "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    if-lez v4, :cond_f

    .line 2683
    const-string/jumbo v4, "proc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2684
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2685
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2686
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2687
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2688
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2690
    :cond_f
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v4, :cond_10

    .line 2691
    const-string/jumbo v4, "pss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2692
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2693
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2694
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2695
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2696
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2698
    :cond_10
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v4, :cond_11

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-lez v4, :cond_13

    .line 2700
    :cond_11
    :goto_9
    const-string/jumbo v4, "kills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2701
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2702
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2703
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2704
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2705
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2706
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2707
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2708
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2709
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2710
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2711
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2712
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2713
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2714
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2715
    move-object/from16 v0, v42

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2716
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2679
    :cond_12
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_8

    .line 2699
    :cond_13
    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v4, :cond_12

    goto/16 :goto_9

    .line 2676
    .end local v7    # "uid":I
    .end local v42    # "procState":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_14
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_7

    .line 2720
    .end local v32    # "iu":I
    .end local v41    # "procName":Ljava/lang/String;
    .end local v46    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_15
    const-string/jumbo v4, "total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2721
    const-string/jumbo v19, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v21, v0

    .line 2722
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v22, v0

    move-object/from16 v18, p1

    move-wide/from16 v24, v16

    .line 2721
    invoke-static/range {v18 .. v25}, Lcom/android/internal/app/ProcessStats;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 2723
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    if-eqz v4, :cond_18

    .line 2725
    const-string/jumbo v4, "sysmemusage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2726
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v0, v28

    if-ge v0, v4, :cond_18

    .line 2727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    aget v35, v4, v28

    .line 2728
    .local v35, "off":I
    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v4, v35, v4

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v44, v4, v5

    .line 2729
    .local v44, "type":I
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2730
    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 2731
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_b
    const/16 v4, 0x10

    move/from16 v0, v34

    if-ge v0, v4, :cond_17

    .line 2732
    const/4 v4, 0x1

    move/from16 v0, v34

    if-le v0, v4, :cond_16

    .line 2733
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2735
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2731
    add-int/lit8 v34, v34, 0x1

    goto :goto_b

    .line 2726
    :cond_17
    add-int/lit8 v28, v28, 0x1

    goto :goto_a

    .line 2739
    .end local v28    # "i":I
    .end local v34    # "j":I
    .end local v35    # "off":I
    .end local v44    # "type":I
    :cond_18
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2740
    new-instance v43, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 2741
    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 2740
    move-object/from16 v0, v43

    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 2742
    .local v43, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2743
    const-string/jumbo v4, "weights,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2744
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 2745
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2746
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2747
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2748
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2749
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2750
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2751
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2752
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2753
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2754
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2755
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2756
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2757
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2758
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2759
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2760
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2761
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2762
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2763
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2764
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2765
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_c
    const/16 v4, 0xe

    move/from16 v0, v28

    if-ge v0, v4, :cond_19

    .line 2766
    const-string/jumbo v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2767
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v28

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(D)V

    .line 2768
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2769
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v4, v4, v28

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2765
    add-int/lit8 v28, v28, 0x1

    goto :goto_c

    .line 2771
    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2566
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "sortProcStates"    # [I
    .param p8, "now"    # J
    .param p10, "totalTime"    # J
    .param p12, "reqPackage"    # Ljava/lang/String;
    .param p13, "activeOnly"    # Z

    .prologue
    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v8, p12

    move/from16 v9, p13

    .line 2487
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 2489
    .local v3, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2490
    if-eqz p2, :cond_0

    .line 2491
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2492
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2495
    :cond_0
    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 2494
    invoke-static/range {v1 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V

    .line 2486
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 59
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "dumpSummary"    # Z
    .param p6, "dumpAll"    # Z
    .param p7, "activeOnly"    # Z

    .prologue
    .line 2134
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 2135
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 2134
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v16

    .line 2136
    .local v16, "totalTime":J
    const/16 v52, 0x0

    .line 2137
    .local v52, "sepNeeded":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    if-eqz v4, :cond_0

    .line 2138
    const-string/jumbo v4, "System memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    const-string/jumbo v4, "  "

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5, v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsage(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    .line 2140
    const/16 v52, 0x1

    .line 2142
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v44

    .line 2143
    .local v44, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    const/16 v48, 0x0

    .line 2144
    .local v48, "printedHeader":Z
    const/16 v37, 0x0

    .local v37, "ip":I
    :goto_0
    invoke-virtual/range {v44 .. v44}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_23

    .line 2145
    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 2146
    .local v46, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/util/SparseArray;

    .line 2147
    .local v54, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v40, 0x0

    .local v40, "iu":I
    :goto_1
    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_22

    .line 2148
    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v53

    .line 2149
    .local v53, "uid":I
    move-object/from16 v0, v54

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/util/SparseArray;

    .line 2150
    .local v57, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v41, 0x0

    .local v41, "iv":I
    :goto_2
    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v41

    if-ge v0, v4, :cond_21

    .line 2151
    move-object/from16 v0, v57

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v56

    .line 2152
    .local v56, "vers":I
    move-object/from16 v0, v57

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2153
    .local v47, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v35

    .line 2154
    .local v35, "NPROCS":I
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v36

    .line 2155
    .local v36, "NSRVS":I
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v45

    .line 2156
    :goto_3
    if-nez v45, :cond_5

    .line 2157
    const/16 v50, 0x0

    .line 2158
    .local v50, "procMatch":Z
    const/16 v38, 0x0

    .local v38, "iproc":I
    :goto_4
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    .line 2159
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2160
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2161
    const/16 v50, 0x1

    .line 2165
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    if-nez v50, :cond_5

    .line 2150
    .end local v50    # "procMatch":Z
    :cond_2
    add-int/lit8 v41, v41, 0x1

    goto :goto_2

    .line 2155
    .end local v38    # "iproc":I
    :cond_3
    const/16 v45, 0x1

    .local v45, "pkgMatch":Z
    goto :goto_3

    .line 2158
    .end local v45    # "pkgMatch":Z
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v38    # "iproc":I
    .restart local v50    # "procMatch":Z
    :cond_4
    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    .line 2169
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v38    # "iproc":I
    .end local v50    # "procMatch":Z
    :cond_5
    if-gtz v35, :cond_6

    if-lez v36, :cond_9

    .line 2170
    :cond_6
    if-nez v48, :cond_8

    .line 2171
    if-eqz v52, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2172
    :cond_7
    const-string/jumbo v4, "Per-Package Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2173
    const/16 v48, 0x1

    .line 2174
    const/16 v52, 0x1

    .line 2176
    :cond_8
    const-string/jumbo v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2177
    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v4, " / v"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2178
    move-object/from16 v0, p1

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2180
    :cond_9
    if-eqz p5, :cond_a

    if-eqz p6, :cond_10

    .line 2181
    :cond_a
    const/16 v38, 0x0

    .restart local v38    # "iproc":I
    :goto_5
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_15

    .line 2182
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2183
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v45, :cond_b

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2186
    :cond_b
    if-eqz p7, :cond_c

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2191
    :cond_c
    const-string/jumbo v4, "      Process "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v4, v4, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_f

    .line 2194
    const-string/jumbo v4, " (multi, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    :goto_6
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2199
    const-string/jumbo v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2200
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2201
    const-string/jumbo v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 2202
    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    move-wide/from16 v10, p3

    .line 2201
    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 2203
    const-string/jumbo v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 2204
    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    .line 2203
    invoke-static/range {v4 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 2205
    const-string/jumbo v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    .line 2181
    :cond_d
    :goto_7
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_5

    .line 2187
    :cond_e
    const-string/jumbo v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2196
    :cond_f
    const-string/jumbo v4, " (unique, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 2208
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v38    # "iproc":I
    :cond_10
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2209
    .local v9, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v38, 0x0

    .restart local v38    # "iproc":I
    :goto_8
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_14

    .line 2210
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2211
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v45, :cond_11

    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2214
    :cond_11
    if-eqz p7, :cond_12

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2217
    :cond_12
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    :cond_13
    add-int/lit8 v38, v38, 0x1

    goto :goto_8

    .line 2219
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_14
    const-string/jumbo v8, "      "

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 2220
    sget-object v12, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-wide/from16 v14, p3

    .line 2219
    invoke-static/range {v7 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IZJJ)V

    .line 2222
    .end local v9    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_15
    const/16 v39, 0x0

    .local v39, "isvc":I
    :goto_9
    move/from16 v0, v39

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    .line 2223
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2224
    .local v24, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-nez v45, :cond_16

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2227
    :cond_16
    if-eqz p7, :cond_17

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2232
    :cond_17
    if-eqz p6, :cond_1c

    .line 2233
    const-string/jumbo v4, "      Service "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2237
    :goto_a
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    const-string/jumbo v4, "        Process: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    const-string/jumbo v20, "        "

    const-string/jumbo v21, "          "

    const-string/jumbo v22, "    "

    const-string/jumbo v23, "Running"

    .line 2241
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    move/from16 v27, v0

    .line 2242
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_1d

    move/from16 v34, p6

    .line 2241
    :goto_b
    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    .line 2240
    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2243
    const-string/jumbo v20, "        "

    const-string/jumbo v21, "          "

    const-string/jumbo v22, "    "

    const-string/jumbo v23, "Started"

    .line 2244
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    move/from16 v27, v0

    .line 2245
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_1e

    move/from16 v34, p6

    .line 2244
    :goto_c
    const/16 v26, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    .line 2243
    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2246
    const-string/jumbo v20, "        "

    const-string/jumbo v21, "          "

    const-string/jumbo v22, "      "

    const-string/jumbo v23, "Bound"

    .line 2247
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    move/from16 v27, v0

    .line 2248
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_1f

    move/from16 v34, p6

    .line 2247
    :goto_d
    const/16 v26, 0x2

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    .line 2246
    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2249
    const-string/jumbo v20, "        "

    const-string/jumbo v21, "          "

    const-string/jumbo v22, "  "

    const-string/jumbo v23, "Executing"

    .line 2250
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    move/from16 v27, v0

    .line 2251
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-wide/from16 v28, v0

    if-eqz p5, :cond_20

    move/from16 v34, p6

    .line 2250
    :goto_e
    const/16 v26, 0x3

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-wide/from16 v30, p3

    move-wide/from16 v32, v16

    .line 2249
    invoke-virtual/range {v18 .. v34}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 2252
    if-eqz p6, :cond_1a

    .line 2253
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v4, :cond_18

    .line 2254
    const-string/jumbo v4, "        mOwner="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2256
    :cond_18
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v4, :cond_19

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    if-eqz v4, :cond_1a

    .line 2257
    :cond_19
    const-string/jumbo v4, "        mStarted="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2258
    const-string/jumbo v4, " mRestarting="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2222
    :cond_1a
    :goto_f
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_9

    .line 2228
    :cond_1b
    const-string/jumbo v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2229
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 2235
    :cond_1c
    const-string/jumbo v4, "      * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2242
    :cond_1d
    const/16 v34, 0x1

    goto/16 :goto_b

    .line 2245
    :cond_1e
    const/16 v34, 0x1

    goto/16 :goto_c

    .line 2248
    :cond_1f
    const/16 v34, 0x1

    goto/16 :goto_d

    .line 2251
    :cond_20
    const/16 v34, 0x1

    goto/16 :goto_e

    .line 2147
    .end local v24    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v35    # "NPROCS":I
    .end local v36    # "NSRVS":I
    .end local v38    # "iproc":I
    .end local v39    # "isvc":I
    .end local v47    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v56    # "vers":I
    :cond_21
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_1

    .line 2144
    .end local v41    # "iv":I
    .end local v53    # "uid":I
    .end local v57    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_22
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_0

    .line 2266
    .end local v40    # "iu":I
    .end local v46    # "pkgName":Ljava/lang/String;
    .end local v54    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v49

    .line 2267
    .local v49, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v48, 0x0

    .line 2268
    const/16 v42, 0x0

    .local v42, "numShownProcs":I
    const/16 v43, 0x0

    .line 2269
    .local v43, "numTotalProcs":I
    const/16 v37, 0x0

    :goto_10
    invoke-virtual/range {v49 .. v49}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v37

    if-ge v0, v4, :cond_2d

    .line 2270
    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/String;

    .line 2271
    .local v51, "procName":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/util/SparseArray;

    .line 2272
    .local v55, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v40, 0x0

    .restart local v40    # "iu":I
    :goto_11
    invoke-virtual/range {v55 .. v55}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v40

    if-ge v0, v4, :cond_2c

    .line 2273
    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v53

    .line 2274
    .restart local v53    # "uid":I
    add-int/lit8 v43, v43, 0x1

    .line 2275
    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2276
    .restart local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    if-nez v4, :cond_25

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_25

    .line 2277
    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-nez v4, :cond_25

    .line 2272
    :cond_24
    :goto_12
    add-int/lit8 v40, v40, 0x1

    goto :goto_11

    .line 2280
    :cond_25
    iget-boolean v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_24

    .line 2283
    if-eqz p2, :cond_26

    move-object/from16 v0, p2

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2287
    :cond_26
    :goto_13
    add-int/lit8 v42, v42, 0x1

    .line 2288
    if-eqz v52, :cond_27

    .line 2289
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2291
    :cond_27
    const/16 v52, 0x1

    .line 2292
    if-nez v48, :cond_28

    .line 2293
    const-string/jumbo v4, "Multi-Package Common Processes:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2294
    const/16 v48, 0x1

    .line 2296
    :cond_28
    if-eqz p7, :cond_29

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2300
    :cond_29
    const-string/jumbo v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2301
    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2302
    const-string/jumbo v4, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2303
    const-string/jumbo v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    const-string/jumbo v27, "        "

    sget-object v29, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v30, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 2305
    sget-object v31, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v26, p1

    move-object/from16 v28, v6

    move-wide/from16 v32, p3

    .line 2304
    invoke-static/range {v26 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 2306
    const-string/jumbo v11, "        "

    sget-object v13, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v14, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 2307
    sget-object v15, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v10, p1

    move-object v12, v6

    .line 2306
    invoke-static/range {v10 .. v15}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 2308
    const-string/jumbo v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_12

    .line 2284
    :cond_2a
    iget-object v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto/16 :goto_13

    .line 2297
    :cond_2b
    const-string/jumbo v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2269
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v53    # "uid":I
    :cond_2c
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_10

    .line 2311
    .end local v40    # "iu":I
    .end local v51    # "procName":Ljava/lang/String;
    .end local v55    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_2d
    if-eqz p6, :cond_2e

    .line 2312
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2313
    const-string/jumbo v4, "  Total procs: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2314
    const-string/jumbo v4, " shown of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
    :cond_2e
    if-eqz v52, :cond_2f

    .line 2318
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2320
    :cond_2f
    if-eqz p5, :cond_31

    .line 2321
    const-string/jumbo v4, "Summary:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v27, p2

    move-wide/from16 v28, p3

    move/from16 v30, p7

    .line 2322
    invoke-virtual/range {v25 .. v30}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 2327
    :goto_14
    if-eqz p6, :cond_30

    .line 2328
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2329
    const-string/jumbo v4, "Internal state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2330
    const-string/jumbo v4, "  Num long arrays: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2331
    const-string/jumbo v4, "  Next long entry: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2332
    const-string/jumbo v4, "  mRunning="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2133
    :cond_30
    return-void

    .line 2324
    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    goto :goto_14
.end method

.method dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "prefixInner"    # Ljava/lang/String;
    .param p4, "headerPrefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/String;
    .param p6, "service"    # Lcom/android/internal/app/ProcessStats$ServiceState;
    .param p7, "count"    # I
    .param p8, "serviceType"    # I
    .param p9, "state"    # I
    .param p10, "startTime"    # J
    .param p12, "now"    # J
    .param p14, "totalTime"    # J
    .param p16, "dumpAll"    # Z

    .prologue
    .line 2378
    if-eqz p7, :cond_0

    .line 2379
    if-eqz p16, :cond_1

    .line 2380
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2381
    const-string/jumbo v2, " op count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    .line 2382
    invoke-static/range {v3 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    .line 2377
    :cond_0
    :goto_0
    return-void

    .line 2385
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    move-wide/from16 v8, p10

    move-wide/from16 v10, p12

    invoke-static/range {v3 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    move-result-wide v12

    .line 2387
    .local v12, "myTime":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2388
    const-string/jumbo v2, " count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2389
    const-string/jumbo v2, " / time "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2390
    long-to-double v2, v12

    move-wide/from16 v0, p14

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->printPercent(Ljava/io/PrintWriter;D)V

    .line 2391
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "reqPackage"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "activeOnly"    # Z

    .prologue
    .line 2397
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 2398
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 2397
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    .line 2399
    .local v14, "totalTime":J
    const-string/jumbo v7, "  "

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 2400
    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 2399
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v12, p3

    move-object/from16 v16, p2

    move/from16 v17, p5

    invoke-virtual/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 2401
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 2396
    return-void
.end method

.method dumpSysMemUsage(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I

    .prologue
    .line 961
    const/4 v15, -0x1

    .line 962
    .local v15, "printedScreen":I
    const/4 v12, 0x0

    .local v12, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v12, v2, :cond_6

    .line 963
    const/4 v14, -0x1

    .line 964
    .local v14, "printedMem":I
    const/4 v10, 0x0

    .local v10, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v10, v2, :cond_5

    .line 965
    aget v13, p3, v12

    .line 966
    .local v13, "iscreen":I
    aget v11, p4, v10

    .line 967
    .local v11, "imem":I
    add-int v2, v13, v11

    mul-int/lit8 v6, v2, 0xe

    .line 968
    .local v6, "bucket":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    move-result-wide v8

    .line 969
    .local v8, "count":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_2

    .line 970
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, p3

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 972
    if-eq v15, v13, :cond_3

    move v2, v13

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 974
    move v15, v13

    .line 976
    :cond_0
    move-object/from16 v0, p4

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 977
    if-eq v14, v11, :cond_4

    move v2, v11

    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 978
    move v14, v11

    .line 980
    :cond_1
    const-string/jumbo v2, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 982
    const-string/jumbo v2, " samples:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const-string/jumbo v5, "  Cached"

    .line 984
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 983
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 985
    const-string/jumbo v5, "  Free"

    .line 986
    const/4 v7, 0x4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 985
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 987
    const-string/jumbo v5, "  ZRam"

    .line 988
    const/4 v7, 0x7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 987
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 989
    const-string/jumbo v5, "  Kernel"

    .line 990
    const/16 v7, 0xa

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 989
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 991
    const-string/jumbo v5, "  Native"

    .line 992
    const/16 v7, 0xd

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 991
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 964
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 973
    :cond_3
    const/4 v2, -0x1

    goto :goto_2

    .line 977
    :cond_4
    const/4 v2, -0x1

    goto :goto_3

    .line 962
    .end local v6    # "bucket":I
    .end local v8    # "count":J
    .end local v11    # "imem":I
    .end local v13    # "iscreen":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 960
    .end local v10    # "im":I
    .end local v14    # "printedMem":I
    :cond_6
    return-void
.end method

.method dumpSysMemUsageCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "bucket"    # I
    .param p5, "index"    # I

    .prologue
    const-wide/16 v2, 0x400

    .line 949
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    const-string/jumbo v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 952
    const-string/jumbo v0, " min, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 954
    const-string/jumbo v0, " avg, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    add-int/lit8 v0, p5, 0x2

    invoke-virtual {p0, p4, v0}, Lcom/android/internal/app/ProcessStats;->getSysMemUsageValue(II)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 956
    const-string/jumbo v0, " max"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .prologue
    .line 2423
    const-string/jumbo v4, "Run time Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2424
    const-string/jumbo v5, "  "

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 2425
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2426
    const-string/jumbo v4, "Memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2427
    new-instance v17, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 2428
    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 2427
    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 2429
    .local v17, "totalMem":Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 2430
    const-wide/16 v12, 0x0

    .line 2431
    .local v12, "totalPss":J
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Kernel "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    .line 2432
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 2431
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2433
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Native "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    .line 2434
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 2433
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2435
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v4, 0xe

    if-ge v15, v4, :cond_1

    .line 2437
    const/4 v4, 0x7

    if-eq v15, v4, :cond_0

    .line 2438
    const-string/jumbo v6, "  "

    sget-object v4, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v4, v15

    .line 2439
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v4, v15

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 2440
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v14, v4, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 2438
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2435
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2443
    :cond_1
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Cached "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    .line 2444
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 2443
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2445
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Free   "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    .line 2446
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 2445
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2447
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Z-Ram  "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    .line 2448
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 2447
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    .line 2449
    const-string/jumbo v4, "  TOTAL  : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2450
    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2451
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2452
    const-string/jumbo v6, "  "

    sget-object v4, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v7, v4, v5

    .line 2453
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    const/4 v5, 0x7

    aget-wide v8, v4, v5

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    .line 2454
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    const/4 v5, 0x7

    aget v14, v4, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 2452
    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    .line 2455
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2456
    const-string/jumbo v4, "          Start time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2457
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v4, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2458
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2459
    const-string/jumbo v4, "  Total elapsed time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2461
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v4, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2462
    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 2461
    sub-long/2addr v4, v6

    .line 2460
    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2463
    const/16 v16, 0x1

    .line 2464
    .local v16, "partial":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 2465
    const-string/jumbo v4, " (shutdown)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2466
    const/16 v16, 0x0

    .line 2468
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 2469
    const-string/jumbo v4, " (sysprops)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2470
    const/16 v16, 0x0

    .line 2472
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 2473
    const-string/jumbo v4, " (complete)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2474
    const/16 v16, 0x0

    .line 2476
    :cond_4
    if-eqz v16, :cond_5

    .line 2477
    const-string/jumbo v4, " (partial)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    :cond_5
    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 2480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2481
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2422
    return-void

    .line 2461
    .end local v16    # "partial":Z
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto :goto_1
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 4
    .param p1, "update"    # Z

    .prologue
    .line 1386
    const/4 v0, 0x0

    .line 1387
    .local v0, "changed":Z
    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    .line 1388
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v3

    .line 1387
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, "runtime":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1390
    const/4 v0, 0x1

    .line 1391
    if-eqz p1, :cond_0

    .line 1392
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1395
    :cond_0
    return v0
.end method

.method getLong(II)J
    .locals 4
    .param p1, "off"    # I
    .param p2, "index"    # I

    .prologue
    .line 1977
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1978
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I

    .prologue
    .line 2001
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2002
    .local v1, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v1, :cond_0

    .line 2003
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 2004
    .restart local v1    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2006
    :cond_0
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2007
    .local v0, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v0, :cond_1

    .line 2008
    return-object v0

    .line 2010
    :cond_1
    new-instance v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .end local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 2011
    .restart local v0    # "as":Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2012
    return-object v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 2017
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v23

    .line 2018
    .local v23, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2019
    .local v4, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v4, :cond_0

    .line 2020
    return-object v4

    .line 2022
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2023
    .local v2, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v2, :cond_1

    .line 2024
    new-instance v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v2    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 2025
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v2    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2028
    :cond_1
    iget-boolean v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v3, :cond_6

    .line 2029
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 2032
    move-object v4, v2

    .line 2081
    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_0
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    return-object v4

    .line 2039
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 2044
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2047
    .local v10, "now":J
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 2048
    iget v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 2047
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v21

    .line 2049
    .local v21, "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v21, :cond_4

    .line 2050
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v20

    .line 2053
    .local v20, "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v22, v3, -0x1

    .local v22, "i":I
    :goto_1
    if-ltz v22, :cond_5

    .line 2057
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2058
    .local v24, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-ne v3, v2, :cond_3

    .line 2061
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2056
    :cond_3
    add-int/lit8 v22, v22, -0x1

    goto :goto_1

    .line 2067
    .end local v20    # "cloned":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v22    # "i":I
    .end local v24    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_4
    const-string/jumbo v3, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cloning proc state: no package state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2068
    const-string/jumbo v6, "/"

    .line 2067
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2068
    const-string/jumbo v6, " for proc "

    .line 2067
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2068
    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 2067
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :cond_5
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v5, v2

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_0

    .line 2077
    .end local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10    # "now":J
    .end local v21    # "commonPkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_6
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2078
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object v12, v4

    move-object v13, v2

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    .line 2077
    invoke-direct/range {v12 .. v19}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .restart local v4    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "vers"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    .line 2088
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v6

    .line 2089
    .local v6, "as":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2090
    .local v0, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v0, :cond_0

    .line 2092
    return-object v0

    .line 2094
    :cond_0
    if-eqz p4, :cond_1

    .line 2095
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v5

    .line 2096
    :goto_0
    new-instance v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2097
    .restart local v0    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    return-object v0

    .line 2095
    :cond_1
    const/4 v5, 0x0

    .local v5, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_0
.end method

.method getSysMemUsageValue(II)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "index"    # I

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 944
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "memWeight"    # D
    .param p6, "totalTime"    # J
    .param p8, "curTotalMem"    # J
    .param p10, "samples"    # I

    .prologue
    .line 2407
    const-wide/16 v4, 0x0

    cmpl-double v4, p4, v4

    if-eqz v4, :cond_0

    .line 2408
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, p4

    long-to-double v6, p6

    div-double/2addr v4, v6

    double-to-long v2, v4

    .line 2409
    .local v2, "mem":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2411
    const-string/jumbo v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 2413
    const-string/jumbo v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    move/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2415
    const-string/jumbo v4, " samples)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2416
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2417
    add-long v4, p8, v2

    return-wide v4

    .line 2419
    .end local v2    # "mem":J
    :cond_0
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 1680
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 1681
    .local v2, "len":[I
    invoke-static {p1, v2}, Lcom/android/internal/app/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 1682
    .local v3, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1683
    .local v1, "in":Landroid/os/Parcel;
    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1684
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1685
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1687
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    .end local v1    # "in":Landroid/os/Parcel;
    .end local v2    # "len":[I
    .end local v3    # "raw":[B
    :goto_0
    return-void

    .line 1688
    :catch_0
    move-exception v0

    .line 1689
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 36
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-gtz v13, :cond_1

    .line 1695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-lez v13, :cond_2

    const/16 v26, 0x1

    .line 1696
    .local v26, "hadData":Z
    :goto_0
    if-eqz v26, :cond_0

    .line 1697
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 1700
    :cond_0
    const-string/jumbo v13, "magic number"

    const v14, 0x50535453

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1701
    return-void

    .line 1694
    .end local v26    # "hadData":Z
    :cond_1
    const/16 v26, 0x1

    .restart local v26    # "hadData":Z
    goto :goto_0

    .line 1695
    .end local v26    # "hadData":Z
    :cond_2
    const/16 v26, 0x0

    .restart local v26    # "hadData":Z
    goto :goto_0

    .line 1703
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1704
    .local v31, "version":I
    const/16 v13, 0x12

    move/from16 v0, v31

    if-eq v0, v13, :cond_4

    .line 1705
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad version: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1706
    return-void

    .line 1708
    :cond_4
    const-string/jumbo v13, "state count"

    const/16 v14, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1709
    return-void

    .line 1711
    :cond_5
    const-string/jumbo v13, "adj count"

    const/16 v14, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1712
    return-void

    .line 1714
    :cond_6
    const-string/jumbo v13, "pss count"

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 1715
    return-void

    .line 1717
    :cond_7
    const-string/jumbo v13, "sys mem usage count"

    const/16 v14, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1718
    return-void

    .line 1720
    :cond_8
    const-string/jumbo v13, "longs size"

    const/16 v14, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 1721
    return-void

    .line 1724
    :cond_9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1726
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1727
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1728
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1729
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 1730
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    .line 1731
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 1732
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1733
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1735
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1736
    .local v19, "NLONGS":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1737
    .local v18, "NEXTLONG":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1738
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1
    add-int/lit8 v13, v19, -0x1

    move/from16 v0, v28

    if-ge v0, v13, :cond_b

    .line 1739
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, v28

    if-lt v0, v13, :cond_a

    .line 1740
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v14, 0x1000

    new-array v14, v14, [J

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1742
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    const/16 v14, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1738
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 1744
    :cond_b
    const/16 v13, 0x1000

    new-array v0, v13, [J

    move-object/from16 v29, v0

    .line 1745
    .local v29, "longs":[J
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1746
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, v29

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    array-length v14, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1751
    const-string/jumbo v13, "ProcessStats"

    const-string/jumbo v14, "sys mem usage"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    .line 1752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    sget-object v14, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    if-ne v13, v14, :cond_c

    .line 1753
    return-void

    .line 1755
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    array-length v13, v13

    :goto_3
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    .line 1757
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1758
    .local v21, "NPROC":I
    if-gez v21, :cond_e

    .line 1759
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad process count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1760
    return-void

    .line 1755
    .end local v21    # "NPROC":I
    :cond_d
    const/4 v13, 0x0

    goto :goto_3

    .line 1762
    .restart local v21    # "NPROC":I
    :cond_e
    if-lez v21, :cond_16

    .line 1763
    add-int/lit8 v21, v21, -0x1

    .line 1764
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    .line 1765
    .local v11, "procName":Ljava/lang/String;
    if-nez v11, :cond_f

    .line 1766
    const-string/jumbo v13, "bad process name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1767
    return-void

    .line 1769
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1770
    .local v24, "NUID":I
    if-gez v24, :cond_11

    .line 1771
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad uid count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1772
    return-void

    .line 1800
    .local v8, "pkgName":Ljava/lang/String;
    .local v9, "uid":I
    .local v10, "vers":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v11, v9, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1774
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    :cond_11
    if-lez v24, :cond_e

    .line 1775
    add-int/lit8 v24, v24, -0x1

    .line 1776
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1777
    .restart local v9    # "uid":I
    if-gez v9, :cond_12

    .line 1778
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1779
    return-void

    .line 1781
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1782
    .restart local v8    # "pkgName":Ljava/lang/String;
    if-nez v8, :cond_13

    .line 1783
    const-string/jumbo v13, "bad process package name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1784
    return-void

    .line 1786
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1787
    .restart local v10    # "vers":I
    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v11, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1788
    :goto_4
    if-eqz v6, :cond_15

    .line 1789
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_10

    .line 1790
    return-void

    .line 1787
    :cond_14
    const/4 v6, 0x0

    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_4

    .line 1793
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_15
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    .line 1794
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_10

    .line 1795
    return-void

    .line 1806
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    .end local v11    # "procName":Ljava/lang/String;
    .end local v24    # "NUID":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1807
    .local v20, "NPKG":I
    if-gez v20, :cond_17

    .line 1808
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad package count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1809
    return-void

    .line 1811
    :cond_17
    if-lez v20, :cond_2b

    .line 1812
    add-int/lit8 v20, v20, -0x1

    .line 1813
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1814
    .restart local v8    # "pkgName":Ljava/lang/String;
    if-nez v8, :cond_18

    .line 1815
    const-string/jumbo v13, "bad package name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1816
    return-void

    .line 1818
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1819
    .restart local v24    # "NUID":I
    if-gez v24, :cond_19

    .line 1820
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad uid count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1821
    return-void

    .line 1823
    :cond_19
    if-lez v24, :cond_17

    .line 1824
    add-int/lit8 v24, v24, -0x1

    .line 1825
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1826
    .restart local v9    # "uid":I
    if-gez v9, :cond_1a

    .line 1827
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1828
    return-void

    .line 1830
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1831
    .local v25, "NVERS":I
    if-gez v25, :cond_1b

    .line 1832
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad versions count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1833
    return-void

    .line 1835
    :cond_1b
    if-lez v25, :cond_19

    .line 1836
    add-int/lit8 v25, v25, -0x1

    .line 1837
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1838
    .restart local v10    # "vers":I
    new-instance v30, Lcom/android/internal/app/ProcessStats$PackageState;

    move-object/from16 v0, v30

    invoke-direct {v0, v8, v9}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1839
    .local v30, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/SparseArray;

    .line 1840
    .local v32, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v32, :cond_1c

    .line 1841
    new-instance v32, Landroid/util/SparseArray;

    .end local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-direct/range {v32 .. v32}, Landroid/util/SparseArray;-><init>()V

    .line 1842
    .restart local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v32

    invoke-virtual {v13, v8, v9, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1844
    :cond_1c
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1845
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1846
    .local v22, "NPROCS":I
    if-gez v22, :cond_1e

    .line 1847
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad package process count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1848
    return-void

    .line 1886
    .local v7, "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v11    # "procName":Ljava/lang/String;
    .local v27, "hasProc":I
    :cond_1d
    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    .end local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v11    # "procName":Ljava/lang/String;
    .end local v27    # "hasProc":I
    :cond_1e
    :goto_5
    if-lez v22, :cond_24

    .line 1851
    add-int/lit8 v22, v22, -0x1

    .line 1852
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    .line 1853
    .restart local v11    # "procName":Ljava/lang/String;
    if-nez v11, :cond_1f

    .line 1854
    const-string/jumbo v13, "bad package process name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1855
    return-void

    .line 1857
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1860
    .restart local v27    # "hasProc":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v11, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1863
    .restart local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v7, :cond_20

    .line 1864
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no common proc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1865
    return-void

    .line 1867
    :cond_20
    if-eqz v27, :cond_23

    .line 1872
    if-eqz v26, :cond_21

    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1873
    :goto_6
    if-eqz v6, :cond_22

    .line 1874
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_1d

    .line 1875
    return-void

    .line 1872
    :cond_21
    const/4 v6, 0x0

    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_6

    .line 1878
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_22
    new-instance v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1879
    const-wide/16 v12, 0x0

    .line 1878
    invoke-direct/range {v6 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 1880
    .local v6, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v13

    if-nez v13, :cond_1d

    .line 1881
    return-void

    .line 1890
    .end local v6    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_23
    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1893
    .end local v7    # "commonProc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v11    # "procName":Ljava/lang/String;
    .end local v27    # "hasProc":I
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1894
    .local v23, "NSRVS":I
    if-gez v23, :cond_26

    .line 1895
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bad package service count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1896
    return-void

    .line 1915
    .local v15, "serviceName":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    .end local v15    # "serviceName":Ljava/lang/String;
    :cond_26
    if-lez v23, :cond_1b

    .line 1899
    add-int/lit8 v23, v23, -0x1

    .line 1900
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1901
    .restart local v15    # "serviceName":Ljava/lang/String;
    if-nez v15, :cond_27

    .line 1902
    const-string/jumbo v13, "bad package service name"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1903
    return-void

    .line 1905
    :cond_27
    const/16 v13, 0x9

    move/from16 v0, v31

    if-le v0, v13, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    .line 1906
    :goto_7
    if-eqz v26, :cond_2a

    move-object/from16 v0, v30

    iget-object v13, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1907
    :goto_8
    if-nez v12, :cond_28

    .line 1908
    new-instance v12, Lcom/android/internal/app/ProcessStats$ServiceState;

    const/16 v17, 0x0

    move-object/from16 v13, p0

    move-object v14, v8

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 1910
    :cond_28
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/internal/app/ProcessStats$ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v13

    if-nez v13, :cond_25

    .line 1911
    return-void

    .line 1905
    :cond_29
    const/16 v16, 0x0

    .local v16, "processName":Ljava/lang/String;
    goto :goto_7

    .line 1906
    .end local v16    # "processName":Ljava/lang/String;
    :cond_2a
    const/4 v12, 0x0

    .local v12, "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    goto :goto_8

    .line 1921
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "vers":I
    .end local v12    # "serv":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v15    # "serviceName":Ljava/lang/String;
    .end local v22    # "NPROCS":I
    .end local v23    # "NSRVS":I
    .end local v24    # "NUID":I
    .end local v25    # "NVERS":I
    .end local v30    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v32    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_2b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1693
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1271
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 1272
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1273
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1274
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 1275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1269
    return-void
.end method

.method public resetSafely()V
    .locals 19

    .prologue
    .line 1281
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 1284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1285
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    .line 1286
    .local v11, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1287
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 1288
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .local v5, "iu":I
    :goto_1
    if-ltz v5, :cond_0

    .line 1289
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats$ProcessState;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    .line 1288
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1286
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1295
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 1296
    .local v7, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_2
    if-ltz v2, :cond_b

    .line 1297
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 1298
    .local v14, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .restart local v5    # "iu":I
    :goto_3
    if-ltz v5, :cond_9

    .line 1299
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;

    .line 1300
    .local v16, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    .local v6, "iv":I
    :goto_4
    if-ltz v6, :cond_7

    .line 1301
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1302
    .local v10, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    .local v3, "iproc":I
    :goto_5
    if-ltz v3, :cond_3

    .line 1303
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1304
    .local v12, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1305
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 1306
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    .line 1307
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1302
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1309
    :cond_2
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 1310
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_6

    .line 1313
    .end local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    .local v4, "isvc":I
    :goto_7
    if-ltz v4, :cond_5

    .line 1314
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1315
    .local v13, "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1316
    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetSafely(J)V

    .line 1313
    :goto_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 1318
    :cond_4
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_8

    .line 1321
    .end local v13    # "ss":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_5
    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_6

    iget-object v0, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_6

    .line 1322
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1300
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_4

    .line 1325
    .end local v3    # "iproc":I
    .end local v4    # "isvc":I
    .end local v10    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_8

    .line 1326
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1298
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3

    .line 1329
    .end local v6    # "iv":I
    .end local v16    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_9
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_a

    .line 1330
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1296
    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 1335
    .end local v5    # "iu":I
    .end local v14    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_b
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_9
    if-ltz v2, :cond_11

    .line 1336
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 1337
    .restart local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .restart local v5    # "iu":I
    :goto_a
    if-ltz v5, :cond_f

    .line 1338
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1339
    .restart local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v17

    if-nez v17, :cond_c

    iget v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    move/from16 v17, v0

    if-lez v17, :cond_e

    .line 1346
    :cond_c
    iget-boolean v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    iget-boolean v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    iget v0, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpNumInUse:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1348
    iget-object v12, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1349
    iput-object v12, v12, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1350
    invoke-virtual {v15, v5, v12}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1337
    :goto_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 1352
    :cond_d
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    goto :goto_b

    .line 1355
    :cond_e
    invoke-virtual {v12}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 1356
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_b

    .line 1359
    .end local v12    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_f
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_10

    .line 1360
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1335
    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1364
    .end local v5    # "iu":I
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_11
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1279
    return-void
.end method

.method setLong(IIJ)V
    .locals 5
    .param p1, "off"    # I
    .param p2, "index"    # I
    .param p3, "value"    # J

    .prologue
    .line 1972
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1973
    .local v0, "longs":[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 1971
    return-void
.end method

.method validateLongOffset(I)Z
    .locals 5
    .param p1, "off"    # I

    .prologue
    const/4 v4, 0x0

    .line 1950
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v0, v2, v3

    .line 1951
    .local v0, "arr":I
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1952
    return v4

    .line 1954
    :cond_0
    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v1, v2, v3

    .line 1955
    .local v1, "idx":I
    const/16 v2, 0x1000

    if-lt v1, v2, :cond_1

    .line 1956
    return v4

    .line 1960
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 1506
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .locals 32
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J
    .param p4, "flags"    # I

    .prologue
    .line 1512
    const v26, 0x50535453

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    const/16 v26, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    const/16 v26, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1515
    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    const/16 v26, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    const/16 v26, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    const/16 v26, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    new-instance v26, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    .line 1524
    .local v21, "procMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1525
    .local v5, "NPROC":I
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_0
    if-ge v12, v5, :cond_1

    .line 1526
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1527
    .local v24, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1528
    .local v8, "NUID":I
    const/4 v15, 0x0

    .local v15, "iu":I
    :goto_1
    if-ge v15, v8, :cond_0

    .line 1529
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1528
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1525
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1532
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v18

    .line 1533
    .local v18, "pkgMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1534
    .local v4, "NPKG":I
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v4, :cond_7

    .line 1535
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1536
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1537
    .restart local v8    # "NUID":I
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_3
    if-ge v15, v8, :cond_6

    .line 1538
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    .line 1539
    .local v25, "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1540
    .local v9, "NVERS":I
    const/16 v16, 0x0

    .local v16, "iv":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v9, :cond_5

    .line 1541
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1542
    .local v19, "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1543
    .local v6, "NPROCS":I
    const/4 v13, 0x0

    .local v13, "iproc":I
    :goto_5
    if-ge v13, v6, :cond_3

    .line 1544
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1545
    .local v20, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1546
    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1543
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1549
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1550
    .local v7, "NSRVS":I
    const/4 v14, 0x0

    .local v14, "isvc":I
    :goto_6
    if-ge v14, v7, :cond_4

    .line 1551
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->commitStateTime(J)V

    .line 1550
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1540
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1537
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1534
    .end local v9    # "NVERS":I
    .end local v16    # "iv":I
    .end local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 1557
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1558
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1559
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1560
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1561
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1563
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v11, v0, :cond_8

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    .line 1569
    .local v10, "array":[J
    array-length v0, v10

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v10, v2}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1567
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1571
    .end local v10    # "array":[J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [J

    .line 1572
    .local v17, "lastLongs":[J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v27, v0

    aget-wide v28, v26, v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v30, v0

    sub-long v30, p2, v30

    add-long v28, v28, v30

    aput-wide v28, v26, v27

    .line 1576
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1578
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    const/4 v11, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTableSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v11, v0, :cond_a

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mSysMemUsageTable:[I

    move-object/from16 v26, v0

    aget v26, v26, v11

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1587
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    const/4 v12, 0x0

    :goto_9
    if-ge v12, v5, :cond_c

    .line 1589
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1590
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1591
    .restart local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1592
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_a
    if-ge v15, v8, :cond_b

    .line 1594
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1595
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1596
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1597
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1593
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 1588
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1601
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    const/4 v12, 0x0

    :goto_b
    if-ge v12, v4, :cond_12

    .line 1603
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1604
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1605
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1606
    .restart local v8    # "NUID":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    const/4 v15, 0x0

    .restart local v15    # "iu":I
    :goto_c
    if-ge v15, v8, :cond_11

    .line 1608
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    .line 1610
    .restart local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1611
    .restart local v9    # "NVERS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    const/16 v16, 0x0

    .restart local v16    # "iv":I
    :goto_d
    move/from16 v0, v16

    if-ge v0, v9, :cond_10

    .line 1613
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1615
    .restart local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1616
    .restart local v6    # "NPROCS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    const/4 v13, 0x0

    .restart local v13    # "iproc":I
    :goto_e
    if-ge v13, v6, :cond_e

    .line 1618
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1619
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1620
    .restart local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1622
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    :goto_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1625
    :cond_d
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_f

    .line 1629
    .end local v20    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_e
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1630
    .restart local v7    # "NSRVS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    const/4 v14, 0x0

    .restart local v14    # "isvc":I
    :goto_10
    if-ge v14, v7, :cond_f

    .line 1632
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1633
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1634
    .local v22, "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1635
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1631
    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    .line 1612
    .end local v22    # "svc":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_d

    .line 1607
    .end local v6    # "NPROCS":I
    .end local v7    # "NSRVS":I
    .end local v13    # "iproc":I
    .end local v14    # "isvc":I
    .end local v19    # "pkgState":Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_c

    .line 1602
    .end local v9    # "NVERS":I
    .end local v16    # "iv":I
    .end local v25    # "vpkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_b

    .line 1641
    .end local v8    # "NUID":I
    .end local v15    # "iu":I
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_12
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1511
    return-void
.end method
