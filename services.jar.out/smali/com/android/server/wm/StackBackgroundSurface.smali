.class public Lcom/android/server/wm/StackBackgroundSurface;
.super Ljava/lang/Object;
.source "StackBackgroundSurface.java"


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private TAG:Ljava/lang/String;

.field mAlpha:F

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mHeight:I

.field mLayer:I

.field mLeft:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowing:Z

.field final mStack:Lcom/android/server/wm/TaskStack;

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTop:F

.field mWidth:I

.field needUpdate:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "StackBackgroundSurface"

    iput-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurface:Landroid/view/Surface;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mAlpha:F

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    .line 46
    iput-boolean v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    .line 57
    iput-object p2, p0, Lcom/android/server/wm/StackBackgroundSurface;->mStack:Lcom/android/server/wm/TaskStack;

    .line 58
    iput-object p3, p0, Lcom/android/server/wm/StackBackgroundSurface;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 56
    return-void
.end method


# virtual methods
.method destroySurface()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroySurface."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 193
    iput-object v2, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 189
    :cond_1
    return-void
.end method

.method getLayer()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    return v0
.end method

.method hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    if-eqz v0, :cond_1

    .line 177
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    .line 178
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 180
    iput-boolean v2, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 184
    iput-boolean v2, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    .line 173
    :cond_2
    return-void
.end method

.method prepareSurface()V
    .locals 9

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    .line 64
    .local v7, "displayId":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ctor: displayId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StackBackgroundSurface-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "surfaceName":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    .line 70
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 73
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 74
    const v6, 0x20004

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 81
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_1

    .line 82
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    .line 81
    if-eqz v0, :cond_2

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  BLACK "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": CREATE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 62
    :goto_1
    return-void

    .line 76
    :cond_3
    :try_start_1
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 78
    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    .line 79
    const v6, 0x20004

    .line 76
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v8

    .line 87
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .line 88
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 89
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 88
    throw v0
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " StackBackgroundSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 199
    const-string/jumbo v0, " mStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 201
    const-string/jumbo v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 202
    const-string/jumbo v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 203
    const-string/jumbo v0, " left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 204
    const-string/jumbo v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 205
    const-string/jumbo v0, " w="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 206
    const-string/jumbo v0, " h="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 207
    const-string/jumbo v0, " needUpdate="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 197
    return-void
.end method

.method setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 110
    return-void

    .line 111
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mAlpha:F

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 108
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 149
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    .line 150
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    .line 147
    return-void
.end method

.method setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 97
    :cond_0
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    if-eq v0, p1, :cond_1

    .line 98
    iput p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 94
    :cond_1
    return-void
.end method

.method setMatrix(FFFF)V
    .locals 1
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 141
    return-void
.end method

.method setPosition(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 119
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    .line 120
    iput p2, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 116
    return-void
.end method

.method setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 135
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    .line 136
    iput p2, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 132
    return-void
.end method

.method setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 125
    return-void
.end method

.method show()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 159
    return-void

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    if-eqz v0, :cond_1

    .line 161
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    .line 162
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    .line 157
    :cond_2
    return-void
.end method
