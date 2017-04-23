.class Lcom/android/server/wm/WindowStateAnimator$2;
.super Landroid/os/AsyncTask;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowStateAnimator;->doCacheBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowStateAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "para"    # [Ljava/lang/Object;

    .prologue
    .line 2327
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "para":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "para"    # [Ljava/lang/Void;

    .prologue
    const-wide/16 v10, 0x20

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 2331
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWmSleep:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2332
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWmSleep:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2338
    :goto_0
    const-string/jumbo v0, "AsyncScreenshot"

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2339
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2340
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    float-to-int v1, v1

    .line 2341
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move v6, v5

    .line 2339
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2343
    .local v7, "bmShot":Landroid/graphics/Bitmap;
    const-string/jumbo v0, "WindowStateAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doCacheBitmap, mToken ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$2;->this$0:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 2346
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2345
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setBitmapByToken(Landroid/os/IBinder;Landroid/graphics/Bitmap;)V

    .line 2347
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2349
    :cond_0
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2350
    return-object v9

    .line 2334
    .end local v7    # "bmShot":Landroid/graphics/Bitmap;
    :cond_1
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2336
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
