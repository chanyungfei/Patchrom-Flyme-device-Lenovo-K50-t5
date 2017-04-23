.class public Lcom/android/server/wm/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# static fields
.field private static final DEFAULT_DIM_DURATION:I = 0xc8

.field private static final FLOAT_CONTROL_BAR_HEIGHT_DP:I = 0x2c

.field private static final STACKS_OFFSET_MARGIN_DP:I = 0x32

.field private static final STACK_BOUNDS_MARGIN_DP:I = 0xdc


# instance fields
.field mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBottomBoundLimit:I

.field private mBottomBoundLimitFirstLaunch:I

.field private mBounds:Landroid/graphics/Rect;

.field mDeferDetach:Z

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mDimmingTag:Z

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayRotation:I

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mFloatStackLandHeight:I

.field private mFloatStackLandWidth:I

.field private mFloatStackPortHeight:I

.field private mFloatStackPortWidth:I

.field private mForceFullscreen:Z

.field private mFullscreen:Z

.field mInSplitMode:Z

.field private mInited:Z

.field private mLeftBoundLimit:I

.field private mOrientation:I

.field mOverrideConfig:Landroid/content/res/Configuration;

.field private final mPreForceFullscreenBounds:Landroid/graphics/Rect;

.field private mRightBoundLimit:I

.field private mRightBoundLimitFirstLaunch:I

.field mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mStackBackgroundEnabled:Z

.field mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

.field final mStackId:I

.field private mStacksOffset:I

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTopBoundLimit:I

.field private mTopFloatStack:Lcom/android/server/wm/TaskStack;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 72
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 91
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1431
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 1432
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 1435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    .line 1436
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    .line 1437
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    .line 1438
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    .line 1439
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    .line 1440
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    .line 1441
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    .line 1442
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimitFirstLaunch:I

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimitFirstLaunch:I

    .line 1443
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    .line 1444
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    .line 1445
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mInSplitMode:Z

    .line 1454
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundEnabled:Z

    .line 109
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 110
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 111
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 112
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mForceFullscreen:Z

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 116
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 115
    const/16 v1, 0x791c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 108
    return-void
.end method

.method private adjustStackBackgroundAnimator()Lcom/android/server/wm/WindowStateAnimator;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 956
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 957
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "winNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 958
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 959
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_1

    .line 957
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 961
    :cond_1
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v5, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 962
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_0

    .line 964
    :cond_2
    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 965
    .local v0, "stackId":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFullFloatWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v5, :cond_0

    .line 966
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    .line 965
    if-eqz v5, :cond_0

    .line 967
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BMW]adjustStackBackgroundAnimator WinAnimator:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 968
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 967
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_3
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    return-object v5

    .line 972
    .end local v0    # "stackId":I
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return-object v6
.end method

.method private adjustStackBackgroundLayer()I
    .locals 8

    .prologue
    .line 977
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 978
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    const/4 v3, 0x0

    .local v3, "winNdx":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 979
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 980
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_1

    .line 978
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 982
    :cond_1
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v5, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 983
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_0

    .line 985
    :cond_2
    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 986
    .local v0, "stackId":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v5, :cond_0

    .line 987
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BMW]adjustStackBackgroundLayer AnimLayer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 988
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 987
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_3
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v5

    .line 992
    .end local v0    # "stackId":I
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    const/4 v5, -0x1

    return v5
.end method

.method private computeBoundaryLimit()V
    .locals 5

    .prologue
    .line 774
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 776
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit16 v2, v2, 0xdc

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    .line 777
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    .line 780
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 781
    .local v1, "tempContent":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v1}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 782
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    .line 783
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 784
    iget v3, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit8 v3, v3, 0x2c

    div-int/lit16 v3, v3, 0xa0

    .line 783
    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    .line 786
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimitFirstLaunch:I

    .line 787
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimitFirstLaunch:I

    .line 790
    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit8 v2, v2, 0x32

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    .line 791
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v2, :cond_0

    .line 792
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BMW]computeBoundaryLimit mTopBoundLimit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 793
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    .line 792
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 794
    const-string/jumbo v4, ", mBottomBoundLimit = "

    .line 792
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 794
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    .line 792
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 795
    const-string/jumbo v4, ", mStacksOffset = "

    .line 792
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 795
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    .line 792
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    return-void
.end method

.method private deltaRotation(I)I
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 713
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    sub-int v0, p1, v1

    .line 714
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 715
    :cond_0
    return v0
.end method

.method private getDimBehindFadeDuration(J)J
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 472
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 473
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 474
    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    .line 473
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 475
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 476
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 480
    :cond_0
    :goto_0
    return-wide p1

    .line 477
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 478
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_0
.end method

