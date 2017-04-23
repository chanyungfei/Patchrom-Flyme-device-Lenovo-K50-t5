.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field height:I

.field imageWallpaperPending:Z

.field lastDiedTime:J

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final padding:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field wallpaperUpdating:Z

.field width:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 252
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 245
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 244
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 247
    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 248
    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 250
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    .line 253
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 254
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-get2(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "smartbook_wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 252
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    goto :goto_0
.end method
