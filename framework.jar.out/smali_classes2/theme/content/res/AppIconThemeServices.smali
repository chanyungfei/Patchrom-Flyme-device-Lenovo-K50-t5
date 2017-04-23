.class public Ltheme/content/res/AppIconThemeServices;
.super Ltheme/content/res/IAppIconThemeService$Stub;
.source "AppIconThemeServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltheme/content/res/AppIconThemeServices$MyZipFile;,
        Ltheme/content/res/AppIconThemeServices$1;
    }
.end annotation


# static fields
.field private static final ICON_MAP_PATH_STRING:Ljava/lang/String; = "/system/etc/icons.xml"

.field private static final KEY_THEME_ID:Ljava/lang/String; = "LENOVO_LAUNCHER_THEME_ID"

.field private static final KEY_THEME_PATH:Ljava/lang/String; = "LENOVO_LAUNCHER_THEME_PATH"

.field private static final LENOVO_THEME_CONFIG_PATH:Ljava/lang/String; = "/system/etc/lenovo_theme_config.xml"

.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "AppIconThemeServices"

.field public static final SERVICE_NAME:Ljava/lang/String; = "AppIconThemeServices"

.field public static final SPLIT:Ljava/lang/String; = ";"

.field private static final THEME_LELAUNCHER_DO_ACTION:Ljava/lang/String; = "action_themecenter_themechange_lelauncher"

.field private static final sDefaultDensity:I

.field private static final sOptimalDensities:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconMapLock:Ljava/lang/Object;

.field private mIsReady:Z

.field private mIsReadyLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;

.field private final mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeStamp:J

.field private mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

.field private mZipFileLock:Ljava/lang/Object;


# direct methods
.method static synthetic -set0(Ltheme/content/res/AppIconThemeServices;J)J
    .locals 1

    iput-wide p1, p0, Ltheme/content/res/AppIconThemeServices;->mTimeStamp:J

    return-wide p1
.end method

.method static synthetic -wrap0(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Ltheme/content/res/AppIconThemeServices;->handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Ltheme/content/res/AppIconThemeServices;)V
    .locals 0

    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->parseIconMapFile()V

    return-void
.end method

.method static synthetic -wrap2(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Ltheme/content/res/AppIconThemeServices;->sendSwitchCompleted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Ltheme/content/res/AppIconThemeServices;Z)V
    .locals 0
    .param p1, "isReady"    # Z

    .prologue
    invoke-direct {p0, p1}, Ltheme/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Ltheme/content/res/AppIconThemeServices;->sDefaultDensity:I

    .line 59
    sget v0, Ltheme/content/res/AppIconThemeServices;->sDefaultDensity:I

    invoke-static {v0}, Ltheme/content/res/ThemeDensityUtils;->getOptimalDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ltheme/content/res/IAppIconThemeService$Stub;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIsReadyLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltheme/content/res/AppIconThemeServices;->mIsReady:Z

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIconMapLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltheme/content/res/AppIconThemeServices;->mTimeStamp:J

    .line 310
    new-instance v0, Ltheme/content/res/AppIconThemeServices$1;

    invoke-direct {v0, p0}, Ltheme/content/res/AppIconThemeServices$1;-><init>(Ltheme/content/res/AppIconThemeServices;)V

    iput-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private final getIconsFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/icons.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "iconsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    return-object v0

    .line 433
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getLenovoThemeConfigFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 442
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/lenovo_theme_config.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    return-object v0

    .line 446
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final getMapFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mIconMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v0, "newName":Ljava/lang/String;
    if-eqz v0, :cond_0

    monitor-exit v2

    .line 103
    return-object v0

    :cond_0
    monitor-exit v2

    .line 107
    return-object p1

    .line 100
    .end local v0    # "newName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getPrebuildIconsMapStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 718
    const/4 v2, 0x0

    .line 720
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->getIconsFile()Ljava/io/File;

    move-result-object v1

    .line 721
    .local v1, "iconsFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 722
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "is":Ljava/io/InputStream;
    move-object v2, v3

    .line 727
    .end local v1    # "iconsFile":Ljava/io/File;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 724
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private final getThemZipFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, "zipFile":Ljava/io/File;
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->getThemePathFromSetting()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 458
    new-instance v1, Ljava/io/File;

    .end local v1    # "zipFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v1, "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    return-object v0

    .line 463
    .end local v1    # "zipFile":Ljava/io/File;
    :cond_0
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->parseLenovoThemeConfig()Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .restart local v1    # "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    return-object v0

    .line 468
    :cond_1
    return-object v3
