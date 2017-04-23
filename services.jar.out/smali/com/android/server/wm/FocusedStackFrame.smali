.class Lcom/android/server/wm/FocusedStackFrame;
.super Ljava/lang/Object;
.source "FocusedStackFrame.java"


# static fields
.field private static final ALPHA:F = 0.3f

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FocusedStackFrame"

.field private static final THICKNESS:I = 0x2


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mEnableFocusedFrame:Z

.field private final mInnerPaint:Landroid/graphics/Paint;

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private final mOuterPaint:Landroid/graphics/Paint;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;)V
    .locals 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;

    .prologue
    const/4 v10, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    .line 50
    iput v10, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mEnableFocusedFrame:Z

    .line 53
    const/4 v7, 0x0

    .line 55
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string/jumbo v2, "FocusedStackFrame"

    .line 57
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    .line 56
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 63
    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 64
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 69
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    return-void

    .line 59
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :cond_0
    :try_start_2
    new-instance v0, Landroid/view/SurfaceControl;

    const-string/jumbo v2, "FocusedStackFrame"

    .line 60
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    .line 59
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 65
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v0, v7

    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_1

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .end local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_1
.end method

.method private draw()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 87
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    .end local v0    # "c":Landroid/graphics/Canvas;
    :goto_0
    if-nez v0, :cond_1

    .line 95
    return-void

    .line 90
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v6

    .line 91
    .local v6, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string/jumbo v2, "FocusedStackFrame"

    const-string/jumbo v3, "Unable to lock canvas"

    invoke-static {v2, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 88
    .end local v6    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v7

    .line 89
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "FocusedStackFrame"

    const-string/jumbo v3, "Unable to lock canvas"

    invoke-static {v2, v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v3, v1

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v4, v1

    .line 100
    iget-object v5, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    move v1, v8

    move v2, v8

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 77
    return-void
.end method

.method private setupSurface(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FocusedStackFrame"

    const-string/jumbo v1, ">>> OPEN TRANSACTION setupSurface"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 114
    if-eqz p1, :cond_3

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 123
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FocusedStackFrame"

    const-string/jumbo v1, ">>> CLOSE TRANSACTION setupSurface"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    return-void

    .line 119
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 123
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "FocusedStackFrame"

    const-string/jumbo v2, ">>> CLOSE TRANSACTION setupSurface"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_4
    throw v0
.end method


# virtual methods
.method setLayer(I)V
    .locals 2
    .param p1, "layer"    # I

    .prologue
    .line 153
    iget v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    if-ne v0, p1, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    iput p1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 152
    return-void
.end method

.method setVisibility(Lcom/android/server/wm/TaskStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "notShowFocusedFrame":Z
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mEnableFocusedFrame:Z

    if-eqz v1, :cond_3

    .line 138
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    .line 140
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    .line 127
    :cond_2
    :goto_1
    return-void

    .line 132
    :cond_3
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v1

    .line 130
    if-eqz v1, :cond_0

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 143
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/android/server/wm/FocusedStackFrame;->draw()V

    goto :goto_1
.end method
