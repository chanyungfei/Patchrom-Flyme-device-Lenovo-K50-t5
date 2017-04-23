.class public Lcom/android/server/policy/FloatingMonitorPointerEventListener;
.super Ljava/lang/Object;
.source "FloatingMonitorPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field private static final MOTION_MODE_DRAG:I = 0x1

.field private static final MOTION_MODE_NONE:I = 0x0

.field private static final RESIZE_DIRECTION_ALL:I = 0x10

.field static final TAG:Ljava/lang/String; = "FloatingMonitor"


# instance fields
.field private mBottomBarRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCtrlBarBtnWidth:I

.field private mCtrlBarHeight:I

.field private mCtrlBarRect:Landroid/graphics/Rect;

.field mEnabledResizeDirections:[I

.field private mFocusRect:Landroid/graphics/Rect;

.field private mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field final mFocusWindowLock:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLeftBarRect:Landroid/graphics/Rect;

.field private mMonitorRect:Landroid/graphics/Rect;

.field mMotionMode:I

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field mResizeDirect:I

.field private mRightBarRect:Landroid/graphics/Rect;

.field private mTopBarRect:Landroid/graphics/Rect;

.field private mWindowFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mLeftBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/FloatingMonitorPointerEventListener;I)Z
    .locals 1
    .param p1, "currentResizeDirect"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->checkResizeDirectionEnabled(I)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->DEBUG:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v3, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 73
    iput v3, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mLeftBarRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    .line 89
    iput v3, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I

    iput v3, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mFocusWindowLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/FloatingMonitorPointerEventListener$1;-><init>(Lcom/android/server/policy/FloatingMonitorPointerEventListener;)V

    .line 93
    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 220
    iput-object p1, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mWindowFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 223
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    .line 224
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 223
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 227
    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 229
    invoke-direct {p0}, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->computeCtrlBarRegion()V

    .line 233
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mEnabledResizeDirections:[I

    .line 234
    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mEnabledResizeDirections:[I

    const/16 v1, 0x10

    aput v1, v0, v3

    .line 219
    return-void
.end method

.method private checkResizeDirectionEnabled(I)Z
    .locals 6
    .param p1, "currentResizeDirect"    # I

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    .line 307
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 310
    :cond_0
    return v2

    .line 308
    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    .line 309
    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    .line 314
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mEnabledResizeDirections:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_5

    aget v0, v3, v1

    .line 315
    .local v0, "i":I
    const/16 v5, 0x10

    if-eq v0, v5, :cond_3

    if-ne v0, p1, :cond_4

    .line 316
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 314
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "i":I
    :cond_5
    return v2
.end method

.method private computeCtrlBarRegion()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 273
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 272
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 275
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    if-nez v1, :cond_0

    .line 276
    const-string/jumbo v2, "FloatingMonitor"

    const-string/jumbo v3, "[BMW]DisplayManager Service not ready!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 280
    :cond_0
    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_1

    .line 281
    const-string/jumbo v2, "FloatingMonitor"

    const-string/jumbo v3, "[BMW]No default display!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 285
    :cond_1
    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 288
    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit16 v2, v2, 0x82

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I

    .line 289
    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit8 v2, v2, 0x2c

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I

    .line 269
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 245
    .local v0, "action":I
    sget-boolean v1, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 246
    const-string/jumbo v1, "FloatingMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[BMW]Input Motion Event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    if-eq v0, v5, :cond_1

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 252
    :cond_1
    iget v1, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    if-nez v1, :cond_2

    .line 253
    iget v1, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMotionMode:I

    if-eqz v1, :cond_3

    .line 254
    :cond_2
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->enableFocusedFrame(Z)V

    .line 256
    :cond_3
    iput v4, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 257
    iput v4, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 243
    :goto_0
    return-void

    .line 259
    :cond_4
    if-nez v0, :cond_5

    .line 262
    iput v4, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 263
    iput v4, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 265
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public updatFocusWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "focusWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mFocusWindowLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iput-object p1, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 237
    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public updateMonitorRect(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 293
    sget-boolean v0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 294
    const-string/jumbo v0, "FloatingMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]updateMonitorRect ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    const-string/jumbo v2, " ["

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    const-string/jumbo v2, ", "

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    const-string/jumbo v2, "]"

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 292
    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
