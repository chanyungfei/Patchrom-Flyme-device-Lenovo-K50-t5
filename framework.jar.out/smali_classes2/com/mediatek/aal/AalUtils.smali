.class public final Lcom/mediatek/aal/AalUtils;
.super Ljava/lang/Object;
.source "AalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/aal/AalUtils$AalConfig;,
        Lcom/mediatek/aal/AalUtils$AalIndex;
    }
.end annotation


# static fields
.field private static final AAL_DEFAULT_LEVEL:I = 0x80

.field private static final AAL_MAX_LEVEL:I = 0x100

.field private static final AAL_MIN_LEVEL:I = 0x0

.field public static final AAL_MODE_BALANCE:I = 0x1

.field public static final AAL_MODE_LOWPOWER:I = 0x2

.field public static final AAL_MODE_PERFORMANCE:I = 0x0

.field public static final AAL_MODE_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AalUtils"

.field private static sDebug:Z

.field private static sEnabled:Z

.field private static sInstance:Lcom/mediatek/aal/AalUtils;

.field private static sIsAalSupported:Z


# instance fields
.field private mAalMode:I

.field private mConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mediatek/aal/AalUtils$AalIndex;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

.field private mIndex:Lcom/mediatek/aal/AalUtils$AalIndex;


# direct methods
.method static synthetic -get0(Lcom/mediatek/aal/AalUtils;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/aal/AalUtils;I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    .line 60
    const-string/jumbo v1, "ro.mtk_aal_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 59
    sput-boolean v1, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    .line 61
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v0, "persist.sys.mtk_app_aal_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 61
    :cond_0
    sput-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    .line 50
    return-void
.end method

.method constructor <init>(Z)V
    .locals 8
    .param p1, "init"    # Z

    .prologue
    const/16 v7, 0xc0

    const/16 v6, 0xa0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v3, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/mediatek/aal/AalUtils$AalIndex;

    invoke-direct {v0, p0}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;)V

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils;->mIndex:Lcom/mediatek/aal/AalUtils$AalIndex;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    .line 72
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v0, :cond_1

    .line 73
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "AalUtils"

    const-string/jumbo v1, "AAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void

    .line 79
    :cond_1
    if-nez p1, :cond_2

    .line 80
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 90
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.launcher3"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 92
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.rovio.angrybirds"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 94
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.vectorunit.yellow"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 96
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "nl.dotsightsoftware.pacificfighter.release"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 100
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.launcher3"

    invoke-direct {v1, p0, v3, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 102
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.rovio.angrybirds"

    invoke-direct {v1, p0, v3, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 104
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.vectorunit.yellow"

    invoke-direct {v1, p0, v3, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 106
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "nl.dotsightsoftware.pacificfighter.release"

    invoke-direct {v1, p0, v3, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 110
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.launcher3"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 112
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.rovio.angrybirds"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 114
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.vectorunit.yellow"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 116
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "nl.dotsightsoftware.pacificfighter.release"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private ensureBacklightLevel(I)I
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 403
    if-gez p1, :cond_1

    .line 404
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 405
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid AAL backlight level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    return v3

    .line 408
    :cond_1
    if-le p1, v4, :cond_3

    .line 409
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_2

    .line 410
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid AAL backlight level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2
    return v4

    .line 415
    :cond_3
    return p1
.end method

.method private getAalConfig(Lcom/mediatek/aal/AalUtils$AalIndex;)Lcom/mediatek/aal/AalUtils$AalConfig;
    .locals 4
    .param p1, "index"    # Lcom/mediatek/aal/AalUtils$AalIndex;

    .prologue
    .line 419
    const/16 v0, 0x80

    .line 420
    .local v0, "level":I
    iget-object v1, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 427
    :cond_0
    :goto_0
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalConfig;

    invoke-virtual {p1}, Lcom/mediatek/aal/AalUtils$AalIndex;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/mediatek/aal/AalUtils$AalConfig;-><init>(Lcom/mediatek/aal/AalUtils;Ljava/lang/String;I)V

    return-object v1

    .line 423
    :cond_1
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 424
    const-string/jumbo v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No config for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/aal/AalUtils;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/aal/AalUtils;->getInstance(Z)Lcom/mediatek/aal/AalUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Lcom/mediatek/aal/AalUtils;
    .locals 1
    .param p0, "init"    # Z

    .prologue
    .line 196
    sget-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/mediatek/aal/AalUtils;

    invoke-direct {v0, p0}, Lcom/mediatek/aal/AalUtils;-><init>(Z)V

    sput-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    .line 199
    :cond_0
    sget-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    return-object v0
.end method

.method public static isSupported()Z
    .locals 3

    .prologue
    .line 130
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 131
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    return v0
.end method

.method private modeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 573
    packed-switch p1, :pswitch_data_0

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 575
    :pswitch_0
    const-string/jumbo v0, "AAL_MODE_PERFORMANCE"

    return-object v0

    .line 577
    :pswitch_1
    const-string/jumbo v0, "AAL_MODE_BALANCE"

    return-object v0

    .line 579
    :pswitch_2
    const-string/jumbo v0, "AAL_MODE_LOWPOWER"

    return-object v0

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private native setSmartBacklightStrength(I)V
.end method


# virtual methods
.method public declared-synchronized dumpDebugUsageInternal()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    .line 476
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\nUsage:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string/jumbo v1, "1. App-based AAL help:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string/jumbo v1, "    adb shell dumpsys activity aal\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string/jumbo v1, "2. Dump App-based AAL settings:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string/jumbo v1, "    adb shell dumpsys activity aal dump\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string/jumbo v1, "1. App-based AAL debug on:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string/jumbo v1, "    adb shell dumpsys activity aal debugon\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string/jumbo v1, "1. App-based AAL debug off:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string/jumbo v1, "    adb shell dumpsys activity aal debugoff\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string/jumbo v1, "3. Enable App-based AAL:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string/jumbo v1, "    adb shell dumpsys activity aal on\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string/jumbo v1, "4. Disable App-based AAL:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string/jumbo v1, "    adb shell dumpsys activity aal off\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string/jumbo v1, "5. Set App-based AAL mode:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string/jumbo v1, "    adb shell dumpsys activity aal mode <mode>\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string/jumbo v1, "6. Set App-based AAL config for current mode:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v1, "    adb shell dumpsys activity aal set <pacakge> <value>\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string/jumbo v1, "7. Set App-based AAL config for the mode:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string/jumbo v1, "    adb shell dumpsys activity aal set <pacakge> <value> <mode>\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpInternal()Ljava/lang/String;
    .locals 8

    .prologue
    monitor-enter p0

    .line 449
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\nApp-based AAL Mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-direct {p0, v6}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    const-string/jumbo v6, "), Supported: "

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    sget-boolean v6, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    const-string/jumbo v6, ", Enabled: "

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    sget-boolean v6, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 452
    const-string/jumbo v6, ", Debug: "

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 452
    sget-boolean v6, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 452
    const-string/jumbo v6, "\n"

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const/4 v0, 0x1

    .line 455
    .local v0, "i":I
    iget-object v5, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "index$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    .line 456
    .local v1, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    iget-object v5, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "level":Ljava/lang/String;
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v1    # "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    .end local v3    # "level":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 461
    const-string/jumbo v5, "\nThere is no App-based AAL configuration.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0}, Lcom/mediatek/aal/AalUtils;->dumpDebugUsageInternal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_1
    sget-boolean v5, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v5, :cond_2

    .line 465
    const-string/jumbo v5, "AalUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dump config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .end local v0    # "i":I
    .end local v2    # "index$iterator":Ljava/util/Iterator;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setAalMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 152
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v1, :cond_1

    .line 153
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 154
    const-string/jumbo v1, "AalUtils"

    const-string/jumbo v2, "AAL is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    return-void

    .line 159
    :cond_1
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_2

    .line 160
    const-string/jumbo v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAalMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 164
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->setAalMode(I)V

    .line 151
    return-void
.end method

.method public declared-synchronized setAalModeInternal(I)Ljava/lang/String;
    .locals 3
    .param p1, "mode"    # I

    .prologue
    monitor-enter p0

    .line 209
    :try_start_0
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v1, :cond_1

    .line 210
    const-string/jumbo v0, "AAL is not enabled"

    .line 211
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 212
    const-string/jumbo v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 214
    return-object v0

    .line 217
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 218
    .local v0, "msg":Ljava/lang/String;
    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    .line 219
    :try_start_1
    iput p1, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAalModeInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-direct {p0, v2}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 226
    return-object v0

    .line 222
    .local v0, "msg":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDebugInternal(Z)Ljava/lang/String;
    .locals 3
    .param p1, "debug"    # Z

    .prologue
    monitor-enter p0

    .line 260
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sput-boolean p1, Lcom/mediatek/aal/AalUtils;->sDebug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 263
    return-object v0

    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDefaultSmartBacklightInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x80

    monitor-enter p0

    .line 385
    :try_start_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_1

    .line 386
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 387
    const-string/jumbo v0, "AalUtils"

    const-string/jumbo v1, "AAL is not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 389
    return-void

    .line 392
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iget v0, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    if-eq v0, v1, :cond_2

    .line 393
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartBacklightStrength(128) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    const/16 v1, 0x80

    iput v1, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    .line 395
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mPackageName:Ljava/lang/String;

    .line 396
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightStrength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 384
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 174
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v1, :cond_1

    .line 175
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 176
    const-string/jumbo v1, "AalUtils"

    const-string/jumbo v2, "AAL is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    return-void

    .line 181
    :cond_1
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_2

    .line 182
    const-string/jumbo v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 186
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->setAalEnabled(Z)V

    .line 173
    return-void
.end method

.method public declared-synchronized setEnabledInternal(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    monitor-enter p0

    .line 235
    :try_start_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v0, :cond_1

    .line 236
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 237
    const-string/jumbo v0, "AalUtils"

    const-string/jumbo v1, "AAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 239
    return-void

    .line 242
    :cond_1
    :try_start_1
    sput-boolean p1, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    .line 243
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_2

    .line 244
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/mediatek/aal/AalUtils;->setDefaultSmartBacklightInternal(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v0, "persist.sys.mtk_app_aal_support"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabledInternal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 234
    return-void

    .line 247
    :cond_2
    :try_start_2
    const-string/jumbo v0, "persist.sys.mtk_app_aal_support"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmartBacklightInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 324
    :try_start_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_1

    .line 325
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 326
    const-string/jumbo v0, "AalUtils"

    const-string/jumbo v1, "AAL is not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 328
    return-void

    .line 331
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightInternal(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 323
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmartBacklightInternal(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    monitor-enter p0

    .line 341
    :try_start_0
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v3, :cond_1

    .line 342
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_0

    .line 343
    const-string/jumbo v3, "AalUtils"

    const-string/jumbo v4, "AAL is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 345
    return-void

    .line 348
    :cond_1
    if-ltz p2, :cond_2

    const/4 v3, 0x3

    if-lt p2, v3, :cond_4

    .line 349
    :cond_2
    :try_start_1
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_3

    .line 350
    const-string/jumbo v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 352
    return-void

    .line 355
    :cond_4
    :try_start_2
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    invoke-direct {v1, p0, p2, p1}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    .line 356
    .local v1, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    if-nez v3, :cond_6

    .line 357
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_5

    .line 358
    const-string/jumbo v3, "AalUtils"

    const-string/jumbo v4, "mCurrentConfig == null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_5
    new-instance v3, Lcom/mediatek/aal/AalUtils$AalConfig;

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-direct {v3, p0, v4, v5}, Lcom/mediatek/aal/AalUtils$AalConfig;-><init>(Lcom/mediatek/aal/AalUtils;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    .line 364
    :cond_6
    invoke-direct {p0, v1}, Lcom/mediatek/aal/AalUtils;->getAalConfig(Lcom/mediatek/aal/AalUtils$AalIndex;)Lcom/mediatek/aal/AalUtils$AalConfig;

    move-result-object v0

    .line 365
    .local v0, "config":Lcom/mediatek/aal/AalUtils$AalConfig;
    iget v3, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    invoke-direct {p0, v3}, Lcom/mediatek/aal/AalUtils;->ensureBacklightLevel(I)I

    move-result v2

    .line 366
    .local v2, "validLevel":I
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_7

    .line 367
    const-string/jumbo v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSmartBacklight current level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iget v5, v5, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 368
    const-string/jumbo v5, " for "

    .line 367
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_7
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iget v3, v3, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    if-eq v3, v2, :cond_8

    .line 372
    const-string/jumbo v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSmartBacklightStrength("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iput v2, v3, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    .line 374
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iput-object p1, v3, Lcom/mediatek/aal/AalUtils$AalConfig;->mPackageName:Ljava/lang/String;

    .line 375
    invoke-direct {p0, v2}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightStrength(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit p0

    .line 340
    return-void

    .end local v0    # "config":Lcom/mediatek/aal/AalUtils$AalConfig;
    .end local v1    # "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    .end local v2    # "validLevel":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setSmartBacklightTableInternal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    monitor-enter p0

    .line 274
    :try_start_0
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v1, :cond_1

    .line 275
    const-string/jumbo v0, "AAL is not enabled"

    .line 276
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 277
    const-string/jumbo v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 279
    return-object v0

    .line 282
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightTableInternal(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSmartBacklightTableInternal(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mode"    # I

    .prologue
    monitor-enter p0

    .line 294
    :try_start_0
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v2, :cond_1

    .line 295
    const-string/jumbo v1, "AAL is not enabled"

    .line 296
    .local v1, "msg":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_0

    .line 297
    const-string/jumbo v2, "AalUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 299
    return-object v1

    .line 302
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    if-ltz p3, :cond_2

    const/4 v2, 0x3

    if-lt p3, v2, :cond_4

    .line 303
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .restart local v1    # "msg":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_3

    .line 305
    const-string/jumbo v2, "AalUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 307
    return-object v1

    .line 310
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v0, Lcom/mediatek/aal/AalUtils$AalIndex;

    invoke-direct {v0, p0, p3, p1}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    .line 311
    .local v0, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_5

    .line 312
    const-string/jumbo v2, "AalUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSmartBacklightTable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_5
    iget-object v2, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .end local v0    # "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