.method private initFloatStackSize()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 687
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    if-eqz v1, :cond_0

    .line 688
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "[BMW]Floating stack had been inited!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return v4

    .line 692
    :cond_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "[BMW]Non floating stack did the function initFloatStackSize"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return v4

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->computeStackSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 698
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_2

    .line 699
    return v4

    .line 701
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 702
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v1, :cond_3

    .line 703
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[BMW]initFloatStackSize mBounds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 706
    iput v4, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    .line 707
    iput v4, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    .line 708
    iput-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    .line 709
    return v5
.end method

.method private needShowStackBackground()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1003
    iget-boolean v6, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundEnabled:Z

    if-eqz v6, :cond_0

    .line 1004
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1007
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1008
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v2, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1009
    .local v2, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "tokenNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1010
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1011
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_2
    if-ltz v4, :cond_2

    .line 1012
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1013
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1014
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SurfaceView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1013
    if-eqz v6, :cond_1

    .line 1015
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v6

    .line 1013
    if-eqz v6, :cond_1

    .line 1016
    const/4 v6, 0x1

    return v6

    .line 1005
    .end local v0    # "taskNdx":I
    .end local v1    # "tokenNdx":I
    .end local v2    # "tokens":Lcom/android/server/wm/AppTokenList;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_0
    return v8

    .line 1011
    .restart local v0    # "taskNdx":I
    .restart local v1    # "tokenNdx":I
    .restart local v2    # "tokens":Lcom/android/server/wm/AppTokenList;
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    .restart local v4    # "winNdx":I
    .restart local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1009
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1007
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1021
    .end local v1    # "tokenNdx":I
    .end local v2    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4
    return v8
.end method

.method private rotateBounds(III)V
    .locals 8
    .param p1, "rotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .prologue
    .line 719
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 720
    .local v0, "pivotX":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 721
    .local v1, "pivotY":I
    const/4 v2, 0x0

    .local v2, "tmpX":I
    const/4 v3, 0x0

    .line 722
    .local v3, "tmpY":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 724
    .local v4, "tmpbounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->deltaRotation(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 752
    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BMW]rotateBounds exception, rotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 753
    const-string/jumbo v7, ", mDisplayRotation = "

    .line 752
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 753
    iget v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 752
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 760
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 762
    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskStack;->verifyStackBounds(Landroid/graphics/Rect;)V

    .line 763
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 765
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 766
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 767
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->show()V

    .line 769
    :cond_0
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 718
    return-void

    .line 727
    :pswitch_0
    move v2, v1

    .line 728
    sub-int v3, p3, v0

    .line 731
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 732
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 733
    goto :goto_0

    .line 736
    :pswitch_1
    sub-int v2, p2, v0

    .line 737
    sub-int v3, p3, v1

    .line 739
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 740
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 741
    goto :goto_0

    .line 744
    :pswitch_2
    sub-int v2, p2, v1

    .line 745
    move v3, v0

    .line 747
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 748
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 749
    goto :goto_0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private rotateBoundsForSpilt(III)V
    .locals 2
    .param p1, "rotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .prologue
    .line 1138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->computeStackSizeForSplit()Landroid/graphics/Rect;

    move-result-object v0

    .line 1141
    .local v0, "tmpbounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 1143
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 1145
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->show()V

    .line 1147
    :cond_0
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 1137
    return-void
.end method

.method private updateOverrideConfiguration()V
    .locals 5

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 215
    .local v1, "serviceConfig":Landroid/content/res/Configuration;
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 217
    return-void

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-ne v2, v3, :cond_1

    .line 221
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 225
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const v3, 0x3bcccccd    # 0.00625f

    mul-float v0, v2, v3

    .line 226
    .local v0, "density":F
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 227
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 226
    iput v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 228
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 229
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 228
    iput v3, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 230
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 231
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 230
    iput v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 232
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 233
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v2, v4, :cond_2

    .line 234
    const/4 v2, 0x1

    .line 232
    :goto_0
    iput v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 213
    return-void

    .line 234
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private updateReqOrientation()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1152
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1153
    .local v1, "taskNdx":I
    if-gtz v1, :cond_0

    .line 1154
    return v5

    .line 1156
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1158
    .local v2, "topTask":Lcom/android/server/wm/Task;
    iget-object v3, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    .line 1159
    .local v0, "appTokenNdx":I
    if-gtz v0, :cond_1

    .line 1160
    return v5

    .line 1162
    :cond_1
    iget-object v3, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iput v3, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 1164
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    if-nez v3, :cond_2

    .line 1165
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4

    .line 1167
    :cond_2
    :goto_0
    iput v6, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 1169
    :cond_3
    return v6

    .line 1166
    :cond_4
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    goto :goto_0
.end method

