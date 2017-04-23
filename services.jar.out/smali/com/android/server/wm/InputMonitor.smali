.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# static fields
.field private static final MILLI_TO_NANO:J = 0xf4240L


# instance fields
.field private isSinglehandSupport:Z

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpRect:Landroid/graphics/Rect;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    .line 89
    const-string/jumbo v0, "ro.lenovo.single_hand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->isSinglehandSupport:Z

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 91
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    .line 279
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 281
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 283
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    .line 282
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 277
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 15
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .prologue
    .line 292
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 293
    and-int/lit8 v11, p3, 0x28

    if-nez v11, :cond_3

    const/4 v5, 0x1

    .line 295
    .local v5, "modal":Z
    :goto_0
    if-eqz v5, :cond_6

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_6

    .line 297
    or-int/lit8 p3, p3, 0x20

    .line 302
    iget-boolean v11, p0, Lcom/android/server/wm/InputMonitor;->isSinglehandSupport:Z

    if-eqz v11, :cond_5

    .line 304
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 305
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getGlobalTransform()Landroid/view/animation/Transformation;

    move-result-object v4

    .line 307
    .local v4, "globalTransform":Landroid/view/animation/Transformation;
    if-eqz v4, :cond_4

    .line 308
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 309
    .local v8, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v8, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 310
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 311
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 312
    .local v7, "rect":Landroid/graphics/Rect;
    invoke-virtual {v8, v7}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 313
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v11, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 325
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "globalTransform":Landroid/view/animation/Transformation;
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "rectF":Landroid/graphics/RectF;
    :goto_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 326
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 327
    .local v6, "offsets":[I
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowState;->getStackOffsets([I)V

    .line 328
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    const/4 v12, 0x0

    aget v12, v6, v12

    const/4 v13, 0x1

    aget v13, v6, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Region;->translate(II)V

    .line 335
    .end local v6    # "offsets":[I
    :cond_0
    :goto_2
    move/from16 v0, p3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 336
    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 337
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 338
    move/from16 v0, p5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v11

    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 340
    move/from16 v0, p6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 341
    move/from16 v0, p7

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 342
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_7

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v11, v11, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_3
    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 343
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 344
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mPid:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 345
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v11, v11, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 346
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 348
    iget-boolean v11, p0, Lcom/android/server/wm/InputMonitor;->isSinglehandSupport:Z

    if-eqz v11, :cond_1

    .line 350
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getMotionTransform()J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/server/input/InputWindowHandle;->motionTransform:J

    .line 353
    :cond_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 354
    .local v3, "frame":Landroid/graphics/Rect;
    iget v11, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 355
    iget v11, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 356
    iget v11, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 357
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 359
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_8

    .line 363
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v11, v12, v11

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 370
    :goto_4
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 371
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v11

    if-nez v11, :cond_9

    .line 372
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v12

    iget v12, v12, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v11, v12}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v11

    .line 370
    if-eqz v11, :cond_9

    .line 373
    const/4 v11, 0x1

    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/input/InputWindowHandle;->isFloating:Z

    .line 376
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 377
    const/4 v12, 0x1

    .line 376
    if-ne v11, v12, :cond_2

    .line 378
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 380
    .local v10, "touchRegion":Landroid/graphics/Region;
    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 381
    .local v9, "tmp":Landroid/graphics/Rect;
    iget v11, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v11, v11, -0x1e

    iget v12, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v12, v12, -0x1e

    .line 382
    iget v13, v9, Landroid/graphics/Rect;->right:I

    add-int/lit8 v13, v13, 0x1e

    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v14, v14, 0x1e

    .line 381
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Region;->set(IIII)Z

    .line 389
    .end local v9    # "tmp":Landroid/graphics/Rect;
    .end local v10    # "touchRegion":Landroid/graphics/Region;
    :cond_2
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 290
    return-void

    .line 293
    .end local v3    # "frame":Landroid/graphics/Rect;
    .end local v5    # "modal":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "modal":Z
    goto/16 :goto_0

    .line 315
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    .restart local v4    # "globalTransform":Landroid/view/animation/Transformation;
    :cond_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v11, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto/16 :goto_1

    .line 319
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "globalTransform":Landroid/view/animation/Transformation;
    :cond_5
    iget-object v11, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 320
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v12, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto/16 :goto_1

    .line 333
    :cond_6
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto/16 :goto_2

    .line 342
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 365
    .restart local v3    # "frame":Landroid/graphics/Rect;
    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_4

    .line 385
    :cond_9
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/input/InputWindowHandle;->isFloating:Z

    goto :goto_5
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 393
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 690
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 576
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 577
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 576
    :cond_0
    const/4 v0, 0x0

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 2

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_1

    .line 659
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 660
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Freezing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 664
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 657
    :cond_1
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 567
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 568
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    .line 567
    :cond_0
    const/4 v0, 0x0

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 19
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v14, 0x0

    .line 158
    .local v14, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 159
    .local v3, "aboveSystem":Z
    const/4 v5, 0x0

    .line 161
    .local v5, "bIsWNR":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 162
    if-eqz p2, :cond_1

    .line 163
    :try_start_0
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v15

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v14, v0

    .line 164
    .local v14, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_1

    .line 165
    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 168
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 167
    if-eqz v15, :cond_1

    .line 169
    if-nez v4, :cond_0

    .line 170
    const/4 v5, 0x1

    .line 175
    :cond_0
    :try_start_1
    iget-object v15, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v15}, Landroid/view/IWindow;->dumpInputDispatchingStatus()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 186
    :try_start_2
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v15

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    .line 189
    :cond_2
    if-eqz v14, :cond_4

    .line 190
    const-string/jumbo v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Input event dispatching timed out sending to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 191
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    .line 190
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 192
    const-string/jumbo v18, ".  Reason: "

    .line 190
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 197
    const/16 v17, 0x7d3

    .line 196
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v10

    .line 198
    .local v10, "systemAlertLayer":I
    iget v15, v14, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v15, v10, :cond_3

    const/4 v3, 0x1

    .line 208
    .end local v10    # "systemAlertLayer":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v15, v4, v14, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v16

    .line 211
    if-eqz v4, :cond_8

    iget-object v15, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v15, :cond_8

    if-nez v5, :cond_8

    .line 215
    :try_start_3
    iget-object v15, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v15, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    .line 216
    .local v2, "abort":Z
    if-nez v2, :cond_6

    .line 219
    iget-wide v0, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    move-wide/from16 v16, v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    return-wide v16

    .line 176
    .end local v2    # "abort":Z
    .restart local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v14    # "windowState":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v6

    .line 177
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v15, "WindowManager"

    .line 178
    const-string/jumbo v17, "Error dump input dispatching status."

    .line 177
    move-object/from16 v0, v17

    invoke-static {v15, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 161
    .end local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v14    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 198
    .restart local v10    # "systemAlertLayer":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 199
    .end local v10    # "systemAlertLayer":I
    :cond_4
    if-eqz v4, :cond_5

    .line 200
    :try_start_5
    const-string/jumbo v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Input event dispatching timed out sending to application "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 201
    iget-object v0, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 200
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 202
    const-string/jumbo v18, ".  Reason: "

    .line 200
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 204
    :cond_5
    const-string/jumbo v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Input event dispatching timed out .  Reason: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 224
    .restart local v2    # "abort":Z
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 225
    if-eqz v14, :cond_7

    .line 226
    iget v15, v14, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 229
    .local v11, "userId":I
    :goto_2
    const-wide/16 v16, 0x1f40

    .line 228
    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->getUserConfirmTime(IJ)J

    move-result-wide v8

    .line 230
    .local v8, "extendTime":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-lez v15, :cond_c

    .line 231
    const-string/jumbo v15, "WindowManager"

    const-string/jumbo v16, "Skip INPUT_DISPATCH_TIMEOUT ANR due to user confirm blocking"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 233
    const-wide/32 v16, 0xf4240

    mul-long v16, v16, v8

    return-wide v16

    .line 227
    .end local v8    # "extendTime":J
    .end local v11    # "userId":I
    :cond_7
    const/16 v11, -0x2710

    .restart local v11    # "userId":I
    goto :goto_2

    .line 239
    .end local v2    # "abort":Z
    .end local v11    # "userId":I
    :cond_8
    if-eqz v14, :cond_b

    .line 243
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    .line 244
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v16, v0

    .line 243
    move/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v15, v0, v3, v1}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v12

    .line 245
    .local v12, "timeout":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_9

    .line 249
    const-wide/32 v16, 0xf4240

    mul-long v16, v16, v12

    return-wide v16

    .line 254
    :cond_9
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 255
    if-eqz v14, :cond_a

    .line 256
    iget v15, v14, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 259
    .restart local v11    # "userId":I
    :goto_3
    const-wide/16 v16, 0x1f40

    .line 258
    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->getUserConfirmTime(IJ)J

    move-result-wide v8

    .line 260
    .restart local v8    # "extendTime":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-lez v15, :cond_c

    .line 261
    const-string/jumbo v15, "WindowManager"

    const-string/jumbo v16, "Skip INPUT_DISPATCH_TIMEOUT ANR due to user confirm blocking"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 263
    const-wide/32 v16, 0xf4240

    mul-long v16, v16, v8

    return-wide v16

    .line 257
    .end local v8    # "extendTime":J
    .end local v11    # "userId":I
    :cond_a
    const/16 v11, -0x2710

    .restart local v11    # "userId":I
    goto :goto_3

    .line 272
    .end local v11    # "userId":I
    .end local v12    # "timeout":J
    :cond_b
    const-string/jumbo v15, "WindowManager"

    const-string/jumbo v16, "both windowState & appWindowToken are null"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_c
    :goto_4
    const-wide/16 v16, 0x0

    return-wide v16

    .line 268
    :catch_1
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_4

    .line 237
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    .restart local v7    # "ex":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 542
    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 513
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 510
    return-void

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 107
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 108
    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 100
    return-void

    .line 105
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 536
    return-void
