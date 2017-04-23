.class public Lcom/android/server/wm/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field static mIsAnimBg:Z


# instance fields
.field mAlpha:F

.field mBounds:Landroid/graphics/Rect;

.field mDimSurface:Landroid/view/SurfaceControl;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDuration:J

.field mLastBounds:Landroid/graphics/Rect;

.field mLayer:I

.field private mShowing:Z

.field final mStack:Lcom/android/server/wm/TaskStack;

.field mStartAlpha:F

.field mStartTime:J

.field mTargetAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "DimLayer"

    sput-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/DimLayer;->mIsAnimBg:Z

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 45
    iput v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    .line 57
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 60
    iput v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 72
    iput-object p2, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    .line 73
    iput-object p3, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    .line 75
    .local v7, "displayId":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ctor: displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 77
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->getSurfaceName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 79
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_3

    .line 80
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 81
    sget-object v2, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 82
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 83
    const v6, 0x20004

    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 89
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_1

    .line 90
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    .line 89
    if-eqz v0, :cond_2

    .line 90
    :cond_1
    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  DIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": CREATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl;->setLayerStack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 71
    :goto_1
    return-void

    .line 85
    :cond_3
    :try_start_1
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    sget-object v2, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    .line 86
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 87
    const v6, 0x20004

    .line 85
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v8

    .line 94
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .line 95
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 96
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 95
    throw v0
.end method

.method private adjustBounds()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 152
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 154
    .local v1, "dw":I
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 155
    .local v0, "dh":I
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v5

    .line 156
    .local v3, "xPos":F
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v4, v5

    .line 169
    .local v4, "yPos":F
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 170
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v1, v0}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 172
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 149
    return-void

    .line 159
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v3    # "xPos":F
    .end local v4    # "yPos":F
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/DimLayer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 162
    .local v2, "info":Landroid/view/DisplayInfo;
    iget v5, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-double v6, v5

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 163
    .restart local v1    # "dw":I
    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-double v6, v5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 165
    .restart local v0    # "dh":I
    mul-int/lit8 v5, v1, -0x1

    div-int/lit8 v5, v5, 0x6

    int-to-float v3, v5

    .line 166
    .restart local v3    # "xPos":F
    mul-int/lit8 v5, v0, -0x1

    div-int/lit8 v5, v5, 0x6

    int-to-float v4, v5

    .restart local v4    # "yPos":F
    goto :goto_0
.end method

.method private durationEndsEarlier(J)Z
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSurfaceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    sget-boolean v1, Lcom/android/server/wm/DimLayer;->mIsAnimBg:Z

    if-nez v1, :cond_0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DimLayer-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "surfaceName":Ljava/lang/String;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/wm/DimLayer;->mIsAnimBg:Z

    .line 336
    :goto_0
    return-object v0

    .line 333
    .end local v0    # "surfaceName":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DimLayer-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimLayer;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-AnimBg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .restart local v0    # "surfaceName":Ljava/lang/String;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/DimLayer;->mIsAnimBg:Z

    goto :goto_0
.end method

.method private setAlpha(F)V
    .locals 5
    .param p1, "alpha"    # F

    .prologue
    const/4 v4, 0x0

    .line 126
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_3

    .line 127
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAlpha alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 130
    cmpl-float v1, p1, v4

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v1, :cond_4

    .line 131
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAlpha hiding"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    .line 125
    :cond_3
    return-void

    .line 134
    :cond_4
    cmpl-float v1, p1, v4

    if-lez v1, :cond_2

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-nez v1, :cond_2

    .line 135
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setAlpha showing"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failure setting alpha immediately"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method destroySurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroySurface."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 307
    iput-object v2, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    .line 303
    :cond_1
    return-void
.end method

.method getLayer()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    return v0
.end method

.method getTargetAlpha()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    return v0
.end method

.method hide()V
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_1

    .line 253
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hide: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 251
    :cond_1
    return-void
.end method

.method hide(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    const/4 v3, 0x0

    .line 265
    iget-boolean v0, p0, Lcom/android/server/wm/DimLayer;->mShowing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide: duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 264
    :cond_2
    return-void
.end method

.method isAnimating()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 312
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDimSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 313
    const-string/jumbo v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 314
    const-string/jumbo v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 315
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v0, " mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Last animation: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v0, " mDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 319
    const-string/jumbo v0, " mStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 320
    const-string/jumbo v0, " curTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 321
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mStartAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 322
    const-string/jumbo v0, " mTargetAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 311
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 181
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failure setting size"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    .line 185
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 184
    throw v1
.end method

.method setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    if-eq v0, p1, :cond_0

    .line 116
    iput p1, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 114
    :cond_0
    return-void
.end method

.method show()V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show: immediate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mLayer:I

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 200
    :cond_1
    return-void
.end method

.method show(IFJ)V
    .locals 9
    .param p1, "layer"    # I
    .param p2, "alpha"    # F
    .param p3, "duration"    # J

    .prologue
    const/4 v6, 0x0

    .line 216
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: layer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 217
    const-string/jumbo v5, " duration="

    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_1

    .line 219
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "show: no Surface"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput v6, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v6, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 222
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DimLayer;->mLastBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/android/server/wm/DimLayer;->adjustBounds()V

    .line 228
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 231
    .local v2, "curTime":J
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v0

    .line 232
    .local v0, "animating":Z
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_4

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DimLayer;->durationEndsEarlier(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 233
    :cond_3
    if-nez v0, :cond_5

    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_5

    .line 234
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-gtz v1, :cond_7

    .line 236
    invoke-direct {p0, p2}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 244
    :cond_5
    :goto_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_6

    .line 245
    sget-object v1, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: mStartAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mStartTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_6
    iput p2, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 215
    return-void

    .line 239
    :cond_7
    iget v1, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v1, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    .line 240
    iput-wide v2, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    .line 241
    iput-wide p3, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    goto :goto_0
.end method

.method stepAnimation()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 278
    iget-object v4, p0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    if-nez v4, :cond_0

    .line 279
    sget-object v4, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stepAnimation: null Surface"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iput v8, p0, Lcom/android/server/wm/DimLayer;->mAlpha:F

    iput v8, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 282
    const/4 v4, 0x0

    return v4

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 287
    .local v2, "curTime":J
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    iget v5, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    sub-float v1, v4, v5

    .line 288
    .local v1, "alphaDelta":F
    iget v4, p0, Lcom/android/server/wm/DimLayer;->mStartAlpha:F

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mStartTime:J

    sub-long v6, v2, v6

    long-to-float v5, v6

    mul-float/2addr v5, v1

    iget-wide v6, p0, Lcom/android/server/wm/DimLayer;->mDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    add-float v0, v4, v5

    .line 289
    .local v0, "alpha":F
    cmpl-float v4, v1, v8

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4

    .line 292
    :goto_0
    iget v0, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    .line 294
    :cond_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v4, :cond_2

    .line 295
    sget-object v4, Lcom/android/server/wm/DimLayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stepAnimation: curTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " alpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayer;->setAlpha(F)V

    .line 299
    .end local v0    # "alpha":F
    .end local v1    # "alphaDelta":F
    .end local v2    # "curTime":J
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v4

    return v4

    .line 290
    .restart local v0    # "alpha":F
    .restart local v1    # "alphaDelta":F
    .restart local v2    # "curTime":J
    :cond_4
    cmpg-float v4, v1, v8

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/server/wm/DimLayer;->mTargetAlpha:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    goto :goto_0
.end method
