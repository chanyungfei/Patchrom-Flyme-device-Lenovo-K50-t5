.class Lcom/android/server/wm/ResizingFrame;
.super Ljava/lang/Object;
.source "ResizingFrame.java"


# static fields
.field private static final ALPHA:F = 0.5f

.field static DEBUG_STACK:Z = false

.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field public static final RESIZE_DOWN:I = 0x2

.field public static final RESIZE_LEFT:I = 0x4

.field public static final RESIZE_NONE:I = 0x0

.field public static final RESIZE_RIGHT:I = 0x8

.field public static final RESIZE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResizingFrame"

.field private static final THICKNESS:I = 0xa


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field mContext:Landroid/content/Context;

.field mCurrentWin:Lcom/android/server/wm/WindowState;

.field mDisplay:Landroid/view/Display;

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field private mEnableMotion:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mSession:Landroid/view/SurfaceSession;

.field private mStack:Lcom/android/server/wm/TaskStack;

.field private final mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Display;Landroid/view/SurfaceSession;Landroid/content/Context;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 44
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    .line 46
    iput-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    .line 59
    iput-boolean v3, p0, Lcom/android/server/wm/ResizingFrame;->mEnableMotion:Z

    .line 61
    iput v2, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    iput v1, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    iput v1, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iput v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    .line 63
    iput-boolean v3, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/ResizingFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 73
    iput-object p2, p0, Lcom/android/server/wm/ResizingFrame;->mDisplay:Landroid/view/Display;

    .line 74
    iput-object p3, p0, Lcom/android/server/wm/ResizingFrame;->mSession:Landroid/view/SurfaceSession;

    .line 75
    iput-object p4, p0, Lcom/android/server/wm/ResizingFrame;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private createSurfaceLocked()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 79
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v1, "ResizingFrame"

    const-string/jumbo v2, "[BMW]createSurfaceLocked mSurfaceControl is not null. Copy the original surface to mSurface."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 83
    return v11

    .line 85
    :cond_0
    const/4 v8, 0x0

    .line 87
    .local v8, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_1

    .line 88
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSession:Landroid/view/SurfaceSession;

    const-string/jumbo v2, "ResizingFrame"

    .line 89
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v8    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 95
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 96
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_3

    .line 101
    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 103
    const/4 v7, 0x0

    .line 105
    .local v7, "c":Landroid/graphics/Canvas;
    :try_start_2
    const-string/jumbo v1, "ResizingFrame"

    const-string/jumbo v2, "[BMW]drawBitmap: lockCanvas"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 111
    .end local v7    # "c":Landroid/graphics/Canvas;
    :goto_1
    if-nez v7, :cond_2

    .line 112
    return v12

    .line 91
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v8    # "ctrl":Landroid/view/SurfaceControl;
    :cond_1
    :try_start_3
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSession:Landroid/view/SurfaceSession;

    const-string/jumbo v2, "ResizingFrame"

    .line 92
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    .line 91
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 97
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object v0, v8

    .line 98
    .end local v8    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    :goto_2
    const-string/jumbo v1, "ResizingFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[BMW]createSurfaceLocked OutOfResourcesException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v12

    .line 115
    .end local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_2
    const-string/jumbo v1, "ResizingFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[BMW]drawBitmap: Canvas height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    const-string/jumbo v3, ", width = "

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const v1, -0xc65e2

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 122
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v7}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 123
    return v11

    .line 108
    .restart local v7    # "c":Landroid/graphics/Canvas;
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 109
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .restart local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_1

    .line 97
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_3
    move-exception v9

    .restart local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    goto :goto_2
.end method

.method private cropSurface(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 158
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]cropSurface: crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 157
    return-void
.end method

.method private destroySurfaceLocked()Z
    .locals 5

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 130
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    .line 132
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string/jumbo v2, "ResizingFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BMW]destroySurfaceLocked OutOfResourcesException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v2, 0x0

    return v2
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]positionSurface: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    .line 150
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]updateSurface: setMatrix  matrix=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string/jumbo v2, ","

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "]["

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, ","

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "]"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 154
    iget v1, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    iget v3, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iget v4, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    .line 153
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 141
    return-void
.end method


# virtual methods
.method public copyBounds2Box()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 239
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]copyBounds2Box: copyBounds2Box = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    return-void
.end method

.method public enableMotion(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/android/server/wm/ResizingFrame;->mEnableMotion:Z

    .line 247
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method public initBounds(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/TaskStack;)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 208
    sget-boolean v4, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ResizingFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BMW]initBounds: win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 212
    :cond_1
    iput-object p2, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    .line 214
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 215
    iget-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 216
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 217
    .local v2, "dw":I
    iget v0, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 218
    .local v0, "dh":I
    iget-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v4

    invoke-virtual {p1, v4, v2, v0}, Lcom/android/server/wm/WindowState;->getFloatingRect(III)Landroid/graphics/Rect;

    move-result-object v3

    .line 219
    .local v3, "floatRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 224
    .end local v0    # "dh":I
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v2    # "dw":I
    .end local v3    # "floatRect":Landroid/graphics/Rect;
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ResizingFrame;->mCurrentWin:Lcom/android/server/wm/WindowState;

    .line 226
    invoke-direct {p0}, Lcom/android/server/wm/ResizingFrame;->createSurfaceLocked()Z

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/wm/ResizingFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 230
    sget-boolean v4, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ResizingFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BMW]initBounds: mBounds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    return-void

    .line 221
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public isEnableMotion()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mEnableMotion:Z

    return v0
.end method

.method public isFocusWinChanged(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "currentFocus"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mCurrentWin:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    .line 257
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    return v0
.end method

.method public setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 187
    return-void
.end method

.method public setVisibility(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 166
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]setVisibility: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string/jumbo v2, " mBounds="

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 169
    return-void

    .line 171
    :cond_1
    if-eqz p1, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    .line 165
    :goto_0
    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 177
    iput-object v5, p0, Lcom/android/server/wm/ResizingFrame;->mCurrentWin:Lcom/android/server/wm/WindowState;

    .line 180
    iput v4, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    iput v4, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    .line 181
    iput v3, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iput v3, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    iget v3, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iget v4, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    goto :goto_0
.end method

.method public updateBoundary(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 198
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]updateBoundary: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 200
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 199
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    return-void
.end method

.method public updateSurface()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ResizingFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 203
    return-void
.end method
