.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$NewPermissionInfo;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$PackageParserException;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final IsForceHardwareAccelerated:Z = false

.field private static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field private static final MTK_DEFAULT_SW_RENDER:Ljava/lang/String; = "ro.default_software_render"

.field private static final MTK_GMO_ROM_OPTIMIZE:Ljava/lang/String; = "ro.mtk_gmo_rom_optimize"

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = 0x2

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x100

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x20

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_OPERATOR:I = 0x400

.field public static final PARSE_IS_PRIVILEGED:I = 0x80

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_TRUSTED_OVERLAY:I = 0x200

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static sCompatibilityModeEnabled:Z

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .prologue
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    new-array v0, v7, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 171
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 173
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 169
    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 183
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 188
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 189
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v3, v5

    .line 190
    const/16 v4, 0x2711

    .line 188
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 191
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    .line 192
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_CALL_LOG"

    aput-object v4, v3, v5

    .line 191
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 194
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    .line 195
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.WRITE_CALL_LOG"

    aput-object v4, v3, v5

    .line 194
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v7

    .line 182
    sput-object v0, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 210
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    .line 217
    sput-boolean v6, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 639
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$SplitNameComparator;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    .line 5595
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 373
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 374
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 372
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 2061
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2062
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Empty class name in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    .line 2063
    return-object v6

    .line 2065
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2066
    .local v2, "cls":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2067
    .local v1, "c":C
    if-ne v1, v4, :cond_2

    .line 2068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2070
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2072
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2073
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2076
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v3, 0x61

    if-lt v1, v3, :cond_4

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_4

    .line 2077
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2079
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    .line 2080
    return-object v6
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2085
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2086
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2087
    .local v0, "c":C
    if-eqz p0, :cond_2

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_2

    .line 2088
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 2089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2090
    const-string/jumbo v5, ": must be at least two characters"

    .line 2089
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    .line 2091
    return-object v7

    .line 2093
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2094
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3, v6, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2095
    .local v1, "nameError":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2096
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2097
    const-string/jumbo v5, ": "

    .line 2096
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    .line 2098
    return-object v7

    .line 2100
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2102
    .end local v1    # "nameError":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v8, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2103
    .restart local v1    # "nameError":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v4, "system"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2108
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2104
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2105
    const-string/jumbo v5, ": "

    .line 2104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    .line 2106
    return-object v7
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .prologue
    .line 2114
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_0

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2117
    :cond_0
    if-eqz p4, :cond_5

    .line 2118
    array-length v2, p4

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 2119
    aget-object v1, p4, v0

    .line 2120
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2121
    :cond_1
    return-object p0

    .line 2115
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .end local p1    # "defProc":Ljava/lang/String;
    :goto_1
    return-object p1

    .restart local p1    # "defProc":Ljava/lang/String;
    :cond_3
    move-object p1, p0

    goto :goto_1

    .line 2118
    .restart local v0    # "i":I
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2125
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_7

    .line 2126
    :cond_6
    return-object p1

    .line 2128
    :cond_7
    const-string/jumbo v2, "process"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2133
    if-nez p2, :cond_0

    .line 2134
    return-object p1

    .line 2136
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2137
    return-object v1

    .line 2139
    :cond_1
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkDeviceAdmin(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 1422
    const/4 v1, 0x0

    .line 1424
    .local v1, "ret":Z
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 1425
    .local v2, "searchDepth":I
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1426
    if-ne v3, v6, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-lt v4, v2, :cond_2

    .line 1427
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1431
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v2, :cond_0

    const-string/jumbo v4, "receiver"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1432
    const-string/jumbo v4, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v5, "permission"

    invoke-interface {p1, v4, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1433
    .local v0, "permission":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1436
    const-string/jumbo v4, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1437
    const/4 v1, 0x1

    .line 1442
    .end local v0    # "permission":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 421
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_1

    .line 422
    :cond_0
    and-int/lit16 v2, p0, 0x2000

    if-eqz v2, :cond_2

    .line 421
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 422
    goto :goto_0
.end method

.method public static closeQuietly(Ljava/util/jar/StrictJarFile;)V
    .locals 1
    .param p0, "jarFile"    # Ljava/util/jar/StrictJarFile;

    .prologue
    .line 5614
    if-eqz p0, :cond_0

    .line 5616
    :try_start_0
    invoke-virtual {p0}, Ljava/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5613
    :cond_0
    :goto_0
    return-void

    .line 5617
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    .locals 17
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1098
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1100
    .local v1, "apkPath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1103
    .local v10, "jarFile":Ljava/util/jar/StrictJarFile;
    :try_start_0
    new-instance v11, Ljava/util/jar/StrictJarFile;

    invoke-direct {v11, v1}, Ljava/util/jar/StrictJarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    .end local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .local v11, "jarFile":Ljava/util/jar/StrictJarFile;
    :try_start_1
    const-string/jumbo v14, "AndroidManifest.xml"

    invoke-virtual {v11, v14}, Ljava/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v12

    .line 1108
    .local v12, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v12, :cond_0

    .line 1109
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1110
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " has no manifest"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1109
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v14, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1158
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/security/GeneralSecurityException;
    move-object v10, v11

    .line 1159
    .end local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    :goto_0
    :try_start_2
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1160
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to collect certificates from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1159
    const/16 v16, -0x69

    move/from16 v0, v16

    invoke-direct {v14, v0, v15, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1164
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catchall_0
    move-exception v14

    .line 1165
    :goto_1
    invoke-static {v10}, Landroid/content/pm/PackageParser;->closeQuietly(Ljava/util/jar/StrictJarFile;)V

    .line 1164
    throw v14

    .line 1113
    .restart local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    .local v13, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    and-int/lit8 v14, p2, 0x1

    if-nez v14, :cond_2

    .line 1118
    invoke-virtual {v11}, Ljava/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1119
    .local v9, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1120
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 1122
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1123
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "META-INF/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1124
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "AndroidManifest.xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1126
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1161
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v10, v11

    .line 1162
    .end local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    :goto_3
    :try_start_4
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1163
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Failed to collect certificates from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1162
    const/16 v16, -0x67

    move/from16 v0, v16

    invoke-direct {v14, v0, v15, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1133
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_2
    :try_start_5
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 1134
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    invoke-static {v11, v4}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 1135
    .local v6, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1136
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1137
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " has no certificates at entry "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1138
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1137
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1136
    const/16 v16, -0x67

    move/from16 v0, v16

    invoke-direct {v14, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v14

    .line 1164
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .local v10, "jarFile":Ljava/util/jar/StrictJarFile;
    goto/16 :goto_1

    .line 1140
    .end local v10    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "entry$iterator":Ljava/util/Iterator;
    .restart local v6    # "entryCerts":[[Ljava/security/cert/Certificate;
    .restart local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .restart local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_4
    invoke-static {v6}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v7

    .line 1142
    .local v7, "entrySignatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    if-nez v14, :cond_5

    .line 1143
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1144
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1145
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1146
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    array-length v14, v6

    if-ge v8, v14, :cond_3

    .line 1147
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    aget-object v15, v6, v8

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1146
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1150
    .end local v8    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v14, v7}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1151
    new-instance v14, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1152
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1153
    const-string/jumbo v16, " has mismatched certificates at entry "

    .line 1152
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1154
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1152
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x68

    .line 1151
    move/from16 v0, v16

    invoke-direct {v14, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1165
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v7    # "entrySignatures":[Landroid/content/pm/Signature;
    :cond_6
    invoke-static {v11}, Landroid/content/pm/PackageParser;->closeQuietly(Ljava/util/jar/StrictJarFile;)V

    .line 1097
    return-void

    .line 1158
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .end local v11    # "jarFile":Ljava/util/jar/StrictJarFile;
    .end local v12    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v10, "jarFile":Ljava/util/jar/StrictJarFile;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/security/GeneralSecurityException;
    goto/16 :goto_0

    .line 1161
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_3
.end method

.method private static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1171
    array-length v2, p0

    new-array v1, v2, [Landroid/content/pm/Signature;

    .line 1172
    .local v1, "res":[Landroid/content/pm/Signature;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1173
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v1, v0

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1175
    :cond_0
    return-object v1
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 4
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4874
    if-eqz p4, :cond_0

    .line 4877
    return v2

    .line 4879
    :cond_0
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v1, :cond_2

    .line 4880
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 4881
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v1, v0, :cond_2

    .line 4882
    return v2

    .line 4880
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 4885
    .end local v0    # "enabled":Z
    :cond_2
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v1, :cond_4

    .line 4886
    :cond_3
    return v2

    .line 4888
    :cond_4
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_5

    .line 4889
    return v2

    .line 4891
    :cond_5
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    .line 4892
    if-nez p3, :cond_6

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    .line 4893
    :cond_6
    return v2

    .line 4895
    :cond_7
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_8

    .line 4896
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 4897
    return v2

    .line 4899
    :cond_8
    return v3
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5060
    if-nez p0, :cond_0

    return-object v2

    .line 5061
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5062
    return-object v2

    .line 5066
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 5067
    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5068
    return-object v0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5044
    if-nez p0, :cond_0

    return-object v2

    .line 5045
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5046
    return-object v2

    .line 5048
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5049
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v1

    .line 5052
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 5053
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 5054
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5055
    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4976
    if-nez p0, :cond_0

    return-object v2

    .line 4977
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4978
    return-object v2

    .line 4982
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 4983
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4984
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p3, v2}, Landroid/os/Environment;->getDataUserPackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4986
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_2

    .line 4987
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 4991
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 4992
    return-object v0

    .line 4989
    :cond_2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    .line 4904
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4936
    if-nez p0, :cond_0

    return-object v2

    .line 4937
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4938
    return-object v2

    .line 4940
    :cond_1
    invoke-static {p1, p0, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4941
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 4942
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 4950
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 4951
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    .line 4955
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 4956
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4957
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p3, v2}, Landroid/os/Environment;->getDataUserPackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4959
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_4

    .line 4960
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 4962
    :cond_4
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_5

    .line 4963
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 4965
    :cond_5
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_6

    .line 4966
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 4970
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 4971
    return-object v0

    .line 4968
    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 5192
    if-nez p0, :cond_0

    return-object v1

    .line 5193
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 5194
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v1

    .line 5196
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 5197
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 5198
    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 11
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 413
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 412
    invoke-static/range {v1 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 19
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 433
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 434
    const/4 v14, 0x0

    return-object v14

    .line 436
    :cond_0
    new-instance v11, Landroid/content/pm/PackageInfo;

    invoke-direct {v11}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 437
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 439
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v14, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 440
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v14, v11, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 441
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 443
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 444
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v14, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 445
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 446
    move-object/from16 v0, p0

    iget v14, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v14, v11, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 447
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v14, v11, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 448
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_1

    .line 449
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_2

    .line 450
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v14, v11, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 452
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 455
    move-wide/from16 v0, p3

    iput-wide v0, v11, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 456
    move-wide/from16 v0, p5

    iput-wide v0, v11, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 457
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_3

    .line 458
    move-object/from16 v0, p1

    iput-object v0, v11, Landroid/content/pm/PackageInfo;->gids:[I

    .line 460
    :cond_3
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x4000

    if-eqz v14, :cond_6

    .line 461
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 462
    .local v4, "N":I
    :goto_0
    if-lez v4, :cond_4

    .line 463
    new-array v14, v4, [Landroid/content/pm/ConfigurationInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 464
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 466
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 467
    :goto_1
    if-lez v4, :cond_5

    .line 468
    new-array v14, v4, [Landroid/content/pm/FeatureInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 469
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 471
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 472
    :goto_2
    if-lez v4, :cond_6

    .line 473
    new-array v14, v4, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 474
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 477
    .end local v4    # "N":I
    :cond_6
    and-int/lit8 v14, p2, 0x1

    if-eqz v14, :cond_f

    .line 478
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 479
    .restart local v4    # "N":I
    if-lez v4, :cond_f

    .line 480
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_b

    .line 481
    new-array v14, v4, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 489
    :goto_3
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    move v8, v7

    .end local v7    # "j":I
    .local v8, "j":I
    :goto_4
    if-ge v6, v4, :cond_f

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 491
    .local v5, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v14, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v14, :cond_7

    .line 492
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_e

    .line 493
    :cond_7
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v15, v8

    .line 489
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_4

    .line 461
    .end local v4    # "N":I
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "N":I
    goto/16 :goto_0

    .line 466
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 471
    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    .line 483
    :cond_b
    const/4 v9, 0x0

    .line 484
    .local v9, "num":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    if-ge v6, v4, :cond_d

    .line 485
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v14, :cond_c

    add-int/lit8 v9, v9, 0x1

    .line 484
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 487
    :cond_d
    new-array v14, v9, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_3

    .end local v9    # "num":I
    .restart local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .restart local v8    # "j":I
    :cond_e
    move v7, v8

    .line 492
    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_5

    .line 499
    .end local v4    # "N":I
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_f
    and-int/lit8 v14, p2, 0x2

    if-eqz v14, :cond_15

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 501
    .restart local v4    # "N":I
    if-lez v4, :cond_15

    .line 502
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_11

    .line 503
    new-array v14, v4, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 511
    :goto_7
    const/4 v6, 0x0

    .restart local v6    # "i":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_8
    if-ge v6, v4, :cond_15

    .line 512
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 513
    .restart local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v14, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v14, :cond_10

    .line 514
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_14

    .line 515
    :cond_10
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    aput-object v14, v15, v8

    .line 511
    :goto_9
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_8

    .line 505
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_11
    const/4 v9, 0x0

    .line 506
    .restart local v9    # "num":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_a
    if-ge v6, v4, :cond_13

    .line 507
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v14, v14, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v14, :cond_12

    add-int/lit8 v9, v9, 0x1

    .line 506
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 509
    :cond_13
    new-array v14, v9, [Landroid/content/pm/ActivityInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    goto :goto_7

    .end local v9    # "num":I
    .restart local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .restart local v8    # "j":I
    :cond_14
    move v7, v8

    .line 514
    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_9

    .line 521
    .end local v4    # "N":I
    .end local v5    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_15
    and-int/lit8 v14, p2, 0x4

    if-eqz v14, :cond_1b

    .line 522
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 523
    .restart local v4    # "N":I
    if-lez v4, :cond_1b

    .line 524
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_17

    .line 525
    new-array v14, v4, [Landroid/content/pm/ServiceInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 533
    :goto_b
    const/4 v6, 0x0

    .restart local v6    # "i":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_c
    if-ge v6, v4, :cond_1b

    .line 534
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Service;

    .line 535
    .local v13, "service":Landroid/content/pm/PackageParser$Service;
    iget-object v14, v13, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v14, v14, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-nez v14, :cond_16

    .line 536
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_1a

    .line 537
    :cond_16
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Service;

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v14

    aput-object v14, v15, v8

    .line 533
    :goto_d
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_c

    .line 527
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v13    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_17
    const/4 v9, 0x0

    .line 528
    .restart local v9    # "num":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_e
    if-ge v6, v4, :cond_19

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Service;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v14, v14, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v14, :cond_18

    add-int/lit8 v9, v9, 0x1

    .line 528
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 531
    :cond_19
    new-array v14, v9, [Landroid/content/pm/ServiceInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    goto :goto_b

    .end local v9    # "num":I
    .restart local v8    # "j":I
    .restart local v13    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_1a
    move v7, v8

    .line 536
    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_d

    .line 543
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v13    # "service":Landroid/content/pm/PackageParser$Service;
    :cond_1b
    and-int/lit8 v14, p2, 0x8

    if-eqz v14, :cond_21

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 545
    .restart local v4    # "N":I
    if-lez v4, :cond_21

    .line 546
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_1d

    .line 547
    new-array v14, v4, [Landroid/content/pm/ProviderInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 555
    :goto_f
    const/4 v6, 0x0

    .restart local v6    # "i":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_10
    if-ge v6, v4, :cond_21

    .line 556
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Provider;

    .line 557
    .local v12, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v14, v12, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v14, v14, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v14, :cond_1c

    .line 558
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_20

    .line 559
    :cond_1c
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Provider;

    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v14, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    aput-object v14, v15, v8

    .line 555
    :goto_11
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_10

    .line 549
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v12    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_1d
    const/4 v9, 0x0

    .line 550
    .restart local v9    # "num":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_12
    if-ge v6, v4, :cond_1f

    .line 551
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Provider;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v14, v14, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v14, :cond_1e

    add-int/lit8 v9, v9, 0x1

    .line 550
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 553
    :cond_1f
    new-array v14, v9, [Landroid/content/pm/ProviderInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    goto :goto_f

    .end local v9    # "num":I
    .restart local v8    # "j":I
    .restart local v12    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_20
    move v7, v8

    .line 558
    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_11

    .line 565
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v12    # "provider":Landroid/content/pm/PackageParser$Provider;
    :cond_21
    and-int/lit8 v14, p2, 0x10

    if-eqz v14, :cond_22

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 567
    .restart local v4    # "N":I
    if-lez v4, :cond_22

    .line 568
    new-array v14, v4, [Landroid/content/pm/InstrumentationInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 569
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_13
    if-ge v6, v4, :cond_22

    .line 570
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 571
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Instrumentation;

    .line 570
    move/from16 v0, p2

    invoke-static {v14, v0}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v14

    aput-object v14, v15, v6

    .line 569
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 575
    .end local v4    # "N":I
    .end local v6    # "i":I
    :cond_22
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_25

    .line 576
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 577
    .restart local v4    # "N":I
    if-lez v4, :cond_23

    .line 578
    new-array v14, v4, [Landroid/content/pm/PermissionInfo;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 579
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_14
    if-ge v6, v4, :cond_23

    .line 580
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    move/from16 v0, p2

    invoke-static {v14, v0}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v14

    aput-object v14, v15, v6

    .line 579
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 583
    .end local v6    # "i":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 584
    if-lez v4, :cond_25

    .line 585
    new-array v14, v4, [Ljava/lang/String;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 586
    new-array v14, v4, [I

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 587
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_15
    if-ge v6, v4, :cond_25

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 589
    .local v10, "perm":Ljava/lang/String;
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v10, v14, v6

    .line 591
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v6

    or-int/lit8 v15, v15, 0x1

    aput v15, v14, v6

    .line 592
    if-eqz p7, :cond_24

    move-object/from16 v0, p7

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 593
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v6

    or-int/lit8 v15, v15, 0x2

    aput v15, v14, v6

    .line 587
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 598
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v10    # "perm":Ljava/lang/String;
    :cond_25
    and-int/lit8 v14, p2, 0x40

    if-eqz v14, :cond_26

    .line 599
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v14, :cond_27

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v4, v14

    .line 600
    .restart local v4    # "N":I
    :goto_16
    if-lez v4, :cond_26

    .line 601
    new-array v14, v4, [Landroid/content/pm/Signature;

    iput-object v14, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 602
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v15, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    .end local v4    # "N":I
    :cond_26
    return-object v11

    .line 599
    :cond_27
    const/4 v4, 0x0

    .restart local v4    # "N":I
    goto :goto_16
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 5008
    if-nez p0, :cond_0

    return-object v1

    .line 5009
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 5010
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v1

    .line 5012
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 5013
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 5014
    return-object v0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 4997
    if-nez p0, :cond_0

    return-object v1

    .line 4998
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 4999
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object v1

    .line 5001
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 5002
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 5003
    return-object v0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 5147
    if-nez p0, :cond_0

    return-object v3

    .line 5148
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5149
    return-object v3

    .line 5151
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5152
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2

    .line 5153
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_3

    .line 5154
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v1

    .line 5157
    :cond_3
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 5158
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 5159
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_4

    .line 5160
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5162
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5163
    return-object v0
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5098
    if-nez p0, :cond_0

    return-object v2

    .line 5099
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5100
    return-object v2

    .line 5102
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5103
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v1

    .line 5106
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 5107
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 5108
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5109
    return-object v0
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v9, 0x0

    .line 2979
    if-eqz p0, :cond_0

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    :cond_0
    return v9

    .line 2980
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 2981
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2982
    .local v3, "countActivities":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    if-ge v7, v3, :cond_7

    .line 2983
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 2984
    .local v1, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 2985
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_3

    .line 2982
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2986
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2987
    .local v4, "countFilters":I
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 2988
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 2989
    .local v2, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2987
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2990
    :cond_5
    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2991
    const-string/jumbo v8, "http"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2992
    const-string/jumbo v8, "https"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    .line 2991
    if-eqz v8, :cond_4

    .line 2993
    :cond_6
    const/4 v8, 0x1

    return v8

    .line 2997
    .end local v1    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v4    # "countFilters":I
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "m":I
    :cond_7
    return v9
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 395
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string/jumbo v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 1
    .param p0, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v0

    return v0
.end method

.method private isDefaultSWRender()Z
    .locals 4

    .prologue
    .line 5640
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.default_software_render"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5641
    .local v0, "enabled":Z
    const-string/jumbo v1, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDefaultSWRender return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5642
    return v0
.end method

.method public static isGmoROM()Z
    .locals 4

    .prologue
    .line 5589
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.mtk_gmo_rom_optimize"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5590
    .local v0, "enabled":Z
    const-string/jumbo v1, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGmoROM() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5591
    return v0
.end method

.method private static loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    .locals 4
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 869
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    .line 878
    .local v0, "cookie":I
    if-nez v0, :cond_2

    .line 879
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed adding asset path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 879
    const/16 v3, -0x65

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 870
    .end local v0    # "cookie":I
    :cond_1
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid package file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 870
    const/16 v3, -0x64

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 882
    .restart local v0    # "cookie":I
    :cond_2
    return v0
.end method

.method private static loadCertificates(Ljava/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 5
    .param p0, "jarFile"    # Ljava/util/jar/StrictJarFile;
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 610
    const/4 v1, 0x0

    .line 614
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 615
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/content/pm/PackageParser;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    .line 616
    invoke-virtual {p0, p1}, Ljava/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 621
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 616
    return-object v2

    .line 617
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 618
    const/16 v4, -0x66

    invoke-direct {v2, v4, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 621
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 620
    throw v2
.end method

.method private static modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2970
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    const-string/jumbo v1, "org.apache.http.legacy"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 2971
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 2972
    const-string/jumbo v1, "org.apache.http.legacy"

    .line 2971
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 2963
    return-void
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 23
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .param p7, "receiver"    # Z
    .param p8, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3184
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 3186
    .local v19, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_0

    .line 3187
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3193
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 3188
    const/4 v5, 0x3

    .line 3189
    const/4 v6, 0x1

    .line 3190
    const/4 v7, 0x2

    .line 3191
    const/16 v8, 0x17

    .line 3192
    const/16 v9, 0x1e

    .line 3194
    const/4 v11, 0x7

    .line 3195
    const/16 v12, 0x11

    .line 3196
    const/4 v13, 0x5

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    .line 3187
    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3199
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_1

    const-string/jumbo v2, "<receiver>"

    :goto_0
    iput-object v2, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3200
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3201
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3203
    new-instance v14, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v14, v2, v3}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 3204
    .local v14, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_2

    .line 3205
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 3206
    const/4 v2, 0x0

    return-object v2

    .line 3199
    .end local v14    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    const-string/jumbo v2, "<activity>"

    goto :goto_0

    .line 3209
    .restart local v14    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2
    const/4 v2, 0x6

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    .line 3210
    .local v20, "setExported":Z
    if-eqz v20, :cond_3

    .line 3211
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3214
    :cond_3
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->theme:I

    .line 3216
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3217
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3216
    const/16 v4, 0x1a

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 3220
    const/16 v2, 0x1b

    .line 3221
    const/16 v3, 0x400

    .line 3219
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 3222
    .local v18, "parentName":Ljava/lang/String;
    if-eqz v18, :cond_4

    .line 3223
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3224
    .local v17, "parentClassName":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-nez v2, :cond_1a

    .line 3225
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3234
    .end local v17    # "parentClassName":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 3235
    .local v21, "str":Ljava/lang/String;
    if-nez v21, :cond_1b

    .line 3236
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 3242
    :goto_2
    const/16 v2, 0x8

    .line 3243
    const/16 v3, 0x400

    .line 3241
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 3244
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3245
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3244
    move-object/from16 v0, v21

    move-object/from16 v1, p6

    invoke-static {v3, v4, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 3247
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3249
    const/16 v2, 0x9

    const/4 v3, 0x0

    .line 3248
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3250
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3253
    :cond_5
    const/16 v2, 0xa

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3254
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3257
    :cond_6
    const/16 v2, 0xb

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3258
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3261
    :cond_7
    const/16 v2, 0x15

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3262
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3265
    :cond_8
    const/16 v2, 0x12

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3266
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3269
    :cond_9
    const/16 v2, 0xc

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3270
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3273
    :cond_a
    const/16 v2, 0xd

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3274
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3278
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    .line 3277
    :goto_3
    const/16 v3, 0x13

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3279
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3282
    :cond_c
    const/16 v2, 0x16

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3283
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3286
    :cond_d
    const/16 v2, 0x1d

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-nez v2, :cond_e

    .line 3287
    const/16 v2, 0x27

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 3286
    if-eqz v2, :cond_f

    .line 3288
    :cond_e
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3291
    :cond_f
    const/16 v2, 0x18

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3292
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3295
    :cond_10
    const/16 v2, 0x29

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3296
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3299
    :cond_11
    if-nez p7, :cond_20

    .line 3300
    const/16 v2, 0x19

    move-object/from16 v0, v19

    move/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3302
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3305
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/PackageParser;->isDefaultSWRender()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3306
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1e

    const/4 v15, 0x1

    .line 3307
    .local v15, "hwuiRes":Z
    :goto_4
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[swRender] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " act: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    .end local v15    # "hwuiRes":Z
    :cond_13
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3312
    const/16 v3, 0xe

    const/4 v4, 0x0

    .line 3311
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3313
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3314
    const/16 v3, 0x21

    .line 3315
    const/4 v4, 0x0

    .line 3313
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 3316
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3318
    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    move-result v3

    .line 3317
    const/16 v4, 0x22

    .line 3316
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 3319
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x10

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3320
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3321
    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 3320
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 3323
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3324
    const/16 v3, 0x20

    .line 3325
    const/4 v4, 0x0

    .line 3323
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 3327
    const/16 v2, 0x1f

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3328
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3331
    :cond_14
    const/16 v2, 0x23

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3332
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3335
    :cond_15
    const/16 v2, 0x24

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3336
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3339
    :cond_16
    const/16 v2, 0x25

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3340
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3343
    :cond_17
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3344
    const/16 v3, 0x28

    const/4 v4, 0x0

    .line 3343
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->resizeable:Z

    .line 3345
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->resizeable:Z

    if-eqz v2, :cond_1f

    .line 3347
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, -0x1

    iput v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 3354
    :goto_5
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3355
    const/16 v3, 0x26

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 3354
    iput v3, v2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 3372
    .end local v20    # "setExported":Z
    :cond_18
    :goto_6
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 3374
    if-eqz p7, :cond_19

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_19

    .line 3378
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_19

    .line 3379
    const-string/jumbo v2, "Heavy-weight applications can not have receivers in main process"

    const/4 v3, 0x0

    aput-object v2, p6, v3

    .line 3383
    :cond_19
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_21

    .line 3384
    const/4 v2, 0x0

    return-object v2

    .line 3227
    .end local v21    # "str":Ljava/lang/String;
    .restart local v17    # "parentClassName":Ljava/lang/String;
    .restart local v20    # "setExported":Z
    :cond_1a
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " specified invalid parentActivityName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, p6, v3

    goto/16 :goto_1

    .line 3238
    .end local v17    # "parentClassName":Ljava/lang/String;
    .restart local v21    # "str":Ljava/lang/String;
    :cond_1b
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_7
    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_7

    .line 3278
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 3306
    :cond_1e
    const/4 v15, 0x0

    .restart local v15    # "hwuiRes":Z
    goto/16 :goto_4

    .line 3349
    .end local v15    # "hwuiRes":Z
    :cond_1f
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3350
    const/16 v3, 0xf

    .line 3351
    const/4 v4, -0x1

    .line 3349
    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto/16 :goto_5

    .line 3357
    :cond_20
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3358
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3360
    const/16 v2, 0x1c

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3361
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3362
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_18

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_18

    .line 3363
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity exported request ignored due to singleUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3364
    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    .line 3363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3364
    const-string/jumbo v4, " at "

    .line 3363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3364
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3364
    const-string/jumbo v4, " "

    .line 3363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3365
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 3363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3367
    const/16 v20, 0x1

    .local v20, "setExported":Z
    goto/16 :goto_6

    .line 3387
    .end local v20    # "setExported":Z
    :cond_21
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    .line 3389
    .local v16, "outerDepth":I
    :cond_22
    :goto_8
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, "type":I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_2d

    .line 3390
    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_23

    .line 3391
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v16

    if-le v2, v0, :cond_2d

    .line 3392
    :cond_23
    const/4 v2, 0x3

    move/from16 v0, v22

    if-eq v0, v2, :cond_22

    const/4 v2, 0x4

    move/from16 v0, v22

    if-eq v0, v2, :cond_22

    .line 3396
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3397
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v8, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3398
    .local v8, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 3399
    const/4 v2, 0x0

    return-object v2

    .line 3401
    :cond_24
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v2

    if-nez v2, :cond_25

    .line 3402
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No actions in intent filter at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3403
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3403
    const-string/jumbo v4, " "

    .line 3402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3404
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 3402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3406
    :cond_25
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3408
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_26
    if-nez p7, :cond_2a

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "preferred"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3409
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v8, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3410
    .restart local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 3411
    const/4 v2, 0x0

    return-object v2

    .line 3413
    :cond_27
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v2

    if-nez v2, :cond_28

    .line 3414
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No actions in preferred at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3415
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3414
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3415
    const-string/jumbo v4, " "

    .line 3414
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3416
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 3414
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3418
    :cond_28
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v2, :cond_29

    .line 3419
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3421
    :cond_29
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 3423
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2a
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3424
    iget-object v6, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_22

    .line 3426
    const/4 v2, 0x0

    return-object v2

    .line 3430
    :cond_2b
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Problem in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    if-eqz p7, :cond_2c

    .line 3432
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <receiver>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3433
    const-string/jumbo v4, " at "

    .line 3432
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3433
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3432
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3433
    const-string/jumbo v4, " "

    .line 3432
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3434
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 3432
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    .line 3436
    :cond_2c
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <activity>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3437
    const-string/jumbo v4, " at "

    .line 3436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3437
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3437
    const-string/jumbo v4, " "

    .line 3436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3438
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 3436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3453
    :cond_2d
    if-nez v20, :cond_2e

    .line 3454
    iget-object v3, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    const/4 v2, 0x1

    :goto_a
    iput-boolean v2, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3457
    :cond_2e
    return-object v14

    .line 3454
    :cond_2f
    const/4 v2, 0x0

    goto :goto_a
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 28
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3464
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    .line 3463
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 3467
    .local v21, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    .line 3468
    const/16 v3, 0x400

    .line 3466
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    .line 3469
    .local v26, "targetActivity":Ljava/lang/String;
    if-nez v26, :cond_0

    .line 3470
    const-string/jumbo v2, "<activity-alias> does not specify android:targetActivity"

    const/4 v3, 0x0

    aput-object v2, p6, v3

    .line 3471
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3472
    const/4 v2, 0x0

    return-object v2

    .line 3475
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, p6

    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3477
    if-nez v26, :cond_1

    .line 3478
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3479
    const/4 v2, 0x0

    return-object v2

    .line 3482
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_2

    .line 3483
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3489
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 3484
    const/4 v5, 0x2

    .line 3485
    const/4 v6, 0x0

    .line 3486
    const/4 v7, 0x1

    .line 3487
    const/16 v8, 0x8

    .line 3488
    const/16 v9, 0xa

    .line 3490
    const/4 v11, 0x0

    .line 3491
    const/4 v12, 0x6

    .line 3492
    const/4 v13, 0x4

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    .line 3483
    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3493
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v3, "<activity-alias>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3496
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v21

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3497
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3499
    const/16 v25, 0x0

    .line 3501
    .local v25, "target":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3502
    .local v14, "NA":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_3

    .line 3503
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/PackageParser$Activity;

    .line 3504
    .local v24, "t":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3505
    move-object/from16 v25, v24

    .line 3510
    .end local v24    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v25    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    if-nez v25, :cond_5

    .line 3511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<activity-alias> target activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3512
    const-string/jumbo v3, " not found in manifest"

    .line 3511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p6, v3

    .line 3513
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3514
    const/4 v2, 0x0

    return-object v2

    .line 3502
    .restart local v24    # "t":Landroid/content/pm/PackageParser$Activity;
    .restart local v25    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 3517
    .end local v24    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v25    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_5
    new-instance v17, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v17 .. v17}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 3518
    .local v17, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 3519
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3520
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3521
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->icon:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 3522
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->logo:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->logo:I

    .line 3523
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->banner:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->banner:I

    .line 3524
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 3525
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3526
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3527
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 3528
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3529
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v2, :cond_6

    .line 3530
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 3532
    :cond_6
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 3533
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 3534
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 3535
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->softInputMode:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 3536
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->uiOptions:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 3537
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3538
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 3540
    new-instance v15, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v17

    invoke-direct {v15, v2, v0}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 3541
    .local v15, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_7

    .line 3542
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3543
    const/4 v2, 0x0

    return-object v2

    .line 3547
    :cond_7
    const/4 v2, 0x5

    .line 3546
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v22

    .line 3548
    .local v22, "setExported":Z
    if-eqz v22, :cond_8

    .line 3549
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3550
    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 3549
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3555
    :cond_8
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 3554
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 3556
    .local v23, "str":Ljava/lang/String;
    if-eqz v23, :cond_9

    .line 3557
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 3561
    :cond_9
    const/16 v2, 0x9

    .line 3562
    const/16 v3, 0x400

    .line 3560
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 3563
    .local v20, "parentName":Ljava/lang/String;
    if-eqz v20, :cond_a

    .line 3564
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-static {v2, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3565
    .local v19, "parentClassName":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-nez v2, :cond_c

    .line 3566
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v19

    iput-object v0, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3574
    .end local v19    # "parentClassName":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 3576
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_d

    .line 3577
    const/4 v2, 0x0

    return-object v2

    .line 3557
    .end local v20    # "parentName":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    .line 3568
    .restart local v19    # "parentClassName":Ljava/lang/String;
    .restart local v20    # "parentName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3569
    const-string/jumbo v4, " specified invalid parentActivityName "

    .line 3568
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, p6, v3

    goto :goto_2

    .line 3580
    .end local v19    # "parentClassName":Ljava/lang/String;
    :cond_d
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    .line 3582
    .local v18, "outerDepth":I
    :cond_e
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, "type":I
    const/4 v2, 0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_14

    .line 3583
    const/4 v2, 0x3

    move/from16 v0, v27

    if-ne v0, v2, :cond_f

    .line 3584
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_14

    .line 3585
    :cond_f
    const/4 v2, 0x3

    move/from16 v0, v27

    if-eq v0, v2, :cond_e

    const/4 v2, 0x4

    move/from16 v0, v27

    if-eq v0, v2, :cond_e

    .line 3589
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3590
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v8, v15}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3591
    .local v8, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 3592
    const/4 v2, 0x0

    return-object v2

    .line 3594
    :cond_10
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v2

    if-nez v2, :cond_11

    .line 3595
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No actions in intent filter at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3596
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3596
    const-string/jumbo v4, " "

    .line 3595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3597
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 3595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3599
    :cond_11
    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3601
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_12
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3602
    iget-object v6, v15, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v15, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_e

    .line 3604
    const/4 v2, 0x0

    return-object v2

    .line 3608
    :cond_13
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <activity-alias>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3609
    const-string/jumbo v4, " at "

    .line 3608
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3609
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3608
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3609
    const-string/jumbo v4, " "

    .line 3608
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3610
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 3608
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 3620
    :cond_14
    if-nez v22, :cond_15

    .line 3621
    iget-object v3, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v15, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3624
    :cond_15
    return-object v15

    .line 3621
    :cond_16
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$Component;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4073
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 4075
    .local v6, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    .line 4076
    const/4 v0, 0x3

    if-ne v7, v0, :cond_1

    .line 4077
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_3

    .line 4078
    :cond_1
    const/4 v0, 0x3

    if-eq v7, v0, :cond_0

    const/4 v0, 0x4

    if-eq v7, v0, :cond_0

    .line 4082
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4084
    iget-object v4, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    .line 4083
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 4085
    const/4 v0, 0x0

    return v0

    .line 4089
    :cond_2
    const-string/jumbo v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4090
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4089
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4090
    const-string/jumbo v2, " at "

    .line 4089
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4090
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4089
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4090
    const-string/jumbo v2, " "

    .line 4089
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4091
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    .line 4089
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 4100
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 27
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1188
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 1190
    .local v20, "apkPath":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1191
    .local v21, "assets":Landroid/content/res/AssetManager;
    const/16 v25, 0x0

    .line 1193
    .local v25, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1195
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .local v2, "assets":Landroid/content/res/AssetManager;
    :try_start_1
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 1194
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 1197
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v22

    .line 1198
    .local v22, "cookie":I
    if-nez v22, :cond_0

    .line 1199
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to parse "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1199
    const/16 v9, -0x64

    invoke-direct {v3, v9, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1222
    .end local v22    # "cookie":I
    :catch_0
    move-exception v23

    .local v23, "e":Ljava/lang/Exception;
    move-object/from16 v5, v25

    .line 1223
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_2
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to parse "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1223
    const/16 v9, -0x66

    move-object/from16 v0, v23

    invoke-direct {v3, v9, v7, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1225
    .end local v23    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1226
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1227
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1225
    throw v3

    .line 1203
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "cookie":I
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_3
    new-instance v24, Landroid/util/DisplayMetrics;

    invoke-direct/range {v24 .. v24}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1204
    .local v24, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v24 .. v24}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1206
    new-instance v4, Landroid/content/res/Resources;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-direct {v4, v2, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1207
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v3, "AndroidManifest.xml"

    move/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v5

    .line 1210
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move/from16 v0, p1

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_1

    .line 1212
    :try_start_4
    new-instance v26, Landroid/content/pm/PackageParser$Package;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v26, "tempPkg":Landroid/content/pm/PackageParser$Package;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-static {v0, v1, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    .line 1214
    move-object/from16 v0, v26

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1219
    .end local v26    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :goto_2
    move-object v6, v5

    .local v6, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v3, v20

    move/from16 v7, p1

    .line 1220
    invoke-static/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 1226
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1227
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1220
    return-object v3

    .line 1216
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    :cond_1
    const/4 v8, 0x0

    .local v8, "signatures":[Landroid/content/pm/Signature;
    goto :goto_2

    .line 1225
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v22    # "cookie":I
    .end local v24    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v3

    move-object/from16 v5, v25

    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto :goto_1

    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    :catchall_2
    move-exception v3

    move-object/from16 v5, v25

    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    .line 1222
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    :catch_1
    move-exception v23

    .restart local v23    # "e":Ljava/lang/Exception;
    move-object/from16 v5, v25

    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto :goto_0

    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v22    # "cookie":I
    .restart local v24    # "metrics":Landroid/util/DisplayMetrics;
    :catch_2
    move-exception v23

    .restart local v23    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 19
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "flags"    # I
    .param p5, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1316
    invoke-static/range {p2 .. p4}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;

    move-result-object v15

    .line 1318
    .local v15, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, -0x1

    .line 1319
    .local v7, "installLocation":I
    const/4 v5, 0x0

    .line 1320
    .local v5, "versionCode":I
    const/4 v6, 0x0

    .line 1321
    .local v6, "revisionCode":I
    const/4 v10, 0x0

    .line 1322
    .local v10, "coreApp":Z
    const/4 v11, 0x0

    .line 1323
    .local v11, "multiArch":Z
    const/4 v12, 0x1

    .line 1325
    .local v12, "extractNativeLibs":Z
    const/4 v14, 0x0

    .end local v10    # "coreApp":Z
    .local v14, "i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    if-ge v14, v1, :cond_4

    .line 1326
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 1327
    .local v13, "attr":Ljava/lang/String;
    const-string/jumbo v1, "installLocation"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    const/4 v1, -0x1

    .line 1328
    move-object/from16 v0, p3

    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v7

    .line 1325
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1330
    :cond_1
    const-string/jumbo v1, "versionCode"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1331
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v5

    goto :goto_1

    .line 1332
    :cond_2
    const-string/jumbo v1, "revisionCode"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1333
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    goto :goto_1

    .line 1334
    :cond_3
    const-string/jumbo v1, "coreApp"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1335
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    .local v10, "coreApp":Z
    goto :goto_1

    .line 1341
    .end local v10    # "coreApp":Z
    .end local v13    # "attr":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v16, v1, 0x1

    .line 1343
    .local v16, "searchDepth":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .end local v11    # "multiArch":Z
    .end local v12    # "extractNativeLibs":Z
    .local v8, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_5
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, "type":I
    const/4 v1, 0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_b

    .line 1345
    const/4 v1, 0x3

    move/from16 v0, v17

    if-ne v0, v1, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    move/from16 v0, v16

    if-lt v1, v0, :cond_b

    .line 1346
    :cond_6
    const/4 v1, 0x3

    move/from16 v0, v17

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    move/from16 v0, v17

    if-eq v0, v1, :cond_5

    .line 1350
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    move/from16 v0, v16

    if-ne v1, v0, :cond_7

    const-string/jumbo v1, "package-verifier"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1351
    invoke-static/range {p1 .. p4}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;

    move-result-object v18

    .line 1352
    .local v18, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v18, :cond_7

    .line 1353
    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    .end local v18    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    move/from16 v0, v16

    if-ne v1, v0, :cond_5

    const-string/jumbo v1, "application"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1358
    const/4 v14, 0x0

    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    if-ge v14, v1, :cond_a

    .line 1359
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    .line 1360
    .restart local v13    # "attr":Ljava/lang/String;
    const-string/jumbo v1, "multiArch"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1361
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v11

    .line 1363
    :cond_8
    const-string/jumbo v1, "extractNativeLibs"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1364
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v12

    .line 1358
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1373
    .end local v13    # "attr":Ljava/lang/String;
    :cond_a
    invoke-static {}, Landroid/content/pm/PackageParser;->isGmoROM()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1374
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    .line 1379
    :pswitch_0
    invoke-static/range {p2 .. p3}, Landroid/content/pm/PackageParser;->checkDeviceAdmin(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1380
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1412
    :cond_b
    new-instance v1, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v3, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v12}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;ZZZ)V

    return-object v1

    .line 1374
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 58
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "flags"    # I
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1466
    move/from16 v0, p3

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_0

    const/16 v55, 0x1

    .line 1468
    .local v55, "trustedOverlay":Z
    :goto_0
    move-object/from16 v7, p2

    .line 1470
    .local v7, "attrs":Landroid/util/AttributeSet;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1471
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1472
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1473
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1478
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v7, v1}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;

    move-result-object v40

    .line 1479
    .local v40, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .line 1480
    .local v42, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1488
    .local v46, "splitName":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected base APK, but found split "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, p4, v5

    .line 1490
    const/16 v3, -0x6a

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1491
    const/4 v3, 0x0

    return-object v3

    .line 1466
    .end local v7    # "attrs":Landroid/util/AttributeSet;
    .end local v40    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v42    # "pkgName":Ljava/lang/String;
    .end local v46    # "splitName":Ljava/lang/String;
    .end local v55    # "trustedOverlay":Z
    :cond_0
    const/16 v55, 0x0

    .restart local v55    # "trustedOverlay":Z
    goto :goto_0

    .line 1481
    .restart local v7    # "attrs":Landroid/util/AttributeSet;
    :catch_0
    move-exception v21

    .line 1482
    .local v21, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/16 v3, -0x6a

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1483
    const/4 v3, 0x0

    return-object v3

    .line 1494
    .end local v21    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v40    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v42    # "pkgName":Ljava/lang/String;
    .restart local v46    # "splitName":Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, v42

    invoke-direct {v4, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1495
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    const/16 v25, 0x0

    .line 1498
    .local v25, "foundApp":Z
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    .line 1497
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v44

    .line 1500
    .local v44, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1499
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v3, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iput v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1502
    const/4 v3, 0x5

    const/4 v5, 0x0

    .line 1501
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1504
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 1503
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1505
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1506
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1509
    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1508
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v47

    .line 1510
    .local v47, "str":Ljava/lang/String;
    if-eqz v47, :cond_4

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1511
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-static {v0, v3, v5}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v36

    .line 1512
    .local v36, "nameError":Ljava/lang/String;
    if-eqz v36, :cond_3

    const-string/jumbo v3, "android"

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1518
    :cond_3
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 1520
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 1519
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v4, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 1524
    .end local v36    # "nameError":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x4

    .line 1525
    const/4 v5, -0x1

    .line 1523
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v4, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 1526
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1528
    const-string/jumbo v3, "coreApp"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v7, v5, v3, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v4, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 1530
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    .line 1533
    and-int/lit8 v3, p3, 0x10

    if-eqz v3, :cond_5

    .line 1534
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1538
    :cond_5
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_6

    .line 1539
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1543
    :cond_6
    const/16 v50, 0x1

    .line 1544
    .local v50, "supportsSmallScreens":I
    const/16 v49, 0x1

    .line 1545
    .local v49, "supportsNormalScreens":I
    const/16 v48, 0x1

    .line 1546
    .local v48, "supportsLargeScreens":I
    const/16 v51, 0x1

    .line 1547
    .local v51, "supportsXLargeScreens":I
    const/16 v43, 0x1

    .line 1548
    .local v43, "resizeable":I
    const/16 v18, 0x1

    .line 1550
    .local v18, "anyDensity":I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v39

    .line 1551
    .local v39, "outerDepth":I
    :cond_7
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v56

    .local v56, "type":I
    const/4 v3, 0x1

    move/from16 v0, v56

    if-eq v0, v3, :cond_41

    .line 1552
    const/4 v3, 0x3

    move/from16 v0, v56

    if-ne v0, v3, :cond_8

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v39

    if-le v3, v0, :cond_41

    .line 1553
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, v56

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    move/from16 v0, v56

    if-eq v0, v3, :cond_7

    .line 1557
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v52

    .line 1558
    .local v52, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "application"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1559
    if-eqz v25, :cond_a

    .line 1565
    const-string/jumbo v3, "PackageParser"

    const-string/jumbo v5, "<manifest> has more than one <application>"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 1513
    .end local v18    # "anyDensity":I
    .end local v39    # "outerDepth":I
    .end local v43    # "resizeable":I
    .end local v48    # "supportsLargeScreens":I
    .end local v49    # "supportsNormalScreens":I
    .end local v50    # "supportsSmallScreens":I
    .end local v51    # "supportsXLargeScreens":I
    .end local v52    # "tagName":Ljava/lang/String;
    .end local v56    # "type":I
    .restart local v36    # "nameError":Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1514
    const-string/jumbo v5, "\": "

    .line 1513
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, p4, v5

    .line 1515
    const/16 v3, -0x6b

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1516
    const/4 v3, 0x0

    return-object v3

    .line 1571
    .end local v36    # "nameError":Ljava/lang/String;
    .restart local v18    # "anyDensity":I
    .restart local v39    # "outerDepth":I
    .restart local v43    # "resizeable":I
    .restart local v48    # "supportsLargeScreens":I
    .restart local v49    # "supportsNormalScreens":I
    .restart local v50    # "supportsSmallScreens":I
    .restart local v51    # "supportsXLargeScreens":I
    .restart local v52    # "tagName":Ljava/lang/String;
    .restart local v56    # "type":I
    :cond_a
    const/16 v25, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 1572
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1573
    const/4 v3, 0x0

    return-object v3

    .line 1575
    :cond_b
    const-string/jumbo v3, "overlay"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1576
    move/from16 v0, v55

    iput-boolean v0, v4, Landroid/content/pm/PackageParser$Package;->mTrustedOverlay:Z

    .line 1579
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    .line 1578
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v44

    .line 1581
    const/4 v3, 0x1

    .line 1580
    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 1583
    const/4 v3, 0x0

    .line 1584
    const/4 v5, -0x1

    .line 1582
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 1585
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    .line 1587
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 1588
    const-string/jumbo v3, "<overlay> does not specify a target package"

    const/4 v5, 0x0

    aput-object v3, p4, v5

    .line 1589
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1590
    const/4 v3, 0x0

    return-object v3

    .line 1592
    :cond_c
    iget v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v3, :cond_d

    iget v3, v4, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v5, 0x270f

    if-le v3, v5, :cond_e

    .line 1593
    :cond_d
    const-string/jumbo v3, "<overlay> priority must be between 0 and 9999"

    const/4 v5, 0x0

    aput-object v3, p4, v5

    .line 1595
    const/16 v3, -0x6c

    .line 1594
    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1596
    const/4 v3, 0x0

    return-object v3

    .line 1598
    :cond_e
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1600
    :cond_f
    const-string/jumbo v3, "key-sets"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1601
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1602
    const/4 v3, 0x0

    return-object v3

    .line 1604
    :cond_10
    const-string/jumbo v3, "permission-group"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v8, p0

    move-object v9, v4

    move/from16 v10, p3

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v7

    move-object/from16 v14, p4

    .line 1605
    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1606
    const/4 v3, 0x0

    return-object v3

    .line 1608
    :cond_11
    const-string/jumbo v3, "permission"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1609
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1610
    const/4 v3, 0x0

    return-object v3

    .line 1612
    :cond_12
    const-string/jumbo v3, "permission-tree"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1613
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1614
    const/4 v3, 0x0

    return-object v3

    .line 1616
    :cond_13
    const-string/jumbo v3, "uses-permission"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1617
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v7}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1618
    const/4 v3, 0x0

    return-object v3

    .line 1620
    :cond_14
    const-string/jumbo v3, "uses-permission-sdk-m"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1621
    const-string/jumbo v3, "uses-permission-sdk-23"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1620
    if-eqz v3, :cond_16

    .line 1622
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v7}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1623
    const/4 v3, 0x0

    return-object v3

    .line 1625
    :cond_16
    const-string/jumbo v3, "uses-configuration"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1626
    new-instance v19, Landroid/content/pm/ConfigurationInfo;

    invoke-direct/range {v19 .. v19}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1628
    .local v19, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    .line 1627
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v44

    .line 1630
    const/4 v3, 0x0

    .line 1631
    const/4 v5, 0x0

    .line 1629
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1633
    const/4 v3, 0x1

    .line 1634
    const/4 v5, 0x0

    .line 1632
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1636
    const/4 v3, 0x2

    .line 1637
    const/4 v5, 0x0

    .line 1635
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1638
    move-object/from16 v0, v19

    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1641
    :cond_17
    const/4 v3, 0x3

    .line 1642
    const/4 v5, 0x0

    .line 1640
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, v19

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1644
    const/4 v3, 0x4

    .line 1645
    const/4 v5, 0x0

    .line 1643
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1646
    move-object/from16 v0, v19

    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v19

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1648
    :cond_18
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    .line 1649
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 1651
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1653
    .end local v19    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_19
    const-string/jumbo v3, "uses-feature"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1654
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v24

    .line 1655
    .local v24, "fi":Landroid/content/pm/FeatureInfo;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 1657
    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 1658
    new-instance v19, Landroid/content/pm/ConfigurationInfo;

    invoke-direct/range {v19 .. v19}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1659
    .restart local v19    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move-object/from16 v0, v24

    iget v3, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1660
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 1663
    .end local v19    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_1a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1665
    .end local v24    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_1b
    const-string/jumbo v3, "feature-group"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1666
    new-instance v26, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct/range {v26 .. v26}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 1667
    .local v26, "group":Landroid/content/pm/FeatureGroupInfo;
    const/16 v23, 0x0

    .line 1668
    .local v23, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v29

    .line 1669
    .end local v23    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v29, "innerDepth":I
    :cond_1c
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v56

    const/4 v3, 0x1

    move/from16 v0, v56

    if-eq v0, v3, :cond_1f

    .line 1670
    const/4 v3, 0x3

    move/from16 v0, v56

    if-ne v0, v3, :cond_1d

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v29

    if-le v3, v0, :cond_1f

    .line 1671
    :cond_1d
    const/4 v3, 0x3

    move/from16 v0, v56

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x4

    move/from16 v0, v56

    if-eq v0, v3, :cond_1c

    .line 1675
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 1676
    .local v30, "innerTagName":Ljava/lang/String;
    const-string/jumbo v3, "uses-feature"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1677
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v22

    .line 1680
    .local v22, "featureInfo":Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, v22

    iget v3, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v22

    iput v3, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1681
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v23

    .line 1687
    .end local v22    # "featureInfo":Landroid/content/pm/FeatureInfo;
    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 1683
    :cond_1e
    const-string/jumbo v3, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <feature-group>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1684
    const-string/jumbo v6, " at "

    .line 1683
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1684
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1683
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1684
    const-string/jumbo v6, " "

    .line 1683
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1685
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 1683
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1690
    .end local v30    # "innerTagName":Ljava/lang/String;
    :cond_1f
    if-eqz v23, :cond_20

    .line 1691
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1692
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1694
    :cond_20
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1696
    .end local v26    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v29    # "innerDepth":I
    :cond_21
    const-string/jumbo v3, "uses-sdk"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1697
    sget v3, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v3, :cond_2f

    .line 1699
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    .line 1698
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v44

    .line 1701
    const/16 v34, 0x0

    .line 1702
    .local v34, "minVers":I
    const/16 v33, 0x0

    .line 1703
    .local v33, "minCode":Ljava/lang/String;
    const/16 v54, 0x0

    .line 1704
    .local v54, "targetVers":I
    const/16 v53, 0x0

    .line 1707
    .local v53, "targetCode":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1706
    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v57

    .line 1708
    .local v57, "val":Landroid/util/TypedValue;
    if-eqz v57, :cond_22

    .line 1709
    move-object/from16 v0, v57

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_25

    move-object/from16 v0, v57

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_25

    .line 1710
    move-object/from16 v0, v57

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    .local v33, "minCode":Ljava/lang/String;
    move-object/from16 v53, v33

    .line 1718
    .end local v33    # "minCode":Ljava/lang/String;
    .end local v53    # "targetCode":Ljava/lang/String;
    :cond_22
    :goto_4
    const/4 v3, 0x1

    .line 1717
    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v57

    .line 1719
    if-eqz v57, :cond_23

    .line 1720
    move-object/from16 v0, v57

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_26

    move-object/from16 v0, v57

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_26

    .line 1721
    move-object/from16 v0, v57

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "minCode":Ljava/lang/String;
    move-object/from16 v53, v33

    .line 1728
    .end local v33    # "minCode":Ljava/lang/String;
    :cond_23
    :goto_5
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    .line 1730
    if-eqz v33, :cond_29

    .line 1731
    const/16 v17, 0x0

    .line 1732
    .local v17, "allowedCodename":Z
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v6, v5

    :goto_6
    if-ge v3, v6, :cond_24

    aget-object v20, v5, v3

    .line 1733
    .local v20, "codename":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1734
    const/16 v17, 0x1

    .line 1738
    .end local v20    # "codename":Ljava/lang/String;
    :cond_24
    if-nez v17, :cond_2a

    .line 1739
    sget-object v3, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_28

    .line 1740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requires development platform "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1741
    const-string/jumbo v5, " (current platform is any of "

    .line 1740
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1742
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1740
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1742
    const-string/jumbo v5, ")"

    .line 1740
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, p4, v5

    .line 1747
    :goto_7
    const/16 v3, -0xc

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1748
    const/4 v3, 0x0

    return-object v3

    .line 1713
    .end local v17    # "allowedCodename":Z
    .local v33, "minCode":Ljava/lang/String;
    .restart local v53    # "targetCode":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v57

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v34, v0

    move/from16 v54, v34

    goto/16 :goto_4

    .line 1724
    .end local v33    # "minCode":Ljava/lang/String;
    .end local v53    # "targetCode":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v57

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v54, v0

    goto :goto_5

    .line 1732
    .restart local v17    # "allowedCodename":Z
    .restart local v20    # "codename":Ljava/lang/String;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1744
    .end local v20    # "codename":Ljava/lang/String;
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requires development platform "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1745
    const-string/jumbo v5, " but this is a release platform."

    .line 1744
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, p4, v5

    goto :goto_7

    .line 1750
    .end local v17    # "allowedCodename":Z
    :cond_29
    sget v3, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move/from16 v0, v34

    if-le v0, v3, :cond_2a

    .line 1751
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requires newer sdk version #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1752
    const-string/jumbo v5, " (current version is #"

    .line 1751
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1752
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 1751
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1752
    const-string/jumbo v5, ")"

    .line 1751
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, p4, v5

    .line 1753
    const/16 v3, -0xc

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1754
    const/4 v3, 0x0

    return-object v3

    .line 1757
    :cond_2a
    if-eqz v53, :cond_30

    .line 1758
    const/16 v17, 0x0

    .line 1759
    .restart local v17    # "allowedCodename":Z
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v6, v5

    :goto_8
    if-ge v3, v6, :cond_2b

    aget-object v20, v5, v3

    .line 1760
    .restart local v20    # "codename":Ljava/lang/String;
    move-object/from16 v0, v53

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 1761
    const/16 v17, 0x1

    .line 1765
    .end local v20    # "codename":Ljava/lang/String;
    :cond_2b
    if-nez v17, :cond_2e

    .line 1766
    sget-object v3, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_2d

    .line 1767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requires development platform "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1768
    const-string/jumbo v5, " (current platform is any of "

    .line 1767
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1769
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1767
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1769
    const-string/jumbo v5, ")"

    .line 1767
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, p4, v5

    .line 1774
    :goto_9
    const/16 v3, -0xc

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1775
    const/4 v3, 0x0

    return-object v3

    .line 1759
    .restart local v20    # "codename":Ljava/lang/String;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1771
    .end local v20    # "codename":Ljava/lang/String;
    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requires development platform "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1772
    const-string/jumbo v5, " but this is a release platform."

    .line 1771
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, p4, v5

    goto :goto_9

    .line 1778
    :cond_2e
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1779
    const/16 v5, 0x2710

    .line 1778
    iput v5, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1785
    .end local v17    # "allowedCodename":Z
    .end local v34    # "minVers":I
    .end local v54    # "targetVers":I
    .end local v57    # "val":Landroid/util/TypedValue;
    :cond_2f
    :goto_a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1781
    .restart local v34    # "minVers":I
    .restart local v54    # "targetVers":I
    .restart local v57    # "val":Landroid/util/TypedValue;
    :cond_30
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v54

    iput v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_a

    .line 1787
    .end local v34    # "minVers":I
    .end local v54    # "targetVers":I
    .end local v57    # "val":Landroid/util/TypedValue;
    :cond_31
    const-string/jumbo v3, "supports-screens"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1789
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    .line 1788
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v44

    .line 1791
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1792
    const/4 v5, 0x6

    .line 1793
    const/4 v6, 0x0

    .line 1791
    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 1794
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1795
    const/4 v5, 0x7

    .line 1796
    const/4 v6, 0x0

    .line 1794
    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 1797
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1798
    const/16 v5, 0x8

    .line 1799
    const/4 v6, 0x0

    .line 1797
    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 1804
    const/4 v3, 0x1

    .line 1803
    move-object/from16 v0, v44

    move/from16 v1, v50

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v50

    .line 1807
    const/4 v3, 0x2

    .line 1806
    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v49

    .line 1810
    const/4 v3, 0x3

    .line 1809
    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v48

    .line 1813
    const/4 v3, 0x5

    .line 1812
    move-object/from16 v0, v44

    move/from16 v1, v51

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v51

    .line 1816
    const/4 v3, 0x4

    .line 1815
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v43

    .line 1819
    const/4 v3, 0x0

    .line 1818
    move-object/from16 v0, v44

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v18

    .line 1822
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    .line 1824
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1826
    :cond_32
    const-string/jumbo v3, "protected-broadcast"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1828
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    .line 1827
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v44

    .line 1833
    const/4 v3, 0x0

    .line 1832
    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v35

    .line 1835
    .local v35, "name":Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    .line 1837
    if-eqz v35, :cond_34

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_34

    .line 1838
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v3, :cond_33

    .line 1839
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 1841
    :cond_33
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1842
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1846
    :cond_34
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1848
    .end local v35    # "name":Ljava/lang/String;
    :cond_35
    const-string/jumbo v3, "instrumentation"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    .line 1849
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1850
    const/4 v3, 0x0

    return-object v3

    .line 1853
    :cond_36
    const-string/jumbo v3, "original-package"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1855
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    .line 1854
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v44

    .line 1858
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1857
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v38

    .line 1859
    .local v38, "orig":Ljava/lang/String;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 1860
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v3, :cond_37

    .line 1861
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 1862
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 1864
    :cond_37
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1867
    :cond_38
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    .line 1869
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1871
    .end local v38    # "orig":Ljava/lang/String;
    :cond_39
    const-string/jumbo v3, "adopt-permissions"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1873
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    .line 1872
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v44

    .line 1876
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1875
    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v35

    .line 1878
    .restart local v35    # "name":Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    .line 1880
    if-eqz v35, :cond_3b

    .line 1881
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v3, :cond_3a

    .line 1882
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 1884
    :cond_3a
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1887
    :cond_3b
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1889
    .end local v35    # "name":Ljava/lang/String;
    :cond_3c
    const-string/jumbo v3, "uses-gl-texture"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1891
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1894
    :cond_3d
    const-string/jumbo v3, "compatible-screens"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1896
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1898
    :cond_3e
    const-string/jumbo v3, "supports-input"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1899
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1902
    :cond_3f
    const-string/jumbo v3, "eat-comment"

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1904
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1914
    :cond_40
    const-string/jumbo v3, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <manifest>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1915
    const-string/jumbo v6, " at "

    .line 1914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1915
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1915
    const-string/jumbo v6, " "

    .line 1914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1916
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 1914
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1922
    .end local v52    # "tagName":Ljava/lang/String;
    :cond_41
    if-nez v25, :cond_42

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_42

    .line 1923
    const-string/jumbo v3, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v5, 0x0

    aput-object v3, p4, v5

    .line 1924
    const/16 v3, -0x6d

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1927
    :cond_42
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v15, v3

    .line 1928
    .local v15, "NP":I
    const/16 v27, 0x0

    .line 1929
    .local v27, "implicitPerms":Ljava/lang/StringBuilder;
    const/16 v31, 0x0

    .end local v27    # "implicitPerms":Ljava/lang/StringBuilder;
    .local v31, "ip":I
    :goto_b
    move/from16 v0, v31

    if-ge v0, v15, :cond_43

    .line 1931
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 1930
    aget-object v37, v3, v31

    .line 1932
    .local v37, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v37

    iget v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v3, v5, :cond_46

    .line 1947
    .end local v37    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_43
    if-eqz v27, :cond_44

    .line 1948
    const-string/jumbo v3, "PackageParser"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_44
    sget-object v3, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v0, v3

    move/from16 v16, v0

    .line 1952
    .local v16, "NS":I
    const/16 v32, 0x0

    .local v32, "is":I
    :goto_c
    move/from16 v0, v32

    move/from16 v1, v16

    if-ge v0, v1, :cond_4a

    .line 1954
    sget-object v3, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 1953
    aget-object v45, v3, v32

    .line 1955
    .local v45, "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v45

    iget v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v3, v5, :cond_49

    .line 1956
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1959
    const/16 v28, 0x0

    .local v28, "in":I
    :goto_d
    move-object/from16 v0, v45

    iget-object v3, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_49

    .line 1960
    move-object/from16 v0, v45

    iget-object v3, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    aget-object v41, v3, v28

    .line 1961
    .local v41, "perm":Ljava/lang/String;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 1962
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    :cond_45
    add-int/lit8 v28, v28, 0x1

    goto :goto_d

    .line 1935
    .end local v16    # "NS":I
    .end local v28    # "in":I
    .end local v32    # "is":I
    .end local v41    # "perm":Ljava/lang/String;
    .end local v45    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    .restart local v37    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_46
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 1936
    if-nez v27, :cond_48

    .line 1937
    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1938
    .local v27, "implicitPerms":Ljava/lang/StringBuilder;
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    const-string/jumbo v3, ": compat added "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    .end local v27    # "implicitPerms":Ljava/lang/StringBuilder;
    :goto_e
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    :cond_47
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_b

    .line 1941
    :cond_48
    const/16 v3, 0x20

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1952
    .end local v37    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    .restart local v16    # "NS":I
    .restart local v32    # "is":I
    .restart local v45    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_49
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_c

    .line 1967
    .end local v45    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4a
    if-ltz v50, :cond_4b

    if-lez v50, :cond_4c

    .line 1968
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1969
    const/4 v5, 0x4

    .line 1968
    if-lt v3, v5, :cond_4c

    .line 1970
    :cond_4b
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1972
    :cond_4c
    if-eqz v49, :cond_4d

    .line 1973
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1975
    :cond_4d
    if-ltz v48, :cond_4e

    if-lez v48, :cond_4f

    .line 1976
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1977
    const/4 v5, 0x4

    .line 1976
    if-lt v3, v5, :cond_4f

    .line 1978
    :cond_4e
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1980
    :cond_4f
    if-ltz v51, :cond_50

    if-lez v51, :cond_51

    .line 1981
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1982
    const/16 v5, 0x9

    .line 1981
    if-lt v3, v5, :cond_51

    .line 1983
    :cond_50
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1985
    :cond_51
    if-ltz v43, :cond_52

    if-lez v43, :cond_53

    .line 1986
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1987
    const/4 v5, 0x4

    .line 1986
    if-lt v3, v5, :cond_53

    .line 1988
    :cond_52
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1990
    :cond_53
    if-ltz v18, :cond_54

    if-lez v18, :cond_55

    .line 1991
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1992
    const/4 v5, 0x4

    .line 1991
    if-lt v3, v5, :cond_55

    .line 1993
    :cond_54
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1996
    :cond_55
    return-object v4
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 34
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 887
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    .line 889
    .local v23, "apkPath":Ljava/lang/String;
    const/16 v33, 0x0

    .line 890
    .local v33, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v5, "/mnt/expand/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 891
    const/16 v5, 0x2f

    const-string/jumbo v6, "/mnt/expand/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v27

    .line 892
    .local v27, "end":I
    const-string/jumbo v5, "/mnt/expand/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 895
    .end local v27    # "end":I
    .end local v33    # "volumeUuid":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 896
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 900
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v24

    .line 902
    .local v24, "cookie":I
    const/16 v31, 0x0

    .line 903
    .local v31, "res":Landroid/content/res/Resources;
    const/16 v29, 0x0

    .line 905
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v32, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v32, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 906
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v22}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 908
    const-string/jumbo v5, "AndroidManifest.xml"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v29

    .line 910
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 911
    .local v28, "outError":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move/from16 v3, p3

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    .line 912
    .local v30, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v30, :cond_1

    .line 913
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 914
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v28, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 913
    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 923
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v25

    .local v25, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v31, v32

    .line 924
    .end local v32    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_2
    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 928
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v5

    .line 929
    :goto_1
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 928
    throw v5

    .line 917
    .restart local v28    # "outError":[Ljava/lang/String;
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :cond_1
    :try_start_3
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 918
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 919
    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 929
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 921
    return-object v30

    .line 925
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v26

    .line 926
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v26, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    .line 927
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to read manifest from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 926
    const/16 v7, -0x66

    move-object/from16 v0, v26

    invoke-direct {v5, v7, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 928
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v5

    move-object/from16 v31, v32

    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 923
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .local v31, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v25

    .restart local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    goto :goto_0

    .line 925
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v26

    .restart local v26    # "e":Ljava/lang/Exception;
    move-object/from16 v31, v32

    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z
    .locals 34
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2519
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    .line 2520
    .local v16, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2523
    .local v24, "pkgName":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    .line 2522
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v29

    .line 2526
    .local v29, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2525
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2527
    .local v22, "name":Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 2528
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2529
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2530
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    .line 2531
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2532
    const/4 v3, 0x0

    return v3

    .line 2537
    :cond_0
    const/4 v3, 0x4

    .line 2538
    const/16 v4, 0x400

    .line 2536
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 2539
    .local v21, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 2540
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 2545
    :cond_1
    const/16 v3, 0x11

    const/4 v4, 0x1

    .line 2544
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 2546
    .local v17, "allowBackup":Z
    if-eqz v17, :cond_5

    .line 2547
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v4, 0x8000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2552
    const/16 v3, 0x10

    .line 2553
    const/16 v4, 0x400

    .line 2551
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 2554
    .local v18, "backupAgent":Ljava/lang/String;
    if-eqz v18, :cond_4

    .line 2555
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2562
    const/16 v3, 0x12

    .line 2563
    const/4 v4, 0x1

    .line 2561
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2564
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2567
    :cond_2
    const/16 v3, 0x15

    .line 2568
    const/4 v4, 0x0

    .line 2566
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2569
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2572
    :cond_3
    const/16 v3, 0x20

    .line 2573
    const/4 v4, 0x0

    .line 2571
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2574
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2579
    :cond_4
    const/16 v3, 0x23

    .line 2578
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v33

    .line 2580
    .local v33, "v":Landroid/util/TypedValue;
    if-eqz v33, :cond_5

    move-object/from16 v0, v33

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v3, :cond_5

    .line 2586
    move-object/from16 v0, v33

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-nez v3, :cond_1b

    const/4 v3, -0x1

    :goto_0
    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 2594
    .end local v18    # "backupAgent":Ljava/lang/String;
    .end local v33    # "v":Landroid/util/TypedValue;
    :cond_5
    const/4 v3, 0x1

    .line 2593
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v33

    .line 2595
    .restart local v33    # "v":Landroid/util/TypedValue;
    if-eqz v33, :cond_6

    move-object/from16 v0, v33

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v3, :cond_6

    .line 2596
    invoke-virtual/range {v33 .. v33}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2600
    :cond_6
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 2599
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 2602
    const/16 v3, 0x16

    const/4 v4, 0x0

    .line 2601
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    .line 2604
    const/16 v3, 0x1e

    const/4 v4, 0x0

    .line 2603
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    .line 2606
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2605
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 2608
    const/16 v3, 0xd

    const/4 v4, 0x0

    .line 2607
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 2610
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_7

    .line 2612
    const/16 v3, 0x8

    .line 2613
    const/4 v4, 0x0

    .line 2611
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2614
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x8

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2619
    :cond_7
    const/16 v3, 0x1b

    .line 2620
    const/4 v4, 0x0

    .line 2618
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2621
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 2624
    :cond_8
    const/16 v3, 0x1c

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 2626
    .local v27, "restrictedAccountType":Ljava/lang/String;
    if-eqz v27, :cond_9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 2627
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 2630
    :cond_9
    const/16 v3, 0x1d

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2632
    .local v26, "requiredAccountType":Ljava/lang/String;
    if-eqz v26, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 2633
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 2637
    :cond_a
    const/16 v3, 0xa

    .line 2638
    const/4 v4, 0x0

    .line 2636
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2639
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2643
    :cond_b
    const/16 v3, 0x14

    .line 2644
    const/4 v4, 0x0

    .line 2642
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2645
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x4000

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2650
    :cond_c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1c

    const/4 v3, 0x1

    .line 2649
    :goto_1
    const/16 v4, 0x17

    .line 2648
    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 2651
    move-object/from16 v0, p1

    iget-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    if-eqz v3, :cond_d

    .line 2652
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2660
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/PackageParser;->isDefaultSWRender()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2661
    const-string/jumbo v4, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[swRender] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", hwui-ori"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", sdk-check: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xe

    if-lt v3, v7, :cond_1d

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_f

    .line 2664
    const-string/jumbo v3, "android"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2665
    const-string/jumbo v3, "com.android.vending"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2664
    if-nez v3, :cond_e

    .line 2666
    const-string/jumbo v3, "com.android.facelock"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2664
    if-nez v3, :cond_e

    .line 2667
    const-string/jumbo v3, "chrome"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2664
    if-nez v3, :cond_e

    .line 2668
    const-string/jumbo v3, "google"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2664
    if-eqz v3, :cond_1e

    .line 2669
    :cond_e
    const-string/jumbo v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[swRender] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "skip, hwui-ori: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    :cond_f
    :goto_3
    const-string/jumbo v4, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[swRender] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", system-app: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", hwui-res: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-boolean v6, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    :cond_10
    const/4 v3, 0x7

    .line 2702
    const/4 v4, 0x1

    .line 2700
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2703
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2707
    :cond_11
    const/16 v3, 0xe

    .line 2708
    const/4 v4, 0x0

    .line 2706
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2709
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2713
    :cond_12
    const/4 v3, 0x5

    .line 2714
    const/4 v4, 0x1

    .line 2712
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2715
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2719
    :cond_13
    const/16 v3, 0xf

    .line 2720
    const/4 v4, 0x0

    .line 2718
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2721
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2725
    :cond_14
    const/16 v3, 0x18

    .line 2726
    const/4 v4, 0x0

    .line 2724
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2727
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2731
    :cond_15
    const/16 v3, 0x24

    .line 2732
    const/4 v4, 0x1

    .line 2730
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2733
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2737
    :cond_16
    const/16 v3, 0x1a

    .line 2738
    const/4 v4, 0x0

    .line 2736
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2739
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x400000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2743
    :cond_17
    const/16 v3, 0x21

    .line 2744
    const/4 v4, 0x0

    .line 2742
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2745
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2749
    :cond_18
    const/16 v3, 0x22

    .line 2750
    const/4 v4, 0x1

    .line 2748
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2751
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2756
    :cond_19
    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 2755
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v30

    .line 2757
    .local v30, "str":Ljava/lang/String;
    if-eqz v30, :cond_22

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_22

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    :goto_5
    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 2759
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_23

    .line 2761
    const/16 v3, 0xc

    .line 2762
    const/16 v4, 0x400

    .line 2760
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v30

    .line 2770
    :goto_6
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p6

    invoke-static {v3, v4, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 2773
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-nez v3, :cond_1a

    .line 2775
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_24

    .line 2777
    const/16 v3, 0xb

    .line 2778
    const/16 v4, 0x400

    .line 2776
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 2786
    .local v5, "pname":Ljava/lang/CharSequence;
    :goto_7
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2787
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 2786
    const/4 v4, 0x0

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2790
    const/16 v3, 0x9

    const/4 v4, 0x1

    .line 2789
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, v16

    iput-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 2792
    const/16 v3, 0x1f

    const/4 v4, 0x0

    .line 2791
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2793
    move-object/from16 v0, v16

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x2000000

    or-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2812
    .end local v5    # "pname":Ljava/lang/CharSequence;
    :cond_1a
    const/16 v3, 0x19

    const/4 v4, 0x0

    .line 2811
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 2814
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    .line 2816
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_25

    .line 2817
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2818
    const/4 v3, 0x0

    return v3

    .line 2586
    .end local v26    # "requiredAccountType":Ljava/lang/String;
    .end local v27    # "restrictedAccountType":Ljava/lang/String;
    .end local v30    # "str":Ljava/lang/String;
    .restart local v18    # "backupAgent":Ljava/lang/String;
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2650
    .end local v18    # "backupAgent":Ljava/lang/String;
    .restart local v26    # "requiredAccountType":Ljava/lang/String;
    .restart local v27    # "restrictedAccountType":Ljava/lang/String;
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2661
    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2673
    :cond_1e
    const-string/jumbo v3, "android"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2674
    const-string/jumbo v3, "mediatek"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2679
    :cond_1f
    :goto_8
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_f

    .line 2680
    const/16 v3, 0x17

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p1

    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    goto/16 :goto_3

    .line 2675
    :cond_20
    const-string/jumbo v3, ".mtk."

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_8

    .line 2684
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 2757
    .restart local v30    # "str":Ljava/lang/String;
    :cond_22
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 2768
    :cond_23
    const/16 v3, 0xc

    .line 2767
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_6

    .line 2784
    :cond_24
    const/16 v3, 0xb

    .line 2783
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "pname":Ljava/lang/CharSequence;
    goto/16 :goto_7

    .line 2821
    .end local v5    # "pname":Ljava/lang/CharSequence;
    :cond_25
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 2823
    .local v19, "innerDepth":I
    :cond_26
    :goto_9
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .local v32, "type":I
    const/4 v3, 0x1

    move/from16 v0, v32

    if-eq v0, v3, :cond_39

    .line 2824
    const/4 v3, 0x3

    move/from16 v0, v32

    if-ne v0, v3, :cond_27

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_39

    .line 2825
    :cond_27
    const/4 v3, 0x3

    move/from16 v0, v32

    if-eq v0, v3, :cond_26

    const/4 v3, 0x4

    move/from16 v0, v32

    if-eq v0, v3, :cond_26

    .line 2829
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    .line 2830
    .local v31, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "activity"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2832
    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 2831
    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 2833
    .local v15, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_28

    .line 2834
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2835
    const/4 v3, 0x0

    return v3

    .line 2838
    :cond_28
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2840
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_29
    const-string/jumbo v3, "receiver"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2841
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 2842
    .restart local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_2a

    .line 2843
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2844
    const/4 v3, 0x0

    return v3

    .line 2847
    :cond_2a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 2849
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2b
    const-string/jumbo v3, "service"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2850
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v28

    .line 2851
    .local v28, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v28, :cond_2c

    .line 2852
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2853
    const/4 v3, 0x0

    return v3

    .line 2856
    :cond_2c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 2858
    .end local v28    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_2d
    const-string/jumbo v3, "provider"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2859
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v23

    .line 2860
    .local v23, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v23, :cond_2e

    .line 2861
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2862
    const/4 v3, 0x0

    return v3

    .line 2865
    :cond_2e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 2867
    .end local v23    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_2f
    const-string/jumbo v3, "activity-alias"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2868
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 2869
    .restart local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_30

    .line 2870
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2871
    const/4 v3, 0x0

    return v3

    .line 2874
    :cond_30
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 2876
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_31
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2880
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v6 .. v11}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v3, :cond_26

    .line 2882
    const/16 v3, -0x6c

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2883
    const/4 v3, 0x0

    return v3

    .line 2886
    :cond_32
    const-string/jumbo v3, "library"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2888
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    .line 2887
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v29

    .line 2893
    const/4 v3, 0x0

    .line 2892
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 2895
    .local v20, "lname":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    .line 2897
    if-eqz v20, :cond_33

    .line 2898
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 2899
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 2900
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 2904
    :cond_33
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 2906
    .end local v20    # "lname":Ljava/lang/String;
    :cond_34
    const-string/jumbo v3, "uses-library"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2908
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    .line 2907
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v29

    .line 2913
    const/4 v3, 0x0

    .line 2912
    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 2915
    .restart local v20    # "lname":Ljava/lang/String;
    const/4 v3, 0x1

    .line 2916
    const/4 v4, 0x1

    .line 2914
    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    .line 2918
    .local v25, "req":Z
    invoke-virtual/range {v29 .. v29}, Landroid/content/res/TypedArray;->recycle()V

    .line 2920
    if-eqz v20, :cond_35

    .line 2921
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 2922
    if-eqz v25, :cond_36

    .line 2923
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 2930
    :cond_35
    :goto_a
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 2926
    :cond_36
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 2925
    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_a

    .line 2932
    .end local v20    # "lname":Ljava/lang/String;
    .end local v25    # "req":Z
    :cond_37
    const-string/jumbo v3, "uses-package"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2935
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 2939
    :cond_38
    const-string/jumbo v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <application>: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2940
    const-string/jumbo v6, " at "

    .line 2939
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2940
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 2939
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2940
    const-string/jumbo v6, " "

    .line 2939
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2941
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 2939
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 2952
    .end local v31    # "tagName":Ljava/lang/String;
    :cond_39
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V

    .line 2954
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2955
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2960
    :goto_b
    const/4 v3, 0x1

    return v3

    .line 2957
    :cond_3a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, -0x11

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_b
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 791
    invoke-static {p1, v7}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v3

    .line 793
    .local v3, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v8, :cond_0

    iget-boolean v8, v3, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v8, :cond_1

    .line 798
    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 802
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-static {v0, v8, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    .line 804
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 805
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v5, v8, v7

    .line 806
    .local v5, "path":Ljava/lang/String;
    invoke-static {v0, v5, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 794
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "path":Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    .line 795
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not a coreApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 794
    const/16 v9, -0x6c

    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 810
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .local v1, "baseApk":Ljava/io/File;
    invoke-direct {p0, v1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 812
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_3

    .line 813
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    .line 814
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to parse base APK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 813
    const/16 v9, -0x64

    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    .end local v1    # "baseApk":Ljava/io/File;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    .line 833
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 832
    throw v7

    .line 817
    .restart local v1    # "baseApk":Ljava/io/File;
    .restart local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_3
    :try_start_2
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 818
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v4, v7

    .line 819
    .local v4, "num":I
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 820
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 821
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 822
    new-array v7, v4, [I

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 823
    new-array v7, v4, [I

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 825
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 826
    invoke-direct {p0, v6, v2, v0, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 825
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 830
    .end local v2    # "i":I
    .end local v4    # "num":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 833
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 831
    return-object v6
.end method

.method private static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 17
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 688
    .local v9, "files":[Ljava/io/File;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 690
    const-string/jumbo v15, "No packages found in split"

    .line 689
    const/16 v16, -0x64

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 693
    :cond_0
    const/4 v12, 0x0

    .line 694
    .local v12, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 696
    .local v14, "versionCode":I
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 697
    .local v7, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    const/4 v1, 0x0

    array-length v15, v9

    .end local v12    # "packageName":Ljava/lang/String;
    :goto_0
    if-ge v1, v15, :cond_5

    aget-object v8, v9, v1

    .line 698
    .local v8, "file":Ljava/io/File;
    invoke-static {v8}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 699
    move/from16 v0, p1

    invoke-static {v8, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v11

    .line 703
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v12, :cond_2

    .line 704
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 705
    .local v12, "packageName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 720
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 721
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 722
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Split name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 723
    const-string/jumbo v16, " defined more than once; most recent was "

    .line 722
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 721
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 707
    :cond_2
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 708
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 709
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Inconsistent package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 710
    const-string/jumbo v16, "; expected "

    .line 709
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 708
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 712
    :cond_3
    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_1

    .line 713
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 714
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Inconsistent version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 715
    const-string/jumbo v16, "; expected "

    .line 714
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 713
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 697
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 728
    .end local v8    # "file":Ljava/io/File;
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ApkLite;

    .line 729
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v3, :cond_6

    .line 730
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 731
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Missing base APK in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 730
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 735
    :cond_6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 737
    .local v13, "size":I
    const/4 v4, 0x0

    .line 738
    .local v4, "splitNames":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 739
    .local v5, "splitCodePaths":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 740
    .local v6, "splitRevisionCodes":[I
    if-lez v13, :cond_7

    .line 741
    new-array v4, v13, [Ljava/lang/String;

    .line 742
    .local v4, "splitNames":[Ljava/lang/String;
    new-array v5, v13, [Ljava/lang/String;

    .line 743
    .local v5, "splitCodePaths":[Ljava/lang/String;
    new-array v6, v13, [I

    .line 745
    .local v6, "splitRevisionCodes":[I
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "splitNames":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 746
    .restart local v4    # "splitNames":[Ljava/lang/String;
    sget-object v1, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 748
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_7

    .line 749
    aget-object v1, v4, v10

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v1, v1, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v1, v5, v10

    .line 750
    aget-object v1, v4, v10

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    iget v1, v1, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v1, v6, v10

    .line 748
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 754
    .end local v4    # "splitNames":[Ljava/lang/String;
    .end local v5    # "splitCodePaths":[Ljava/lang/String;
    .end local v6    # "splitRevisionCodes":[I
    .end local v10    # "i":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 755
    .local v2, "codePath":Ljava/lang/String;
    new-instance v1, Landroid/content/pm/PackageParser$PackageLite;

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v1
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 10
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2453
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    .line 2452
    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2455
    .local v8, "sa":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

    .line 2456
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2457
    const/4 v3, 0x2

    .line 2458
    const/4 v4, 0x0

    .line 2459
    const/4 v5, 0x1

    .line 2460
    const/4 v6, 0x6

    .line 2461
    const/4 v7, 0x7

    move-object v1, p1

    move-object v2, p5

    .line 2456
    invoke-direct/range {v0 .. v7}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2462
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string/jumbo v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2465
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v8, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2467
    new-instance v5, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2468
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 2467
    invoke-direct {v5, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 2469
    .local v5, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v0, p5, v0

    if-eqz v0, :cond_1

    .line 2470
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2471
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2472
    const/4 v0, 0x0

    return-object v0

    .line 2479
    :cond_1
    const/4 v0, 0x3

    .line 2478
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    .line 2480
    .local v9, "str":Ljava/lang/String;
    iget-object v1, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 2482
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 2483
    const/4 v1, 0x4

    .line 2484
    const/4 v2, 0x0

    .line 2482
    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 2486
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 2487
    const/4 v1, 0x5

    .line 2488
    const/4 v2, 0x0

    .line 2486
    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 2490
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2492
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2493
    const-string/jumbo v0, "<instrumentation> does not specify targetPackage"

    const/4 v1, 0x0

    aput-object v0, p5, v1

    .line 2494
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2495
    const/4 v0, 0x0

    return-object v0

    .line 2480
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2498
    :cond_3
    const-string/jumbo v4, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2500
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2501
    const/4 v0, 0x0

    return-object v0

    .line 2504
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    return-object v5
.end method

.method private parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "allowGlobs"    # Z
    .param p5, "allowAutoVerify"    # Z
    .param p6, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p7, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4252
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    .line 4251
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 4255
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v13, 0x2

    const/4 v14, 0x0

    .line 4254
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 4256
    .local v7, "priority":I
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 4259
    const/4 v13, 0x0

    .line 4258
    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v11

    .line 4260
    .local v11, "v":Landroid/util/TypedValue;
    if-eqz v11, :cond_0

    iget v13, v11, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p6

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v13, :cond_0

    .line 4261
    invoke-virtual {v11}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p6

    iput-object v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4265
    :cond_0
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 4264
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p6

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 4268
    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 4267
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p6

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 4271
    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 4270
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p6

    iput v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 4273
    if-eqz p5, :cond_1

    .line 4275
    const/4 v13, 0x5

    .line 4276
    const/4 v14, 0x0

    .line 4274
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    .line 4279
    :cond_1
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 4281
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 4283
    .local v5, "outerDepth":I
    :cond_2
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v13, 0x1

    if-eq v10, v13, :cond_16

    .line 4284
    const/4 v13, 0x3

    if-ne v10, v13, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_16

    .line 4285
    :cond_3
    const/4 v13, 0x3

    if-eq v10, v13, :cond_2

    const/4 v13, 0x4

    if-eq v10, v13, :cond_2

    .line 4289
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4290
    .local v4, "nodeName":Ljava/lang/String;
    const-string/jumbo v13, "action"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4292
    const-string/jumbo v13, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v14, "name"

    .line 4291
    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4293
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_4

    const-string/jumbo v13, ""

    if-ne v12, v13, :cond_5

    .line 4294
    :cond_4
    const-string/jumbo v13, "No value supplied for <android:name>"

    const/4 v14, 0x0

    aput-object v13, p7, v14

    .line 4295
    const/4 v13, 0x0

    return v13

    .line 4297
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4299
    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 4300
    .end local v12    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v13, "category"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 4302
    const-string/jumbo v13, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v14, "name"

    .line 4301
    move-object/from16 v0, p3

    invoke-interface {v0, v13, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4303
    .restart local v12    # "value":Ljava/lang/String;
    if-eqz v12, :cond_7

    const-string/jumbo v13, ""

    if-ne v12, v13, :cond_8

    .line 4304
    :cond_7
    const-string/jumbo v13, "No value supplied for <android:name>"

    const/4 v14, 0x0

    aput-object v13, p7, v14

    .line 4305
    const/4 v13, 0x0

    return v13

    .line 4307
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4309
    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 4311
    .end local v12    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo v13, "data"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 4313
    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    .line 4312
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 4316
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4315
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4317
    .local v9, "str":Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 4319
    :try_start_0
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4328
    :cond_a
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 4327
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4329
    if-eqz v9, :cond_b

    .line 4330
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 4334
    :cond_b
    const/4 v13, 0x7

    const/4 v14, 0x0

    .line 4333
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4335
    if-eqz v9, :cond_c

    .line 4336
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4340
    :cond_c
    const/16 v13, 0x8

    const/4 v14, 0x0

    .line 4339
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4341
    if-eqz v9, :cond_d

    .line 4342
    const/4 v13, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4346
    :cond_d
    const/16 v13, 0x9

    const/4 v14, 0x0

    .line 4345
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4347
    if-eqz v9, :cond_f

    .line 4348
    if-nez p4, :cond_e

    .line 4349
    const-string/jumbo v13, "sspPattern not allowed here; ssp must be literal"

    const/4 v14, 0x0

    aput-object v13, p7, v14

    .line 4350
    const/4 v13, 0x0

    return v13

    .line 4320
    :catch_0
    move-exception v2

    .line 4321
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, p7, v14

    .line 4322
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 4323
    const/4 v13, 0x0

    return v13

    .line 4352
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_e
    const/4 v13, 0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4356
    :cond_f
    const/4 v13, 0x2

    const/4 v14, 0x0

    .line 4355
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 4358
    .local v3, "host":Ljava/lang/String;
    const/4 v13, 0x3

    const/4 v14, 0x0

    .line 4357
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 4359
    .local v6, "port":Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 4360
    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 4364
    :cond_10
    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 4363
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4365
    if-eqz v9, :cond_11

    .line 4366
    const/4 v13, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4370
    :cond_11
    const/4 v13, 0x5

    const/4 v14, 0x0

    .line 4369
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4371
    if-eqz v9, :cond_12

    .line 4372
    const/4 v13, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4376
    :cond_12
    const/4 v13, 0x6

    const/4 v14, 0x0

    .line 4375
    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 4377
    if-eqz v9, :cond_14

    .line 4378
    if-nez p4, :cond_13

    .line 4379
    const-string/jumbo v13, "pathPattern not allowed here; path must be literal"

    const/4 v14, 0x0

    aput-object v13, p7, v14

    .line 4380
    const/4 v13, 0x0

    return v13

    .line 4382
    :cond_13
    const/4 v13, 0x2

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v13}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4385
    :cond_14
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 4386
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4388
    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    :cond_15
    const-string/jumbo v13, "PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unknown element under <intent-filter>: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4389
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 4388
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4389
    const-string/jumbo v15, " at "

    .line 4388
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4389
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4388
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4389
    const-string/jumbo v15, " "

    .line 4388
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 4390
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    .line 4388
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4398
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_16
    const-string/jumbo v13, "android.intent.category.DEFAULT"

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p6

    iput-boolean v13, v0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 4415
    const/4 v13, 0x1

    return v13
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Z
    .locals 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2148
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 2149
    .local v14, "outerDepth":I
    const/4 v5, -0x1

    .line 2151
    .local v5, "currentKeySetDepth":I
    const/4 v4, 0x0

    .line 2152
    .local v4, "currentKeySet":Ljava/lang/String;
    new-instance v17, Landroid/util/ArrayMap;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    .line 2153
    .local v17, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v23, Landroid/util/ArraySet;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    .line 2154
    .local v23, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 2155
    .local v6, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2156
    .end local v4    # "currentKeySet":Ljava/lang/String;
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    .line 2157
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v14, :cond_d

    .line 2158
    :cond_1
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2159
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-ne v0, v5, :cond_0

    .line 2160
    const/4 v4, 0x0

    .line 2161
    .restart local v4    # "currentKeySet":Ljava/lang/String;
    const/4 v5, -0x1

    goto :goto_0

    .line 2165
    .end local v4    # "currentKeySet":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 2166
    .local v21, "tagName":Ljava/lang/String;
    const-string/jumbo v24, "key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 2167
    if-eqz v4, :cond_3

    .line 2168
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2169
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2168
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p5, v25

    .line 2170
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2171
    const/16 v24, 0x0

    return v24

    .line 2174
    :cond_3
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    .line 2173
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2176
    .local v20, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    .line 2175
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    .line 2177
    .local v12, "keysetName":Ljava/lang/String;
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v6, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    move-object v4, v12

    .line 2179
    .local v4, "currentKeySet":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 2180
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 2181
    .end local v4    # "currentKeySet":Ljava/lang/String;
    .end local v12    # "keysetName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_4
    const-string/jumbo v24, "public-key"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 2182
    if-nez v4, :cond_5

    .line 2183
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2184
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2183
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p5, v25

    .line 2185
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2186
    const/16 v24, 0x0

    return v24

    .line 2189
    :cond_5
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    .line 2188
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2191
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    .line 2190
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    .line 2193
    .local v15, "publicKeyName":Ljava/lang/String;
    const/16 v24, 0x1

    .line 2192
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    .line 2194
    .local v9, "encodedKey":Ljava/lang/String;
    if-nez v9, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_6

    .line 2195
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "\'public-key\' "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " must define a public-key value"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2196
    const-string/jumbo v25, " on first use at "

    .line 2195
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2196
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2195
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p5, v25

    .line 2197
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2198
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2199
    const/16 v24, 0x0

    return v24

    .line 2200
    :cond_6
    if-eqz v9, :cond_9

    .line 2201
    invoke-static {v9}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 2202
    .local v3, "currentKey":Ljava/security/PublicKey;
    if-nez v3, :cond_7

    .line 2203
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2204
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    .line 2203
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2204
    const-string/jumbo v26, " key-set "

    .line 2203
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2205
    const-string/jumbo v26, " will not be added to the package\'s defined key-sets."

    .line 2203
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2207
    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2208
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2211
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_8

    .line 2212
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/security/PublicKey;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 2211
    if-eqz v24, :cond_a

    .line 2215
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_9
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2226
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2227
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2217
    .restart local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Value of \'public-key\' "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2218
    const-string/jumbo v25, " conflicts with previously defined value at "

    .line 2217
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2219
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2217
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p5, v25

    .line 2220
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2221
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2222
    const/16 v24, 0x0

    return v24

    .line 2228
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    .end local v9    # "encodedKey":Ljava/lang/String;
    .end local v15    # "publicKeyName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    const-string/jumbo v24, "upgrade-key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 2230
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    .line 2229
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2232
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    .line 2231
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 2233
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2234
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2235
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2243
    .end local v13    # "name":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_c
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknown element under <key-sets>: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2244
    const-string/jumbo v26, " at "

    .line 2243
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2243
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2244
    const-string/jumbo v26, " "

    .line 2243
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2245
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    .line 2243
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2250
    .end local v21    # "tagName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 2251
    .local v16, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 2252
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " AndroidManifext.xml "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2253
    const-string/jumbo v25, "\'key-set\' and \'public-key\' names must be distinct."

    .line 2252
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p5, v25

    .line 2254
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2255
    const/16 v24, 0x0

    return v24

    .line 2257
    :cond_e
    new-instance v24, Landroid/util/ArrayMap;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 2258
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "e$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2259
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2260
    .local v11, "keySetName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArraySet;->size()I

    move-result v24

    if-nez v24, :cond_10

    .line 2261
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2262
    const-string/jumbo v26, "\'key-set\' "

    .line 2261
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2262
    const-string/jumbo v26, " has no valid associated \'public-key\'."

    .line 2261
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2263
    const-string/jumbo v26, " Not including in package\'s defined key-sets."

    .line 2261
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2265
    :cond_10
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 2266
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2267
    const-string/jumbo v26, "\'key-set\' "

    .line 2266
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2267
    const-string/jumbo v26, " contained improper \'public-key\'"

    .line 2266
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2268
    const-string/jumbo v26, " tags. Not including in package\'s defined key-sets."

    .line 2266
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2271
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    new-instance v25, Landroid/util/ArraySet;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2273
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v17 .. v18}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/security/PublicKey;

    invoke-virtual/range {v24 .. v25}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2276
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v11    # "keySetName":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    .end local v19    # "s$iterator":Ljava/util/Iterator;
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 2277
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 2284
    const/16 v24, 0x1

    return v24

    .line 2279
    :cond_13
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " AndroidManifext.xml "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2280
    const-string/jumbo v25, "does not define all \'upgrade-key-set\'s ."

    .line 2279
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p5, v25

    .line 2281
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2282
    const/16 v24, 0x0

    return v24
.end method

.method private parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "data"    # Landroid/os/Bundle;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 4109
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    .line 4108
    invoke-virtual {p1, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 4111
    .local v2, "sa":Landroid/content/res/TypedArray;
    if-nez p4, :cond_0

    .line 4112
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "data":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 4115
    .restart local p4    # "data":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4117
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 4118
    const-string/jumbo v5, "<meta-data> requires an android:name attribute"

    aput-object v5, p5, v6

    .line 4119
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4120
    return-object v4

    .line 4123
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 4126
    const/4 v7, 0x2

    .line 4125
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4127
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_2

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_2

    .line 4129
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4161
    .end local p4    # "data":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4163
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4165
    return-object p4

    .line 4131
    .restart local p4    # "data":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4134
    if-eqz v3, :cond_9

    .line 4135
    iget v7, v3, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 4136
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4137
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4138
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    .line 4139
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    .line 4140
    :cond_6
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7

    .line 4141
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7

    .line 4142
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4143
    :cond_7
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 4144
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 4147
    :cond_8
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4148
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4148
    const-string/jumbo v6, " at "

    .line 4147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4148
    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4148
    const-string/jumbo v6, " "

    .line 4147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4149
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4156
    :cond_9
    const-string/jumbo v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p5, v6

    .line 4157
    const/4 p4, 0x0

    .local p4, "data":Landroid/os/Bundle;
    goto/16 :goto_0
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 6
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 680
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v2

    .line 681
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "packagePath":Ljava/lang/String;
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method private parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z
    .locals 8
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "outError"    # [Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "sa"    # Landroid/content/res/TypedArray;
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "logoRes"    # I
    .param p10, "bannerRes"    # I

    .prologue
    .line 3142
    const/4 v6, 0x0

    invoke-virtual {p5, p6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 3143
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 3144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not specify android:name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, p3, v7

    .line 3145
    const/4 v6, 0x0

    return v6

    .line 3149
    :cond_0
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v4, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3148
    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 3150
    iget-object v6, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 3151
    const/4 v6, 0x0

    return v6

    .line 3154
    :cond_1
    const/4 v6, 0x0

    move/from16 v0, p8

    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 3155
    .local v2, "iconVal":I
    if-eqz v2, :cond_2

    .line 3156
    iput v2, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 3157
    const/4 v6, 0x0

    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3160
    :cond_2
    const/4 v6, 0x0

    move/from16 v0, p9

    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 3161
    .local v3, "logoVal":I
    if-eqz v3, :cond_3

    .line 3162
    iput v3, p2, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 3165
    :cond_3
    const/4 v6, 0x0

    move/from16 v0, p10

    invoke-virtual {p5, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3166
    .local v1, "bannerVal":I
    if-eqz v1, :cond_4

    .line 3167
    iput v1, p2, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 3170
    :cond_4
    invoke-virtual {p5, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 3171
    .local v5, "v":Landroid/util/TypedValue;
    if-eqz v5, :cond_5

    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    iput v6, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v6, :cond_5

    .line 3172
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3175
    :cond_5
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v6, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3177
    const/4 v6, 0x1

    return v6
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    .line 674
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/16 v10, -0x6a

    const/16 v9, -0x6c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1274
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 1275
    if-ne v3, v8, :cond_0

    .line 1278
    :cond_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 1279
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1280
    const-string/jumbo v5, "No start tag found"

    .line 1279
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1282
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1283
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1284
    const-string/jumbo v5, "No <manifest> tag"

    .line 1283
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1287
    :cond_3
    const-string/jumbo v4, "package"

    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "android"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1289
    invoke-static {v1, v8, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1290
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1291
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid manifest package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1291
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1296
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "split"

    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1297
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1298
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 1299
    const/4 v2, 0x0

    .line 1309
    .end local v2    # "splitName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 1310
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 1309
    :cond_6
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 1301
    .restart local v2    # "splitName":Ljava/lang/String;
    :cond_7
    invoke-static {v2, v7, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1302
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1303
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid manifest split: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1303
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2334
    new-instance v13, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2337
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    .line 2336
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2339
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2340
    const-string/jumbo v6, "<permission>"

    .line 2341
    const/4 v8, 0x2

    .line 2342
    const/4 v9, 0x0

    .line 2343
    const/4 v10, 0x1

    .line 2344
    const/4 v11, 0x6

    .line 2345
    const/16 v12, 0x8

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    .line 2339
    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2346
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2347
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2348
    const/4 v2, 0x0

    return-object v2

    .line 2353
    :cond_0
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2354
    const/4 v3, 0x4

    .line 2353
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 2355
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2356
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 2359
    :cond_1
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2360
    const/4 v3, 0x5

    .line 2361
    const/4 v4, 0x0

    .line 2359
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 2363
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2364
    const/4 v3, 0x3

    .line 2365
    const/4 v4, 0x0

    .line 2363
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2367
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2368
    const/4 v3, 0x7

    const/4 v4, 0x0

    .line 2367
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->flags:I

    .line 2370
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2372
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 2373
    const-string/jumbo v2, "<permission> does not specify protectionLevel"

    const/4 v3, 0x0

    aput-object v2, p5, v3

    .line 2374
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2375
    const/4 v2, 0x0

    return-object v2

    .line 2378
    :cond_2
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2380
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v2, v2, 0xff0

    if-eqz v2, :cond_3

    .line 2381
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v2, v2, 0xf

    .line 2382
    const/4 v3, 0x2

    .line 2381
    if-eq v2, v3, :cond_3

    .line 2383
    const-string/jumbo v2, "<permission>  protectionLevel specifies a flag but is not based on signature type"

    const/4 v3, 0x0

    aput-object v2, p5, v3

    .line 2385
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2386
    const/4 v2, 0x0

    return-object v2

    .line 2390
    :cond_3
    const-string/jumbo v12, "<permission>"

    move-object v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2392
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2393
    const/4 v2, 0x0

    return-object v2

    .line 2396
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2398
    return-object v13
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2290
    new-instance v13, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2293
    .local v13, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    .line 2292
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2295
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2296
    const-string/jumbo v6, "<permission-group>"

    .line 2297
    const/4 v8, 0x2

    .line 2298
    const/4 v9, 0x0

    .line 2299
    const/4 v10, 0x1

    .line 2300
    const/4 v11, 0x5

    .line 2301
    const/4 v12, 0x7

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p6

    .line 2295
    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2302
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2303
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2304
    const/4 v2, 0x0

    return-object v2

    .line 2307
    :cond_0
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2308
    const/4 v3, 0x4

    .line 2309
    const/4 v4, 0x0

    .line 2307
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 2310
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2311
    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 2310
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 2312
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2313
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2312
    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 2314
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget v2, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    if-lez v2, :cond_1

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1

    .line 2315
    iget-object v2, v13, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 2318
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2320
    const-string/jumbo v12, "<permission-group>"

    move-object v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2322
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2323
    const/4 v2, 0x0

    return-object v2

    .line 2326
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2328
    return-object v13
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 16
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2404
    new-instance v13, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2407
    .local v13, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    .line 2406
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2409
    .local v7, "sa":Landroid/content/res/TypedArray;
    iget-object v4, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2410
    const-string/jumbo v6, "<permission-tree>"

    .line 2411
    const/4 v8, 0x2

    .line 2412
    const/4 v9, 0x0

    .line 2413
    const/4 v10, 0x1

    .line 2414
    const/4 v11, 0x3

    .line 2415
    const/4 v12, 0x4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    .line 2409
    invoke-direct/range {v2 .. v12}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2416
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2417
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2418
    const/4 v2, 0x0

    return-object v2

    .line 2421
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 2423
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 2424
    .local v15, "index":I
    if-lez v15, :cond_1

    .line 2425
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 2427
    :cond_1
    if-gez v15, :cond_2

    .line 2428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<permission-tree> name has less than three segments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2429
    iget-object v3, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p5, v3

    .line 2430
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2431
    const/4 v2, 0x0

    return-object v2

    .line 2434
    :cond_2
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 2435
    iget-object v2, v13, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2436
    const/4 v2, 0x1

    iput-boolean v2, v13, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 2438
    const-string/jumbo v12, "<permission-tree>"

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2440
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2441
    const/4 v2, 0x0

    return-object v2

    .line 2444
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    return-object v13
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .locals 19
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3631
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    .line 3630
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 3633
    .local v17, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_0

    .line 3634
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3640
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 3635
    const/4 v5, 0x2

    .line 3636
    const/4 v6, 0x0

    .line 3637
    const/4 v7, 0x1

    .line 3638
    const/16 v8, 0xf

    .line 3639
    const/16 v9, 0x11

    .line 3641
    const/16 v11, 0x8

    .line 3642
    const/16 v12, 0xe

    .line 3643
    const/4 v13, 0x6

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    .line 3634
    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3644
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v3, "<provider>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3647
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3648
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3650
    new-instance v6, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ProviderInfo;

    invoke-direct {v3}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v6, v2, v3}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 3651
    .local v6, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_1

    .line 3652
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 3653
    const/4 v2, 0x0

    return-object v2

    .line 3656
    :cond_1
    const/16 v16, 0x0

    .line 3658
    .local v16, "providerExportedDefault":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 3662
    const/16 v16, 0x1

    .line 3665
    :cond_2
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 3666
    const/4 v3, 0x7

    .line 3665
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 3670
    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 3669
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 3672
    .local v14, "cpname":Ljava/lang/String;
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 3673
    const/16 v3, 0xb

    .line 3674
    const/4 v4, 0x0

    .line 3672
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 3677
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 3676
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 3679
    .local v15, "permission":Ljava/lang/String;
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 3678
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 3680
    .local v18, "str":Ljava/lang/String;
    if-nez v18, :cond_3

    .line 3681
    move-object/from16 v18, v15

    .line 3683
    :cond_3
    if-nez v18, :cond_6

    .line 3684
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 3690
    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 3689
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 3691
    if-nez v18, :cond_4

    .line 3692
    move-object/from16 v18, v15

    .line 3694
    :cond_4
    if-nez v18, :cond_8

    .line 3695
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 3701
    :goto_1
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 3702
    const/16 v3, 0xd

    .line 3703
    const/4 v4, 0x0

    .line 3701
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 3705
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 3706
    const/16 v3, 0x9

    .line 3707
    const/4 v4, 0x0

    .line 3705
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 3709
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 3710
    const/16 v3, 0xc

    .line 3711
    const/4 v4, 0x0

    .line 3709
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 3713
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 3716
    const/16 v2, 0x10

    .line 3717
    const/4 v3, 0x0

    .line 3715
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3718
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ProviderInfo;->flags:I

    .line 3719
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v2, :cond_5

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_5

    .line 3720
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Provider exported request ignored due to singleUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3721
    iget-object v4, v6, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    .line 3720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3721
    const-string/jumbo v4, " at "

    .line 3720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3721
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3721
    const-string/jumbo v4, " "

    .line 3720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3722
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 3720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 3727
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 3729
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 3733
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_a

    .line 3734
    const-string/jumbo v2, "Heavy-weight applications can not have providers in main process"

    const/4 v3, 0x0

    aput-object v2, p6, v3

    .line 3735
    const/4 v2, 0x0

    return-object v2

    .line 3686
    :cond_6
    iget-object v3, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 3687
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 3686
    :goto_2
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto/16 :goto_0

    .line 3687
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 3697
    :cond_8
    iget-object v3, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 3698
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 3697
    :goto_3
    iput-object v2, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto/16 :goto_1

    .line 3698
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 3739
    :cond_a
    if-nez v14, :cond_b

    .line 3740
    const-string/jumbo v2, "<provider> does not include authorities attribute"

    const/4 v3, 0x0

    aput-object v2, p6, v3

    .line 3741
    const/4 v2, 0x0

    return-object v2

    .line 3743
    :cond_b
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_c

    .line 3744
    const-string/jumbo v2, "<provider> has empty authorities attribute"

    const/4 v3, 0x0

    aput-object v2, p6, v3

    .line 3745
    const/4 v2, 0x0

    return-object v2

    .line 3747
    :cond_c
    iget-object v2, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    .line 3749
    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 3750
    const/4 v2, 0x0

    return-object v2

    .line 3753
    :cond_d
    return-object v6
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 26
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3760
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    .line 3762
    .local v16, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .local v24, "type":I
    const/4 v4, 0x1

    move/from16 v0, v24

    if-eq v0, v4, :cond_16

    .line 3763
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_1

    .line 3764
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_16

    .line 3765
    :cond_1
    const/4 v4, 0x3

    move/from16 v0, v24

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    move/from16 v0, v24

    if-eq v0, v4, :cond_0

    .line 3769
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3770
    new-instance v10, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 3771
    .local v10, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3772
    const/4 v4, 0x0

    return v4

    .line 3774
    :cond_2
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3776
    .end local v10    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3778
    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    .line 3777
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p4

    iput-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    .line 3779
    const/4 v4, 0x0

    return v4

    .line 3782
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "grant-uri-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3784
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    .line 3783
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v22

    .line 3786
    .local v22, "sa":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    .line 3789
    .local v18, "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3788
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 3790
    .local v23, "str":Ljava/lang/String;
    if-eqz v23, :cond_5

    .line 3791
    new-instance v18, Landroid/os/PatternMatcher;

    .end local v18    # "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 3795
    :cond_5
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3794
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 3796
    if-eqz v23, :cond_6

    .line 3797
    new-instance v18, Landroid/os/PatternMatcher;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 3801
    :cond_6
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 3800
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 3802
    if-eqz v23, :cond_7

    .line 3803
    new-instance v18, Landroid/os/PatternMatcher;

    const/4 v4, 0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 3806
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    .line 3808
    if-eqz v18, :cond_9

    .line 3809
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v4, :cond_8

    .line 3810
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/os/PatternMatcher;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 3811
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    aput-object v18, v4, v5

    .line 3819
    :goto_1
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 3832
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3813
    :cond_8
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v12, v4

    .line 3814
    .local v12, "N":I
    add-int/lit8 v4, v12, 0x1

    new-array v15, v4, [Landroid/os/PatternMatcher;

    .line 3815
    .local v15, "newp":[Landroid/os/PatternMatcher;
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v15, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3816
    aput-object v18, v15, v12

    .line 3817
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v15, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_1

    .line 3822
    .end local v12    # "N":I
    .end local v15    # "newp":[Landroid/os/PatternMatcher;
    :cond_9
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3823
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3822
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3823
    const-string/jumbo v6, " at "

    .line 3822
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3823
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3822
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3823
    const-string/jumbo v6, " "

    .line 3822
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3824
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3822
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3834
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .end local v23    # "str":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "path-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3836
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    .line 3835
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v22

    .line 3838
    .restart local v22    # "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    .line 3841
    .local v17, "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3840
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 3843
    .local v20, "permission":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3842
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 3844
    .local v21, "readPermission":Ljava/lang/String;
    if-nez v21, :cond_b

    .line 3845
    move-object/from16 v21, v20

    .line 3848
    :cond_b
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 3847
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 3849
    .local v25, "writePermission":Ljava/lang/String;
    if-nez v25, :cond_c

    .line 3850
    move-object/from16 v25, v20

    .line 3853
    :cond_c
    const/4 v13, 0x0

    .line 3854
    .local v13, "havePerm":Z
    if-eqz v21, :cond_d

    .line 3855
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v21

    .line 3856
    const/4 v13, 0x1

    .line 3858
    :cond_d
    if-eqz v25, :cond_e

    .line 3859
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v25

    .line 3860
    const/4 v13, 0x1

    .line 3863
    :cond_e
    if-nez v13, :cond_f

    .line 3865
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3866
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3865
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3866
    const-string/jumbo v6, " at "

    .line 3865
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3866
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3865
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3866
    const-string/jumbo v6, " "

    .line 3865
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3867
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3865
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3877
    :cond_f
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 3876
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    .line 3878
    .local v19, "path":Ljava/lang/String;
    if-eqz v19, :cond_10

    .line 3879
    new-instance v17, Landroid/content/pm/PathPermission;

    .line 3880
    .end local v17    # "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    .line 3879
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3884
    :cond_10
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 3883
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    .line 3885
    if-eqz v19, :cond_11

    .line 3886
    new-instance v17, Landroid/content/pm/PathPermission;

    .line 3887
    const/4 v4, 0x1

    .line 3886
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3891
    :cond_11
    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 3890
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    .line 3892
    if-eqz v19, :cond_12

    .line 3893
    new-instance v17, Landroid/content/pm/PathPermission;

    .line 3894
    const/4 v4, 0x2

    .line 3893
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3897
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    .line 3899
    if-eqz v17, :cond_14

    .line 3900
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v4, :cond_13

    .line 3901
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 3902
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    .line 3921
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3904
    :cond_13
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v12, v4

    .line 3905
    .restart local v12    # "N":I
    add-int/lit8 v4, v12, 0x1

    new-array v14, v4, [Landroid/content/pm/PathPermission;

    .line 3906
    .local v14, "newp":[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v14, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3907
    aput-object v17, v14, v12

    .line 3908
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v14, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_2

    .line 3912
    .end local v12    # "N":I
    .end local v14    # "newp":[Landroid/content/pm/PathPermission;
    :cond_14
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3913
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3912
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3913
    const-string/jumbo v6, " at "

    .line 3912
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3913
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3912
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3913
    const-string/jumbo v6, " "

    .line 3912
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3914
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3912
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3915
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3925
    .end local v13    # "havePerm":Z
    .end local v19    # "path":Ljava/lang/String;
    .end local v20    # "permission":Ljava/lang/String;
    .end local v21    # "readPermission":Ljava/lang/String;
    .end local v22    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "writePermission":Ljava/lang/String;
    :cond_15
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <provider>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3926
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3925
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3926
    const-string/jumbo v6, " at "

    .line 3925
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3926
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3925
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3926
    const-string/jumbo v6, " "

    .line 3925
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3927
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3925
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3936
    :cond_16
    const/4 v4, 0x1

    return v4
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 9
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 4196
    if-nez p0, :cond_0

    .line 4197
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse null public key"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    return-object v8

    .line 4203
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 4204
    .local v3, "encoded":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4212
    .local v5, "keySpec":Ljava/security/spec/EncodedKeySpec;
    :try_start_1
    const-string/jumbo v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 4213
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    return-object v6

    .line 4205
    .end local v3    # "encoded":[B
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_0
    move-exception v0

    .line 4206
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse verifier public key; invalid Base64"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    return-object v8

    .line 4214
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "encoded":[B
    .restart local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_1
    move-exception v1

    .line 4215
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    :try_start_2
    const-string/jumbo v6, "EC"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 4223
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v6

    return-object v6

    .line 4224
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v1

    .line 4225
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "DSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 4233
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    return-object v6

    .line 4234
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_3
    move-exception v1

    .line 4235
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    .line 4236
    :catch_4
    move-exception v2

    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_2

    .line 4226
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_1

    .line 4216
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 20
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3943
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    .line 3942
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 3945
    .local v16, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v2, :cond_0

    .line 3946
    new-instance v2, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3952
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 3947
    const/4 v5, 0x2

    .line 3948
    const/4 v6, 0x0

    .line 3949
    const/4 v7, 0x1

    .line 3950
    const/16 v8, 0x8

    .line 3951
    const/16 v9, 0xc

    .line 3953
    const/4 v11, 0x6

    .line 3954
    const/4 v12, 0x7

    .line 3955
    const/4 v13, 0x4

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    .line 3946
    invoke-direct/range {v2 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3956
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v3, "<service>"

    iput-object v3, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3959
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v16

    iput-object v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3960
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p5

    iput v0, v2, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3962
    new-instance v15, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v3, Landroid/content/pm/ServiceInfo;

    invoke-direct {v3}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v15, v2, v3}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 3963
    .local v15, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v2, 0x0

    aget-object v2, p6, v2

    if-eqz v2, :cond_1

    .line 3964
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 3965
    const/4 v2, 0x0

    return-object v2

    .line 3969
    :cond_1
    const/4 v2, 0x5

    .line 3968
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    .line 3970
    .local v17, "setExported":Z
    if-eqz v17, :cond_2

    .line 3971
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 3972
    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 3971
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 3974
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v2, :cond_2

    .line 3975
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/pm/PackageParserPolicy;->matchPublicServiceBlackList(Ljava/lang/String;)Z

    move-result v2

    .line 3974
    if-eqz v2, :cond_2

    .line 3976
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseService force disable processName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3977
    const-string/jumbo v4, " android:name="

    .line 3976
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3977
    iget-object v4, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 3976
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 3984
    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 3983
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 3985
    .local v18, "str":Ljava/lang/String;
    if-nez v18, :cond_6

    .line 3986
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 3991
    :goto_0
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 3993
    const/16 v2, 0x9

    .line 3994
    const/4 v3, 0x0

    .line 3992
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3995
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 3998
    :cond_3
    const/16 v2, 0xa

    .line 3999
    const/4 v3, 0x0

    .line 3997
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4000
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4003
    :cond_4
    const/16 v2, 0xb

    .line 4004
    const/4 v3, 0x0

    .line 4002
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4005
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4006
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v2, :cond_5

    move/from16 v0, p5

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_5

    .line 4007
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service exported request ignored due to singleUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4008
    iget-object v4, v15, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    .line 4007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4008
    const-string/jumbo v4, " at "

    .line 4007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4008
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4008
    const-string/jumbo v4, " "

    .line 4007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4009
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 4007
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 4011
    const/16 v17, 0x1

    .line 4015
    .end local v17    # "setExported":Z
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 4017
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 4021
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_8

    .line 4022
    const-string/jumbo v2, "Heavy-weight applications can not have services in main process"

    const/4 v3, 0x0

    aput-object v2, p6, v3

    .line 4023
    const/4 v2, 0x0

    return-object v2

    .line 3988
    .restart local v17    # "setExported":Z
    :cond_6
    iget-object v3, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 4027
    .end local v17    # "setExported":Z
    :cond_8
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 4029
    .local v14, "outerDepth":I
    :cond_9
    :goto_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_e

    .line 4030
    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_a

    .line 4031
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v14, :cond_e

    .line 4032
    :cond_a
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_9

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_9

    .line 4036
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4037
    new-instance v8, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v8, v15}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 4038
    .local v8, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 4039
    const/4 v2, 0x0

    return-object v2

    .line 4042
    :cond_b
    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4043
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_c
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4044
    iget-object v6, v15, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v15, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_9

    .line 4046
    const/4 v2, 0x0

    return-object v2

    .line 4050
    :cond_d
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <service>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4051
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4050
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4051
    const-string/jumbo v4, " at "

    .line 4050
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4051
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4050
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4051
    const-string/jumbo v4, " "

    .line 4050
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4052
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 4050
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4053
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 4062
    :cond_e
    if-nez v17, :cond_f

    .line 4063
    iget-object v3, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v15, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 4066
    :cond_f
    return-object v15

    .line 4063
    :cond_10
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 980
    move-object/from16 v6, p3

    .line 983
    .local v6, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v6, v1}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/util/Pair;

    .line 985
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 986
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 987
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 988
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 992
    const/4 v10, 0x0

    .line 994
    .local v10, "foundApp":Z
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 995
    .local v11, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v2, 0x1

    if-eq v13, v2, :cond_4

    .line 996
    const/4 v2, 0x3

    if-ne v13, v2, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v11, :cond_4

    .line 997
    :cond_1
    const/4 v2, 0x3

    if-eq v13, v2, :cond_0

    const/4 v2, 0x4

    if-eq v13, v2, :cond_0

    .line 1001
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1002
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "application"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1003
    if-eqz v10, :cond_2

    .line 1009
    const-string/jumbo v2, "PackageParser"

    const-string/jumbo v3, "<manifest> has more than one <application>"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1015
    :cond_2
    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 1016
    invoke-direct/range {v2 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1017
    const/4 v2, 0x0

    return-object v2

    .line 1027
    :cond_3
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <manifest>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1028
    const-string/jumbo v4, " at "

    .line 1027
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1028
    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1027
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1028
    const-string/jumbo v4, " "

    .line 1027
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1029
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 1027
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1035
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_4
    if-nez v10, :cond_5

    .line 1036
    const-string/jumbo v2, "<manifest> does not contain an <application>"

    const/4 v3, 0x0

    aput-object v2, p6, v3

    .line 1037
    const/16 v2, -0x6d

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1040
    :cond_5
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 29
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 935
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v22, v3, p2

    .line 936
    .local v22, "apkPath":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 938
    .local v21, "apkFile":Ljava/io/File;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 939
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 943
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v23

    .line 945
    .local v23, "cookie":I
    const/16 v27, 0x0

    .line 946
    .local v27, "res":Landroid/content/res/Resources;
    const/16 v26, 0x0

    .line 948
    .local v26, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v28, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 950
    .end local v27    # "res":Landroid/content/res/Resources;
    .local v28, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 949
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 951
    const-string/jumbo v3, "AndroidManifest.xml"

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 953
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x1

    :try_start_2
    new-array v9, v3, [Ljava/lang/String;

    .local v9, "outError":[Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v28

    move/from16 v7, p4

    move/from16 v8, p2

    .line 954
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    .line 955
    if-nez p1, :cond_0

    .line 956
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 957
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " (at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, v9, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 956
    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 960
    .end local v9    # "outError":[Ljava/lang/String;
    :catch_0
    move-exception v24

    .local v24, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v27, v28

    .line 961
    .end local v28    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_3
    throw v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 965
    .end local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v3

    .line 966
    :goto_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 965
    throw v3

    .line 966
    .restart local v9    # "outError":[Ljava/lang/String;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 934
    return-void

    .line 962
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "outError":[Ljava/lang/String;
    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v25

    .local v25, "e":Ljava/lang/Exception;
    move-object/from16 v6, v26

    .line 963
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 964
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 963
    const/16 v5, -0x66

    move-object/from16 v0, v25

    invoke-direct {v3, v5, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 965
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v3

    move-object/from16 v6, v26

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catchall_2
    move-exception v3

    move-object/from16 v6, v26

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v27, v28

    .end local v28    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    goto :goto_1

    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catchall_3
    move-exception v3

    move-object/from16 v27, v28

    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 960
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .local v27, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v24

    .restart local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v26

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v24

    .restart local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v26

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v27, v28

    .end local v28    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    goto :goto_0

    .line 962
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catch_4
    move-exception v25

    .restart local v25    # "e":Ljava/lang/Exception;
    move-object/from16 v6, v26

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v27, v28

    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    goto :goto_2

    .end local v25    # "e":Ljava/lang/Exception;
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    :catch_5
    move-exception v25

    .restart local v25    # "e":Ljava/lang/Exception;
    move-object/from16 v27, v28

    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;II[Ljava/lang/String;)Z
    .locals 20
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "flags"    # I
    .param p6, "splitIndex"    # I
    .param p7, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3012
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    .line 3011
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 3015
    .local v17, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x7

    const/4 v3, 0x1

    .line 3014
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3016
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v3, v2, p6

    or-int/lit8 v3, v3, 0x4

    aput v3, v2, p6

    .line 3019
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 3021
    .local v12, "innerDepth":I
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_12

    .line 3022
    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v12, :cond_12

    .line 3023
    :cond_2
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 3027
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 3028
    .local v18, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "activity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3030
    move-object/from16 v0, p1

    iget-boolean v10, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3029
    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v11

    .line 3031
    .local v11, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v11, :cond_3

    .line 3032
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3033
    const/4 v2, 0x0

    return v2

    .line 3036
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3038
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    const-string/jumbo v2, "receiver"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3039
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v11

    .line 3040
    .restart local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v11, :cond_5

    .line 3041
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3042
    const/4 v2, 0x0

    return v2

    .line 3045
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3047
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_6
    const-string/jumbo v2, "service"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    .line 3048
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v16

    .line 3049
    .local v16, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v16, :cond_7

    .line 3050
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3051
    const/4 v2, 0x0

    return v2

    .line 3054
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3056
    .end local v16    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_8
    const-string/jumbo v2, "provider"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    .line 3057
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v14

    .line 3058
    .local v14, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v14, :cond_9

    .line 3059
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3060
    const/4 v2, 0x0

    return v2

    .line 3063
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3065
    .end local v14    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_a
    const-string/jumbo v2, "activity-alias"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    .line 3066
    invoke-direct/range {v2 .. v8}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v11

    .line 3067
    .restart local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v11, :cond_b

    .line 3068
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3069
    const/4 v2, 0x0

    return v2

    .line 3072
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3074
    .end local v11    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_c
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3078
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 3080
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3081
    const/4 v2, 0x0

    return v2

    .line 3084
    :cond_d
    const-string/jumbo v2, "uses-library"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3086
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    .line 3085
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 3091
    const/4 v2, 0x0

    .line 3090
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 3093
    .local v13, "lname":Ljava/lang/String;
    const/4 v2, 0x1

    .line 3094
    const/4 v3, 0x1

    .line 3092
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 3096
    .local v15, "req":Z
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 3098
    if-eqz v13, :cond_e

    .line 3099
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 3100
    if-eqz v15, :cond_f

    .line 3102
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 3104
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3103
    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3114
    :cond_e
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3107
    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 3109
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3108
    invoke-static {v2, v13}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_1

    .line 3116
    .end local v13    # "lname":Ljava/lang/String;
    .end local v15    # "req":Z
    :cond_10
    const-string/jumbo v2, "uses-package"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3119
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3123
    :cond_11
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under <application>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3124
    const-string/jumbo v4, " at "

    .line 3123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3124
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3124
    const-string/jumbo v4, " "

    .line 3123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3125
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 3123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3136
    .end local v18    # "tagName":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x1

    return v2
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2001
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2003
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    .line 2002
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2006
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2008
    iget-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2009
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2014
    :cond_0
    const/4 v2, 0x2

    .line 2013
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2015
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2017
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2018
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2024
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    .line 2023
    invoke-virtual {p2, p4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2028
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2031
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2032
    .local v1, "maxSdkVersion":I
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 2034
    .local v4, "val":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    .line 2035
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_0

    .line 2036
    iget v1, v4, Landroid/util/TypedValue;->data:I

    .line 2040
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 2042
    if-eqz v1, :cond_1

    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v1, v5, :cond_2

    .line 2043
    :cond_1
    if-eqz v2, :cond_2

    .line 2044
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2045
    .local v0, "index":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 2046
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2055
    .end local v0    # "index":I
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2056
    return v8

    .line 2048
    .restart local v0    # "index":I
    :cond_3
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2049
    const-string/jumbo v7, " in package: "

    .line 2048
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2049
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2048
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2049
    const-string/jumbo v7, " at: "

    .line 2048
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2050
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 2048
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 4171
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPackageVerifier:[I

    .line 4170
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4173
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 4177
    .local v1, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    .line 4176
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 4179
    .local v0, "encodedPublicKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 4181
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 4182
    :cond_0
    const-string/jumbo v4, "PackageParser"

    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    return-object v7

    .line 4186
    :cond_1
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 4187
    .local v2, "publicKey":Ljava/security/PublicKey;
    if-nez v2, :cond_2

    .line 4188
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to parse verifier public key for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    return-object v7

    .line 4192
    :cond_2
    new-instance v4, Landroid/content/pm/VerifierInfo;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v4
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5598
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 5599
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 5600
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 5603
    :cond_0
    const/4 v2, 0x0

    .line 5604
    .local v2, "n":I
    const/4 v1, 0x0

    .line 5605
    .local v1, "count":I
    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 5606
    add-int/2addr v1, v2

    goto :goto_0

    .line 5609
    :cond_1
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5610
    int-to-long v4, v1

    return-wide v4
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    .prologue
    .line 5269
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 5268
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1450
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1451
    .local v0, "N":I
    new-array v2, v0, [B

    .line 1452
    .local v2, "sig":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1453
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1455
    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4910
    sget-boolean v2, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v2, :cond_0

    .line 4911
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 4913
    :cond_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_2

    .line 4914
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 4918
    :goto_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_3

    .line 4919
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4923
    :goto_1
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v2, v0, :cond_4

    .line 4924
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 4931
    :cond_1
    :goto_2
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 4908
    return-void

    .line 4916
    :cond_2
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x800001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 4921
    :cond_3
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_1

    .line 4925
    :cond_4
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 4926
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_5

    :goto_3
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    .line 4927
    :cond_6
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    .line 4928
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 4929
    :cond_7
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_2
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    .prologue
    .line 1233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1234
    .local v0, "N":I
    const/4 v3, 0x0

    .line 1235
    .local v3, "hasSep":Z
    const/4 v2, 0x1

    .line 1236
    .local v2, "front":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 1237
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1238
    .local v1, "c":C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_2

    const/16 v5, 0x7a

    if-gt v1, v5, :cond_2

    .line 1239
    :cond_0
    const/4 v2, 0x0

    .line 1236
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1238
    :cond_2
    const/16 v5, 0x41

    if-lt v1, v5, :cond_3

    const/16 v5, 0x5a

    if-le v1, v5, :cond_0

    .line 1242
    :cond_3
    if-nez v2, :cond_5

    .line 1243
    const/16 v5, 0x30

    if-lt v1, v5, :cond_4

    const/16 v5, 0x39

    if-le v1, v5, :cond_1

    :cond_4
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_1

    .line 1247
    :cond_5
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_6

    .line 1248
    const/4 v3, 0x1

    .line 1249
    const/4 v2, 0x1

    .line 1250
    goto :goto_1

    .line 1252
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1254
    .end local v1    # "c":C
    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1259
    :cond_8
    const-string/jumbo v5, "lenovo"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1260
    const-string/jumbo v5, "PackageParser"

    const-string/jumbo v6, "special case for lenovo-res package, force requiresSeparator to false"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 p1, 0x0

    .line 1265
    .end local p1    # "requireSeparator":Z
    :cond_9
    if-nez v3, :cond_b

    if-eqz p1, :cond_b

    .line 1266
    const-string/jumbo v5, "must have at least one \'.\' separator"

    .line 1265
    :goto_2
    return-object v5

    .line 1255
    .restart local p1    # "requireSeparator":Z
    :cond_a
    const-string/jumbo v5, "Invalid filename"

    return-object v5

    .line 1266
    .end local p1    # "requireSeparator":Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1074
    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1075
    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1076
    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1087
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    .line 1089
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1090
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1091
    .local v0, "splitCodePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, p2}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    .line 1090
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1073
    .end local v0    # "splitCodePath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public collectManifestDigest(Landroid/content/pm/PackageParser$Package;)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1049
    iput-object v3, p1, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 1053
    :try_start_0
    new-instance v1, Ljava/util/jar/StrictJarFile;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/util/jar/StrictJarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .local v1, "jarFile":Ljava/util/jar/StrictJarFile;
    :try_start_1
    const-string/jumbo v3, "AndroidManifest.xml"

    invoke-virtual {v1, v3}, Ljava/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1056
    .local v2, "je":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_0

    .line 1057
    invoke-virtual {v1, v2}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/ManifestDigest;->fromInputStream(Ljava/io/InputStream;)Landroid/content/pm/ManifestDigest;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/PackageParser$Package;->manifestDigest:Landroid/content/pm/ManifestDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1060
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V

    .line 1048
    return-void

    .line 1059
    .end local v2    # "je":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v3

    .line 1060
    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V

    .line 1059
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1062
    .end local v1    # "jarFile":Ljava/util/jar/StrictJarFile;
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1064
    const-string/jumbo v4, "Failed to collect manifest digest"

    .line 1063
    const/16 v5, -0x6c

    invoke-direct {v3, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 849
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v3, :cond_0

    .line 850
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 851
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-nez v3, :cond_0

    .line 852
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not a coreApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 852
    const/16 v5, -0x6c

    invoke-direct {v3, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 857
    .end local v1    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    :cond_0
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 859
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 860
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 861
    return-object v2

    .line 862
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    .line 863
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 862
    throw v3
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0

    .line 777
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 391
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 390
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 386
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 377
    return-void
.end method
