.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method static synthetic -get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/WallpaperManager$Globals;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->openDefaultWallpaperRes(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 248
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 249
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 250
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 248
    return-void
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 308
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v6, :cond_0

    .line 309
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "WallpaperService not running"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-object v8

    .line 314
    :cond_0
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v5, "params":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 316
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 318
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 320
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 321
    const/4 v6, 0x1

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    .line 323
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    .line 322
    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 328
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 322
    :goto_0
    return-object v6

    .line 329
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 324
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Can\'t decode file"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 337
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "params":Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-object v8

    .line 329
    .restart local v2    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 326
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    .line 328
    :try_start_5
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 326
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 334
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "params":Landroid/os/Bundle;
    :catch_3
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 329
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "params":Landroid/os/Bundle;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 366
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->openDefaultWallpaperRes(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    .line 367
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 369
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 371
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inPostProc:Z

    .line 372
    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inPostProcFlag:I

    .line 373
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 378
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :goto_0
    return-object v4

    .line 379
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 374
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Can\'t decode stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 384
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_0
    :goto_1
    return-object v6

    .line 379
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 376
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 378
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 376
    :goto_2
    throw v4

    .line 379
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private openDefaultWallpaperRes(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    const/4 v3, 0x0

    .line 344
    .local v3, "mWallpaperPlugin":Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    const/4 v2, 0x0

    .line 348
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    const-class v4, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-static {v4, p1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v3    # "mWallpaperPlugin":Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3, p1}, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;->getPluginResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_1

    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 355
    const v5, 0x108026c

    .line 354
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 361
    .local v2, "is":Ljava/io/InputStream;
    :goto_1
    return-object v2

    .line 349
    .local v2, "is":Ljava/io/InputStream;
    .restart local v3    # "mWallpaperPlugin":Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Catch IWallpaperPlugin exception: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mWallpaperPlugin":Lcom/mediatek/common/wallpaper/IWallpaperPlugin;
    :cond_1
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "get the wallpaper image from the plug-in"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-interface {v3, p1}, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;->getPluginResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    .line 359
    invoke-interface {v3}, Lcom/mediatek/common/wallpaper/IWallpaperPlugin;->getPluginDefaultImage()I

    move-result v5

    .line 358
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    goto :goto_1
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 300
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    .line 260
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 253
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    const/4 v4, 0x0

    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 269
    :try_start_1
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 270
    return-object v4

    .line 272
    :catch_0
    move-exception v0

    .line 276
    :cond_0
    :try_start_2
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 279
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 280
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .line 282
    :cond_2
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    :try_start_5
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    :goto_0
    if-eqz p2, :cond_4

    .line 289
    :try_start_6
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 290
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 291
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v2

    .line 285
    :catch_1
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "No memory load current wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 266
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 293
    :cond_3
    const/4 v2, 0x0

    :try_start_8
    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 296
    :cond_4
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v2
.end method