.method private verifyStackBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 815
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->verifyStackBoundsForSplit(Landroid/graphics/Rect;)V

    .line 817
    return-void

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 821
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->computeBoundaryLimit()V

    .line 823
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    if-ge v1, v2, :cond_1

    .line 824
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 827
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    if-le v1, v2, :cond_2

    .line 828
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 831
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    if-ge v1, v2, :cond_3

    .line 832
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 835
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    if-le v1, v2, :cond_4

    .line 836
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 839
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-le v1, v2, :cond_5

    .line 840
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 843
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-le v1, v2, :cond_6

    .line 844
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 813
    :cond_6
    return-void
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .prologue
    .line 325
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;ZZ)V

    .line 324
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZ)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 336
    if-nez p2, :cond_5

    .line 337
    const/4 v0, 0x0

    .line 353
    .local v0, "stackNdx":I
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addTask: task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " toTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 354
    const-string/jumbo v6, " pos="

    .line 353
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 357
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 361
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v4

    iget v5, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/multiwindow/MultiWindowProxy;->onTaskAdded(II)V

    .line 363
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->initFloatStackSize()Z

    .line 367
    :cond_2
    if-eqz p2, :cond_3

    .line 368
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 370
    :cond_3
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    if-eqz p2, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const/16 v2, 0x791a

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 334
    return-void

    .line 339
    .end local v0    # "stackNdx":I
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 340
    .restart local v0    # "stackNdx":I
    if-nez p3, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_7

    .line 343
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 344
    .local v1, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 345
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 350
    .end local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public adjustFloatingRect(II)V
    .locals 2
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .prologue
    .line 864
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    if-eq v1, p2, :cond_1

    .line 865
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 866
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 867
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 868
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 869
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 870
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 871
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 873
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    .line 874
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    .line 863
    return-void
.end method

.method animateDimLayers()Z
    .locals 8

    .prologue
    .line 486
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v5, :cond_3

    .line 487
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v1

    .line 488
    .local v1, "dimLayer":I
    const/4 v0, 0x0

    .line 493
    .local v0, "dimAmount":F
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v4

    .line 494
    .local v4, "targetAlpha":F
    cmpl-float v5, v4, v0

    if-eqz v5, :cond_a

    .line 495
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v5, :cond_4

    .line 496
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 521
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 522
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v5

    if-nez v5, :cond_d

    .line 526
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 527
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-ne v5, v6, :cond_b

    .line 529
    :cond_1
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_2

    .line 530
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "[BMW]mDimWinAnimator is the bottom window, do not show dimlayer"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_2
    :goto_2
    const/4 v5, 0x0

    return v5

    .line 490
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    .end local v4    # "targetAlpha":F
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v5, -0x1

    .line 491
    .restart local v1    # "dimLayer":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v0    # "dimAmount":F
    goto :goto_0

    .line 498
    .restart local v4    # "targetAlpha":F
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_7

    .line 499
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v2

    .line 501
    .local v2, "duration":J
    :goto_3
    cmpl-float v5, v4, v0

    if-lez v5, :cond_5

    .line 502
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBehindFadeDuration(J)J

    move-result-wide v2

    .line 506
    :cond_5
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 507
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-ne v5, v6, :cond_8

    .line 509
    :cond_6
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_0

    .line 510
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "[BMW]mDimWinAnimator is the bottom window, do not show dimlayer"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 500
    .end local v2    # "duration":J
    :cond_7
    const-wide/16 v2, 0xc8

    .restart local v2    # "duration":J
    goto :goto_3

    .line 508
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 514
    :cond_9
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5, v1, v0, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto/16 :goto_1

    .line 518
    .end local v2    # "duration":J
    :cond_a
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 519
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto/16 :goto_1

    .line 528
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 534
    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->show()V

    goto :goto_2

    .line 538
    :cond_d
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v5

    return v5
.end method

.method attachDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attachDisplayContent: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 425
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 426
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 429
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v0

    .line 429
    if-eqz v0, :cond_1

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundEnabled:Z

    .line 433
    new-instance v0, Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/StackBackgroundSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->prepareSurface()V

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    .line 419
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 630
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 634
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 637
    :cond_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->destroySurface()V

    .line 640
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    .line 643
    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 627
    return-void
.end method

