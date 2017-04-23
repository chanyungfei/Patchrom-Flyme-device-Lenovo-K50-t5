.class public Ltheme/content/res/ExtraResources;
.super Ljava/lang/Object;
.source "ExtraResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltheme/content/res/ExtraResources$ResourceName;
    }
.end annotation


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "ExtraResources"

.field private static final THEME_ICON_BG_NAME:[Ljava/lang/String;

.field private static mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;

.field private static mAppIconThemeServiceLock:Ljava/lang/Object;

.field private static mThemeBgBitmap:[Landroid/graphics/Bitmap;

.field private static mTimeStamp:J

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sIconCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ltheme/content/res/ExtraResources$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconHeight:I

.field private static final sIconPaint:Landroid/graphics/Paint;

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltheme/content/res/ExtraResources;->mAppIconThemeServiceLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Ltheme/content/res/ExtraResources;->sCanvas:Landroid/graphics/Canvas;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Ltheme/content/res/ExtraResources;->sOldBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Ltheme/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    aput-object v1, v0, v5

    sput-object v0, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "theme_appbg"

    aput-object v1, v0, v3

    const-string/jumbo v1, "theme_appfg"

    aput-object v1, v0, v4

    const-string/jumbo v1, "theme_appmask"

    aput-object v1, v0, v5

    sput-object v0, Ltheme/content/res/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    .line 50
    sput v2, Ltheme/content/res/ExtraResources;->sIconWidth:I

    .line 51
    sput v2, Ltheme/content/res/ExtraResources;->sIconHeight:I

    .line 54
    const-wide/16 v0, -0x1

    sput-wide v0, Ltheme/content/res/ExtraResources;->mTimeStamp:J

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 58
    sput-object v0, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkThemeChange()V
    .locals 7

    .prologue
    .line 230
    sget-object v4, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;

    if-nez v4, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    :try_start_0
    sget-object v4, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;

    invoke-interface {v4}, Ltheme/content/res/IAppIconThemeService;->getTimeStamp()J

    move-result-wide v2

    .line 235
    .local v2, "timeStamp":J
    sget-wide v4, Ltheme/content/res/ExtraResources;->mTimeStamp:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 236
    const-string/jumbo v4, "ExtraResources"

    const-string/jumbo v5, "checkThemeChange"

    const-string/jumbo v6, "Theme has changed..."

    invoke-static {v4, v5, v6}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 238
    sget-object v4, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    .line 239
    sget-object v4, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    sget-object v4, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_2
    invoke-static {}, Ltheme/content/res/ExtraResources;->cleanCachedIcon()V

    .line 244
    sput-wide v2, Ltheme/content/res/ExtraResources;->mTimeStamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static cleanCachedIcon()V
    .locals 4

    .prologue
    .line 527
    sget-object v1, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 528
    :try_start_0
    sget-object v0, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 529
    const-string/jumbo v0, "ExtraResources"

    const-string/jumbo v2, "cleanCachedIcon"

    const-string/jumbo v3, "clear cache.."

    invoke-static {v0, v2, v3}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 526
    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static creatThemeIconBgBitmapIfNeed()V
    .locals 16

    .prologue
    const/4 v15, 0x0

    .line 177
    sget-object v14, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v14, :cond_0

    sget-object v14, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v14, v14, v15

    if-eqz v14, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    const/4 v10, 0x1

    .line 181
    .local v10, "success":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v14, Ltheme/content/res/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    array-length v14, v14

    if-ge v2, v14, :cond_1

    .line 182
    sget-object v14, Ltheme/content/res/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    aget-object v4, v14, v2

    .line 183
    .local v4, "name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 185
    .local v9, "result":Ljava/lang/String;
    :try_start_0
    sget-object v14, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;

    invoke-interface {v14, v4}, Ltheme/content/res/IAppIconThemeService;->getThemeIconInfoByFileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 191
    .local v9, "result":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 192
    const-string/jumbo v14, ";"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "out":[Ljava/lang/String;
    array-length v14, v5

    const/4 v15, 0x3

    if-eq v14, v15, :cond_2

    .line 194
    const/4 v10, 0x0

    .line 175
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "out":[Ljava/lang/String;
    .end local v9    # "result":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 186
    .restart local v4    # "name":Ljava/lang/String;
    .local v9, "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    const/4 v10, 0x0

    goto :goto_1

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "out":[Ljava/lang/String;
    .local v9, "result":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 198
    .local v3, "ins":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 200
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v14, 0x0

    :try_start_1
    aget-object v8, v5, v14

    .line 201
    .local v8, "outZipPath":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v7, v5, v14

    .line 202
    .local v7, "outFilePath":Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v14, v5, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 203
    .local v6, "outDensity":I
    new-instance v13, Ljava/util/zip/ZipFile;

    invoke-direct {v13, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .local v13, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_2
    invoke-virtual {v13, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    .line 205
    .local v11, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v11, :cond_3

    .line 206
    invoke-virtual {v13, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 207
    .local v3, "ins":Ljava/io/InputStream;
    sget-object v14, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v15

    aput-object v15, v14, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    .end local v3    # "ins":Ljava/io/InputStream;
    :cond_3
    if-eqz v3, :cond_4

    .line 216
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 220
    :cond_4
    :goto_2
    if-eqz v13, :cond_5

    .line 221
    :try_start_4
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 181
    .end local v5    # "out":[Ljava/lang/String;
    .end local v6    # "outDensity":I
    .end local v7    # "outFilePath":Ljava/lang/String;
    .end local v8    # "outZipPath":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .restart local v5    # "out":[Ljava/lang/String;
    .restart local v6    # "outDensity":I
    .restart local v7    # "outFilePath":Ljava/lang/String;
    .restart local v8    # "outZipPath":Ljava/lang/String;
    .restart local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v1

    .local v1, "ee":Ljava/lang/Exception;
    goto :goto_2

    .line 222
    .end local v1    # "ee":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .restart local v1    # "ee":Ljava/lang/Exception;
    goto :goto_3

    .line 209
    .end local v1    # "ee":Ljava/lang/Exception;
    .end local v6    # "outDensity":I
    .end local v7    # "outFilePath":Ljava/lang/String;
    .end local v8    # "outZipPath":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .local v3, "ins":Ljava/io/InputStream;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v0

    .line 210
    .end local v3    # "ins":Ljava/io/InputStream;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    const/4 v10, 0x0

    .line 215
    if-eqz v3, :cond_6

    .line 216
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 220
    :cond_6
    :goto_5
    if-eqz v12, :cond_1

    .line 221
    :try_start_7
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 222
    :catch_4
    move-exception v1

    .restart local v1    # "ee":Ljava/lang/Exception;
    goto :goto_1

    .line 217
    .end local v1    # "ee":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .restart local v1    # "ee":Ljava/lang/Exception;
    goto :goto_5

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ee":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 215
    :goto_6
    if-eqz v3, :cond_7

    .line 216
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 220
    :cond_7
    :goto_7
    if-eqz v12, :cond_8

    .line 221
    :try_start_9
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 213
    :cond_8
    :goto_8
    throw v14

    .line 217
    :catch_6
    move-exception v1

    .restart local v1    # "ee":Ljava/lang/Exception;
    goto :goto_7

    .line 222
    .end local v1    # "ee":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .restart local v1    # "ee":Ljava/lang/Exception;
    goto :goto_8

    .line 213
    .end local v1    # "ee":Ljava/lang/Exception;
    .restart local v6    # "outDensity":I
    .restart local v7    # "outFilePath":Ljava/lang/String;
    .restart local v8    # "outZipPath":Ljava/lang/String;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 209
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method private static createAppIconThemeServicesIfNeeded()V
    .locals 6

    .prologue
    .line 61
    sget-object v2, Ltheme/content/res/ExtraResources;->mAppIconThemeServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 62
    :try_start_0
    sget-object v1, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 63
    return-void

    .line 67
    :cond_0
    :try_start_1
    const-string/jumbo v1, "AppIconThemeServices"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 66
    invoke-static {v1}, Ltheme/content/res/IAppIconThemeService$Stub;->asInterface(Landroid/os/IBinder;)Ltheme/content/res/IAppIconThemeService;

    move-result-object v1

    sput-object v1, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;

    .line 68
    sget-object v1, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;

    invoke-interface {v1}, Ltheme/content/res/IAppIconThemeService;->getTimeStamp()J

    move-result-wide v4

    sput-wide v4, Ltheme/content/res/ExtraResources;->mTimeStamp:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v2

    .line 60
    return-void

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "ExtraResources"

    const-string/jumbo v3, "createAppIconThemeServicesIfNeeded"

    const-string/jumbo v4, "failed"

    invoke-static {v1, v3, v4}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/4 v1, 0x0

    sput-object v1, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static createIconBitmap(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 27
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bg"    # Landroid/graphics/Bitmap;
    .param p3, "fg"    # Landroid/graphics/Bitmap;
    .param p4, "mask"    # Landroid/graphics/Bitmap;

    .prologue
    .line 305
    sget-object v23, Ltheme/content/res/ExtraResources;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v23

    .line 306
    :try_start_0
    const-string/jumbo v22, "ExtraResources"

    const-string/jumbo v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "icon="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget v22, Ltheme/content/res/ExtraResources;->sIconWidth:I

    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 308
    invoke-static/range {p0 .. p0}, Ltheme/content/res/ExtraResources;->initStatics(Landroid/content/res/Resources;)V

    .line 311
    :cond_0
    sget v21, Ltheme/content/res/ExtraResources;->sIconWidth:I

    .line 312
    .local v21, "width":I
    sget v10, Ltheme/content/res/ExtraResources;->sIconHeight:I

    .line 313
    .local v10, "height":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 314
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v14, v0

    .line 315
    .local v14, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 316
    invoke-virtual {v14, v10}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 325
    .end local v14    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 326
    .local v17, "sourceWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    .line 327
    .local v16, "sourceHeight":I
    if-lez v17, :cond_3

    if-lez v16, :cond_3

    .line 328
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v15, v22, v24

    .line 329
    .local v15, "ratio":F
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_e

    .line 330
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v22, v15

    move/from16 v0, v22

    float-to-int v10, v0

    .line 334
    :cond_2
    :goto_1
    const/4 v13, 0x0

    .line 335
    .local v13, "lessBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 337
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    .line 338
    const/16 v24, 0x0

    .line 336
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-static {v0, v1, v10, v2}, Ltheme/content/res/ExtraResources;->lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 339
    .local v13, "lessBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v11

    .line 348
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "lessBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "ratio":F
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_2
    sget v19, Ltheme/content/res/ExtraResources;->sIconWidth:I

    .line 350
    .local v19, "textureWidth":I
    sget v18, Ltheme/content/res/ExtraResources;->sIconHeight:I

    .line 353
    .local v18, "textureHeight":I
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 352
    move/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 354
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    sget-object v8, Ltheme/content/res/ExtraResources;->sCanvas:Landroid/graphics/Canvas;

    .line 355
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    sub-int v22, v19, v21

    div-int/lit8 v12, v22, 0x2

    .line 357
    .local v12, "left":I
    sub-int v22, v18, v10

    div-int/lit8 v20, v22, 0x2

    .line 358
    .local v20, "top":I
    sget-object v22, Ltheme/content/res/ExtraResources;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 359
    add-int v22, v12, v21

    add-int v24, v20, v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v24

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 367
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    .local v4, "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 381
    .local v7, "bm":Landroid/graphics/Bitmap;
    const-string/jumbo v22, "ExtraResources"

    const-string/jumbo v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "bm="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v22, "ExtraResources"

    const-string/jumbo v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "bm.getHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v22, "ExtraResources"

    const-string/jumbo v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "bm.getWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    int-to-float v0, v12

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v8, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 385
    if-eqz p4, :cond_6

    .line 386
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 387
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 388
    :cond_4
    const-string/jumbo v22, "ExtraResources"

    const-string/jumbo v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mask != null mask = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/16 v22, 0x1

    .line 389
    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 392
    :cond_5
    sget-object v22, Ltheme/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    .line 393
    sget-object v25, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 392
    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 394
    sget-object v22, Ltheme/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 396
    :cond_6
    sget-object v22, Ltheme/content/res/ExtraResources;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 397
    if-eqz p2, :cond_9

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 400
    :cond_7
    const-string/jumbo v22, "ExtraResources"

    const-string/jumbo v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "bg != null bg = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/16 v22, 0x1

    .line 401
    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 404
    :cond_8
    sget-object v22, Ltheme/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    .line 405
    sget-object v25, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 404
    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 406
    sget-object v22, Ltheme/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 408
    :cond_9
    if-eqz p3, :cond_c

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 411
    :cond_a
    const-string/jumbo v22, "ExtraResources"

    const-string/jumbo v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "fg != null fg = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/16 v22, 0x1

    .line 412
    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 417
    :cond_b
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 420
    :cond_c
    const-string/jumbo v22, "ExtraResources"

    const-string/jumbo v24, "createIconBitmap"

    const-string/jumbo v25, "canvas.setBitmap(null); had removed"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v23

    .line 421
    return-object v5

    .line 317
    .end local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "left":I
    .end local v16    # "sourceHeight":I
    .end local v17    # "sourceWidth":I
    .end local v18    # "textureHeight":I
    .end local v19    # "textureWidth":I
    .end local v20    # "top":I
    :cond_d
    :try_start_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 319
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 320
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 321
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v22

    if-nez v22, :cond_1

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 305
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "height":I
    .end local v21    # "width":I
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 331
    .restart local v10    # "height":I
    .restart local v15    # "ratio":F
    .restart local v16    # "sourceHeight":I
    .restart local v17    # "sourceWidth":I
    .restart local v21    # "width":I
    :cond_e
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 332
    int-to-float v0, v10

    move/from16 v22, v0

    mul-float v22, v22, v15

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_1

    .line 341
    .local v13, "lessBitmap":Landroid/graphics/Bitmap;
    :cond_f
    :try_start_4
    invoke-static/range {p1 .. p1}, Ltheme/content/res/ExtraResources;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 342
    const/16 v24, 0x0

    .line 341
    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-static {v0, v1, v10, v2}, Ltheme/content/res/ExtraResources;->lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 343
    .local v13, "lessBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v11

    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 370
    .end local v13    # "lessBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "ratio":F
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "left":I
    .restart local v18    # "textureHeight":I
    .restart local v19    # "textureWidth":I
    .restart local v20    # "top":I
    :cond_10
    :try_start_5
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_3

    .line 372
    .end local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v9

    .line 373
    .local v9, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 374
    const/16 v22, 0x0

    monitor-exit v23

    return-object v22
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 444
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 445
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 447
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Ltheme/content/res/ExtraResources;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 452
    const/4 v0, 0x0

    .line 458
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 456
    :goto_0
    const/4 v4, 0x1

    .line 457
    const/4 v5, 0x1

    .line 454
    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    .line 460
    invoke-static {v0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 463
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 464
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 466
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 471
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    return-object v0

    .line 459
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 469
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getCachedIcon(Ltheme/content/res/ExtraResources$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "name"    # Ltheme/content/res/ExtraResources$ResourceName;

    .prologue
    const/4 v4, 0x0

    .line 475
    sget-object v3, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 476
    :try_start_0
    sget-object v2, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 477
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 479
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 489
    :cond_0
    :try_start_1
    sget-object v2, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 499
    return-object v4

    .line 475
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getDefaultActivityIconShapeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 259
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080093

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Ltheme/content/res/ExtraResources$ResourceName;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Ltheme/content/res/ExtraResources$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 261
    .local v2, "name":Ltheme/content/res/ExtraResources$ResourceName;
    invoke-static {v2}, Ltheme/content/res/ExtraResources;->getCachedIcon(Ltheme/content/res/ExtraResources$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    .local v0, "db":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 263
    return-object v0

    .line 265
    :cond_0
    invoke-static {v4, v1}, Ltheme/content/res/ExtraResources;->getShapeDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_1

    .line 267
    invoke-static {v2, v0}, Ltheme/content/res/ExtraResources;->putCachedIcon(Ltheme/content/res/ExtraResources$ResourceName;Landroid/graphics/drawable/Drawable;)V

    .line 269
    :cond_1
    return-object v0
.end method

.method private static getDrawableFromLenovoTheme(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 21
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 111
    invoke-static {}, Ltheme/content/res/ExtraResources;->createAppIconThemeServicesIfNeeded()V

    .line 112
    sget-object v17, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;

    if-nez v17, :cond_0

    .line 113
    const-string/jumbo v17, "ExtraResources"

    const-string/jumbo v18, "getDrawableFromLenovoTheme"

    const-string/jumbo v19, "mAppIconThemeService == null"

    invoke-static/range {v17 .. v19}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/16 v17, 0x0

    return-object v17

    .line 117
    :cond_0
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 118
    .local v13, "value":Landroid/util/TypedValue;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 122
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ltheme/content/res/ExtraResources;->getIconOriginalName(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "inResourcePath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 124
    iget-object v0, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 127
    :cond_1
    const/4 v12, 0x0

    .line 129
    .local v12, "result":Ljava/lang/String;
    :try_start_0
    sget-object v17, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v6}, Ltheme/content/res/IAppIconThemeService;->getThemeIconInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 135
    .local v12, "result":Ljava/lang/String;
    const-string/jumbo v17, "ExtraResources"

    const-string/jumbo v18, "getDrawableFromLenovoTheme"

    .line 136
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "inResourcePath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ",result = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 135
    invoke-static/range {v17 .. v19}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 138
    const-string/jumbo v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "out":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 140
    const/16 v17, 0x0

    return-object v17

    .line 131
    .end local v8    # "out":[Ljava/lang/String;
    .local v12, "result":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 132
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    const/16 v17, 0x0

    return-object v17

    .line 142
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "out":[Ljava/lang/String;
    .local v12, "result":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 143
    .local v7, "ins":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 145
    .local v15, "zipFile":Ljava/util/zip/ZipFile;
    const/16 v17, 0x0

    :try_start_1
    aget-object v11, v8, v17

    .line 146
    .local v11, "outZipPath":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v10, v8, v17

    .line 147
    .local v10, "outFilePath":Ljava/lang/String;
    const/16 v17, 0x2

    aget-object v17, v8, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 148
    .local v9, "outDensity":I
    new-instance v16, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v15    # "zipFile":Ljava/util/zip/ZipFile;
    .local v16, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    .line 150
    .local v14, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v14, :cond_5

    .line 151
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 152
    .local v7, "ins":Ljava/io/InputStream;
    iput v9, v13, Landroid/util/TypedValue;->density:I

    .line 153
    move-object/from16 v0, p0

    invoke-static {v0, v13, v7, v6}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 161
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 162
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 166
    :cond_3
    :goto_0
    if-eqz v16, :cond_4

    .line 167
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 155
    :cond_4
    :goto_1
    return-object v3

    .line 163
    :catch_1
    move-exception v5

    .local v5, "ee":Ljava/lang/Exception;
    goto :goto_0

    .line 168
    .end local v5    # "ee":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .restart local v5    # "ee":Ljava/lang/Exception;
    goto :goto_1

    .line 166
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "ee":Ljava/lang/Exception;
    .local v7, "ins":Ljava/io/InputStream;
    :cond_5
    if-eqz v16, :cond_6

    .line 167
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 172
    .end local v7    # "ins":Ljava/io/InputStream;
    .end local v8    # "out":[Ljava/lang/String;
    .end local v9    # "outDensity":I
    .end local v10    # "outFilePath":Ljava/lang/String;
    .end local v11    # "outZipPath":Ljava/lang/String;
    .end local v14    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_6
    :goto_2
    const/16 v17, 0x0

    return-object v17

    .line 168
    .restart local v7    # "ins":Ljava/io/InputStream;
    .restart local v8    # "out":[Ljava/lang/String;
    .restart local v9    # "outDensity":I
    .restart local v10    # "outFilePath":Ljava/lang/String;
    .restart local v11    # "outZipPath":Ljava/lang/String;
    .restart local v14    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v5

    .restart local v5    # "ee":Ljava/lang/Exception;
    goto :goto_2

    .line 157
    .end local v5    # "ee":Ljava/lang/Exception;
    .end local v9    # "outDensity":I
    .end local v10    # "outFilePath":Ljava/lang/String;
    .end local v11    # "outZipPath":Ljava/lang/String;
    .end local v14    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v15    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v4

    .line 158
    .end local v7    # "ins":Ljava/io/InputStream;
    .end local v15    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 161
    if-eqz v7, :cond_7

    .line 162
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 166
    :cond_7
    :goto_4
    if-eqz v15, :cond_6

    .line 167
    :try_start_8
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 168
    :catch_5
    move-exception v5

    .restart local v5    # "ee":Ljava/lang/Exception;
    goto :goto_2

    .line 163
    .end local v5    # "ee":Ljava/lang/Exception;
    :catch_6
    move-exception v5

    .restart local v5    # "ee":Ljava/lang/Exception;
    goto :goto_4

    .line 159
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ee":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 161
    :goto_5
    if-eqz v7, :cond_8

    .line 162
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 166
    :cond_8
    :goto_6
    if-eqz v15, :cond_9

    .line 167
    :try_start_a
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 159
    :cond_9
    :goto_7
    throw v17

    .line 163
    :catch_7
    move-exception v5

    .restart local v5    # "ee":Ljava/lang/Exception;
    goto :goto_6

    .line 168
    .end local v5    # "ee":Ljava/lang/Exception;
    :catch_8
    move-exception v5

    .restart local v5    # "ee":Ljava/lang/Exception;
    goto :goto_7

    .line 159
    .end local v5    # "ee":Ljava/lang/Exception;
    .restart local v9    # "outDensity":I
    .restart local v10    # "outFilePath":Ljava/lang/String;
    .restart local v11    # "outZipPath":Ljava/lang/String;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .local v15, "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_5

    .line 157
    .end local v15    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object/from16 v15, v16

    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v15    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_3
.end method

.method public static getIconOriginalName(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "iconId"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 78
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    return-object v7

    .line 83
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v3, "ExtraResources"

    const-string/jumbo v4, "getIconOriginalName"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v2, :cond_3

    .line 87
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "index":I
    if-eq v1, v8, :cond_3

    .line 89
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 91
    if-ne v1, v8, :cond_2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 94
    :cond_2
    return-object v2

    .line 97
    .end local v1    # "index":I
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ExtraResources"

    const-string/jumbo v4, "getIconOriginalName"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v7
.end method

.method public static getLenovoDrawable(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 539
    .local v0, "costTime":J
    invoke-static {}, Ltheme/content/res/ExtraResources;->checkThemeChange()V

    .line 540
    new-instance v3, Ltheme/content/res/ExtraResources$ResourceName;

    invoke-direct {v3, p1, p2}, Ltheme/content/res/ExtraResources$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 541
    .local v3, "name":Ltheme/content/res/ExtraResources$ResourceName;
    invoke-static {v3}, Ltheme/content/res/ExtraResources;->getCachedIcon(Ltheme/content/res/ExtraResources$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 542
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 546
    .local v8, "wasteTime":J
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 547
    .local v6, "value":Landroid/util/TypedValue;
    const/4 v7, 0x1

    invoke-virtual {p0, p2, v6, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 548
    if-eqz v6, :cond_0

    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    .line 549
    iget-object v7, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "resourcePath":Ljava/lang/String;
    const-string/jumbo v7, "ExtraResources"

    const-string/jumbo v10, "getLenovoDrawable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resourcePath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v10, v11}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v4    # "resourcePath":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v8, v10, v8

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v10, v0

    .line 555
    return-object v2

    .line 557
    .end local v6    # "value":Landroid/util/TypedValue;
    .end local v8    # "wasteTime":J
    :cond_1
    invoke-static {p0, p1, p2}, Ltheme/content/res/ExtraResources;->getDrawableFromLenovoTheme(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 558
    if-nez v2, :cond_2

    .line 559
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 560
    invoke-static {p0, v2}, Ltheme/content/res/ExtraResources;->getShapeDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 561
    .local v5, "shapeDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 562
    const/4 v2, 0x0

    .line 563
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    move-object v2, v5

    .line 566
    .end local v5    # "shapeDrawable":Landroid/graphics/drawable/Drawable;
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v2, :cond_3

    .line 567
    invoke-static {v3, v2}, Ltheme/content/res/ExtraResources;->putCachedIcon(Ltheme/content/res/ExtraResources$ResourceName;Landroid/graphics/drawable/Drawable;)V

    .line 569
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v0, v10, v0

    .line 570
    return-object v2
.end method

.method private static getShapeDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 278
    if-nez p1, :cond_0

    .line 279
    return-object v5

    .line 281
    :cond_0
    if-nez p0, :cond_1

    .line 282
    return-object p1

    .line 284
    :cond_1
    invoke-static {}, Ltheme/content/res/ExtraResources;->createAppIconThemeServicesIfNeeded()V

    .line 285
    sget-object v2, Ltheme/content/res/ExtraResources;->mAppIconThemeService:Ltheme/content/res/IAppIconThemeService;

    if-nez v2, :cond_2

    .line 286
    const-string/jumbo v2, "ExtraResources"

    const-string/jumbo v3, "getShapeDrawable"

    const-string/jumbo v4, "mAppIconThemeService == null"

    invoke-static {v2, v3, v4}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-object v5

    .line 290
    :cond_2
    invoke-static {}, Ltheme/content/res/ExtraResources;->creatThemeIconBgBitmapIfNeed()V

    .line 291
    sget-object v2, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Ltheme/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {p0, p1, v2, v3, v4}, Ltheme/content/res/ExtraResources;->createIconBitmap(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 293
    .local v1, "db":Landroid/graphics/drawable/BitmapDrawable;
    const-string/jumbo v2, "ExtraResources"

    const-string/jumbo v3, "getShapeDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "db = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-object v1
.end method

.method private static initStatics(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 300
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42500000    # 52.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Ltheme/content/res/ExtraResources;->sIconHeight:I

    sput v1, Ltheme/content/res/ExtraResources;->sIconWidth:I

    .line 297
    return-void
.end method

.method private static lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "needRecycle"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 427
    if-nez p0, :cond_0

    .line 428
    return-object v0

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 430
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 431
    .local v4, "h":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 432
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 433
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 434
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 435
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 436
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    .end local p0    # "src":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v7

    .line 437
    .restart local p0    # "src":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 438
    const/4 p0, 0x0

    .local p0, "src":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static putCachedIcon(Ltheme/content/res/ExtraResources$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p0, "name"    # Ltheme/content/res/ExtraResources$ResourceName;
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 503
    sget-object v1, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 504
    :try_start_0
    sget-object v0, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string/jumbo v0, "ExtraResources"

    const-string/jumbo v2, "putCachedIcon"

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName = Added cached drawable state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 505
    invoke-static {v0, v2, v3}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 502
    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeCachedIcon(Ljava/lang/String;)Z
    .locals 8
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    .line 511
    const/4 v1, 0x0

    .line 512
    .local v1, "needCleanup":Z
    sget-object v4, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 514
    :try_start_0
    sget-object v3, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 515
    sget-object v3, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltheme/content/res/ExtraResources$ResourceName;

    .line 516
    .local v2, "nm":Ltheme/content/res/ExtraResources$ResourceName;
    iget-object v3, v2, Ltheme/content/res/ExtraResources$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    const-string/jumbo v3, "ExtraResources"

    const-string/jumbo v5, "removeCachedIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing cached drawable for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Ltheme/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v3, Ltheme/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    const/4 v1, 0x1

    .line 514
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2    # "nm":Ltheme/content/res/ExtraResources$ResourceName;
    :cond_1
    monitor-exit v4

    .line 523
    return v1

    .line 512
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
