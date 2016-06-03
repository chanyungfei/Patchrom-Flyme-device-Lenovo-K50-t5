.class public Lcom/lenovo/settings/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;,
        Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;,
        Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;,
        Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;,
        Lcom/lenovo/settings/dslv/DragSortListView$DragSortListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$DropListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$DragListener;,
        Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;,
        Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;,
        Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;,
        Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;,
        Lcom/lenovo/settings/dslv/DragSortListView$SmoothAnimator;,
        Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;,
        Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;
    }
.end annotation


# static fields
.field private static final DELAY_EVENT:J = 0x28L

.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DragSortListView"

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUpdateListener:Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "Recycle"
        }
    .end annotation

    .prologue
    .line 431
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 57
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 67
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 78
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    .line 79
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 104
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    .line 164
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    .line 175
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 182
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 198
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 204
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 216
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 223
    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 247
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 255
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lenovo/settings/dslv/DragSortListView$1;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    .line 322
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    .line 328
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 333
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    .line 338
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    .line 358
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    .line 365
    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 374
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    .line 387
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    .line 397
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 404
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 418
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    .line 427
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1676
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 2163
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 3076
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;Lcom/lenovo/settings/dslv/DragSortListView$1;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    .line 3077
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;Lcom/lenovo/settings/dslv/DragSortListView$1;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    .line 433
    const/16 v27, 0x96

    .line 434
    .local v27, "defaultDuration":I
    move/from16 v30, v27

    .line 435
    .local v30, "removeAnimDuration":I
    move/from16 v28, v27

    .line 437
    .local v28, "dropAnimDuration":I
    if-eqz p2, :cond_3

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v12, Lcom/android/settings/R$styleable;->DragSortListView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 441
    .local v11, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 444
    const/4 v5, 0x5

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    .line 446
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v5, :cond_0

    .line 447
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    .line 451
    :cond_0
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    .line 452
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 454
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    .line 457
    :cond_1
    const/4 v5, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x7

    const/high16 v15, 0x3f400000    # 0.75f

    invoke-virtual {v11, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 460
    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-lez v5, :cond_6

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    .line 462
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    .line 465
    .local v29, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 467
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 470
    const/16 v5, 0x8

    move/from16 v0, v30

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 473
    const/16 v5, 0x9

    move/from16 v0, v28

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 476
    const/16 v5, 0x11

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    .line 479
    .local v34, "useDefault":Z
    if-eqz v34, :cond_2

    .line 480
    const/16 v5, 0xc

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 482
    .local v31, "removeEnabled":Z
    const/4 v5, 0x4

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 484
    .local v8, "removeMode":I
    const/16 v5, 0xb

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .line 485
    .local v33, "sortEnabled":Z
    const/16 v5, 0xd

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 487
    .local v7, "dragInitMode":I
    const/16 v5, 0xe

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 488
    .local v6, "dragHandleId":I
    const/16 v5, 0xf

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 489
    .local v10, "flingHandleId":I
    const/16 v5, 0x10

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 490
    .local v9, "clickRemoveId":I
    const/4 v5, 0x3

    const/4 v12, -0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 493
    .local v26, "bgColor":I
    new-instance v4, Lcom/lenovo/settings/dslv/DragSortController;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/lenovo/settings/dslv/DragSortController;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;IIIII)V

    .line 496
    .local v4, "controller":Lcom/lenovo/settings/dslv/DragSortController;
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/lenovo/settings/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 497
    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/lenovo/settings/dslv/DragSortController;->setSortEnabled(Z)V

    .line 498
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/lenovo/settings/dslv/DragSortController;->setBackgroundColor(I)V

    .line 500
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    .line 501
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lenovo/settings/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 504
    .end local v4    # "controller":Lcom/lenovo/settings/dslv/DragSortController;
    .end local v6    # "dragHandleId":I
    .end local v7    # "dragInitMode":I
    .end local v8    # "removeMode":I
    .end local v9    # "clickRemoveId":I
    .end local v10    # "flingHandleId":I
    .end local v26    # "bgColor":I
    .end local v31    # "removeEnabled":Z
    .end local v33    # "sortEnabled":Z
    :cond_2
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 507
    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v29    # "frac":F
    .end local v34    # "useDefault":Z
    :cond_3
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    .line 509
    const/high16 v32, 0x3f000000    # 0.5f

    .line 510
    .local v32, "smoothness":F
    if-lez v30, :cond_4

    .line 511
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-direct {v5, v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    .line 514
    :cond_4
    if-lez v28, :cond_5

    .line 515
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    .line 518
    :cond_5
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 522
    new-instance v5, Lcom/lenovo/settings/dslv/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/lenovo/settings/dslv/DragSortListView$2;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 540
    return-void

    .line 460
    .end local v32    # "smoothness":F
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/settings/dslv/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lenovo/settings/dslv/DragSortListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1502(Lcom/lenovo/settings/dslv/DragSortListView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic access$1516(Lcom/lenovo/settings/dslv/DragSortListView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # F

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic access$1600(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/settings/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/lenovo/settings/dslv/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$1900(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/settings/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$2100(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/settings/dslv/DragSortListView;)Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$2400(Lcom/lenovo/settings/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$2502(Lcom/lenovo/settings/dslv/DragSortListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/lenovo/settings/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/lenovo/settings/dslv/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/lenovo/settings/dslv/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/lenovo/settings/dslv/DragSortListView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/settings/dslv/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$3101(Lcom/lenovo/settings/dslv/DragSortListView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/settings/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    return v0
.end method

.method static synthetic access$900(Lcom/lenovo/settings/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/dslv/DragSortListView;

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1842
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1843
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1845
    .local v4, "last":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1846
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1848
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1849
    invoke-virtual {p0, v3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1850
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1851
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1848
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1854
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1860
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1861
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1863
    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1871
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1873
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1874
    const/4 v0, -0x2

    .line 1879
    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1880
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1881
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1885
    :cond_0
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1886
    :cond_1
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1887
    check-cast v4, Lcom/lenovo/settings/dslv/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/lenovo/settings/dslv/DragSortItemView;->setGravity(I)V

    .line 1895
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1896
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1898
    .local v3, "vis":I
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1899
    const/4 v3, 0x4

    .line 1902
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1903
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1905
    :cond_4
    return-void

    .line 1876
    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    .line 1888
    :cond_6
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1889
    check-cast v4, Lcom/lenovo/settings/dslv/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/lenovo/settings/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1534
    .local v0, "firstPos":I
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1537
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1538
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1539
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1540
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1542
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/settings/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1544
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 2038
    const/4 v0, 0x0

    .line 2040
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 2042
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 2043
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 2045
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 2046
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 2047
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 2048
    sub-int/2addr v4, v1

    .line 2049
    sub-int/2addr v3, v1

    .line 2052
    :cond_0
    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2053
    .local v2, "maxBlank":I
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 2054
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 2057
    :cond_1
    if-gt p1, p3, :cond_3

    .line 2058
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 2059
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 2077
    :cond_2
    :goto_0
    return v0

    .line 2061
    :cond_3
    if-ne p1, p4, :cond_6

    .line 2062
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 2063
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 2064
    :cond_4
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 2065
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    .line 2067
    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    .line 2070
    :cond_6
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 2071
    sub-int/2addr v0, v2

    goto :goto_0

    .line 2072
    :cond_7
    iget v7, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 2073
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .param p0, "cip"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "runStart"    # [I
    .param p4, "runEnd"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2696
    const/4 v4, 0x0

    .line 2698
    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2699
    .local v2, "i":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 2740
    :goto_0
    return v5

    .line 2702
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2703
    .local v3, "position":I
    move v1, v3

    .line 2704
    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .line 2705
    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_3

    .line 2706
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2705
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2708
    :cond_1
    if-ne v3, v0, :cond_2

    .line 2709
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2711
    :cond_2
    aput v1, p3, v4

    .line 2712
    aput v0, p4, v4

    .line 2713
    add-int/lit8 v4, v4, 0x1

    .line 2714
    move v1, v3

    .line 2715
    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    .line 2719
    :cond_3
    if-ne v0, p2, :cond_4

    .line 2724
    move v0, p1

    .line 2726
    :cond_4
    aput v1, p3, v4

    .line 2727
    aput v0, p4, v4

    .line 2728
    add-int/lit8 v4, v4, 0x1

    .line 2730
    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    .line 2731
    aget v6, p3, v5

    if-ne v6, p1, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget v6, p4, v6

    if-ne v6, p1, :cond_5

    .line 2736
    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    aput v6, p3, v5

    .line 2737
    add-int/lit8 v4, v4, -0x1

    :cond_5
    move v5, v4

    .line 2740
    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 1995
    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    .line 1996
    .local v1, "isSliding":Z
    :goto_0
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v2, v4, v5

    .line 1997
    .local v2, "maxNonSrcBlankHeight":I
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 2001
    .local v3, "slideHeight":I
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_4

    .line 2002
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v4, v5, :cond_2

    .line 2003
    if-eqz v1, :cond_1

    .line 2004
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int v0, v3, v4

    .line 2027
    .local v0, "height":I
    :goto_1
    return v0

    .line 1995
    .end local v0    # "height":I
    .end local v1    # "isSliding":Z
    .end local v2    # "maxNonSrcBlankHeight":I
    .end local v3    # "slideHeight":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2006
    .restart local v1    # "isSliding":Z
    .restart local v2    # "maxNonSrcBlankHeight":I
    .restart local v3    # "slideHeight":I
    :cond_1
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 2008
    .end local v0    # "height":I
    :cond_2
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v4, v5, :cond_3

    .line 2010
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2012
    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 2014
    .end local v0    # "height":I
    :cond_4
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v4, :cond_6

    .line 2015
    if-eqz v1, :cond_5

    .line 2016
    add-int v0, p2, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2018
    .end local v0    # "height":I
    :cond_5
    add-int v0, p2, v2

    .restart local v0    # "height":I
    goto :goto_1

    .line 2020
    .end local v0    # "height":I
    :cond_6
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_7

    .line 2022
    add-int v4, p2, v2

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 2024
    .end local v0    # "height":I
    :cond_7
    move v0, p2

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1988
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1472
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    .line 1473
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1474
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1475
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 1476
    return-void
.end method

.method private continueDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1774
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1775
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1777
    invoke-virtual {p0, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1779
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1780
    .local v2, "minY":I
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1783
    .local v1, "maxY":I
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1785
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1789
    if-eq v0, v6, :cond_0

    .line 1791
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1795
    :cond_0
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1815
    :cond_1
    :goto_0
    return-void

    .line 1796
    :cond_2
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1800
    if-eq v0, v6, :cond_3

    .line 1802
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1806
    :cond_3
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1808
    :cond_4
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1813
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2391
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2392
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2395
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2396
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->invalidate()V

    .line 2398
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1646
    iput v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    .line 1647
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1648
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1649
    iput v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1651
    :cond_0
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1652
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1653
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;->clear()V

    .line 1654
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2306
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2308
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updateFloatView()V

    .line 2310
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 2311
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 2313
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updatePositions()Z

    move-result v3

    .line 2315
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2316
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustAllItems()V

    .line 2317
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2319
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/lenovo/settings/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2320
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->layoutChildren()V

    .line 2323
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2324
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->invalidate()V

    .line 2327
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2328
    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1503
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1504
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1512
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1515
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1519
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    .line 1521
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustOnReorder()V

    .line 1522
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->clearPositions()V

    .line 1525
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1526
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1530
    :goto_0
    return-void

    .line 1528
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 747
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 749
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 752
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 754
    .local v5, "l":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 758
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 760
    .local v1, "childHeight":I
    iget v8, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 761
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 762
    .local v7, "t":I
    add-int v0, v7, v3

    .line 769
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 770
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 771
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 772
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 773
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 776
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 764
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 765
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1481
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1483
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1485
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1488
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    .line 1490
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustOnReorder()V

    .line 1491
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->clearPositions()V

    .line 1492
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustAllItems()V

    .line 1495
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1496
    const/4 v1, 0x3

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1500
    :goto_0
    return-void

    .line 1498
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I

    .prologue
    .line 2756
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2757
    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2758
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2760
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    .line 2761
    :cond_1
    const/4 v0, -0x1

    .line 2762
    .end local v0    # "i":I
    :cond_2
    return v0
.end method

.method private getChildHeight(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1908
    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1953
    :cond_0
    :goto_0
    return v1

    .line 1912
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1914
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1917
    invoke-direct {p0, p1, v4, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1921
    :cond_2
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1922
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1926
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1927
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1930
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1931
    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1932
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1935
    :cond_3
    if-ltz v2, :cond_5

    .line 1936
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1937
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1938
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1948
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1951
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mChildHeightCache:Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/lenovo/settings/dslv/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1940
    :cond_4
    iget-object v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1944
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1958
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 1984
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1963
    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1964
    :cond_2
    move-object v0, p2

    .line 1969
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1971
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1972
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1973
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1966
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .line 1977
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1979
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1980
    :cond_5
    invoke-direct {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1981
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 827
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 833
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 909
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 915
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 962
    :goto_0
    return v3

    .line 919
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 923
    .local v2, "divHeight":I
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 924
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 925
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 929
    .local v4, "itemHeight":I
    move v8, p2

    .line 930
    .local v8, "otop":I
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 933
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 934
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 935
    add-int v9, p2, v4

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 956
    :cond_2
    :goto_1
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 957
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, "edge":I
    goto :goto_0

    .line 937
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 938
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 939
    goto :goto_1

    .line 940
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 941
    sub-int v8, p2, v5

    goto :goto_1

    .line 947
    :cond_5
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 948
    add-int v8, p2, v5

    goto :goto_1

    .line 949
    :cond_6
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 950
    sub-int v0, v4, v1

    .line 951
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 959
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "key"    # I

    .prologue
    .line 2766
    const/4 v1, 0x0

    .line 2767
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2768
    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-lez v3, :cond_1

    .line 2769
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 2770
    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 2771
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2773
    :cond_0
    move v0, v2

    goto :goto_0

    .line 2775
    .end local v2    # "middle":I
    :cond_1
    return v1
.end method

.method private invalidateFloatView()V
    .locals 1

    .prologue
    .line 2168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 2169
    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 2101
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    .line 2102
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 2104
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 2081
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2082
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 2083
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2085
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2087
    :cond_0
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 2090
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 2091
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2095
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2096
    return-void

    .line 2093
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private printPosData()V
    .locals 3

    .prologue
    .line 839
    const-string v0, "DragSortListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSrcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    .line 2744
    sub-int v0, p3, p2

    .line 2746
    .local v0, "windowSize":I
    add-int/2addr p0, p1

    .line 2747
    if-ge p0, p2, :cond_1

    .line 2748
    add-int/2addr p0, v0

    .line 2752
    :cond_0
    :goto_0
    return p0

    .line 2749
    :cond_1
    if-lt p0, p3, :cond_0

    .line 2750
    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1658
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1659
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastX:I

    .line 1660
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    .line 1662
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    .line 1663
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    .line 1664
    if-nez v0, :cond_1

    .line 1665
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastX:I

    .line 1666
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastY:I

    .line 1668
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mOffsetX:I

    .line 1669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mOffsetY:I

    .line 1670
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2336
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2337
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iget v11, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2338
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2341
    :cond_0
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2342
    .local v2, "floatX":I
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2345
    .local v3, "floatY":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2346
    .local v7, "padLeft":I
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2347
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2353
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2354
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2355
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2356
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2358
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2359
    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    .line 2360
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2362
    :cond_2
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2363
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2364
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2369
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2370
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2371
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2373
    :cond_4
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2374
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2375
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2379
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2380
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2386
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    .line 2387
    return-void

    .line 2348
    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2349
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2381
    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2382
    iget-object v9, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 968
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 969
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 971
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 973
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 975
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 977
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 979
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 980
    .local v5, "edge":I
    move v13, v5

    .line 982
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 984
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 985
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 986
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 988
    :goto_0
    if-ltz v11, :cond_1

    .line 989
    add-int/lit8 v11, v11, -0x1

    .line 990
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 992
    if-nez v11, :cond_7

    .line 993
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 1029
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 1030
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 1032
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 1034
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 1035
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 1036
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 1038
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 1039
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 1042
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 1043
    move v6, v5

    .line 1044
    .local v6, "edgeBottom":I
    move v8, v13

    .line 1050
    .local v8, "edgeTop":I
    :goto_2
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1051
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1052
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 1053
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 1056
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 1057
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1058
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1059
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    .line 1076
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 1077
    move v11, v15

    .line 1078
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1079
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1086
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 1088
    :cond_3
    const/16 v26, 0x1

    .line 1091
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/lenovo/settings/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1096
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 1097
    const/16 v26, 0x1

    .line 1100
    :cond_6
    return v26

    .line 997
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 998
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1000
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 1004
    move v13, v5

    goto/16 :goto_0

    .line 1008
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 1009
    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 1010
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 1011
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 1012
    goto/16 :goto_1

    .line 1015
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 1016
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 1017
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/lenovo/settings/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 1020
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 1024
    move v13, v5

    .line 1025
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1046
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .line 1047
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 1060
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 1061
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1062
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1064
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1065
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1066
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/settings/dslv/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1071
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1072
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1080
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1082
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1083
    move-object/from16 v0, p0

    iput v11, v0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1818
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1819
    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1820
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1822
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1823
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1825
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1826
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1828
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1829
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1830
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1457
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1459
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->destroyFloatView()V

    .line 1460
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->clearPositions()V

    .line 1461
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->adjustAllItems()V

    .line 1463
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1464
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 780
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 782
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 784
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 785
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 787
    :cond_0
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 788
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 795
    .local v9, "w":I
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 811
    .local v8, "h":I
    const/16 v7, 0xff

    .line 813
    .local v7, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 814
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 815
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 817
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v5, 0xff

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 818
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 819
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 820
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 822
    .end local v7    # "alpha":I
    .end local v8    # "h":I
    .end local v9    # "w":I
    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x28

    const/4 v2, 0x1

    .line 3083
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 3085
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 3114
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 3087
    :pswitch_1
    const-string v3, "DragSortListView"

    const-string v4, "dispatchTouchEvent ACTION_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;->mEvent:Landroid/view/MotionEvent;

    .line 3090
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    invoke-virtual {p0, v3, v6, v7}, Lcom/lenovo/settings/dslv/DragSortListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3094
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 3095
    .local v1, "pointerCount":I
    const-string v2, "DragSortListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent ACTION_POINTER_DOWN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3098
    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDownRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3099
    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3104
    .end local v1    # "pointerCount":I
    :pswitch_3
    const-string v2, "DragSortListView"

    const-string v3, "dispatchTouchEvent ACTION_POINTER_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3108
    :pswitch_4
    const-string v3, "DragSortListView"

    const-string v4, "dispatchTouchEvent ACTION_UP"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;->mEvent:Landroid/view/MotionEvent;

    .line 3110
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpRunnable:Lcom/lenovo/settings/dslv/DragSortListView$DispatchDownTouchEventRunnable;

    invoke-virtual {p0, v3, v6, v7}, Lcom/lenovo/settings/dslv/DragSortListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 3085
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 2295
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2296
    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2298
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2303
    :goto_0
    return-void

    .line 2302
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method public getDropListener()Lcom/lenovo/settings/dslv/DragSortListView$DropListener;
    .locals 1

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    return-object v0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 609
    const/4 v0, 0x0

    .line 611
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public getUpdateListener()Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;
    .locals 1

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpdateListener:Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2476
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2120
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2122
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2123
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 2127
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureFloatView()V

    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2130
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2132
    :cond_1
    return-void
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    .line 1673
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2628
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2629
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .line 2630
    .local v3, "rangeStart":I
    move v2, p2

    .line 2631
    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    .line 2632
    move v3, p2

    .line 2633
    move v2, p1

    .line 2635
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2637
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2638
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2639
    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2640
    .local v4, "runCount":I
    if-ne v4, v10, :cond_2

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_2

    .line 2658
    :cond_1
    return-void

    .line 2646
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2647
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_1

    .line 2648
    aget v7, v6, v1

    invoke-static {v7, v11, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2649
    aget v7, v5, v1

    invoke-static {v7, v11, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2647
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2653
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_1

    .line 2654
    aget v7, v6, v1

    invoke-virtual {p0, v7, v9}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2655
    aget v7, v5, v1

    invoke-virtual {p0, v7, v10}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2653
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public moveItem(II)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1443
    const-string v1, "DragSortListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveItem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1446
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1450
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 2137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2160
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2139
    :pswitch_0
    const-string v0, "DragSortListView"

    const-string v1, "view onDragTouchEvent ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-ne v0, v2, :cond_0

    .line 2141
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->cancelDrag()V

    .line 2143
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2147
    :pswitch_1
    const-string v0, "DragSortListView"

    const-string v1, "view onDragTouchEvent ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-ne v0, v2, :cond_1

    .line 2149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2151
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2155
    :pswitch_2
    const-string v0, "DragSortListView"

    const-string v1, "view onDragTouchEvent ACTION_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 2137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1105
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1107
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1110
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1680
    iget-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 1681
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1728
    :cond_0
    :goto_0
    return v1

    .line 1684
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1685
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1689
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 1690
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-eqz v3, :cond_2

    .line 1692
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1693
    goto :goto_0

    .line 1695
    :cond_2
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1698
    :cond_3
    const/4 v1, 0x0

    .line 1701
    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1703
    const/4 v1, 0x1

    .line 1724
    :goto_1
    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1725
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1705
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1706
    iput-boolean v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mListViewIntercepted:Z

    .line 1707
    const/4 v1, 0x1

    .line 1710
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1716
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1717
    iput v2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1713
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1719
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1710
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2108
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2109
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2110
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2111
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureFloatView()V

    .line 2113
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 2115
    :cond_1
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 2116
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1834
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1835
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updateScrollStarts()V

    .line 1836
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1595
    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1596
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1642
    :cond_0
    :goto_0
    return v2

    .line 1600
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    .line 1601
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1604
    :cond_2
    const/4 v2, 0x0

    .line 1606
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1607
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1609
    if-nez v1, :cond_3

    .line 1610
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1614
    :cond_3
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1615
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1616
    const/4 v2, 0x1

    goto :goto_0

    .line 1622
    :cond_4
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    .line 1623
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1624
    const/4 v2, 0x1

    .line 1628
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1630
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1636
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1637
    const/4 v3, 0x1

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1633
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1630
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    .line 2674
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2676
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2692
    :cond_0
    return-void

    .line 2678
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2679
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2680
    .local v5, "runEnd":[I
    move v3, p1

    .line 2681
    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 2682
    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/lenovo/settings/dslv/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2683
    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_0

    .line 2684
    aget v7, v6, v1

    if-eq v7, p1, :cond_3

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_2

    aget v7, v5, v1

    if-gt v7, p1, :cond_3

    .line 2688
    :cond_2
    aget v7, v6, v1

    invoke-static {v7, v9, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2690
    :cond_3
    aget v7, v5, v1

    invoke-static {v7, v9, v3, v2}, Lcom/lenovo/settings/dslv/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/settings/dslv/DragSortListView;->setItemChecked(IZ)V

    .line 2683
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->removeItem(IF)V

    .line 1387
    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    .line 1397
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1399
    :cond_0
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1401
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    .line 1402
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 1403
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 1404
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 1405
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1406
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1407
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1411
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 1412
    iput p2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveVelocityX:F

    .line 1414
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1415
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1425
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1426
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveAnimator:Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/lenovo/settings/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1431
    :cond_3
    :goto_1
    return-void

    .line 1417
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1420
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1428
    :cond_4
    invoke-direct {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2032
    iget-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 2033
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2035
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 39
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 577
    if-eqz p1, :cond_4

    .line 578
    new-instance v0, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/lenovo/settings/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    .line 579
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 581
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 582
    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->setDropListener(Lcom/lenovo/settings/dslv/DragSortListView$DropListener;)V

    .line 584
    :cond_0
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 585
    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragListener(Lcom/lenovo/settings/dslv/DragSortListView$DragListener;)V

    .line 587
    :cond_1
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 588
    check-cast v0, Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->setRemoveListener(Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;)V

    .line 590
    :cond_2
    instance-of v0, p1, Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    if-eqz v0, :cond_3

    .line 591
    check-cast p1, Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setUpdateListener(Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;)V

    .line 597
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 598
    return-void

    .line 594
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mAdapterWrapper:Lcom/lenovo/settings/dslv/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2472
    iput-boolean p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    .line 2473
    return-void
.end method

.method public setDragListener(Lcom/lenovo/settings/dslv/DragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    .prologue
    .line 2458
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragListener:Lcom/lenovo/settings/dslv/DragSortListView$DragListener;

    .line 2459
    return-void
.end method

.method public setDragScrollProfile(Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    .prologue
    .line 2570
    if-eqz p1, :cond_0

    .line 2571
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mScrollProfile:Lcom/lenovo/settings/dslv/DragSortListView$DragScrollProfile;

    .line 2573
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1740
    invoke-virtual {p0, p1, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1741
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1754
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1755
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1760
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1761
    iput v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1766
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->updateScrollStarts()V

    .line 1769
    :cond_0
    return-void

    .line 1757
    :cond_1
    iput p2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1763
    :cond_2
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/lenovo/settings/dslv/DragSortListView$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$DragSortListener;

    .prologue
    .line 2556
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDropListener(Lcom/lenovo/settings/dslv/DragSortListView$DropListener;)V

    .line 2557
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setDragListener(Lcom/lenovo/settings/dslv/DragSortListView$DragListener;)V

    .line 2558
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setRemoveListener(Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;)V

    .line 2559
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/dslv/DragSortListView;->setUpdateListener(Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;)V

    .line 2560
    return-void
.end method

.method public setDropListener(Lcom/lenovo/settings/dslv/DragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    .prologue
    .line 2492
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropListener:Lcom/lenovo/settings/dslv/DragSortListView$DropListener;

    .line 2493
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 548
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 549
    return-void
.end method

.method public setFloatViewManager(Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    .prologue
    .line 2454
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    .line 2455
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 562
    iput p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 563
    return-void
.end method

.method public setRemoveListener(Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    .prologue
    .line 2518
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mRemoveListener:Lcom/lenovo/settings/dslv/DragSortListView$RemoveListener;

    .line 2519
    return-void
.end method

.method public setUpdateListener(Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    .prologue
    .line 2500
    iput-object p1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUpdateListener:Lcom/lenovo/settings/dslv/DragSortListView$UpdateListener;

    .line 2501
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    .line 2195
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2204
    :cond_0
    :goto_0
    return v0

    .line 2199
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatViewManager:Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/lenovo/settings/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2201
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2204
    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/settings/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2232
    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 2291
    :cond_1
    :goto_0
    return v2

    .line 2237
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2238
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2241
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2242
    .local v0, "pos":I
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFirstExpPos:I

    .line 2243
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSecondExpPos:I

    .line 2244
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    .line 2245
    iput v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatPos:I

    .line 2248
    iput v6, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragState:I

    .line 2249
    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    .line 2250
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v3, p3

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragFlags:I

    .line 2252
    iput-object p2, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2253
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->measureFloatView()V

    .line 2255
    iput p4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaX:I

    .line 2256
    iput p5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    .line 2257
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iput v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragStartY:I

    .line 2260
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mX:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 2261
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mY:I

    iget v5, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 2264
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/lenovo/settings/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2266
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2267
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    :cond_4
    iget-boolean v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v3, :cond_5

    .line 2271
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2276
    :cond_5
    iget v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v3, :pswitch_data_0

    .line 2285
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->requestLayout()V

    .line 2287
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLiftAnimator:Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;

    if-eqz v3, :cond_1

    .line 2288
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mLiftAnimator:Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v3}, Lcom/lenovo/settings/dslv/DragSortListView$LiftAnimator;->start()V

    goto :goto_0

    .line 2278
    :pswitch_0
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2281
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    .line 1558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1559
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v0, 0x1

    .line 1568
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1569
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragScroller:Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/lenovo/settings/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1571
    if-eqz p1, :cond_1

    .line 1572
    iget v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->removeItem(IF)V

    .line 1581
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1582
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDragSortTracker:Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/lenovo/settings/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1588
    :cond_0
    :goto_1
    return v0

    .line 1574
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1575
    iget-object v1, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mDropAnimator:Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/lenovo/settings/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1577
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/settings/dslv/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1588
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    .line 1563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/dslv/DragSortListView;->mUseRemoveVelocity:Z

    .line 1564
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/settings/dslv/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