.method computeStackSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->computeTopFloatStack()V

    .line 801
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->computeStackSizeForSplit()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->computeStackSizeForFloating()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method computeStackSizeForFloating()Landroid/graphics/Rect;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1339
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateReqOrientation()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1340
    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BMW]computeStackSizeForFloating:update request orientation failed! This:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    return-object v9

    .line 1344
    :cond_0
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_1

    .line 1345
    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BMW]computeStackSizeForFloating this:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1346
    const-string/jumbo v7, ", mOrientation="

    .line 1345
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1346
    iget v7, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 1345
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1349
    .local v3, "stackSize":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1351
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 1352
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_b

    .line 1353
    :cond_2
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    if-nez v5, :cond_3

    .line 1354
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_a

    .line 1355
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    .line 1359
    :goto_0
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    .line 1361
    :cond_3
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    invoke-virtual {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1362
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1363
    iget v6, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 1362
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1379
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->computeBoundaryLimit()V

    .line 1381
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_8

    .line 1382
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1383
    .local v0, "bound":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1386
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    add-int v2, v5, v6

    .line 1387
    .local v2, "left":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    add-int v4, v5, v6

    .line 1388
    .local v4, "top":I
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    if-gt v2, v5, :cond_4

    .line 1389
    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    if-nez v5, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimitFirstLaunch:I

    if-le v5, v6, :cond_5

    .line 1390
    :cond_4
    const/4 v2, 0x0

    .line 1392
    :cond_5
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    if-gt v4, v5, :cond_6

    .line 1393
    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    if-nez v5, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimitFirstLaunch:I

    if-le v5, v6, :cond_7

    .line 1394
    :cond_6
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    .line 1396
    :cond_7
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1398
    .end local v0    # "bound":Landroid/graphics/Rect;
    .end local v2    # "left":I
    .end local v4    # "top":I
    :cond_8
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_9

    .line 1399
    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BMW]computeStackSizeForFloating boxSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_9
    iput-boolean v8, p0, Lcom/android/server/wm/TaskStack;->mInSplitMode:Z

    .line 1402
    return-object v3

    .line 1357
    :cond_a
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    goto/16 :goto_0

    .line 1365
    :cond_b
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    if-nez v5, :cond_c

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    if-nez v5, :cond_c

    .line 1366
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_d

    .line 1367
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    .line 1371
    :goto_2
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    .line 1373
    :cond_c
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    invoke-virtual {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1374
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1375
    iget v6, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 1374
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_1

    .line 1369
    :cond_d
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    goto :goto_2
.end method

.method computeStackSizeForSplit()Landroid/graphics/Rect;
    .locals 26

    .prologue
    .line 1247
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 1249
    .local v17, "stackSize":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    .line 1250
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getOrientation()I

    move-result v14

    .line 1252
    .local v14, "orient":I
    iget v8, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1253
    .local v8, "dw":I
    iget v6, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1254
    .local v6, "dh":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v15

    .line 1255
    .local v15, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8, v6, v15}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v5

    .line 1256
    .local v5, "availW":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8, v6, v15}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v4

    .line 1257
    .local v4, "availH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8, v6, v15}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v13

    .line 1258
    .local v13, "nonDecorHeight":I
    sub-int v18, v13, v4

    .line 1260
    .local v18, "statusBarHeight":I
    sget-boolean v23, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v23, :cond_0

    .line 1261
    const-string/jumbo v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[BMW]computeStackSizeForSplit mTopFloatStack = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1262
    const-string/jumbo v25, ", availW = "

    .line 1261
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1262
    const-string/jumbo v25, ", availH = "

    .line 1261
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1263
    const-string/jumbo v25, ", statusBarHeight = "

    .line 1261
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_0
    move/from16 v19, v18

    .line 1267
    .local v19, "topOffset":I
    const/4 v10, 0x0

    .line 1268
    .local v10, "leftOffset":I
    const/16 v22, 0x0

    .line 1269
    .local v22, "width":I
    const/4 v9, 0x0

    .line 1271
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    .line 1272
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/multiwindow/MultiWindowProxy;->computeStackPosition(I)I

    move-result v16

    .line 1274
    .local v16, "stackPosition":I
    div-int/lit8 v22, v5, 0x2

    .line 1275
    move v9, v4

    .line 1277
    if-eqz v14, :cond_1

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v14, v0, :cond_2

    .line 1278
    :cond_1
    move/from16 v22, v5

    .line 1279
    div-int/lit8 v9, v4, 0x2

    .line 1281
    :cond_2
    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 1282
    if-eqz v14, :cond_3

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v14, v0, :cond_8

    .line 1283
    :cond_3
    add-int v19, v19, v9

    .line 1313
    :cond_4
    :goto_0
    if-eqz v14, :cond_5

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v14, v0, :cond_e

    .line 1314
    :cond_5
    iget v0, v7, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    move/from16 v23, v0

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0xdc

    move/from16 v23, v0

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0xa0

    move/from16 v23, v0

    sub-int v11, v4, v23

    .line 1315
    .local v11, "maHeight":I
    if-le v9, v11, :cond_6

    .line 1316
    move v9, v11

    .line 1324
    .end local v11    # "maHeight":I
    :cond_6
    :goto_1
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1325
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1327
    sget-boolean v23, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v23, :cond_7

    .line 1328
    const-string/jumbo v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[BMW]computeStackSizeForSplit stackSize = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_7
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskStack;->mInSplitMode:Z

    .line 1331
    return-object v17

    .line 1285
    :cond_8
    add-int/lit8 v10, v22, 0x0

    goto :goto_0

    .line 1290
    .end local v16    # "stackPosition":I
    :cond_9
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/multiwindow/MultiWindowProxy;->computeStackPosition(I)I

    move-result v21

    .line 1291
    .local v21, "topStackPosition":I
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/mediatek/multiwindow/MultiWindowProxy;->computeStackPosition(I)I

    move-result v16

    .line 1292
    .restart local v16    # "stackPosition":I
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 1293
    .local v20, "topStackBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1295
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v23

    sub-int v22, v5, v23

    .line 1296
    move v9, v4

    .line 1298
    if-eqz v14, :cond_a

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v14, v0, :cond_b

    .line 1299
    :cond_a
    move/from16 v22, v5

    .line 1300
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v23

    sub-int v9, v4, v23

    .line 1302
    :cond_b
    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 1304
    if-eqz v14, :cond_c

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v14, v0, :cond_d

    .line 1305
    :cond_c
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    goto/16 :goto_0

    .line 1307
    :cond_d
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    add-int/lit8 v10, v23, 0x0

    goto/16 :goto_0

    .line 1319
    .end local v20    # "topStackBounds":Landroid/graphics/Rect;
    .end local v21    # "topStackPosition":I
    :cond_e
    iget v0, v7, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    move/from16 v23, v0

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0xdc

    move/from16 v23, v0

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0xa0

    move/from16 v23, v0

    sub-int v12, v5, v23

    .line 1320
    .local v12, "maxWidth":I
    move/from16 v0, v22

    if-le v0, v12, :cond_6

    .line 1321
    move/from16 v22, v12

    goto/16 :goto_1