.end method

.method private getThemeFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "inPackageName"    # Ljava/lang/String;
    .param p2, "inResoucePath"    # Ljava/lang/String;

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 186
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v17, :cond_0

    .line 187
    const/16 v17, 0x0

    monitor-exit v16

    return-object v17

    :cond_0
    monitor-exit v16

    .line 190
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 191
    :cond_1
    const/16 v16, 0x0

    return-object v16

    .line 185
    :catchall_0
    move-exception v17

    monitor-exit v16

    throw v17

    .line 207
    :cond_2
    :try_start_1
    const-string/jumbo v16, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v8, v16, 0x1

    .line 208
    .local v8, "indexSplit":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_3

    .line 209
    const/16 v16, 0x0

    return-object v16

    .line 211
    :cond_3
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 212
    .local v11, "nameBuf":Ljava/lang/StringBuffer;
    const-string/jumbo v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 213
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_4

    .line 214
    const/16 v16, 0x0

    return-object v16

    .line 217
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    const-string/jumbo v17, ""

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v8, v0, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "."

    const-string/jumbo v18, "_"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "__"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 220
    .local v14, "prefixFileName":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "fileName":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, "packageFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Ltheme/content/res/AppIconThemeServices;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 225
    const/4 v12, 0x0

    .line 226
    .local v12, "outDensity":I
    const/4 v15, 0x0

    .line 227
    .local v15, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v6, 0x0

    .line 228
    .local v6, "filePath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 229
    .local v9, "isFound":Z
    const/4 v7, 0x0

    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    .local v7, "i":I
    :goto_0
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_6

    .line 230
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v16, v16, v7

    invoke-static/range {v16 .. v16}, Ltheme/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "densitySuffix":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "res/drawable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v16, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v16, :cond_5

    .line 234
    const/16 v16, 0x0

    :try_start_3
    monitor-exit v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v16

    .line 236
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v15

    .local v15, "zipEntry":Ljava/util/zip/ZipEntry;
    :try_start_5
    monitor-exit v17

    .line 238
    if-eqz v15, :cond_a

    .line 239
    const/4 v9, 0x1

    .line 240
    move-object v6, v10

    .line 241
    .local v6, "filePath":Ljava/lang/String;
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v12, v16, v7

    .line 245
    .end local v3    # "densitySuffix":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_6
    if-nez v9, :cond_7

    .line 246
    const/4 v7, 0x0

    :goto_1
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_7

    .line 247
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v16, v16, v7

    invoke-static/range {v16 .. v16}, Ltheme/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    .restart local v3    # "densitySuffix":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "res/drawable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 249
    .restart local v10    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 250
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v15

    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :try_start_7
    monitor-exit v17

    .line 252
    if-eqz v15, :cond_b

    .line 253
    const/4 v9, 0x1

    .line 254
    move-object v6, v10

    .line 255
    .restart local v6    # "filePath":Ljava/lang/String;
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v12, v16, v7

    .line 260
    .end local v3    # "densitySuffix":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_7
    if-nez v9, :cond_8

    .line 261
    const/4 v7, 0x0

    :goto_2
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_8

    .line 262
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v16, v16, v7

    invoke-static/range {v16 .. v16}, Ltheme/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v3

    .line 263
    .restart local v3    # "densitySuffix":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "res/drawable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 264
    .restart local v10    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 265
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v15

    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :try_start_9
    monitor-exit v17

    .line 267
    if-eqz v15, :cond_c

    .line 268
    const/4 v9, 0x1

    .line 269
    move-object v6, v10

    .line 270
    .restart local v6    # "filePath":Ljava/lang/String;
    sget-object v16, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v12, v16, v7

    .line 288
    .end local v3    # "densitySuffix":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_8
    if-eqz v6, :cond_9

    .line 289
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16

    .line 232
    .restart local v3    # "densitySuffix":Ljava/lang/String;
    .local v6, "filePath":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v16

    monitor-exit v17

    throw v16
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 291
    .end local v3    # "densitySuffix":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "indexSplit":I
    .end local v9    # "isFound":Z
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "nameBuf":Ljava/lang/StringBuffer;
    .end local v12    # "outDensity":I
    .end local v13    # "packageFileName":Ljava/lang/String;
    .end local v14    # "prefixFileName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 292
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    const/16 v16, 0x0

    return-object v16

    .line 229
    .restart local v3    # "densitySuffix":Ljava/lang/String;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "indexSplit":I
    .restart local v9    # "isFound":Z
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "nameBuf":Ljava/lang/StringBuffer;
    .restart local v12    # "outDensity":I
    .restart local v13    # "packageFileName":Ljava/lang/String;
    .restart local v14    # "prefixFileName":Ljava/lang/String;
    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 249
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_2
    move-exception v16

    :try_start_a
    monitor-exit v17

    throw v16

    .line 246
    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 264
    .end local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_3
    move-exception v16

    monitor-exit v17

    throw v16
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 261
    .restart local v15    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method private getThemePathFromSetting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "LENOVO_LAUNCHER_THEME_PATH"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getZipIconsMapStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, "is":Ljava/io/InputStream;
    iget-object v4, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v4

    .line 702
    :try_start_0
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit v4

    .line 703
    return-object v5

    .line 705
    :cond_0
    :try_start_1
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    const-string/jumbo v5, "res/xml/icons.xml"

    invoke-virtual {v3, v5}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 706
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 708
    :try_start_2
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v3, v2}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    monitor-exit v4

    .line 714
    return-object v1

    .line 709
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "mIsChangeSuccess":Z
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ltheme/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    .line 333
    iget-object v4, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v4

    .line 335
    :try_start_0
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    if-eqz v3, :cond_0

    .line 336
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v3}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    .line 342
    move-object v2, p1

    .line 343
    .local v2, "ziPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    const/4 v3, 0x0

    iput-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v4

    .line 356
    if-eqz v1, :cond_1

    .line 357
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ltheme/content/res/AppIconThemeServices$2;

    invoke-direct {v4, p0, p1, p2}, Ltheme/content/res/AppIconThemeServices$2;-><init>(Ltheme/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v5, "parseIconMapFile"

    .line 357
    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 330
    :cond_1
    return-void

    .line 347
    :cond_2
    :try_start_2
    iput-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    .line 348
    new-instance v3, Ltheme/content/res/AppIconThemeServices$MyZipFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0, v5}, Ltheme/content/res/AppIconThemeServices$MyZipFile;-><init>(Ltheme/content/res/AppIconThemeServices;Ljava/io/File;)V

    iput-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    .line 349
    const/4 v1, 0x1

    .line 350
    invoke-direct {p0, p1, p2}, Ltheme/content/res/AppIconThemeServices;->setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ziPath":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 338
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isReady()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIsReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-boolean v1, p0, Ltheme/content/res/AppIconThemeServices;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final parseIconMapFile()V
    .locals 19

    .prologue
    .line 493
    const/4 v3, 0x0

    .line 494
    .local v3, "fileInputStream":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 495
    .local v14, "zipfileInputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 496
    .local v9, "prebuildfileInputStream":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 497
    .local v13, "zipVersion":I
    const/4 v8, 0x0

    .line 498
    .local v8, "prebuildVersion":I
    invoke-direct/range {p0 .. p0}, Ltheme/content/res/AppIconThemeServices;->getZipIconsMapStream()Ljava/io/InputStream;

    move-result-object v14

    .line 499
    .local v14, "zipfileInputStream":Ljava/io/InputStream;
    invoke-direct/range {p0 .. p0}, Ltheme/content/res/AppIconThemeServices;->getPrebuildIconsMapStream()Ljava/io/InputStream;

    move-result-object v9

    .line 500
    .local v9, "prebuildfileInputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Ltheme/content/res/AppIconThemeServices;->parseIconMapVersion(Ljava/io/InputStream;)I

    move-result v13

    .line 501
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ltheme/content/res/AppIconThemeServices;->parseIconMapVersion(Ljava/io/InputStream;)I

    move-result v8

    .line 502
    const-string/jumbo v15, "AppIconThemeServices"

    const-string/jumbo v16, "parseIconMapFile"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "zipVersion = :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v15, "AppIconThemeServices"

    const-string/jumbo v16, "parseIconMapFile"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "prebuildVersion = :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-direct/range {p0 .. p0}, Ltheme/content/res/AppIconThemeServices;->getZipIconsMapStream()Ljava/io/InputStream;

    move-result-object v14

    .line 506
    invoke-direct/range {p0 .. p0}, Ltheme/content/res/AppIconThemeServices;->getPrebuildIconsMapStream()Ljava/io/InputStream;

    move-result-object v9

    .line 507
    if-lt v13, v8, :cond_3

    .line 508
    if-eqz v14, :cond_2

    move-object v3, v14

    .line 512
    .local v3, "fileInputStream":Ljava/io/InputStream;
    :goto_0
    const-string/jumbo v15, "AppIconThemeServices"

    const-string/jumbo v16, "parseIconMapFile"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fileInputStream = :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-nez v3, :cond_5

    .line 515
    if-eqz v14, :cond_0

    .line 517
    :try_start_0
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    const/4 v14, 0x0

    .line 523
    .end local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    .line 525
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 526
    const/4 v9, 0x0

    .line 531
    .end local v9    # "prebuildfileInputStream":Ljava/io/InputStream;
    :cond_1
    :goto_2
    return-void

    .line 508
    .local v3, "fileInputStream":Ljava/io/InputStream;
    .restart local v9    # "prebuildfileInputStream":Ljava/io/InputStream;
    .restart local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :cond_2
    move-object v3, v9

    .local v3, "fileInputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 510
    .local v3, "fileInputStream":Ljava/io/InputStream;
    :cond_3
    if-eqz v9, :cond_4

    move-object v3, v9

    .local v3, "fileInputStream":Ljava/io/InputStream;
    goto :goto_0

    .local v3, "fileInputStream":Ljava/io/InputStream;
    :cond_4
    move-object v3, v14

    .local v3, "fileInputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 527
    .end local v1    # "e":Ljava/io/IOException;
    .end local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 528
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 533
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :cond_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 534
    .local v4, "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 536
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    :try_start_2
    invoke-interface {v7, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 538
    :cond_6
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v15, 0x2

    if-eq v12, v15, :cond_7

    .line 539
    const/4 v15, 0x1

    if-ne v12, v15, :cond_6

    .line 542
    :cond_7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 543
    .local v6, "outerDepth":I
    :cond_8
    :goto_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v15, 0x1

    if-eq v12, v15, :cond_d

    .line 544
    const/4 v15, 0x3

    if-ne v12, v15, :cond_9

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v6, :cond_d

    .line 545
    :cond_9
    const/4 v15, 0x3

    if-eq v12, v15, :cond_8

    const/4 v15, 0x4

    if-eq v12, v15, :cond_8

    .line 548
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 549
    .local v10, "tagName":Ljava/lang/String;
    if-eqz v10, :cond_8

    const-string/jumbo v15, "drawable"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 550
    const-string/jumbo v15, "name"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .line 552
    const/4 v15, 0x4

    if-ne v12, v15, :cond_8

    .line 553
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 554
    .local v11, "text":Ljava/lang/String;
    if-eqz v11, :cond_8

    const-string/jumbo v15, "@drawable/"

    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 555
    const/16 v15, 0xa

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 560
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "outerDepth":I
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "text":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_2
    move-exception v2

    .line 561
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 563
    if-eqz v3, :cond_a

    .line 565
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 566
    const/4 v3, 0x0

    .line 571
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    :cond_a
    :goto_4
    if-eqz v14, :cond_b

    .line 573
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 574
    const/4 v14, 0x0

    .line 579
    .end local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :cond_b
    :goto_5
    if-eqz v9, :cond_c

    .line 581
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 582
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6
    const/4 v9, 0x0

    .line 588
    .end local v9    # "prebuildfileInputStream":Ljava/io/InputStream;
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ltheme/content/res/AppIconThemeServices;->updateThemesMap(Ljava/util/Map;)V

    .line 492
    return-void

    .line 563
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v6    # "outerDepth":I
    .restart local v9    # "prebuildfileInputStream":Ljava/io/InputStream;
    .restart local v12    # "type":I
    .restart local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :cond_d
    if-eqz v3, :cond_e

    .line 565
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 566
    const/4 v3, 0x0

    .line 571
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    :cond_e
    :goto_8
    if-eqz v14, :cond_f

    .line 573
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 574
    const/4 v14, 0x0

    .line 579
    .end local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :cond_f
    :goto_9
    if-eqz v9, :cond_c

    .line 581
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_6

    .line 583
    :catch_3
    move-exception v1

    .line 584
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 567
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    .line 568
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 575
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .line 576
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 567
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "outerDepth":I
    .end local v12    # "type":I
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    .line 568
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 575
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    .line 576
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 583
    .end local v1    # "e":Ljava/io/IOException;
    .end local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :catch_8
    move-exception v1

    .line 584
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 562
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v15

    .line 563
    if-eqz v3, :cond_10

    .line 565
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 566
    const/4 v3, 0x0

    .line 571
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    :cond_10
    :goto_a
    if-eqz v14, :cond_11

    .line 573
    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 574
    const/4 v14, 0x0

    .line 579
    .end local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :cond_11
    :goto_b
    if-eqz v9, :cond_12

    .line 581
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 582
    const/4 v9, 0x0

    .line 562
    .end local v9    # "prebuildfileInputStream":Ljava/io/InputStream;
    :cond_12
    :goto_c
    throw v15

    .line 567
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v9    # "prebuildfileInputStream":Ljava/io/InputStream;
    .restart local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :catch_9
    move-exception v1

    .line 568
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 575
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_a
    move-exception v1

    .line 576
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 583
    .end local v1    # "e":Ljava/io/IOException;
    .end local v14    # "zipfileInputStream":Ljava/io/InputStream;
    :catch_b
    move-exception v1

    .line 584
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c
.end method

.method private final parseIconMapVersion(Ljava/io/InputStream;)I
    .locals 11
    .param p1, "fileInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 596
    const/4 v5, 0x0

    .line 597
    .local v5, "version":I
    if-nez p1, :cond_0

    return v5

    .line 598
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 600
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v2, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 602
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    .line 603
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, "tagName":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v7, "resources"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 605
    const-string/jumbo v7, "versioncode"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 606
    .local v6, "versioncode":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 607
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 608
    const-string/jumbo v7, "AppIconThemeServices"

    const-string/jumbo v8, "parseIconMapVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "version = :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v6    # "versioncode":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 618
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 619
    const/4 p1, 0x0

    .line 625
    .end local v4    # "type":I
    .end local p1    # "fileInputStream":Ljava/io/InputStream;
    :cond_3
    :goto_0
    return v5

    .line 620
    .restart local v4    # "type":I
    .restart local p1    # "fileInputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 613
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "type":I
    :catch_1
    move-exception v1

    .line 614
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 616
    if-eqz p1, :cond_3

    .line 618
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 619
    const/4 p1, 0x0

    .local p1, "fileInputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 620
    .local p1, "fileInputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    .line 621
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 615
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 616
    if-eqz p1, :cond_4

    .line 618
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 619
    const/4 p1, 0x0

    .line 615
    .end local p1    # "fileInputStream":Ljava/io/InputStream;
    :cond_4
    :goto_1
    throw v7

    .line 620
    .restart local p1    # "fileInputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 621
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private parseLenovoThemeConfig()Ljava/lang/String;
    .locals 14

    .prologue
    .line 632
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->getLenovoThemeConfigFile()Ljava/io/File;

    move-result-object v5

    .line 633
    .local v5, "inFile":Ljava/io/File;
    if-nez v5, :cond_0

    .line 634
    const/4 v12, 0x0

    return-object v12

    .line 636
    :cond_0
    const/4 v3, 0x0

    .line 637
    .local v3, "fileInputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 639
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .local v4, "fileInputStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    :try_start_1
    invoke-interface {v8, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 642
    :cond_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v12, 0x2

    if-eq v11, v12, :cond_2

    .line 643
    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 646
    :cond_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 647
    .local v7, "outerDepth":I
    :cond_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    .line 648
    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v7, :cond_6

    .line 649
    :cond_4
    const/4 v12, 0x3

    if-eq v11, v12, :cond_3

    const/4 v12, 0x4

    if-eq v11, v12, :cond_3

    .line 652
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 653
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "category"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 654
    const-string/jumbo v12, "name"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 655
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string/jumbo v12, "launcher"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 656
    const-string/jumbo v12, "file"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 658
    .local v9, "path":Ljava/lang/String;
    const-string/jumbo v12, "defResId"

    .line 657
    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "defResId":Ljava/lang/String;
    invoke-direct {p0, v9, v0}, Ltheme/content/res/AppIconThemeServices;->setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 666
    if-eqz v4, :cond_5

    .line 668
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 660
    :cond_5
    :goto_0
    return-object v9

    .line 669
    :catch_0
    move-exception v1

    .line 670
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 666
    .end local v0    # "defResId":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_7

    .line 668
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    :goto_1
    move-object v3, v4

    .line 674
    .end local v4    # "fileInputStream":Ljava/io/InputStream;
    .end local v7    # "outerDepth":I
    .end local v11    # "type":I
    :cond_8
    :goto_2
    const/4 v12, 0x0

    return-object v12

    .line 669
    .restart local v4    # "fileInputStream":Ljava/io/InputStream;
    .restart local v7    # "outerDepth":I
    .restart local v11    # "type":I
    :catch_1
    move-exception v1

    .line 670
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 664
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileInputStream":Ljava/io/InputStream;
    .end local v7    # "outerDepth":I
    .end local v11    # "type":I
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 666
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v3, :cond_8

    .line 668
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 669
    :catch_3
    move-exception v1

    .line 670
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 665
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v12

    .line 666
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    :goto_4
    if-eqz v3, :cond_9

    .line 668
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 665
    :cond_9
    :goto_5
    throw v12

    .line 669
    :catch_4
    move-exception v1

    .line 670
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 665
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "fileInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/InputStream;
    .local v3, "fileInputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 664
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v4    # "fileInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private registerThemeChangedReceiver()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "action_themecenter_themechange_lelauncher"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    return-void
.end method

.method private sendSwitchCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "appiconintegration.action.UPDATE_THEME_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string/jumbo v1, "ThemePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string/jumbo v1, "ThemeResId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method private setIsReadyState(Z)V
    .locals 2
    .param p1, "isReady"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIsReadyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iput-boolean p1, p0, Ltheme/content/res/AppIconThemeServices;->mIsReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 484
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 485
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "LENOVO_LAUNCHER_THEME_PATH"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 486
    const-string/jumbo v1, "LENOVO_LAUNCHER_THEME_ID"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    return-void
.end method

.method private final updateThemesMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mIconMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 96
    iget-object v0, p0, Ltheme/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getThemeIconInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "inPackageName"    # Ljava/lang/String;
    .param p2, "inResoucePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 119
    const-string/jumbo v1, "AppIconThemeServices"

    const-string/jumbo v2, "getThemeIconInfo"

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",inResoucePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v1, v2, v3}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    return-object v5

    .line 124
    :cond_0
    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_1
    if-eqz p2, :cond_2

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_2
    invoke-direct {p0, p1, p2}, Ltheme/content/res/AppIconThemeServices;->getThemeFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    return-object v5

    .line 134
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getThemeIconInfoByFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 144
    const-string/jumbo v8, "AppIconThemeServices"

    const-string/jumbo v9, "getThemeIconInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->isReady()Z

    move-result v8

    if-nez v8, :cond_0

    .line 146
    return-object v12

    .line 148
    :cond_0
    const/4 v6, 0x0

    .line 150
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Ltheme/content/res/AppIconThemeServices;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    const/4 v5, 0x0

    .line 153
    .local v5, "outDensity":I
    const/4 v7, 0x0

    .line 154
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x0

    .line 155
    .local v2, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .local v3, "i":I
    :goto_0
    sget-object v8, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 156
    sget-object v8, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v8, v8, v3

    invoke-static {v8}, Ltheme/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "densitySuffix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "res/drawable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "name":Ljava/lang/String;
    iget-object v9, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    iget-object v8, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_1

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    return-object v12

    .line 162
    :cond_1
    :try_start_3
    iget-object v8, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v8, v4}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    :try_start_4
    monitor-exit v9

    .line 164
    if-eqz v7, :cond_3

    .line 165
    sget-object v8, Ltheme/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v5, v8, v3

    .line 166
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    .line 173
    .end local v0    # "densitySuffix":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outDensity":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 174
    return-object v12

    .line 158
    .restart local v0    # "densitySuffix":Ljava/lang/String;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "outDensity":I
    .restart local v6    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_5
    monitor-exit v9

    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 170
    .end local v0    # "densitySuffix":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outDensity":I
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "densitySuffix":Ljava/lang/String;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "outDensity":I
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "densitySuffix":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outDensity":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Ltheme/content/res/AppIconThemeServices;->mTimeStamp:J

    return-wide v0
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 386
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->getThemZipFilePath()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "ziPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    return-void

    .line 391
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ltheme/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    .line 392
    iput-object v1, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    .line 394
    :try_start_0
    iget-object v3, p0, Ltheme/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :try_start_1
    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    if-eqz v2, :cond_1

    .line 396
    iget-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v2}, Ltheme/content/res/AppIconThemeServices$MyZipFile;->close()V

    .line 397
    const/4 v2, 0x0

    iput-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;

    .line 399
    :cond_1
    new-instance v2, Ltheme/content/res/AppIconThemeServices$MyZipFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Ltheme/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v4}, Ltheme/content/res/AppIconThemeServices$MyZipFile;-><init>(Ltheme/content/res/AppIconThemeServices;Ljava/io/File;)V

    iput-object v2, p0, Ltheme/content/res/AppIconThemeServices;->mZipFile:Ltheme/content/res/AppIconThemeServices$MyZipFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 404
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ltheme/content/res/AppIconThemeServices$3;

    invoke-direct {v3, p0}, Ltheme/content/res/AppIconThemeServices$3;-><init>(Ltheme/content/res/AppIconThemeServices;)V

    .line 411
    const-string/jumbo v4, "parseIconMapFile"

    .line 404
    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 412
    invoke-direct {p0}, Ltheme/content/res/AppIconThemeServices;->registerThemeChangedReceiver()V

    .line 385
    return-void

    .line 394
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