.end method

.method public notifyPredump(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;II)V
    .locals 6
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "pid"    # I
    .param p4, "message"    # I

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    .line 122
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_0

    .line 124
    :try_start_0
    iget-object v4, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v3, v0

    .line 125
    .local v3, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    .line 127
    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 131
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    .line 133
    :cond_1
    new-instance v4, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;

    invoke-direct {v4}, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;-><init>()V

    invoke-static {v4}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v4

    .line 134
    const-string/jumbo v5, "KeyDispatchingTimeout predump"

    .line 133
    invoke-interface {v4, p3, v5, p4}, Lcom/mediatek/anrappmanager/IANRManager;->notifyLightWeightANR(ILjava/lang/String;I)V

    .line 116
    :goto_0
    return-void

    .line 131
    :cond_2
    if-nez v3, :cond_1

    .line 136
    const-string/jumbo v4, "WindowManager"

    .line 137
    const-string/jumbo v5, "Touch event for WNR, it isn\'t necessary to predump"

    .line 136
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error notifyPredump "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 4
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v3, 0x1

    .line 636
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_1

    .line 637
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 638
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pausing WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    iput-boolean v3, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 642
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 635
    :cond_1
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 3
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 647
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_1

    .line 648
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 649
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resuming WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 653
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 646
    :cond_1
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_2

    .line 681
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_BOOT:Z

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting event dispatching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 686
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 679
    :cond_2
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v3, 0x0

    .line 615
    if-nez p1, :cond_0

    .line 616
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 613
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 619
    .local v1, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 620
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 624
    :try_start_0
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->getFocusAppPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputApplicationHandle;->pid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "GetFocusAppPid fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 4
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v3, 0x0

    .line 592
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    .line 593
    :cond_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input focus has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_3

    .line 597
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 604
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 605
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 607
    if-eqz p2, :cond_3

    .line 608
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 591
    :cond_3
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 398
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 2

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_1

    .line 670
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 671
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Thawing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 675
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 668
    :cond_1
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 29
    .param p1, "force"    # Z

    .prologue
    .line 404
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-eqz v2, :cond_4

    .line 407
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 416
    const/16 v19, 0x0

    .line 419
    .local v19, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_5

    const/16 v22, 0x1

    .line 420
    .local v22, "inDrag":Z
    :goto_0
    if-eqz v22, :cond_2

    .line 421
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_1

    .line 422
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v10, "Inserting drag window"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v21, v0

    .line 425
    .local v21, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v21, :cond_6

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 433
    .end local v21    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_7

    const/16 v18, 0x1

    .line 435
    .local v18, "addInputConsumerHandle":Z
    :goto_2
    const/4 v12, 0x0

    .line 438
    .local v12, "mSinglehandTopView":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v24

    .line 439
    .local v24, "numDisplays":I
    const/16 v20, 0x0

    .end local v12    # "mSinglehandTopView":Lcom/android/server/wm/WindowState;
    .local v20, "displayNdx":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v28

    .line 441
    .local v28, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v27, v2, -0x1

    .local v27, "winNdx":I
    :goto_4
    if-ltz v27, :cond_11

    .line 442
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 443
    .local v4, "child":Lcom/android/server/wm/WindowState;
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v23, v0

    .line 444
    .local v23, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 445
    .local v3, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v23, :cond_3

    if-nez v3, :cond_8

    .line 441
    :cond_3
    :goto_5
    add-int/lit8 v27, v27, -0x1

    goto :goto_4

    .line 405
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v18    # "addInputConsumerHandle":Z
    .end local v19    # "disableWallpaperTouchEvents":Z
    .end local v20    # "displayNdx":I
    .end local v22    # "inDrag":Z
    .end local v23    # "inputChannel":Landroid/view/InputChannel;
    .end local v24    # "numDisplays":I
    .end local v27    # "winNdx":I
    .end local v28    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    return-void

    .line 419
    .restart local v19    # "disableWallpaperTouchEvents":Z
    :cond_5
    const/16 v22, 0x0

    .restart local v22    # "inDrag":Z
    goto :goto_0

    .line 428
    .restart local v21    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_6
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v10, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 433
    .end local v21    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_7
    const/16 v18, 0x0

    .restart local v18    # "addInputConsumerHandle":Z
    goto :goto_2

    .line 445
    .restart local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v4    # "child":Lcom/android/server/wm/WindowState;
    .restart local v20    # "displayNdx":I
    .restart local v23    # "inputChannel":Landroid/view/InputChannel;
    .restart local v24    # "numDisplays":I
    .restart local v27    # "winNdx":I
    .restart local v28    # "windows":Lcom/android/server/wm/WindowList;
    :cond_8
    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_3

    .line 449
    if-eqz v18, :cond_9

    .line 450
    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v10, v10, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v10, v10, Lcom/android/server/input/InputWindowHandle;->layer:I

    if-gt v2, v10, :cond_9

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 452
    const/16 v18, 0x0

    .line 455
    :cond_9
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 456
    .local v5, "flags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v26, v0

    .line 457
    .local v26, "privateFlags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 459
    .local v6, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_c

    const/4 v8, 0x1

    .line 460
    .local v8, "hasFocus":Z
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    .line 461
    .local v7, "isVisible":Z
    move/from16 v0, v26

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_a

    .line 464
    const/16 v19, 0x1

    .line 466
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_e

    .line 467
    move/from16 v0, v26

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_e

    .line 468
    if-eqz v19, :cond_d

    const/4 v9, 0x0

    .line 469
    .local v9, "hasWallpaper":Z
    :goto_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_f

    const/16 v25, 0x1

    .line 473
    .local v25, "onDefaultDisplay":Z
    :goto_8
    if-eqz v22, :cond_b

    if-eqz v7, :cond_b

    if-eqz v25, :cond_b

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 480
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isSystemInSingleHandMode()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    const-string/jumbo v10, "GSH-TopView"

    .line 480
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 482
    move-object v12, v4

    .local v12, "mSinglehandTopView":Lcom/android/server/wm/WindowState;
    goto/16 :goto_5

    .line 459
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v12    # "mSinglehandTopView":Lcom/android/server/wm/WindowState;
    .end local v25    # "onDefaultDisplay":Z
    :cond_c
    const/4 v8, 0x0

    .restart local v8    # "hasFocus":Z
    goto :goto_6

    .line 468
    .restart local v7    # "isVisible":Z
    :cond_d
    const/4 v9, 0x1

    .restart local v9    # "hasWallpaper":Z
    goto :goto_7

    .line 466
    .end local v9    # "hasWallpaper":Z
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "hasWallpaper":Z
    goto :goto_7

    .line 469
    :cond_f
    const/16 v25, 0x0

    .restart local v25    # "onDefaultDisplay":Z
    goto :goto_8

    :cond_10
    move-object/from16 v2, p0

    .line 484
    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    goto/16 :goto_5

    .line 439
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v5    # "flags":I
    .end local v6    # "type":I
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v23    # "inputChannel":Landroid/view/InputChannel;
    .end local v25    # "onDefaultDisplay":Z
    .end local v26    # "privateFlags":I
    :cond_11
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 491
    .end local v27    # "winNdx":I
    .end local v28    # "windows":Lcom/android/server/wm/WindowList;
    :cond_12
    if-eqz v12, :cond_13

    .line 492
    iget-object v11, v12, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 493
    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v12, v2, :cond_14

    const/16 v16, 0x1

    .line 493
    :goto_9
    const/4 v15, 0x1

    .line 495
    const/16 v17, 0x0

    move-object/from16 v10, p0

    .line 492
    invoke-direct/range {v10 .. v17}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 500
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v10}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    .line 403
    return-void

    .line 494
    :cond_14
    const/16 v16, 0x0

    goto :goto_9
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 523
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 524
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 526
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v1

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 527
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