.end method

.method computeTopFloatStack()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1175
    iput-object v6, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    .line 1176
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1177
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 1178
    .local v5, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 1179
    .local v4, "tmpStack":Lcom/android/server/wm/TaskStack;
    iget v3, v4, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 1181
    .local v3, "stackId":I
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v1

    .line 1182
    .local v1, "isFloating":Z
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_2

    .line 1183
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isInMiniMax(I)Z

    move-result v2

    .line 1185
    :goto_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v4, Lcom/android/server/wm/TaskStack;->mInSplitMode:Z

    if-eqz v6, :cond_1

    .line 1187
    :cond_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, v4, Lcom/android/server/wm/TaskStack;->mInSplitMode:Z

    if-eqz v6, :cond_3

    .line 1176
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1182
    :cond_2
    const/4 v2, 0x0

    .local v2, "isInMiniMax":Z
    goto :goto_1

    .line 1189
    .end local v2    # "isInMiniMax":Z
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    .line 1190
    if-nez v2, :cond_1

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v3, v6, :cond_1

    .line 1191
    iput-object v4, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    .line 1173
    .end local v1    # "isFloating":Z
    .end local v3    # "stackId":I
    .end local v4    # "tmpStack":Lcom/android/server/wm/TaskStack;
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method

.method detachDisplay()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 441
    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/16 v7, 0x791e

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 443
    const/4 v3, 0x0

    .line 444
    .local v3, "doAnotherLayoutPass":Z
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 445
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v1, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 446
    .local v1, "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "appNdx":I
    :goto_1
    if-ltz v0, :cond_1

    .line 447
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 448
    .local v2, "appWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_0

    .line 451
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v6, v8}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 453
    const/4 v3, 0x1

    .line 448
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 446
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 444
    .end local v2    # "appWindows":Lcom/android/server/wm/WindowList;
    .end local v5    # "winNdx":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 457
    .end local v0    # "appNdx":I
    .end local v1    # "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    :cond_2
    if-eqz v3, :cond_3

    .line 458
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 461
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->close()V

    .line 440
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 647
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mStackId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 648
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDeferDetach="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 649
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 650
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 656
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 657
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDimLayer:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 659
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDimWinAnimator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 661
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 662
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 663
    const-string/jumbo v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 665
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 666
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 667
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 668
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 669
    const-string/jumbo v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 664
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 673
    .end local v0    # "i":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_3
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 674
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskStack;->dumpOthers(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 646
    :cond_4
    return-void
.end method

.method public dumpOthers(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 886
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "FLOATING LAYOUT POLICY INFO:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    const-string/jumbo v0, "Bounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 889
    const-string/jumbo v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplayRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 890
    const-string/jumbo v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Launch Mode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 892
    const/4 v1, 0x1

    .line 891
    if-eq v0, v1, :cond_0

    .line 893
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 894
    const/16 v1, 0x9

    .line 893
    if-ne v0, v1, :cond_1

    .line 895
    :cond_0
    const-string/jumbo v0, "Portrait"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 901
    const-string/jumbo v0, "mXOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    const-string/jumbo v0, "mYOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 903
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 904
    const-string/jumbo v0, "mFloatStackPortWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    const-string/jumbo v0, "mFloatStackPortHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 906
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    const-string/jumbo v0, "mFloatStackLandWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    const-string/jumbo v0, "mFloatStackLandHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 909
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    const-string/jumbo v0, "mTopBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 911
    const-string/jumbo v0, "mBottomBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    const-string/jumbo v0, "mRightBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 913
    const-string/jumbo v0, "mLeftBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 914
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    const-string/jumbo v0, "mStacksOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 916
    const-string/jumbo v0, "mTopFloatStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 917
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 885
    return-void

    .line 897
    :cond_1
    const-string/jumbo v0, "Landscape"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method forceFullscreen(Z)Z
    .locals 2
    .param p1, "forceFullscreen"    # Z

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mForceFullscreen:Z

    if-ne v0, p1, :cond_0

    .line 291
    return v1

    .line 293
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mForceFullscreen:Z

    .line 294
    if-eqz p1, :cond_2

    .line 295
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v0, :cond_1

    .line 296
    return v1

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 301
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    :cond_3
    return v1

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method getBottomWindow()Lcom/android/server/wm/WindowState;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1119
    const/4 v3, 0x0

    .line 1120
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1121
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1122
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .local v2, "tokenNdx":I
    :goto_0
    iget-object v5, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1123
    iget-object v5, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 1124
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    const/4 v4, 0x0

    .local v4, "winNdx":I
    :goto_1
    iget-object v5, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1125
    iget-object v5, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1126
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_1

    .line 1127
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BMW]getBottomWindow win:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_0
    return-object v3

    .line 1124
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1122
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1133
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "tokenNdx":I
    .end local v4    # "winNdx":I
    :cond_3
    return-object v3
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 209
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public getStackBounds(III)Landroid/graphics/Rect;
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .prologue
    .line 849
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    if-ne v0, p1, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    return-object v0

    .line 855
    :cond_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->rotateBoundsForSpilt(III)V

    .line 860
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    return-object v0

    .line 858
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->rotateBounds(III)V

    goto :goto_0
.end method

.method public getStackOffsets([I)V
    .locals 2
    .param p1, "offsets"    # [I

    .prologue
    .line 878
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 879
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offsets must be an array of two integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_1
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 882
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 877
    return-void
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method isAnimating()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 309
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 310
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 311
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 312
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 313
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_2
    if-ltz v4, :cond_2

    .line 314
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 315
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v6, :cond_1

    .line 316
    :cond_0
    const/4 v6, 0x1

    return v6

    .line 313
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 311
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 309
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 321
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    return v7
.end method

.method isDimming()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-nez v0, :cond_0

    .line 558
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    return v0
.end method

.method isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 1
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFullscreen()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    return v0
.end method

.method moveTaskToBottom(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 386
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToBottom: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 385
    return-void
.end method

.method moveTaskToTop(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 374
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToTop: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 377
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 379
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateStackSizeIfNeeded()V

    .line 373
    :cond_1
    return-void
.end method

.method onWinCropChanged(Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 1070
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 1071
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]onSurfaceCropChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1072
    const-string/jumbo v2, ", crop:"

    .line 1071
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1075
    :cond_1
    return-void

    .line 1076
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackBackgroundSurface;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 1069
    :cond_3
    return-void
.end method

.method onWinHiden(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 1107
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]onSurfaceHiden winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setStackBackground(Z)V

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1110
    :cond_1
    return-void

    .line 1111
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_3

    .line 1112
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->hide()V

    .line 1106
    :cond_3
    return-void
.end method

.method onWinMatrixChanged(Lcom/android/server/wm/WindowStateAnimator;FFFF)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dsdy"    # F
    .param p5, "dtdy"    # F

    .prologue
    .line 1056
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 1057
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]onSurfaceMatrixChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1058
    const-string/jumbo v2, ", dsdx:"

    .line 1057
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1058
    const-string/jumbo v2, ", dtdx:"

    .line 1057
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1059
    const-string/jumbo v2, ", dsdy:"

    .line 1057
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1059
    const-string/jumbo v2, ", dtdy:"

    .line 1057
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1062
    :cond_1
    return-void

    .line 1063
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_3

    .line 1064
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/wm/StackBackgroundSurface;->setMatrix(FFFF)V

    .line 1055
    :cond_3
    return-void
.end method

.method onWinPositionChanged(Lcom/android/server/wm/WindowStateAnimator;FF)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 1027
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 1028
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]onSurfacePositionChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1029
    const-string/jumbo v2, ", left:"

    .line 1028
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1029
    const-string/jumbo v2, ", top:"

    .line 1028
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1032
    :cond_1
    return-void

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    .line 1026
    :cond_3
    return-void
.end method

.method onWinShown(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 1084
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]onSurfaceShown winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setStackBackground(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1087
    :cond_1
    return-void

    .line 1088
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_3

    .line 1090
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    .line 1091
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    .line 1090
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    .line 1092
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    float-to-int v1, v1

    .line 1093
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    float-to-int v2, v2

    .line 1092
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    .line 1094
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    .line 1095
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v1, v2

    .line 1096
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v2, v3

    .line 1097
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    .line 1098
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    .line 1094
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/StackBackgroundSurface;->setMatrix(FFFF)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->show()V

    .line 1083
    :cond_3
    return-void
.end method

.method onWinSizeChanged(Lcom/android/server/wm/WindowStateAnimator;II)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1042
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 1043
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW]onSurfaceSizeChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1044
    const-string/jumbo v2, ", w:"

    .line 1043
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1044
    const-string/jumbo v2, ", h:"

    .line 1043
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1047
    :cond_1
    return-void

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_3

    .line 1049
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    .line 1041
    :cond_3
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v5, 0x0

    .line 397
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 400
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->onTaskRemoved(II)V

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_3

    .line 405
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0, v5}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 408
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 410
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "appNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 411
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 412
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_4

    .line 413
    iput-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 414
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 410
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 396
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_5
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 465
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 464
    :cond_0
    return-void
.end method

.method resetDimmingTag()V
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    .line 544
    return-void
.end method

.method resetStackBackgroundAnimator()V
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->hide()V

    .line 996
    :cond_0
    return-void
.end method

.method resizeWindows()V
    .locals 10

    .prologue
    .line 128
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 129
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 130
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    iget-object v0, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 131
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v7, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 133
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 134
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 135
    .local v4, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 136
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "WindowManager"

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBounds: Resizing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 131
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 129
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 127
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    return-void
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    .prologue
    .line 605
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 606
    .local v0, "animLayer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_1

    .line 608
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 609
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    .line 610
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v2, v0, -0x1

    .line 611
    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const-wide/16 v4, 0x0

    .line 610
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 604
    :cond_1
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v2, :cond_0

    .line 149
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBounds bound = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    const-string/jumbo v4, ", stackId = "

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "setBounds"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {v2, v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 154
    .local v0, "oldFullscreen":Z
    const/4 v1, 0x0

    .line 155
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 157
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v1, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 158
    if-nez p1, :cond_2

    .line 159
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 160
    iput-boolean v7, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 177
    :cond_1
    :goto_0
    if-nez p1, :cond_5

    .line 179
    return v6

    .line 164
    :cond_2
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v2

    .line 164
    if-eqz v2, :cond_4

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    goto :goto_0

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 170
    return v6

    .line 181
    :cond_5
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 182
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v2

    .line 181
    if-eqz v2, :cond_6

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->verifyStackBounds(Landroid/graphics/Rect;)V

    .line 186
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-ne v0, v2, :cond_7

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v2, v1, :cond_7

    .line 187
    return v6

    .line 190
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 191
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 194
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 195
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v2, :cond_8

    .line 196
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBackgroundSurface;->setBounds(Landroid/graphics/Rect;)V

    .line 200
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 203
    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 204
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    .line 205
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateOverrideConfiguration()V

    .line 206
    return v7
.end method

.method setDimmingTag()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    .line 548
    return-void
.end method

.method setStackBackground(Z)V
    .locals 6
    .param p1, "forceShow"    # Z

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->needShowStackBackground()Z

    move-result v3

    if-nez v3, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->resetStackBackgroundAnimator()V

    .line 926
    return-void

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->adjustStackBackgroundAnimator()Lcom/android/server/wm/WindowStateAnimator;

    move-result-object v2

    .line 929
    .local v2, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BMW]setStackBackground winAnimator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_1
    if-nez v2, :cond_2

    .line 931
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->resetStackBackgroundAnimator()V

    .line 932
    return-void

    .line 934
    :cond_2
    const/4 v1, 0x0

    .line 935
    .local v1, "needUpdata":Z
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v3, :cond_3

    .line 936
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eq v2, v3, :cond_4

    .line 937
    :cond_3
    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 938
    const/4 v1, 0x1

    .line 940
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->adjustStackBackgroundLayer()I

    move-result v0

    .line 941
    .local v0, "animLayer":I
    if-gez v0, :cond_5

    .line 942
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 944
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/StackBackgroundSurface;->setLayer(I)V

    .line 945
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_6

    .line 946
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BMW]setStackBackground mStackBackgroundAnimator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 947
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 946
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 947
    const-string/jumbo v5, ", animLayer:"

    .line 946
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_6
    if-eqz p1, :cond_7

    .line 950
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v3}, Lcom/android/server/wm/StackBackgroundSurface;->show()V

    .line 923
    :cond_7
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 570
    iget-boolean v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_1

    .line 573
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1

    .line 575
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v0, :cond_2

    .line 567
    :cond_1
    :goto_0
    return-void

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 584
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 587
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 589
    .local v1, "offsets":[I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 590
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskStack;->getStackOffsets([I)V

    .line 591
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 592
    iget v2, v0, Landroid/graphics/Rect;->left:I

    aget v3, v1, v4

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 593
    iget v2, v0, Landroid/graphics/Rect;->right:I

    aget v3, v1, v4

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 594
    iget v2, v0, Landroid/graphics/Rect;->top:I

    aget v3, v1, v5

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 595
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aget v3, v1, v5

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 596
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 583
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "offsets":[I
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method switchUser()V
    .locals 5

    .prologue
    .line 616
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 617
    .local v2, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 618
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 619
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 621
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/lit8 v2, v2, -0x1

    .line 617
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void
.end method

.method testDimmingTag()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 239
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v2

    .line 239
    if-eqz v2, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v2, :cond_2

    .line 244
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 247
    .local v0, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v2, v0, :cond_3

    .line 248
    return-void

    .line 253
    :cond_3
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    .line 254
    .local v1, "rotationDelta":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 255
    packed-switch v1, :pswitch_data_0

    .line 278
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 260
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 261
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 262
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 263
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 266
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 267
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 268
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 269
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 272
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 273
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 274
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 275
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method updateStackSizeIfNeeded()V
    .locals 4

    .prologue
    .line 1407
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1408
    return-void

    .line 1411
    :cond_0
    const/4 v1, 0x0

    .line 1412
    .local v1, "needUpdated":Z
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1413
    const/4 v1, 0x1

    .line 1416
    :cond_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSplitMode()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mInSplitMode:Z

    if-eq v2, v3, :cond_2

    .line 1417
    const/4 v1, 0x1

    .line 1420
    :cond_2
    if-eqz v1, :cond_4

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->computeStackSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 1422
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez v0, :cond_3

    .line 1423
    return-void

    .line 1425
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 1426
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1406
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_4
    return-void
.end method

.method verifyStackBoundsForSplit(Landroid/graphics/Rect;)V
    .locals 16
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 1200
    .local v4, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getOrientation()I

    move-result v11

    .line 1201
    .local v11, "orient":I
    iget v5, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1202
    .local v5, "dw":I
    iget v3, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1203
    .local v3, "dh":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v12

    .line 1204
    .local v12, "rotation":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v14, v5, v3, v12}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(III)I

    move-result v2

    .line 1205
    .local v2, "availW":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v14, v5, v3, v12}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(III)I

    move-result v1

    .line 1206
    .local v1, "availH":I
    iget v14, v4, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit16 v14, v14, 0xdc

    div-int/lit16 v6, v14, 0xa0

    .line 1207
    .local v6, "margin":I
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v14, v15}, Lcom/mediatek/multiwindow/MultiWindowProxy;->computeStackPosition(I)I

    move-result v13

    .line 1208
    .local v13, "stackPosition":I
    iget v14, v4, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit16 v14, v14, 0xdc

    div-int/lit16 v9, v14, 0xa0

    .line 1209
    .local v9, "minHeight":I
    sub-int v7, v1, v9

    .line 1210
    .local v7, "maxHeight":I
    move v10, v9

    .line 1211
    .local v10, "minWidth":I
    sub-int v8, v2, v10

    .line 1212
    .local v8, "maxWidth":I
    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 1214
    if-eqz v11, :cond_0

    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 1215
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v14, v7, :cond_2

    .line 1216
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v7

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->top:I

    .line 1198
    :cond_1
    :goto_0
    return-void

    .line 1217
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-ge v14, v9, :cond_1

    .line 1218
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v9

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1221
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-le v14, v8, :cond_4

    .line 1222
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v8

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1223
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-ge v14, v10, :cond_1

    .line 1224
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v10

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1229
    :cond_5
    if-eqz v11, :cond_6

    const/4 v14, 0x2

    if-ne v11, v14, :cond_8

    .line 1230
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-le v14, v7, :cond_7

    .line 1231
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v7

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1232
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-ge v14, v9, :cond_1

    .line 1233
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v9

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1236
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-le v14, v8, :cond_9

    .line 1237
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v8

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1238
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-ge v14, v10, :cond_1

    .line 1239
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v10

    move-object/from16 v0, p1

    iput v14, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
