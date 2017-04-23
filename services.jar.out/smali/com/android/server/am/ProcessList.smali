.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_CACHED_APPS:I = 0x20

.field private static final MAX_EMPTY_APPS:I

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CACHED_APPS:I

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private mOomAdj:[I

.field private mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x11

    .line 147
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 151
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 155
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    rsub-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 603
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 623
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 643
    new-array v0, v1, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 663
    new-array v0, v1, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 683
    new-array v0, v1, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    .line 48
    return-void

    .line 603
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 623
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 643
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    .line 663
    :array_3
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x4e20
        0x4e20
        0x4e20
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    .line 683
    :array_4
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 14

    .prologue
    const/16 v13, 0x9

    const/4 v12, 0x7

    const/4 v11, 0x0

    const/4 v10, 0x6

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-array v5, v10, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 186
    new-array v5, v10, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 203
    new-instance v4, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 204
    .local v4, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 205
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 208
    const-string/jumbo v5, "ro.mtk_gmo_ram_optimize"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    const-wide/16 v2, 0x100

    .line 211
    .local v2, "LOW_LEVEL_SIZE":J
    const-wide/16 v0, 0x200

    .line 213
    .local v0, "HIGH_LEVEL_SIZE":J
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v8, 0x100

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 214
    new-array v5, v13, [I

    fill-array-data v5, :array_2

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 225
    new-array v5, v13, [I

    fill-array-data v5, :array_3

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 303
    .end local v0    # "HIGH_LEVEL_SIZE":J
    .end local v2    # "LOW_LEVEL_SIZE":J
    :goto_0
    invoke-direct {p0, v11, v11, v11}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 202
    return-void

    .line 236
    .restart local v0    # "HIGH_LEVEL_SIZE":J
    .restart local v2    # "LOW_LEVEL_SIZE":J
    :cond_0
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v8, 0x200

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 237
    const-string/jumbo v5, "ro.build.product"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "k80tlc_gmo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    new-array v5, v12, [I

    fill-array-data v5, :array_4

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 247
    new-array v5, v12, [I

    fill-array-data v5, :array_5

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    goto :goto_0

    .line 257
    :cond_1
    new-array v5, v10, [I

    fill-array-data v5, :array_6

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 265
    new-array v5, v10, [I

    fill-array-data v5, :array_7

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    goto :goto_0

    .line 275
    :cond_2
    new-array v5, v10, [I

    fill-array-data v5, :array_8

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 283
    new-array v5, v10, [I

    fill-array-data v5, :array_9

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    goto :goto_0

    .line 296
    .end local v0    # "HIGH_LEVEL_SIZE":J
    .end local v2    # "LOW_LEVEL_SIZE":J
    :cond_3
    new-array v5, v10, [I

    fill-array-data v5, :array_a

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 301
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    goto :goto_0

    .line 180
    :array_0
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    .line 186
    :array_1
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data

    .line 214
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x6
        0x8
        0x9
        0xc
        0xf
    .end array-data

    .line 225
    :array_3
    .array-data 4
        0x1000
        0x3000
        0x5000
        0x6000
        0x7000
        0x8000
        0x9000
        0xa000
        0xc000
    .end array-data

    .line 238
    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x7
        0x9
        0xf
    .end array-data

    .line 247
    :array_5
    .array-data 4
        0x6000
        0x7c00
        0x9800
        0xc000
        0x1e000
        0x25800
        0x28000
    .end array-data

    .line 257
    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 265
    :array_7
    .array-data 4
        0x6000
        0x7c00
        0x9800
        0xc000
        0x14000
        0x19000
    .end array-data

    .line 275
    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 283
    :array_9
    .array-data 4
        0x9000
        0xc000
        0xf000
        0x12000
        0x32000
        0x48800
    .end array-data

    .line 296
    :array_a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 541
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 542
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 543
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 540
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 435
    if-ne p2, p3, :cond_1

    .line 436
    if-nez p1, :cond_0

    return-object p0

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 439
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 431
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(IZZZJ)J
    .locals 4
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .prologue
    .line 714
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 715
    const/16 p0, 0x10

    .line 716
    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[computeNextPssTime] Unintialized procState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 720
    :cond_0
    if-eqz p2, :cond_2

    .line 721
    if-eqz p1, :cond_1

    .line 722
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 727
    .local v0, "table":[J
    :goto_0
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    return-wide v2

    .line 723
    .end local v0    # "table":[J
    :cond_1
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    .restart local v0    # "table":[J
    goto :goto_0

    .line 724
    .end local v0    # "table":[J
    :cond_2
    if-eqz p1, :cond_3

    .line 725
    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .restart local v0    # "table":[J
    goto :goto_0

    .line 726
    .end local v0    # "table":[J
    :cond_3
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .restart local v0    # "table":[J
    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0xb

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 443
    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    .line 444
    const-string/jumbo v0, "cch"

    const-string/jumbo v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 445
    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    .line 446
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 447
    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    .line 448
    const-string/jumbo v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 449
    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    .line 450
    const-string/jumbo v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 451
    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    .line 452
    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 453
    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    .line 454
    const-string/jumbo v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 455
    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    .line 456
    const-string/jumbo v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 457
    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    .line 458
    const-string/jumbo v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 459
    :cond_7
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    .line 460
    const-string/jumbo v0, "vis  "

    const/4 v1, 0x1

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 461
    :cond_8
    if-ltz p0, :cond_9

    .line 462
    const-string/jumbo v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :cond_9
    if-lt p0, v5, :cond_a

    .line 464
    const-string/jumbo v0, "psvc "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 465
    :cond_a
    if-lt p0, v4, :cond_b

    .line 466
    const-string/jumbo v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 467
    :cond_b
    if-lt p0, v3, :cond_c

    .line 468
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 469
    :cond_c
    if-lt p0, v1, :cond_d

    .line 470
    const-string/jumbo v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 472
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    .line 478
    packed-switch p0, :pswitch_data_0

    .line 534
    const-string/jumbo v0, "??"

    .line 537
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 480
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "N "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 483
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "P "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 486
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "PU"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 489
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "T "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 492
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "SB"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 495
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SF"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 498
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "TS"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 501
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "IF"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 504
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "IB"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 507
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "BU"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 510
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "HW"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 513
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "S "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 516
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "R "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 519
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "HO"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 522
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "LA"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 525
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "CA"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 528
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "Ca"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 531
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "CE"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .prologue
    .line 708
    if-eqz p0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/16 v0, 0x3a98

    goto :goto_0
.end method

.method private static openLmkdSocket()Z
    .locals 5

    .prologue
    .line 786
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 787
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 788
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "lmkd"

    .line 789
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 788
    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 787
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 790
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    const/4 v1, 0x1

    return v1

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 794
    const/4 v1, 0x0

    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 704
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 778
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 779
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 780
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 781
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 777
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 10
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    const/16 v1, 0x10

    .line 757
    if-ne p2, v1, :cond_0

    .line 758
    return-void

    .line 760
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 761
    .local v4, "start":J
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 762
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 763
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 764
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 765
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 766
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 767
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 768
    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    .line 769
    const-string/jumbo v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 770
    const-string/jumbo v7, " = "

    .line 769
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_1
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 22
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 319
    const-string/jumbo v17, "ro.mtk_gmo_ram_optimize"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 321
    const/16 v17, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v18

    const-wide/16 v20, 0x400

    div-long v18, v18, v20

    const-wide/16 v20, 0x3

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 322
    const-string/jumbo v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mCachedRestoreLevel = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-eqz p3, :cond_1

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 326
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 327
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x1000

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 327
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 331
    :cond_0
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 333
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "i":I
    :cond_1
    return-void

    .line 339
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x15e

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x43af0000    # 350.0f

    div-float v16, v17, v18

    .line 344
    .local v16, "scaleMem":F
    mul-int v17, p1, p2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x48bb8000    # 384000.0f

    sub-float v17, v17, v18

    const v18, 0x9c400

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v15, v17, v18

    .line 351
    .local v15, "scaleDisp":F
    cmpl-float v17, v16, v15

    if-lez v17, :cond_5

    move/from16 v14, v16

    .line 352
    .local v14, "scale":F
    :goto_1
    const/16 v17, 0x0

    cmpg-float v17, v14, v17

    if-gez v17, :cond_6

    const/4 v14, 0x0

    .line 354
    :cond_3
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    .line 355
    const v18, 0x10e0009

    .line 354
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 356
    .local v10, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    .line 357
    const v18, 0x10e0008

    .line 356
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 362
    .local v9, "minfree_abs":I
    sget-object v17, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_7

    const/4 v7, 0x1

    .line 364
    .local v7, "is64bit":Z
    :goto_3
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_9

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v17, v0

    aget v8, v17, v6

    .line 366
    .local v8, "low":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v17, v0

    aget v5, v17, v6

    .line 367
    .local v5, "high":I
    if-eqz v7, :cond_4

    .line 369
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v6, v0, :cond_8

    mul-int/lit8 v17, v5, 0x3

    div-int/lit8 v5, v17, 0x2

    .line 372
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    int-to-float v0, v8

    move/from16 v18, v0

    sub-int v19, v5, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    aput v18, v17, v6

    .line 364
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 351
    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v7    # "is64bit":Z
    .end local v8    # "low":I
    .end local v9    # "minfree_abs":I
    .end local v10    # "minfree_adj":I
    .end local v14    # "scale":F
    :cond_5
    move v14, v15

    .restart local v14    # "scale":F
    goto :goto_1

    .line 353
    :cond_6
    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v17, v14, v17

    if-lez v17, :cond_3

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_2

    .line 362
    .restart local v9    # "minfree_abs":I
    .restart local v10    # "minfree_adj":I
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "is64bit":Z
    goto :goto_3

    .line 370
    .restart local v5    # "high":I
    .restart local v6    # "i":I
    .restart local v8    # "low":I
    :cond_8
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v6, v0, :cond_4

    mul-int/lit8 v17, v5, 0x7

    div-int/lit8 v5, v17, 0x4

    goto :goto_5

    .line 375
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_9
    if-ltz v9, :cond_a

    .line 376
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_a

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 377
    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    aput v18, v17, v6

    .line 376
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 382
    :cond_a
    if-eqz v10, :cond_c

    .line 383
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_c

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    aget v18, v17, v6

    int-to-float v0, v10

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v20, v0

    aget v20, v20, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 384
    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    aput v18, v17, v6

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    if-gez v17, :cond_b

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v18, v17, v6

    .line 383
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 395
    :cond_c
    const/16 v17, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v18

    const-wide/16 v20, 0x400

    div-long v18, v18, v20

    const-wide/16 v20, 0x3

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 396
    const-string/jumbo v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mCachedRestoreLevel="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    mul-int v17, p1, p2

    mul-int/lit8 v17, v17, 0x4

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    div-int/lit16 v11, v0, 0x400

    .line 401
    .local v11, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 402
    .local v13, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e000a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 404
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_d

    .line 405
    move v11, v12

    .line 408
    :cond_d
    if-eqz v13, :cond_e

    .line 409
    add-int/2addr v11, v13

    .line 410
    if-gez v11, :cond_e

    .line 411
    const/4 v11, 0x0

    .line 415
    :cond_e
    if-eqz p3, :cond_10

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 417
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 418
    const/4 v6, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_f

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x400

    move/from16 v17, v0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x1000

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v17, v0

    aget v17, v17, v6

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 418
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 423
    :cond_f
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 424
    const-string/jumbo v17, "sys.sysctl.extra_free_kbytes"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_10
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v8, 0x0

    .line 802
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 803
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_0

    .line 804
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v4

    if-nez v4, :cond_0

    .line 806
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    :catch_0
    move-exception v3

    .local v3, "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 814
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 815
    return-void

    .line 816
    :catch_1
    move-exception v0

    .line 817
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "ActivityManager"

    const-string/jumbo v5, "Error writing to lowmemorykiller socket"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :try_start_2
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 824
    :goto_2
    sput-object v8, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_1

    .line 800
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    return-void

    .line 821
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .local v1, "ex2":Ljava/io/IOException;
    goto :goto_2
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 308
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 309
    .local v0, "p":Landroid/graphics/Point;
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 310
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 311
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 312
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 306
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    .line 744
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 4
    .param p1, "adjustment"    # I

    .prologue
    .line 731
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 732
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    return-wide v2

    .line 731
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    return-wide v2
.end method

.method swapMoreMemory(Lcom/android/server/wm/WindowManagerService;)V
    .locals 14
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const-wide/16 v12, 0x400

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 834
    if-nez p1, :cond_0

    return-void

    .line 835
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 836
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 837
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 838
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 839
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    :cond_1
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 842
    const/4 v3, 0x0

    .local v3, "loop":I
    :goto_1
    if-ge v3, v11, :cond_2

    .line 843
    const-string/jumbo v5, "sys.sysctl.extra_free_kbytes"

    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    mul-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-wide/16 v6, 0x5dc

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_2
    const-string/jumbo v5, "sys.sysctl.extra_free_kbytes"

    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    mul-long/2addr v6, v12

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 846
    :catch_0
    move-exception v2

    .line 847
    .local v2, "ie":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "ActivityManager"

    const-string/jumbo v6, "swapMoreMemory interrupted exception"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 852
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 853
    .restart local v2    # "ie":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "ActivityManager"

    const-string/jumbo v6, "swapMoreMemory interrupted exception"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 856
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_2
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 857
    .local v4, "p":Landroid/graphics/Point;
    invoke-virtual {p1, v10, v4}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 858
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-eqz v5, :cond_3

    iget v5, v4, Landroid/graphics/Point;->y:I

    if-eqz v5, :cond_3

    .line 859
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 833
    :cond_3
    return-void
.end method
