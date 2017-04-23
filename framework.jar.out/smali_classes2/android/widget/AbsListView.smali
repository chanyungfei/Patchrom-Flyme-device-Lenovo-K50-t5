.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$PositionScroller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DBG_DATACHANGE_FLAG:I = 0x2

.field private static final DBG_DRAW_FLAG:I = 0x10

.field private static final DBG_FLAG:I = 0x20

.field private static final DBG_LAYOUT_FLAG:I = 0x4

.field private static final DBG_MOTION_FLAG:I = 0x1

.field private static final DBG_OOM_VALUE:I = 0x32

.field private static final DBG_RECYCLE_FLAG:I = 0x8

.field private static final DBG_SELECTOR_FLAG:I = 0x40

.field private static final DBG_TIMEOUT_VALUE:I = 0xc8

.field private static final INVALID_POINTER:I = -0x1

.field private static final IS_ENG_BUILD:Z

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final LOG_PROPERTY_NAME:Ljava/lang/String; = "debug.listview.dumpinfo"

.field private static final OVERFLING_VELOCITY_MAGN:I = 0x50

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static sDbg:Z

.field private static sDbgDataChange:Z

.field private static sDbgDraw:Z

.field private static sDbgLayout:Z

.field private static sDbgMotion:Z

.field private static sDbgRecycle:Z

.field private static sDbgSelector:Z

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field private mIsDetaching:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mNestedYOffset:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic -get11(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic -get13(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic -get14(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic -get15(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic -get16(Landroid/widget/AbsListView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object v0
.end method

.method static synthetic -get17(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic -get18()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbg:Z

    return v0
.end method

.method static synthetic -get19()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgDataChange:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    return v0
.end method

.method static synthetic -get21()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgRecycle:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic -get9(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/AbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/AbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "alwaysShow"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    .line 121
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgMotion:Z

    .line 122
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgDataChange:Z

    .line 123
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgLayout:Z

    .line 124
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgRecycle:Z

    .line 125
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgDraw:Z

    .line 126
    sput-boolean v2, Landroid/widget/AbsListView;->sDbg:Z

    .line 127
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgSelector:Z

    .line 750
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 831
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 278
    iput v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 311
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 336
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 341
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 351
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 356
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 362
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 367
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 372
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 377
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 382
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 387
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 392
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 440
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 471
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 514
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 534
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 536
    iput-object v6, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 562
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 565
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 568
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 576
    iput-object v6, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 577
    iput-object v6, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 630
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 655
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 657
    new-array v1, v4, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 659
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 660
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 662
    new-array v1, v5, [F

    iput-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 668
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 678
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 726
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 832
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 834
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 836
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 837
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 838
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 839
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 830
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 843
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 842
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 846
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 851
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 278
    iput v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 311
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 336
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 341
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 351
    iput v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 356
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 362
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 367
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 372
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 377
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 382
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 387
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 392
    iput v3, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 440
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 471
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 514
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 534
    iput v4, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 536
    iput-object v7, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 562
    iput v4, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 565
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 568
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 576
    iput-object v7, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 577
    iput-object v7, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 630
    iput v3, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 655
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 657
    new-array v2, v5, [Z

    iput-object v2, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 659
    new-array v2, v6, [I

    iput-object v2, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 660
    new-array v2, v6, [I

    iput-object v2, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 662
    new-array v2, v6, [F

    iput-object v2, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 668
    iput v3, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 678
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 726
    iput v3, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 852
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 854
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 857
    sget-object v2, Lcom/android/internal/R$styleable;->AbsListView:[I

    .line 856
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 859
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 860
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 864
    :cond_0
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 866
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 869
    const/4 v2, 0x3

    .line 868
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 871
    const/4 v2, 0x4

    .line 870
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 873
    const/4 v2, 0x5

    .line 872
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 875
    const/4 v2, 0x6

    .line 874
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 877
    const/16 v2, 0x9

    .line 876
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 879
    const/4 v2, 0x7

    .line 878
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 882
    const/16 v2, 0x8

    .line 881
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 884
    const/16 v2, 0xb

    .line 883
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 886
    const/16 v2, 0xa

    .line 885
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 888
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 890
    sget-boolean v2, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v2, :cond_1

    .line 891
    invoke-static {}, Landroid/widget/AbsListView;->checkAbsListViewlLogProperty()V

    .line 850
    :cond_1
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1977
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 1978
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1977
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1978
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1977
    goto :goto_0
.end method

.method private canScrollDown()Z
    .locals 6

    .prologue
    .line 2336
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2339
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v3, v4, :cond_1

    const/4 v0, 0x1

    .line 2342
    .local v0, "canScrollDown":Z
    :goto_0
    if-nez v0, :cond_0

    if-lez v2, :cond_0

    .line 2343
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2344
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_2

    const/4 v0, 0x1

    .line 2347
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .line 2339
    .end local v0    # "canScrollDown":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "canScrollDown":Z
    goto :goto_0

    .line 2344
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private canScrollUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2321
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 2324
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2325
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2326
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2327
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    const/4 v0, 0x1

    .line 2331
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .line 2321
    .end local v0    # "canScrollUp":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "canScrollUp":Z
    goto :goto_0

    .line 2327
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static checkAbsListViewlLogProperty()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 8106
    const-string/jumbo v3, "debug.listview.dumpinfo"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8107
    .local v0, "dumpString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 8108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x7

    if-le v3, v6, :cond_1

    .line 8109
    :cond_0
    const-string/jumbo v3, "AbsListView"

    const-string/jumbo v4, "checkAbsListViewlLogProperty get invalid command"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8110
    return-void

    .line 8112
    :cond_1
    const/4 v2, 0x0

    .line 8114
    .local v2, "logFilter":I
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 8118
    :goto_0
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_1
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    .line 8119
    and-int/lit8 v3, v2, 0x2

    if-ne v3, v8, :cond_4

    move v3, v4

    :goto_2
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgDataChange:Z

    .line 8120
    and-int/lit8 v3, v2, 0x4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_5

    move v3, v4

    :goto_3
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgLayout:Z

    .line 8121
    and-int/lit8 v3, v2, 0x8

    const/16 v6, 0x8

    if-ne v3, v6, :cond_6

    move v3, v4

    :goto_4
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgRecycle:Z

    .line 8122
    and-int/lit8 v3, v2, 0x10

    const/16 v6, 0x10

    if-ne v3, v6, :cond_7

    move v3, v4

    :goto_5
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgDraw:Z

    .line 8123
    and-int/lit8 v3, v2, 0x20

    const/16 v6, 0x20

    if-ne v3, v6, :cond_8

    move v3, v4

    :goto_6
    sput-boolean v3, Landroid/widget/AbsListView;->sDbg:Z

    .line 8124
    and-int/lit8 v3, v2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_9

    :goto_7
    sput-boolean v4, Landroid/widget/AbsListView;->sDbgSelector:Z

    .line 8125
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkAbsListViewlLogProperty debug filter: sDbgMotion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8126
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgMotion:Z

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8127
    const-string/jumbo v5, ", sDbgDataChange="

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8127
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgDataChange:Z

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8128
    const-string/jumbo v5, ", sDbgLayout="

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8128
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgLayout:Z

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8129
    const-string/jumbo v5, ", sDbgRecycle="

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8129
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgRecycle:Z

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8130
    const-string/jumbo v5, ", sDbgDraw="

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8130
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgDraw:Z

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8131
    const-string/jumbo v5, ", sDbg="

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8131
    sget-boolean v5, Landroid/widget/AbsListView;->sDbg:Z

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8132
    const-string/jumbo v5, ", sDbgSelector="

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8132
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgSelector:Z

    .line 8125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8105
    .end local v2    # "logFilter":I
    :cond_2
    return-void

    .line 8115
    .restart local v2    # "logFilter":I
    :catch_0
    move-exception v1

    .line 8116
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid format of propery string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v3, v5

    .line 8118
    goto/16 :goto_1

    :cond_4
    move v3, v5

    .line 8119
    goto/16 :goto_2

    :cond_5
    move v3, v5

    .line 8120
    goto/16 :goto_3

    :cond_6
    move v3, v5

    .line 8121
    goto/16 :goto_4

    :cond_7
    move v3, v5

    .line 8122
    goto/16 :goto_5

    :cond_8
    move v3, v5

    .line 8123
    goto/16 :goto_6

    :cond_9
    move v4, v5

    .line 8124
    goto/16 :goto_7
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 5360
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5361
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5362
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5378
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5359
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1280
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1281
    .local v0, "childCount":I
    if-nez v0, :cond_0

    return v1

    .line 1282
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v0, v3, :cond_1

    return v2

    .line 1284
    :cond_1
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v3, :cond_2

    .line 1285
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contentFits:childCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",mItemCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1286
    const-string/jumbo v5, ",first child top = "

    .line 1285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1286
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1286
    const-string/jumbo v5, ",last child bottom = "

    .line 1285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1287
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1287
    const-string/jumbo v5, ",getHeight() = "

    .line 1285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1287
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    .line 1285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1288
    const-string/jumbo v5, ",mListPadding = "

    .line 1285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1288
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_4

    .line 1291
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_3

    .line 1290
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 1291
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1290
    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5352
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 5351
    :cond_0
    :goto_0
    return-void

    .line 5352
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5353
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5354
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5355
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 5
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 6373
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 6374
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6375
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6376
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6377
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6378
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6379
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6380
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6381
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6382
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6383
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6384
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6386
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 6387
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6372
    :goto_0
    return-void

    .line 6389
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 6030
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 6031
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6029
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2834
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgSelector:Z

    if-eqz v1, :cond_0

    .line 2835
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drawSelector ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2836
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 2835
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2836
    const-string/jumbo v3, ", "

    .line 2835
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2836
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 2835
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2836
    const-string/jumbo v3, "), this = "

    .line 2835
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    sget-boolean v1, Landroid/widget/AbsListView;->sDbgDraw:Z

    if-eqz v1, :cond_0

    .line 2840
    return-void

    .line 2844
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2845
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2846
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2847
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2833
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 6615
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 6616
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6617
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6614
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 6076
    sparse-switch p2, :sswitch_data_0

    .line 6109
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6078
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 6079
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6080
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 6081
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6113
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 6114
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 6115
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 6084
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6085
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 6086
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6087
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 6090
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 6091
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6092
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 6093
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6094
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6096
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6097
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 6098
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6099
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 6103
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6104
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6105
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6106
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6107
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6076
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDrawableStateForSelector()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2971
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 2973
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v4

    return-object v4

    .line 2979
    :cond_0
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    aget v1, v4, v5

    .line 2985
    .local v1, "enabledState":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2987
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 2988
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2989
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2990
    move v0, v2

    .line 2996
    :cond_1
    if-ltz v0, :cond_2

    .line 2997
    add-int/lit8 v4, v0, 0x1

    .line 2998
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 2997
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3001
    :cond_2
    return-object v3

    .line 2988
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6394
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 6395
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6397
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x10900f7

    .line 6396
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6401
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6403
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6404
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6406
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 897
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 898
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 899
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 900
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 901
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 903
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 904
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 905
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 906
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 907
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 908
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 910
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 911
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v1, :cond_0

    .line 912
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initAbsListView here: this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 4580
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4581
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4579
    :goto_0
    return-void

    .line 4583
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 4588
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4589
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4587
    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 6

    .prologue
    .line 3802
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 3803
    return-void

    .line 3805
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 3806
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 3807
    .local v0, "bottom":I
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 3808
    .local v2, "left":I
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 3809
    .local v3, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 3801
    return-void

    .line 3806
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .restart local v0    # "bottom":I
    goto :goto_0

    .line 3807
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "left":I
    goto :goto_1

    .line 3808
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .restart local v3    # "right":I
    goto :goto_2
.end method

.method private invalidateTopGlow()V
    .locals 6

    .prologue
    .line 3791
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 3792
    return-void

    .line 3794
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 3795
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 3796
    .local v3, "top":I
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 3797
    .local v1, "left":I
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 3798
    .local v2, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 3790
    return-void

    .line 3795
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "top":I
    goto :goto_0

    .line 3796
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "left":I
    goto :goto_1

    .line 3797
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    .restart local v2    # "right":I
    goto :goto_2
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 4741
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4742
    .local v1, "pointerId":I
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_0

    .line 4743
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSecondaryPointerUp:pointerIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4744
    const-string/jumbo v5, ",mActivePointerId = "

    .line 4743
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4744
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4743
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4744
    const-string/jumbo v5, ",pointerId = "

    .line 4743
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 4750
    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 4752
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4753
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4754
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4755
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4738
    .end local v0    # "newPointerIndex":I
    :cond_1
    return-void

    .line 4750
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 4371
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v1, :cond_1

    .line 4372
    :cond_0
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Touch cancel: touch mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mScrollY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4373
    const-string/jumbo v3, ", mActivePointerId = "

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4373
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4374
    const-string/jumbo v3, ", mMotionPosition = "

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4374
    iget v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4375
    const-string/jumbo v3, ", mFirstPosition = "

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4375
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4375
    const-string/jumbo v3, ", mDataChanged = "

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4375
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4376
    const-string/jumbo v3, ", adatper size = "

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4376
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4376
    const-string/jumbo v3, ", this = "

    .line 4372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 4391
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4392
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4393
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4394
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4395
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4397
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4398
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4399
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4402
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4406
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 4407
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4408
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4410
    :cond_3
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4370
    return-void

    .line 4380
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_4

    .line 4381
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4383
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 4378
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4008
    sget-boolean v4, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v4, :cond_0

    .line 4009
    const-string/jumbo v4, "AbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Touch down: touch mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",mScrollY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4010
    iget v6, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4010
    const-string/jumbo v6, ",y = "

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4010
    const-string/jumbo v6, ",mFirstPosition = "

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4011
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4011
    const-string/jumbo v6, ",mActivePointerId = "

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4011
    iget v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4012
    const-string/jumbo v6, ",mDataChanged = "

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4012
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4012
    const-string/jumbo v6, ",adatper size = "

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4012
    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4013
    const-string/jumbo v6, ",this = "

    .line 4009
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4018
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 4020
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4021
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_1

    .line 4022
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4024
    :cond_1
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4027
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4028
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4029
    iput v7, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 4077
    :cond_2
    :goto_0
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_3

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 4078
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 4077
    if-eqz v4, :cond_3

    .line 4079
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4007
    :cond_3
    return-void

    .line 4031
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 4032
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 4033
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 4035
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_5

    .line 4036
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 4038
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4039
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4040
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4041
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 4042
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 4060
    :cond_5
    :goto_1
    if-ltz v0, :cond_6

    .line 4062
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4063
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4066
    .end local v1    # "v":Landroid/view/View;
    :cond_6
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4067
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4068
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4069
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4070
    sget-boolean v4, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v4, :cond_2

    .line 4071
    const-string/jumbo v4, "AbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Touch down: touch mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mMotionY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4072
    const-string/jumbo v6, ", mMotionPosition = "

    .line 4071
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4072
    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4071
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4073
    const-string/jumbo v6, ", mFirstPosition = "

    .line 4071
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4073
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4071
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4043
    :cond_7
    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4047
    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4050
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_8

    .line 4051
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    invoke-direct {v4, p0, v8}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4054
    :cond_8
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 4055
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 4056
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4084
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 4085
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 4086
    const/4 v2, 0x0

    .line 4087
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4090
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 4093
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4096
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 4098
    .local v4, "y":I
    sget-boolean v5, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-nez v5, :cond_2

    sget-boolean v5, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v5, :cond_3

    .line 4099
    :cond_2
    const-string/jumbo v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Touch move: touch mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",mScrollY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4100
    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4100
    const-string/jumbo v7, ",mLastY = "

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4100
    iget v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4100
    const-string/jumbo v7, ",y = "

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4101
    const-string/jumbo v7, ",mActivePointerId = "

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4101
    iget v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4101
    const-string/jumbo v7, ",pointerIndex = "

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4102
    const-string/jumbo v7, ",mMotionPosition = "

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4102
    iget v7, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4103
    const-string/jumbo v7, ",mFirstPosition = "

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4103
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4103
    const-string/jumbo v7, ",mDataChanged = "

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4104
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4104
    const-string/jumbo v7, ",adatper size = "

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4104
    iget v7, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4104
    const-string/jumbo v7, ",this = "

    .line 4099
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4107
    :cond_3
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 4083
    :cond_4
    :goto_0
    :pswitch_0
    return-void

    .line 4113
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4118
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4119
    .local v0, "motionView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 4120
    .local v3, "x":F
    int-to-float v5, v4

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4121
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4122
    if-eqz v0, :cond_5

    .line 4123
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4125
    :cond_5
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_6

    .line 4126
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4125
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4127
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4128
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 4126
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_1

    .line 4129
    :cond_7
    if-eqz v0, :cond_4

    .line 4131
    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 4132
    .local v1, "point":[F
    aput v3, v1, v8

    .line 4133
    int-to-float v5, v4

    aput v5, v1, v9

    .line 4134
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4135
    aget v5, v1, v8

    aget v6, v1, v9

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_0

    .line 4140
    .end local v0    # "motionView":Landroid/view/View;
    .end local v1    # "point":[F
    .end local v3    # "x":F
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 4107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4146
    sget-boolean v20, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v20, :cond_0

    .line 4147
    const-string/jumbo v20, "AbsListView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Touch up: touch mode = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ",mScrollY = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4148
    const-string/jumbo v22, ",mLastY = "

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4148
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v22, v0

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4148
    const-string/jumbo v22, ",mMotionPosition = "

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4148
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v22, v0

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4149
    const-string/jumbo v22, ",mFirstPosition = "

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4149
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4149
    const-string/jumbo v22, ",mDataChanged = "

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4150
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v22, v0

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4150
    const-string/jumbo v22, ",adatper size = "

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4150
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v22, v0

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4150
    const-string/jumbo v22, ",this = "

    .line 4147
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 4343
    :cond_1
    :goto_0
    :pswitch_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 4346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4351
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4353
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4355
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 4365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StrictMode$Span;->finish()V

    .line 4366
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4145
    :cond_3
    return-void

    .line 4157
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v16, v0

    .line 4158
    .local v16, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v16, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4159
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 4160
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 4161
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4164
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 4165
    .local v19, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v20, v19, v20

    if-lez v20, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v19, v20

    if-gez v20, :cond_8

    const/4 v11, 0x1

    .line 4166
    .local v11, "inList":Z
    :goto_1
    if-eqz v11, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 4220
    :cond_5
    if-nez v11, :cond_7

    .line 4225
    sget-boolean v20, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v20, :cond_6

    sget-boolean v20, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v20, :cond_6

    .line 4226
    const-string/jumbo v20, "AbsListView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Touch up out of list: mTouchMode = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4227
    const-string/jumbo v22, ", pressed = "

    .line 4226
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4227
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v22

    .line 4226
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 4231
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4232
    if-eqz v4, :cond_7

    .line 4233
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4239
    .end local v11    # "inList":Z
    .end local v19    # "x":F
    :cond_7
    :goto_2
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4240
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 4165
    .restart local v19    # "x":F
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "inList":Z
    goto :goto_1

    .line 4167
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    .line 4168
    new-instance v20, Landroid/widget/AbsListView$PerformClick;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4171
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v17, v0

    .line 4172
    .local v17, "performClick":Landroid/widget/AbsListView$PerformClick;
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4173
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4175
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4177
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 4178
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-nez v20, :cond_f

    .line 4179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v20, v0

    .line 4178
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4180
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 4181
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 4182
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4183
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4184
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4185
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4186
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4187
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 4189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4190
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_c

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 4191
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4193
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4195
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 4196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4198
    :cond_e
    new-instance v20, Landroid/widget/AbsListView$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    .line 4211
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 4210
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4216
    :goto_4
    return-void

    .line 4179
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v20, v0

    goto/16 :goto_3

    .line 4213
    :cond_10
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4214
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_4

    .line 4217
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 4218
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_2

    .line 4243
    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "inList":Z
    .end local v16    # "motionPosition":I
    .end local v17    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v19    # "x":F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 4244
    .local v5, "childCount":I
    if-lez v5, :cond_1c

    .line 4245
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v9

    .line 4246
    .local v9, "firstChildTop":I
    add-int/lit8 v20, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 4247
    .local v13, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 4248
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v6, v20, v21

    .line 4249
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v20, :cond_12

    if-lt v9, v7, :cond_12

    .line 4250
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 4251
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v20

    sub-int v20, v20, v6

    move/from16 v0, v20

    if-gt v13, v0, :cond_12

    .line 4252
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4253
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4255
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 4256
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4259
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    .line 4258
    move/from16 v0, v20

    float-to-int v12, v0

    .line 4260
    .local v12, "initialVelocity":I
    sget-boolean v20, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v20, :cond_13

    sget-boolean v20, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v20, :cond_13

    .line 4261
    const-string/jumbo v20, "AbsListView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Fling from scroll with initialVelocity = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4262
    const-string/jumbo v22, ",mActivePointerId = "

    .line 4261
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4262
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v22, v0

    .line 4261
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4263
    const-string/jumbo v22, ",mFirstPosition = "

    .line 4261
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4263
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    .line 4261
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4264
    const-string/jumbo v22, ",firstChildTop = "

    .line 4261
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4264
    const-string/jumbo v22, ",this = "

    .line 4261
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    :cond_13
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_17

    const/4 v10, 0x1

    .line 4271
    .local v10, "flingVelocity":Z
    :goto_5
    if-eqz v10, :cond_19

    .line 4272
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v20, :cond_14

    .line 4273
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v20, v0

    sub-int v20, v7, v20

    move/from16 v0, v20

    if-eq v9, v0, :cond_19

    .line 4274
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 4275
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v20

    if-eq v13, v0, :cond_19

    .line 4276
    :cond_15
    const/16 v20, 0x0

    neg-int v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v20

    if-nez v20, :cond_18

    .line 4277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v20, v0

    if-nez v20, :cond_16

    .line 4278
    new-instance v20, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4280
    :cond_16
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v20, v0

    neg-int v0, v12

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4282
    const/16 v20, 0x0

    neg-int v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_0

    .line 4270
    .end local v10    # "flingVelocity":Z
    :cond_17
    const/4 v10, 0x0

    .restart local v10    # "flingVelocity":Z
    goto/16 :goto_5

    .line 4284
    :cond_18
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4285
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4288
    :cond_19
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4289
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 4291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4293
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b

    .line 4294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4296
    :cond_1b
    if-eqz v10, :cond_1

    const/16 v20, 0x0

    neg-int v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v20

    if-nez v20, :cond_1

    .line 4297
    const/16 v20, 0x0

    neg-int v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_0

    .line 4302
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v10    # "flingVelocity":Z
    .end local v12    # "initialVelocity":I
    .end local v13    # "lastChildBottom":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_1c
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4303
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4308
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v20, v0

    if-nez v20, :cond_1d

    .line 4309
    new-instance v20, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4311
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 4312
    .restart local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4313
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    .line 4315
    .restart local v12    # "initialVelocity":I
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4316
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1e

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v20, v0

    neg-int v0, v12

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 4319
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4329
    .end local v12    # "initialVelocity":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4330
    .local v15, "lostPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v15, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4331
    .local v14, "lostChild":Landroid/view/View;
    sget-boolean v20, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v20, :cond_1f

    sget-boolean v20, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v20, :cond_1f

    .line 4332
    const-string/jumbo v20, "AbsListView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Touch cancel:mMotionPosition = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4333
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v22, v0

    .line 4332
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4333
    const-string/jumbo v22, ",mFirstPosition = "

    .line 4332
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4334
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    .line 4332
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4334
    const-string/jumbo v22, ",lostChild = "

    .line 4332
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 4334
    const-string/jumbo v22, ",this = "

    .line 4332
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    :cond_1f
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/view/View;->hasFocusable()Z

    move-result v20

    if-nez v20, :cond_1

    invoke-virtual {v14}, Landroid/view/View;->isPressed()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4337
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 4153
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 3295
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_0

    .line 3296
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3297
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3298
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3299
    .local v1, "longPressPosition":I
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3300
    .local v2, "longPressId":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3301
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3302
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3303
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 3304
    const/4 v4, 0x1

    return v4

    .line 3308
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v2    # "longPressId":J
    :cond_0
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 6049
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6050
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 6051
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 6054
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 6055
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6056
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6057
    aget v4, v2, v7

    .line 6056
    const/16 v5, 0x51

    invoke-virtual {v3, p0, v5, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6048
    :goto_0
    return-void

    .line 6059
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 2672
    iget v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_7

    const/4 v1, 0x1

    .line 2673
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 2674
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2677
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2678
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2679
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 2680
    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2684
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2685
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2686
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2687
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2690
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 2691
    .local v0, "isChildViewEnabled":Z
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v4, v0, :cond_2

    .line 2692
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2696
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2697
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    .line 2698
    if-eqz v1, :cond_3

    .line 2701
    invoke-virtual {v2, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2702
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2704
    :cond_3
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2705
    if-eqz v1, :cond_5

    .line 2706
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 2707
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2709
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2711
    :cond_5
    if-eqz p3, :cond_6

    .line 2712
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2671
    :cond_6
    return-void

    .line 2672
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "positionChanged":Z
    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4594
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4595
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4596
    iput-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4593
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3577
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v33, p2, v3

    .line 3578
    .local v33, "rawDeltaY":I
    const/16 v35, 0x0

    .line 3579
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 3580
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 3581
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 3583
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, v3, p2

    .line 3584
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 3583
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3585
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 3586
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 3587
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v34, v3, v4

    .line 3588
    if-eqz p3, :cond_1

    .line 3589
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3590
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3593
    :cond_1
    move/from16 v20, v33

    .line 3595
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v34

    .line 3596
    .local v21, "incrementalDeltaY":I
    :goto_1
    const/16 v22, 0x0

    .line 3598
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    .line 3606
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 3608
    const-string/jumbo v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3611
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    .line 3615
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 3616
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 3617
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 3618
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    .line 3619
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3624
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_c

    .line 3625
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 3632
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 3633
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3634
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 3635
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    .line 3639
    :cond_4
    const/16 v18, 0x0

    .line 3640
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 3641
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 3645
    .end local v18    # "atEdge":Z
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3646
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_6

    .line 3647
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Touch scroll: incrementalDeltaY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3648
    const-string/jumbo v5, ", mScrollY = "

    .line 3647
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3648
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3647
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3648
    const-string/jumbo v5, ", atEdge = "

    .line 3647
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3649
    const-string/jumbo v5, ", motionIndex = "

    .line 3647
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3649
    const-string/jumbo v5, ", motionView = "

    .line 3647
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3650
    const-string/jumbo v5, ", overscrollMode = "

    .line 3647
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3650
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v5

    .line 3647
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    :cond_6
    if-eqz v25, :cond_8

    .line 3655
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3656
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_7

    .line 3659
    move/from16 v0, v21

    neg-int v3, v0

    .line 3660
    sub-int v4, v27, v26

    .line 3659
    sub-int v7, v3, v4

    .line 3661
    .local v7, "overscroll":I
    sub-int v5, v7, v21

    .line 3662
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 3661
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3663
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    rsub-int/lit8 v22, v3, 0x0

    .line 3664
    if-eqz p3, :cond_7

    .line 3665
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3666
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3703
    .end local v7    # "overscroll":I
    :cond_7
    :goto_3
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3705
    .end local v27    # "motionViewRealTop":I
    :cond_8
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3576
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_9
    :goto_4
    return-void

    .line 3583
    .end local v20    # "deltaY":I
    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_a
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .line 3595
    .restart local v20    # "deltaY":I
    :cond_b
    move/from16 v21, v20

    .restart local v21    # "incrementalDeltaY":I
    goto/16 :goto_1

    .line 3629
    .restart local v22    # "lastYCorrection":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 3670
    .restart local v7    # "overscroll":I
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_d
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mScrollY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 3669
    const/4 v6, 0x0

    .line 3670
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    .line 3669
    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 3672
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_e

    .line 3674
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3677
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 3678
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_f

    .line 3679
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_7

    .line 3680
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3681
    :cond_f
    if-nez v19, :cond_10

    .line 3682
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3683
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3685
    :cond_10
    if-lez v21, :cond_12

    .line 3686
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3687
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3686
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3688
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3689
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3691
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto/16 :goto_3

    .line 3692
    :cond_12
    if-gez v21, :cond_7

    .line 3693
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3694
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 3693
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3695
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_13

    .line 3696
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3698
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_3

    .line 3707
    .end local v7    # "overscroll":I
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "overscrollMode":I
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    .line 3708
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_9

    .line 3709
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v30, v0

    .line 3710
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 3711
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_1c

    const/16 v28, 0x1

    .line 3713
    .local v28, "newDirection":I
    :goto_5
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_15

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_15

    .line 3714
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Touch over scroll: incrementalDeltaY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3715
    const-string/jumbo v5, ", mScrollY = "

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3715
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3715
    const-string/jumbo v5, ", newScroll = "

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3716
    const-string/jumbo v5, ", newDirection = "

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3716
    const-string/jumbo v5, ", mDirection = "

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3716
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3717
    const-string/jumbo v5, ", y = "

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3717
    const-string/jumbo v5, ", mLastY = "

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3717
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3718
    const-string/jumbo v5, ", mFirstPosition = "

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3718
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 3714
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_16

    .line 3722
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 3725
    :cond_16
    move/from16 v0, v21

    neg-int v10, v0

    .line 3726
    .local v10, "overScrollDistance":I
    if-gez v29, :cond_1d

    if-ltz v30, :cond_1d

    .line 3727
    :cond_17
    move/from16 v0, v30

    neg-int v10, v0

    .line 3728
    add-int v21, v21, v10

    .line 3733
    :goto_6
    if-eqz v10, :cond_18

    .line 3734
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3735
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    .line 3734
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 3735
    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    .line 3734
    invoke-virtual/range {v8 .. v17}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3736
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 3737
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_1f

    .line 3738
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_18

    .line 3739
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3758
    .end local v31    # "overscrollMode":I
    :cond_18
    :goto_7
    if-eqz v21, :cond_1b

    .line 3759
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_19

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_19

    .line 3760
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Coming back to \'real\' list scrolling: incrementalDeltaY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3761
    const-string/jumbo v5, ", mScrollY = "

    .line 3760
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3761
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3760
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3762
    const-string/jumbo v5, ", mFirstPosition = "

    .line 3760
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3762
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 3760
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1a

    .line 3766
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3767
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3770
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3772
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3776
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 3778
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3779
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3780
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_23

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3781
    add-int v3, p2, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3782
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3784
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_1b
    add-int/lit8 v3, p2, 0x0

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3785
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_4

    .line 3711
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_1c
    const/16 v28, -0x1

    .restart local v28    # "newDirection":I
    goto/16 :goto_5

    .line 3726
    .restart local v10    # "overScrollDistance":I
    :cond_1d
    if-lez v29, :cond_1e

    if-lez v30, :cond_17

    .line 3730
    :cond_1e
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 3740
    .restart local v31    # "overscrollMode":I
    :cond_1f
    if-lez v33, :cond_21

    .line 3741
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3742
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3741
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3743
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3744
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3746
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto/16 :goto_7

    .line 3747
    :cond_21
    if-gez v33, :cond_18

    .line 3748
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3749
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 3748
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3750
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_22

    .line 3751
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3753
    :cond_22
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_7

    .line 3780
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_23
    const/4 v3, 0x0

    goto/16 :goto_8
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1391
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1390
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1327
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1328
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1334
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1336
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1337
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1326
    :cond_1
    return-void

    .line 1329
    :cond_2
    if-eqz p1, :cond_0

    .line 1330
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1331
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2529
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2531
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 2532
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2539
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 2540
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2542
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2543
    if-eq v0, v1, :cond_1

    .line 2544
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2528
    :cond_1
    return-void

    .line 2533
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2534
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    move-object v0, v1

    .line 2536
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 6040
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6041
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6042
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 6044
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 6038
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3530
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v2, p2, v7

    .line 3531
    .local v2, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3532
    .local v3, "distance":I
    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    .line 3534
    .local v5, "overscroll":Z
    :goto_0
    sget-boolean v7, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v7, :cond_0

    sget-boolean v7, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v7, :cond_0

    .line 3535
    const-string/jumbo v7, "AbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startScrollIfNeeded:deltaY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",mScrollY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3536
    const-string/jumbo v9, ",mTouchSlop = "

    .line 3535
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3536
    iget v9, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 3535
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3536
    const-string/jumbo v9, ",mTouchMode = "

    .line 3535
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3536
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3535
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    :cond_0
    if-nez v5, :cond_1

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v7, :cond_8

    .line 3540
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    .line 3541
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3542
    if-eqz v5, :cond_4

    .line 3543
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3544
    iput v10, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3549
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3550
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3554
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3555
    .local v1, "count":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_6

    .line 3556
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3557
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3558
    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 3555
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3532
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v5    # "overscroll":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "overscroll":Z
    goto/16 :goto_0

    .line 3546
    :cond_4
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3547
    if-lez v2, :cond_5

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_5
    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 3562
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    :cond_6
    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3565
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 3566
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_7

    .line 3567
    invoke-interface {v6, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3569
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 3570
    return v11

    .line 3573
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v6    # "parent":Landroid/view/ViewParent;
    :cond_8
    return v10
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1205
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1206
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1207
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1208
    const/16 v7, 0xb

    .line 1207
    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1209
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1210
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1211
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1213
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1214
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1209
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1207
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "useActivated":Z
    goto :goto_0

    .line 1215
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    :cond_2
    if-eqz v5, :cond_0

    .line 1216
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1204
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1695
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1696
    const v1, 0x1080062

    .line 1695
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1694
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4764
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 4765
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4766
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4768
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 4769
    return-void

    .line 4772
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 4773
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4774
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4775
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4777
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4772
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4763
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 6491
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 6450
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5402
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5403
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 5404
    return v7

    .line 5407
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5408
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5409
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 5410
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 5411
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 5412
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    .line 5414
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5415
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_5

    :cond_4
    :goto_1
    return v6

    :cond_5
    move v6, v7

    goto :goto_1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6364
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6520
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1053
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1056
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1049
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 6413
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 6414
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6415
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6416
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6417
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6412
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2071
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2072
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2073
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v6, :cond_2

    .line 2074
    mul-int/lit8 v2, v1, 0x64

    .line 2076
    .local v2, "extent":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2077
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2078
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2079
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2080
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2083
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2084
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2085
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2086
    if-lez v3, :cond_1

    .line 2087
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2090
    :cond_1
    return v2

    .line 2092
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    const/4 v6, 0x1

    return v6

    .line 2095
    :cond_3
    return v7
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2100
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2101
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2102
    .local v0, "childCount":I
    if-ltz v2, :cond_3

    if-lez v0, :cond_3

    .line 2103
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_0

    .line 2104
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2105
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2106
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2107
    .local v3, "height":I
    if-lez v3, :cond_3

    .line 2108
    mul-int/lit8 v7, v2, 0x64

    mul-int/lit8 v8, v5, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    .line 2109
    iget v8, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 2108
    add-int/2addr v7, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    return v7

    .line 2113
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2114
    .local v1, "count":I
    if-nez v2, :cond_1

    .line 2115
    const/4 v4, 0x0

    .line 2121
    .local v4, "index":I
    :goto_0
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    return v7

    .line 2116
    .end local v4    # "index":I
    :cond_1
    add-int v7, v2, v0

    if-ne v7, v1, :cond_2

    .line 2117
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_0

    .line 2119
    .end local v4    # "index":I
    :cond_2
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_0

    .line 2124
    .end local v1    # "count":I
    .end local v4    # "index":I
    :cond_3
    return v10
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2130
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2131
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2132
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2134
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2139
    :cond_0
    :goto_0
    return v0

    .line 2137
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 5823
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5825
    const/4 v2, 0x0

    .line 5826
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 5827
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 5828
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5830
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 5831
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 5833
    add-int/lit8 v3, v5, -0x14

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 5834
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5835
    .local v10, "end":I
    const/4 v11, 0x0

    .line 5836
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 5837
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 5838
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 5839
    const/4 v11, 0x1

    .line 5840
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5841
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5846
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 5847
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5848
    add-int/lit8 v9, v9, -0x1

    .line 5849
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 5850
    const/4 v2, 0x1

    .line 5851
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 5852
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5853
    const/4 v8, 0x0

    .line 5852
    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5826
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 5836
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 5857
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 5861
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 5862
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 5821
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3175
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 5187
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6666
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6665
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2719
    const/4 v2, 0x0

    .line 2720
    .local v2, "saveCount":I
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_5

    const/4 v0, 0x1

    .line 2721
    .local v0, "clipToPadding":Z
    :goto_0
    sget-boolean v5, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Landroid/widget/AbsListView;->sDbgDraw:Z

    if-eqz v5, :cond_0

    .line 2722
    const-string/jumbo v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dispatchDraw: mScrollY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",clipToPadding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2723
    const-string/jumbo v7, ",this = "

    .line 2722
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    :cond_0
    if-eqz v0, :cond_1

    .line 2726
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2727
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 2728
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2729
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    .line 2730
    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    .line 2731
    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    .line 2729
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2732
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2735
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2736
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_2

    .line 2737
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2740
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2742
    if-eqz v1, :cond_3

    .line 2743
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2746
    :cond_3
    if-eqz v0, :cond_4

    .line 2747
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2748
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2718
    :cond_4
    return-void

    .line 2720
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "clipToPadding":Z
    goto/16 :goto_0
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3415
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3409
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 4529
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4530
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_4

    .line 4531
    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4532
    .local v5, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 4538
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_5

    .line 4539
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v8, v10, v11

    .line 4540
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 4541
    .local v3, "height":I
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 4542
    .local v6, "translateX":I
    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 4549
    .local v7, "translateY":I
    :goto_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_1

    .line 4550
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 4552
    .local v4, "restoreCount":I
    add-int v10, v6, v8

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    add-int/2addr v11, v7

    .line 4551
    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4553
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v2, v10, v7

    .line 4554
    .local v2, "edgeY":I
    int-to-float v10, v6

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4555
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4556
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4557
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 4559
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4561
    .end local v2    # "edgeY":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    .line 4562
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 4563
    .restart local v4    # "restoreCount":I
    add-int v10, v7, v3

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 4564
    add-int v11, v6, v8

    add-int v12, v7, v3

    .line 4563
    invoke-virtual {p1, v6, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4565
    neg-int v10, v8

    add-int v1, v10, v6

    .line 4566
    .local v1, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 4567
    if-eqz v0, :cond_2

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    .line 4566
    :cond_2
    sub-int v2, v10, v9

    .line 4568
    .restart local v2    # "edgeY":I
    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4569
    const/high16 v9, 0x43340000    # 180.0f

    int-to-float v10, v8

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4570
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4571
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4572
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .line 4574
    :cond_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4528
    .end local v0    # "clipToPadding":Z
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollY":I
    .end local v6    # "translateX":I
    .end local v7    # "translateY":I
    .end local v8    # "width":I
    :cond_4
    return-void

    .line 4544
    .restart local v0    # "clipToPadding":Z
    .restart local v5    # "scrollY":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    .line 4545
    .restart local v8    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 4546
    .restart local v3    # "height":I
    const/4 v6, 0x0

    .line 4547
    .restart local v6    # "translateX":I
    const/4 v7, 0x0

    .restart local v7    # "translateY":I
    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2965
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 2966
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2964
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 7547
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7549
    const-string/jumbo v1, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7550
    const-string/jumbo v1, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7551
    const-string/jumbo v1, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7552
    const-string/jumbo v1, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7553
    const-string/jumbo v1, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7554
    const-string/jumbo v1, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7556
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 7557
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7558
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 7559
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 7546
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 5676
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5677
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 5678
    return v2

    .line 5681
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 5682
    .local v1, "motionRow":I
    if-eq v1, v2, :cond_1

    .end local v1    # "motionRow":I
    :goto_0
    return v1

    .restart local v1    # "motionRow":I
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1613
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1614
    return-object p0

    .line 1616
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 4475
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4476
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4478
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4479
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4474
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 6504
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    .line 6505
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 6504
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6514
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6510
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6515
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1547
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2295
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2296
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2297
    check-cast p1, Landroid/view/View;

    .line 2298
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2301
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2302
    const/4 v1, 0x0

    return-object v1

    .line 2305
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2161
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2162
    .local v1, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2163
    .local v2, "fadeEdge":F
    if-nez v1, :cond_0

    .line 2164
    return v2

    .line 2166
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 2167
    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    .line 2170
    :cond_1
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2171
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2172
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2173
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    .line 2174
    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    .line 2173
    .end local v2    # "fadeEdge":F
    :cond_2
    return v2
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2774
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6582
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 967
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1031
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    .line 1032
    :cond_0
    new-array v4, v5, [J

    return-object v4

    .line 1031
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 1035
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1036
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1037
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1039
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1040
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    :cond_2
    return-object v3
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 999
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1000
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1003
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1019
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3340
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1682
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1683
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1686
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1687
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1681
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 5619
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 5609
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 7489
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 7490
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7491
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 7492
    .local v3, "index":I
    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 7494
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7495
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    return v5

    .line 7498
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 7499
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 7500
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 7501
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7502
    return v2
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2759
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2393
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2405
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2369
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2769
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2353
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2354
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2356
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1569
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1570
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 1579
    return v1

    .line 1572
    :pswitch_0
    return v1

    .line 1574
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 1577
    :pswitch_2
    const/4 v1, 0x2

    return v1

    .line 1570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2898
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 6549
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2017
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2020
    :cond_0
    return-object v1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2144
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2145
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2146
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2147
    return v1

    .line 2149
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 2150
    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    .line 2153
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2154
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2155
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    .end local v1    # "fadeEdge":F
    :cond_2
    return v1
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2764
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 6544
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1422
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5868
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5869
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5870
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5872
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5873
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 5877
    :cond_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 5879
    if-lez v1, :cond_d

    .line 5884
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v10, :cond_6

    .line 5886
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5887
    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5889
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 5890
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 5891
    return-void

    .line 5892
    :cond_1
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_5

    .line 5893
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_2

    .line 5894
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 5895
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 5896
    return-void

    .line 5898
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5899
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 5900
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5901
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5902
    .local v2, "lastBottom":I
    :goto_0
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_4

    .line 5903
    if-gt v2, v5, :cond_4

    .line 5904
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 5905
    return-void

    .line 5901
    .end local v2    # "lastBottom":I
    :cond_3
    move v2, v5

    .restart local v2    # "lastBottom":I
    goto :goto_0

    .line 5909
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 5912
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_5
    iget v10, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 5960
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_c

    .line 5962
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 5965
    .local v6, "newPos":I
    if-lt v6, v1, :cond_7

    .line 5966
    add-int/lit8 v6, v1, -0x1

    .line 5968
    :cond_7
    if-gez v6, :cond_8

    .line 5969
    const/4 v6, 0x0

    .line 5973
    :cond_8
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5975
    .local v7, "selectablePos":I
    if-ltz v7, :cond_b

    .line 5976
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5977
    return-void

    .line 5914
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 5919
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 5920
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 5922
    return-void

    .line 5926
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 5927
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_6

    .line 5929
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5930
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_6

    .line 5932
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 5934
    iget-wide v8, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    .line 5937
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 5945
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5946
    return-void

    .line 5941
    :cond_a
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    goto :goto_1

    .line 5953
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 5954
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 5956
    return-void

    .line 5980
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_b
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5981
    if-ltz v7, :cond_d

    .line 5982
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5983
    return-void

    .line 5989
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_c
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v10, :cond_d

    .line 5990
    return-void

    .line 5997
    :cond_d
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_e

    :goto_2
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 5998
    iput v14, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5999
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 6000
    iput v14, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 6001
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 6002
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 6003
    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 6004
    iput v14, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6005
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 5867
    return-void

    :cond_e
    move v8, v9

    .line 5997
    goto :goto_2

    .line 5912
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 6426
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 5633
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 5634
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5635
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5637
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 5638
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5640
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5641
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5642
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 5632
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 5689
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 5690
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 5691
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 5692
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5688
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1516
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1519
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1520
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1522
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1515
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1410
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v1, :cond_1

    .line 1411
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    :cond_0
    return v0

    .line 1413
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    :cond_2
    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1433
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1434
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1436
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 6120
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 982
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 986
    :cond_0
    return v1
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2754
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1630
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1496
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1707
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1677
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1462
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3011
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3012
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3010
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2906
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2910
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2911
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2912
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2913
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2905
    :cond_1
    :goto_0
    return-void

    .line 2907
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 2915
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_3
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2917
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 2918
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    .line 2919
    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 2921
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2923
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 2924
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2925
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_6

    .line 2926
    if-eqz v1, :cond_8

    .line 2927
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 2928
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    .line 2927
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2933
    :cond_6
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 2934
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_7

    .line 2935
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-direct {v5, p0, v7}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 2937
    :cond_7
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2938
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2930
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2286
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 2421
    const-string/jumbo v9, "obtainView"

    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2423
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v9, p2, v10

    .line 2427
    iget-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v7

    .line 2428
    .local v7, "transientView":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 2429
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2432
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 2434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2436
    .local v2, "logTime":J
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2439
    .local v8, "updatedView":Landroid/view/View;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2440
    .local v4, "nowTime":J
    sget-boolean v9, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v9, :cond_0

    sub-long v10, v4, v2

    const-wide/16 v12, 0xc8

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 2441
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[ANR Warning] getView time too long, adapter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2442
    const-string/jumbo v11, ", position = "

    .line 2441
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2442
    const-string/jumbo v11, ", updatedView = "

    .line 2441
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2443
    const-string/jumbo v11, ", time = "

    .line 2441
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2443
    sub-long v12, v4, v2

    .line 2441
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    :cond_0
    sget-boolean v9, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v9, :cond_1

    sget-boolean v9, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v9, :cond_1

    .line 2447
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "obtainView1: position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2448
    const-string/jumbo v11, ", transientView = "

    .line 2447
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2449
    const-string/jumbo v11, ", updatedView = "

    .line 2447
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2449
    const-string/jumbo v11, ", this = "

    .line 2447
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    sget-boolean v9, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v9, :cond_1

    .line 2451
    invoke-virtual {v8}, Landroid/view/View;->debug()V

    .line 2456
    :cond_1
    if-eq v8, v7, :cond_2

    .line 2457
    invoke-direct {p0, v8, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2458
    iget-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9, v8, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2462
    .end local v2    # "logTime":J
    .end local v4    # "nowTime":J
    .end local v8    # "updatedView":Landroid/view/View;
    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v9, p2, v10

    .line 2465
    invoke-virtual {v7}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2466
    return-object v7

    .line 2469
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    iget-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v6

    .line 2472
    .local v6, "scrapView":Landroid/view/View;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2474
    .restart local v2    # "logTime":J
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2477
    .local v0, "child":Landroid/view/View;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2478
    .restart local v4    # "nowTime":J
    sget-boolean v9, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v9, :cond_4

    sub-long v10, v4, v2

    const-wide/16 v12, 0xc8

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    .line 2479
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[ANR Warning] getView time too long, adapter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2480
    const-string/jumbo v11, ", position = "

    .line 2479
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2480
    const-string/jumbo v11, ", child = "

    .line 2479
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2481
    const-string/jumbo v11, ", time = "

    .line 2479
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2481
    sub-long v12, v4, v2

    .line 2479
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_4
    sget-boolean v9, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v9, :cond_5

    sget-boolean v9, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v9, :cond_5

    .line 2485
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "obtainView2: position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",scrapView = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2486
    const-string/jumbo v11, ",child = "

    .line 2485
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2486
    const-string/jumbo v11, ",this = "

    .line 2485
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    sget-boolean v9, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v9, :cond_5

    .line 2488
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 2492
    :cond_5
    if-eqz v6, :cond_6

    .line 2493
    if-eq v0, v6, :cond_b

    .line 2495
    iget-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9, v6, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2504
    :cond_6
    :goto_0
    iget v9, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v9, :cond_7

    .line 2505
    iget v9, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v9}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2508
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v9

    if-nez v9, :cond_8

    .line 2509
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2512
    :cond_8
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2514
    iget-object v9, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2515
    iget-object v9, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v9, :cond_9

    .line 2516
    new-instance v9, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2518
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v9

    if-nez v9, :cond_a

    .line 2519
    iget-object v9, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2523
    :cond_a
    const-wide/16 v10, 0x8

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2525
    return-object v0

    .line 2497
    :cond_b
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v9, p2, v10

    .line 2500
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3017
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3019
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3020
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3021
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-eqz v1, :cond_2

    .line 3025
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 3026
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3027
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3030
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 3031
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3032
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3034
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 3016
    :cond_1
    return-void

    .line 3022
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3180
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3181
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3182
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3184
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3185
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3187
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3188
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3190
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3191
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3179
    :cond_3
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 6201
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6202
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 6203
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6204
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 6206
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6207
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6208
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    .line 6210
    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3040
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3042
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3045
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3048
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3050
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3051
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3052
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3053
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3054
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3057
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3058
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3059
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3062
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3063
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3064
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3067
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3068
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3069
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3072
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3073
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3076
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3077
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3080
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3081
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3084
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3085
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3088
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3089
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3090
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3093
    :cond_8
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3039
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 6010
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6011
    sparse-switch p1, :sswitch_data_0

    .line 6023
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 6009
    return-void

    .line 6013
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6014
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 6018
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6019
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 6023
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6011
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 6496
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 6497
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6498
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6495
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2025
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2026
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 2030
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 2031
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2032
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2034
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 4430
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_0

    .line 4431
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGenericMotionEvent: mScrollY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4432
    const-string/jumbo v5, ",this = "

    .line 4431
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 4435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4462
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 4437
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 4438
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 4439
    .local v2, "vscroll":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 4440
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 4441
    .local v1, "delta":I
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4442
    return v6

    .line 4449
    .end local v1    # "delta":I
    .end local v2    # "vscroll":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 4450
    .local v0, "actionButton":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    .line 4451
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 4452
    :cond_2
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v3, v6, :cond_1

    .line 4453
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4454
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4455
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4435
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 6431
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6433
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6430
    :cond_0
    :goto_0
    return-void

    .line 6433
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 6434
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 6438
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6439
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2617
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2618
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2620
    :cond_0
    return-void

    .line 2618
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 2623
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2628
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 2629
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2630
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2635
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2636
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2637
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2640
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2641
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2642
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2616
    :cond_3
    return-void

    .line 2624
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2625
    return-void

    .line 2632
    :cond_5
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 1553
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1554
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1555
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1557
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1558
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1560
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1562
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1563
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1552
    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4610
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 4611
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInterceptHoverEvent: mFastScroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4612
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 4611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4612
    const-string/jumbo v2, ", this = "

    .line 4611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4615
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_1

    .line 4616
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FastScroller interceptHoverEvent: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4617
    const-string/jumbo v2, ", x = "

    .line 4616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4617
    const-string/jumbo v2, ", y = "

    .line 4616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 4616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4618
    const-string/jumbo v2, ", mTouchMode = "

    .line 4616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4618
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4618
    const-string/jumbo v2, ", mFastScroll = "

    .line 4616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4618
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 4616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4619
    const-string/jumbo v2, ", this = "

    .line 4616
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4621
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4624
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4632
    .local v0, "actionMasked":I
    sget-boolean v7, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v7, :cond_0

    sget-boolean v7, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v7, :cond_0

    .line 4633
    const-string/jumbo v7, "AbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onInterceptTouchEvent: actionMasked = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4634
    const-string/jumbo v9, ", x = "

    .line 4633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 4633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4634
    const-string/jumbo v9, ", y = "

    .line 4633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 4633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4634
    const-string/jumbo v9, ", mTouchMode = "

    .line 4633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4634
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4635
    const-string/jumbo v9, ", mFastScroll = "

    .line 4633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4635
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 4633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4635
    const-string/jumbo v9, ", this = "

    .line 4633
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    :cond_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v7, :cond_1

    .line 4638
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4641
    :cond_1
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4649
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v7, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4650
    sget-boolean v7, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v7, :cond_2

    sget-boolean v7, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v7, :cond_2

    .line 4651
    const-string/jumbo v7, "AbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "FastScroller interceptTouchEvent: actionMasked = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4652
    const-string/jumbo v9, ", x = "

    .line 4651
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 4651
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4652
    const-string/jumbo v9, ", y = "

    .line 4651
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 4651
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4653
    const-string/jumbo v9, ", mTouchMode = "

    .line 4651
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4653
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4651
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4653
    const-string/jumbo v9, ", mFastScroll = "

    .line 4651
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4653
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 4651
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4654
    const-string/jumbo v9, ",this = "

    .line 4651
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    :cond_2
    const/4 v7, 0x1

    return v7

    .line 4646
    :cond_3
    const/4 v7, 0x0

    return v7

    .line 4659
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 4735
    :cond_5
    :goto_0
    :pswitch_0
    const/4 v7, 0x0

    return v7

    .line 4661
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4662
    .local v3, "touchMode":I
    const/4 v7, 0x6

    if-eq v3, v7, :cond_6

    const/4 v7, 0x5

    if-ne v3, v7, :cond_7

    .line 4663
    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4664
    const/4 v7, 0x1

    return v7

    .line 4667
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 4668
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 4669
    .local v6, "y":I
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4671
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 4672
    .local v1, "motionPosition":I
    const/4 v7, 0x4

    if-eq v3, v7, :cond_8

    if-ltz v1, :cond_8

    .line 4675
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4676
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4677
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4678
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4679
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4680
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4681
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4683
    .end local v4    # "v":Landroid/view/View;
    :cond_8
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4684
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4685
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4686
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4687
    sget-boolean v7, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v7, :cond_9

    sget-boolean v7, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v7, :cond_9

    .line 4688
    const-string/jumbo v7, "AbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onInterceptTouchEvent touch down: motionPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4689
    const-string/jumbo v9, ",mMotionPosition = "

    .line 4688
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4689
    iget v9, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4688
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4689
    const-string/jumbo v9, ",this = "

    .line 4688
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    :cond_9
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4693
    const/4 v7, 0x4

    if-ne v3, v7, :cond_5

    .line 4694
    const/4 v7, 0x1

    return v7

    .line 4700
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 4702
    :pswitch_3
    iget v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 4703
    .local v2, "pointerIndex":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_a

    .line 4704
    const/4 v2, 0x0

    .line 4705
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4708
    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 4709
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4710
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4711
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v6, v8}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4712
    const/4 v7, 0x1

    return v7

    .line 4721
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4722
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4723
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4724
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4725
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    goto/16 :goto_0

    .line 4730
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 4659
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4700
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3383
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3388
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3389
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3390
    return v5

    .line 3392
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3393
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 3394
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3396
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3397
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3398
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3399
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3401
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3402
    return v5

    .line 3405
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, -0x1

    .line 2206
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2208
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2210
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2211
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2213
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2215
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2218
    .end local v1    # "i":I
    :cond_1
    sget-boolean v2, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v2, :cond_2

    .line 2219
    const-string/jumbo v4, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "++onLayout mDataChanged="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2220
    const-string/jumbo v5, ", mOldItemCount="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2220
    iget v5, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2221
    const-string/jumbo v5, ", mItemCount="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2221
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2222
    const-string/jumbo v5, ", countFromAdapter="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2222
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2219
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2223
    const-string/jumbo v5, ", mLayoutMode="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2223
    iget v5, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2224
    const-string/jumbo v5, ", mSpecificTop="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2224
    iget v5, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2225
    const-string/jumbo v5, ", mSyncPosition="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2225
    iget v5, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2226
    const-string/jumbo v5, ", mSyncRowId="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2226
    iget-wide v6, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2219
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2227
    const-string/jumbo v5, ", mSyncHeight="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2227
    iget-wide v6, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2219
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2228
    const-string/jumbo v5, ", mNeedSync="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2228
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2229
    const-string/jumbo v5, ", mSyncMode="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2229
    iget v5, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2230
    const-string/jumbo v5, ", mResurrectToPosition="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2230
    iget v5, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2231
    const-string/jumbo v5, ", mSelectedTop="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2231
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2232
    const-string/jumbo v5, ", mAdapter="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2232
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2233
    const-string/jumbo v5, ", this="

    .line 2219
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2236
    sget-boolean v2, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v2, :cond_4

    .line 2237
    const-string/jumbo v2, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--onLayout mDataChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2238
    const-string/jumbo v5, ", mOldItemCount="

    .line 2237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2238
    iget v5, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2239
    const-string/jumbo v5, ", mItemCount="

    .line 2237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2239
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2240
    const-string/jumbo v5, ", countFromAdapter="

    .line 2237
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2240
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 2237
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2241
    const-string/jumbo v4, ", mLayoutMode="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2241
    iget v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2242
    const-string/jumbo v4, ", mSpecificTop="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2242
    iget v4, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2243
    const-string/jumbo v4, ", mSyncPosition="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2243
    iget v4, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2244
    const-string/jumbo v4, ", mSyncRowId="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2244
    iget-wide v4, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2237
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2245
    const-string/jumbo v4, ", mSyncHeight="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2245
    iget-wide v4, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2237
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2246
    const-string/jumbo v4, ", mNeedSync="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2246
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2247
    const-string/jumbo v4, ", mSyncMode="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2247
    iget v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2248
    const-string/jumbo v4, ", mResurrectToPosition="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2248
    iget v4, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2249
    const-string/jumbo v4, ", mSelectedTop="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2249
    iget v4, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2250
    const-string/jumbo v4, ", mAdapter="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2250
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2251
    const-string/jumbo v4, ", this="

    .line 2237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2255
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2258
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_5

    .line 2259
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2205
    :cond_5
    return-void

    :cond_6
    move v2, v3

    .line 2222
    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2180
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 2181
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2183
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2184
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 2185
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 2186
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 2187
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 2190
    iget v7, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v7, v5, :cond_1

    .line 2191
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2192
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    .line 2193
    .local v3, "listBottom":I
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2194
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2195
    .local v1, "lastBottom":I
    :goto_0
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_4

    .line 2196
    if-gt v1, v3, :cond_3

    .line 2195
    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2179
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .line 2194
    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .restart local v1    # "lastBottom":I
    goto :goto_0

    :cond_3
    move v5, v6

    .line 2196
    goto :goto_1

    :cond_4
    move v5, v6

    .line 2195
    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 4512
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4513
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4514
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 4515
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4516
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 4517
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4519
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4520
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4522
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4524
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 4496
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 4497
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4498
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4499
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4500
    :cond_0
    move v4, p5

    .line 4501
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 4502
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    .line 4503
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 4504
    sub-int/2addr v4, v2

    :cond_1
    move-object v0, p0

    move v3, v1

    .line 4506
    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 4495
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    .line 4498
    .end local v8    # "oldTop":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "oldTop":I
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 4489
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4490
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4488
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 4415
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 4416
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverScrolled: mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",scrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4417
    const-string/jumbo v2, ",clampedY = "

    .line 4416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4417
    const-string/jumbo v2, ",this = "

    .line 4416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_1

    .line 4420
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4421
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4422
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4424
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 4414
    :cond_1
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6674
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v0, v1, :cond_1

    .line 6675
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6676
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 6677
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 6678
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6680
    :cond_0
    return v2

    .line 6681
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    .line 6682
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 6683
    const/4 v0, 0x1

    return v0

    .line 6685
    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 6692
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    move-object v0, p1

    .line 1926
    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 1928
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1929
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 1931
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 1933
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_5

    .line 1934
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1935
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1936
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1937
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 1938
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1939
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 1953
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1955
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 1956
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1959
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1960
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1963
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1965
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1966
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 1967
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1970
    :cond_3
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v1, :cond_4

    .line 1971
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRestoreInstanceState: ss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1925
    return-void

    .line 1940
    :cond_5
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 1941
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1943
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1944
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1945
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1946
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1947
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1948
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 1949
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1950
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3157
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3158
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3159
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3156
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 1831
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1833
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .line 1835
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v10, v11}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1837
    .local v10, "ss":Landroid/widget/AbsListView$SavedState;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v14, :cond_0

    .line 1839
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1840
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1841
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1842
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->position:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1843
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->height:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1844
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1845
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v14, v14, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1846
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1847
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1848
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1849
    return-object v10

    .line 1852
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v14, :cond_3

    const/4 v5, 0x1

    .line 1853
    .local v5, "haveChildren":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v8

    .line 1854
    .local v8, "selectedId":J
    iput-wide v8, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1855
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1857
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-ltz v14, :cond_4

    .line 1859
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1860
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1861
    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1888
    :goto_1
    const/4 v14, 0x0

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1889
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v14, :cond_1

    .line 1890
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1891
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    .line 1892
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1893
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 1894
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1899
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    :goto_2
    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1901
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v14, :cond_2

    .line 1902
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1904
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v14, :cond_9

    .line 1905
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1906
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 1907
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_8

    .line 1908
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1907
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1852
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "haveChildren":Z
    goto/16 :goto_0

    .line 1863
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v14, :cond_6

    .line 1873
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1874
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1875
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1876
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v14, :cond_5

    .line 1877
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v4, v14, -0x1

    .line 1879
    :cond_5
    iput v4, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1880
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto/16 :goto_1

    .line 1882
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1883
    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1884
    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 1899
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1910
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1912
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1914
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v14, :cond_a

    .line 1915
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v14}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 1917
    :cond_a
    sget-boolean v14, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_b

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v14, :cond_b

    .line 1918
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onSaveInstanceState: ss = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",this = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_b
    return-object v10
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2779
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v0, :cond_0

    .line 2780
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSizeChanged w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2781
    const-string/jumbo v2, ", h="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2782
    const-string/jumbo v2, ", oldw="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2783
    const-string/jumbo v2, ", oldh="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2784
    const-string/jumbo v2, ", getChildCount="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2784
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2785
    const-string/jumbo v2, ", mSyncPosition="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2785
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2786
    const-string/jumbo v2, ", mNeedSync="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2786
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2787
    const-string/jumbo v2, ", mSyncMode="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2787
    iget v2, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2788
    const-string/jumbo v2, ", mAdapter"

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2788
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2789
    const-string/jumbo v2, ", this="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2790
    const-string/jumbo v2, ", callstack="

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2790
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 2780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2794
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 2797
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 2798
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2802
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_3

    .line 2803
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2778
    :cond_3
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 4484
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6460
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6461
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6462
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6463
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6464
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 6466
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6467
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6473
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 6474
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6476
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 6477
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 6459
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 6468
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 6470
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6471
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 6479
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3848
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_1

    .line 3851
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v14

    :goto_0
    return v14

    :cond_0
    const/4 v14, 0x1

    goto :goto_0

    .line 3854
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v14, :cond_2

    .line 3855
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v14}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3858
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 3866
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 3868
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3869
    const/4 v14, 0x1

    return v14

    .line 3863
    :cond_3
    const/4 v14, 0x0

    return v14

    .line 3876
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 3877
    .local v2, "action":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-le v14, v15, :cond_9

    .line 3878
    :cond_5
    const/4 v5, -0x1

    .line 3879
    .local v5, "countFromAdapter":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_6

    .line 3880
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 3883
    :cond_6
    sget-boolean v14, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_7

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v14, :cond_7

    .line 3884
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Intent to operate on non-exist data, childcount="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3885
    const-string/jumbo v16, ", mFirstPosition="

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3885
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3885
    const-string/jumbo v16, ", mItemCount="

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3885
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v16, v0

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3886
    const-string/jumbo v16, ", adapter count="

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3886
    const-string/jumbo v16, ", mAdapter="

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v16, v0

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3887
    const-string/jumbo v16, ", action="

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3887
    const-string/jumbo v16, ", mActivePointerId="

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3887
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v16, v0

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3888
    const-string/jumbo v16, ", mScrollY="

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3888
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v16, v0

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3888
    const-string/jumbo v16, ", this="

    .line 3884
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    :cond_7
    and-int/lit16 v14, v2, 0xff

    const/4 v15, 0x6

    if-ne v14, v15, :cond_8

    .line 3893
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3895
    :cond_8
    const/4 v14, 0x1

    return v14

    .line 3899
    .end local v5    # "countFromAdapter":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 3900
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    .line 3902
    .local v11, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 3903
    .local v3, "actionMasked":I
    if-nez v3, :cond_a

    .line 3904
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3906
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v15, v15

    invoke-virtual {v11, v14, v15}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3907
    packed-switch v3, :pswitch_data_0

    .line 4000
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v14, :cond_b

    .line 4001
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4003
    :cond_b
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 4004
    const/4 v14, 0x1

    return v14

    .line 3909
    :pswitch_1
    const-string/jumbo v14, "listDown"

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3910
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 3911
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .line 3916
    :pswitch_2
    const-string/jumbo v14, "listMove"

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3917
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 3918
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .line 3923
    :pswitch_3
    const-string/jumbo v14, "listUp"

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3924
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 3925
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .line 3930
    :pswitch_4
    const-string/jumbo v14, "listCancel"

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3931
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    .line 3932
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .line 3941
    :pswitch_5
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3942
    .local v8, "lostMotionPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v14, v8, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3943
    .local v10, "v":Landroid/view/View;
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 3948
    :cond_c
    :goto_2
    sget-boolean v14, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_d

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v14, :cond_d

    .line 3949
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Touch second pointer up, touch mode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3950
    const-string/jumbo v16, ",mScrollY = "

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3950
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v16, v0

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3950
    const-string/jumbo v16, ",mActivePointerId = "

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3950
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v16, v0

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3951
    const-string/jumbo v16, ",mFirstPosition = "

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3951
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3951
    const-string/jumbo v16, ",mDataChanged = "

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3952
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v16, v0

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3952
    const-string/jumbo v16, ",adatper size = "

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3952
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v16, v0

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3952
    const-string/jumbo v16, ",this = "

    .line 3949
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    :cond_d
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3956
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3957
    .local v12, "x":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3958
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    .line 3959
    .local v9, "motionPosition":I
    if-ltz v9, :cond_e

    .line 3961
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v14, v9, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3962
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3963
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3965
    .end local v4    # "child":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 3943
    .end local v9    # "motionPosition":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_f
    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 3944
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_2

    .line 3971
    .end local v8    # "lostMotionPosition":I
    .end local v10    # "v":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 3972
    .local v7, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 3974
    .local v6, "id":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 3975
    .restart local v12    # "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 3976
    .restart local v13    # "y":I
    sget-boolean v14, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_11

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-nez v14, :cond_10

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v14, :cond_11

    .line 3977
    :cond_10
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Touch second pointer down, touch mode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3978
    const-string/jumbo v16, ", mScrollY = "

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3978
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v16, v0

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3979
    const-string/jumbo v16, ", mActivePointerId = "

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3979
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v16, v0

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3979
    const-string/jumbo v16, ", id = "

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3980
    const-string/jumbo v16, ", index = "

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3980
    const-string/jumbo v16, ", mFirstPosition = "

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3980
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3981
    const-string/jumbo v16, ", mDataChanged = "

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3981
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v16, v0

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3981
    const-string/jumbo v16, ", adatper size = "

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3981
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v16, v0

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 3982
    const-string/jumbo v16, ", this = "

    .line 3977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    :cond_11
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3985
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3986
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3987
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3988
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    .line 3989
    .restart local v9    # "motionPosition":I
    if-ltz v9, :cond_12

    .line 3991
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v14, v9, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3992
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3993
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3995
    .end local v4    # "child":Landroid/view/View;
    :cond_12
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 3907
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 3
    .param p1, "isInTouchMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3814
    if-eqz p1, :cond_2

    .line 3816
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3820
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3823
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3825
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3813
    :cond_1
    :goto_0
    return-void

    .line 3827
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3828
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3829
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3830
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3832
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3833
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3836
    :cond_5
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3837
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3838
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3839
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3840
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3098
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3099
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v1, :cond_0

    .line 3100
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocusChanged: hasWindowFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 3105
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_5

    .line 3106
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3107
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_2

    .line 3108
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3111
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3112
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_1

    .line 3113
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3115
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_2

    .line 3116
    iput v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3117
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3118
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3119
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3123
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3125
    if-ne v0, v5, :cond_3

    .line 3127
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3152
    :cond_3
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3097
    return-void

    .line 3103
    .end local v0    # "touchMode":I
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "touchMode":I
    goto :goto_0

    .line 3131
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-eqz v1, :cond_7

    .line 3137
    :cond_6
    :goto_2
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 3139
    if-ne v0, v5, :cond_8

    .line 3141
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3133
    :cond_7
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_2

    .line 3145
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3146
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 3147
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1586
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1587
    return v4

    .line 1589
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1607
    return v3

    .line 1592
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1593
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 1594
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1595
    return v4

    .line 1597
    .end local v0    # "viewportHeight":I
    :cond_1
    return v3

    .line 1600
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v1, :cond_2

    .line 1601
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 1602
    .restart local v0    # "viewportHeight":I
    neg-int v1, v0

    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1603
    return v4

    .line 1605
    .end local v0    # "viewportHeight":I
    :cond_2
    return v3

    .line 1589
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1138
    const/4 v8, 0x0

    .line 1139
    .local v8, "handled":Z
    const/4 v7, 0x1

    .line 1141
    .local v7, "dispatchItemClick":Z
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v1, :cond_4

    .line 1142
    const/4 v8, 0x1

    .line 1143
    const/4 v0, 0x0

    .line 1145
    .local v0, "checkedStateChanged":Z
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1146
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_a

    .line 1147
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    .line 1148
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1149
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1150
    if-eqz v6, :cond_8

    .line 1151
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1156
    :cond_1
    :goto_1
    if-eqz v6, :cond_9

    .line 1157
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1161
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1162
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1164
    const/4 v7, 0x0

    .line 1166
    :cond_2
    const/4 v0, 0x1

    .line 1183
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1184
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1188
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v1, :cond_5

    .line 1189
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performItemClick view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1190
    const-string/jumbo v3, ", mChoiceMode="

    .line 1189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1190
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1190
    const-string/jumbo v3, ", dispatchItemClick="

    .line 1189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_5
    if-eqz v7, :cond_6

    .line 1193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1196
    .end local v8    # "handled":Z
    :cond_6
    return v8

    .line 1147
    .restart local v0    # "checkedStateChanged":Z
    .restart local v8    # "handled":Z
    :cond_7
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto/16 :goto_0

    .line 1153
    :cond_8
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto/16 :goto_1

    .line 1159
    :cond_9
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_2

    .line 1167
    .end local v6    # "checked":Z
    :cond_a
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_3

    .line 1168
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v6, 0x0

    .line 1169
    .restart local v6    # "checked":Z
    :goto_4
    if-eqz v6, :cond_e

    .line 1170
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1171
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1172
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1173
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1174
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1176
    :cond_b
    iput v5, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1180
    :cond_c
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1168
    .end local v6    # "checked":Z
    :cond_d
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto :goto_4

    .line 1177
    :cond_e
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1178
    :cond_f
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 3314
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3315
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 3316
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3317
    invoke-virtual {p0, p2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3318
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3320
    :cond_0
    return v2

    .line 3323
    :cond_1
    const/4 v6, 0x0

    .line 3324
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3325
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3328
    .end local v6    # "handled":Z
    :cond_2
    if-nez v6, :cond_3

    .line 3329
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3330
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3332
    :cond_3
    if-eqz v6, :cond_4

    .line 3333
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3335
    :cond_4
    return v6
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3429
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3430
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3431
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3432
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3435
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3436
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3437
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3438
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3439
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3440
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3441
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    return v4

    .line 3436
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3445
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3458
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3459
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3460
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    return-wide v2

    .line 3462
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 2668
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2667
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 2657
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2658
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2659
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 2660
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 2661
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2656
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 2663
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2650
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2649
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v7, 0x0

    .line 6593
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6594
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->-get0(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 6597
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6598
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6599
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 6601
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6602
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6603
    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6604
    if-eqz v3, :cond_0

    .line 6606
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6597
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6610
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6611
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6592
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5652
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5653
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 5654
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5656
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5657
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5658
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 4789
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v0, :cond_0

    .line 4790
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportScrollStateChange: newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4791
    const-string/jumbo v2, ", mLastScrollState = "

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4791
    iget v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4792
    const-string/jumbo v2, ", mOnScrollListener = "

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4792
    iget-object v2, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4792
    const-string/jumbo v2, ", mScrollY = "

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4792
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4793
    const-string/jumbo v2, ", mTouchMode = "

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4793
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4793
    const-string/jumbo v2, ", mFirstPosition = "

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4793
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_1

    .line 4797
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4798
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4799
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4788
    :cond_1
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 4602
    if-eqz p1, :cond_0

    .line 4603
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4605
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4601
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2040
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    goto :goto_0
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1725
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1726
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1727
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1728
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1724
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2049
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2050
    iput v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2051
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2052
    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2053
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2054
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2055
    iput v2, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2056
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2057
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2058
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2059
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2060
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2061
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2062
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgSelector:Z

    if-eqz v0, :cond_0

    .line 2063
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSelectorRect.setEmpty in resetList this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2064
    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "resetList"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2063
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2066
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2048
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 5720
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5722
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 5723
    const/16 v17, 0x0

    return v17

    .line 5726
    :cond_0
    const/4 v13, 0x0

    .line 5728
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 5729
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 5730
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5731
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5732
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 5734
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 5735
    move v12, v14

    .line 5737
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5738
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5739
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 5742
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 5743
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 5799
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5804
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5805
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5806
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 5807
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 5808
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 5809
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 5810
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5811
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 5812
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5816
    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5818
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    :goto_2
    return v17

    .line 5744
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 5745
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    .line 5746
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    .line 5745
    sub-int v13, v17, v18

    goto :goto_0

    .line 5749
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 5751
    move v12, v7

    .line 5752
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 5753
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5754
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5756
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 5758
    move v13, v15

    .line 5760
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 5763
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 5766
    :cond_6
    if-lt v15, v5, :cond_7

    .line 5768
    add-int v12, v7, v8

    .line 5769
    move v13, v15

    .line 5770
    goto/16 :goto_0

    .line 5752
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5774
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5775
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 5776
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 5778
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 5779
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5780
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5781
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5783
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 5784
    move v13, v15

    .line 5785
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 5786
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 5790
    :cond_a
    if-gt v2, v4, :cond_b

    .line 5791
    add-int v12, v7, v8

    .line 5792
    move v13, v15

    .line 5793
    goto/16 :goto_0

    .line 5778
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 5814
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_1

    .line 5818
    :cond_d
    const/16 v17, 0x0

    goto :goto_2
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5700
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5701
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5702
    const/4 v0, 0x1

    return v0

    .line 5704
    :cond_0
    return v1
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 5389
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5388
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1531
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1532
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1533
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1534
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    .line 1535
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1536
    return-void

    .line 1538
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1539
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1542
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEventInternal(I)V

    .line 1527
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6132
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_0

    .line 6133
    return v8

    .line 6136
    :cond_0
    const/4 v2, 0x0

    .line 6137
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 6138
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 6170
    .end local v3    # "okToSend":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 6171
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6173
    move-object v1, p3

    .line 6174
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 6175
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v8}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6178
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6179
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 6193
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    .end local v2    # "handled":Z
    :cond_2
    :goto_1
    return v2

    .line 6145
    .restart local v2    # "handled":Z
    .restart local v3    # "okToSend":Z
    :sswitch_0
    const/4 v3, 0x0

    .line 6146
    goto :goto_0

    .line 6148
    :sswitch_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6149
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 6150
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 6151
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6152
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 6153
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6155
    :cond_3
    const/4 v2, 0x1

    .line 6162
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 6163
    goto :goto_0

    .line 6156
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 6157
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    .line 6156
    if-eqz v5, :cond_4

    .line 6157
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 6158
    const/4 v2, 0x1

    .line 6159
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6166
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .local v3, "okToSend":Z
    goto :goto_0

    .line 6181
    .end local v3    # "okToSend":Z
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 6185
    .local v2, "handled":Z
    :pswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 6189
    .local v2, "handled":Z
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 6138
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 6179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 935
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 936
    if-eqz p1, :cond_0

    .line 937
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 938
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 940
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 944
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 948
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 949
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 935
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 6563
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 6564
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6565
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6566
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6567
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6569
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6562
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 3
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1240
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1241
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1243
    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1245
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1246
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1247
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1249
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1250
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1253
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1254
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1239
    :cond_3
    return-void
.end method

.method setDataChanged(Z)Z
    .locals 3
    .param p1, "changed"    # Z

    .prologue
    .line 8032
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v0, :cond_0

    .line 8033
    const-string/jumbo v1, "AbsListView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataChanged oldDataChanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8034
    const-string/jumbo v2, ", mDataChanged="

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8035
    const-string/jumbo v2, ", mOldItemCount="

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8035
    iget v2, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8036
    const-string/jumbo v2, ", mItemCount="

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8036
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8037
    const-string/jumbo v2, ", countFromAdapter="

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8037
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 8033
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8038
    const-string/jumbo v2, ", mAdapter="

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8038
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8039
    const-string/jumbo v2, ", this="

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8040
    const-string/jumbo v2, ", callstack="

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8040
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 8033
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8042
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setDataChanged(Z)Z

    move-result v0

    return v0

    .line 8037
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 2861
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2860
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1370
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1371
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_2

    .line 1375
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1377
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1378
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1369
    :cond_1
    :goto_1
    return-void

    .line 1372
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 1380
    :cond_3
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1310
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1311
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1313
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1314
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1316
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1348
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1349
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 1347
    :goto_0
    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 1989
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1987
    :cond_0
    :goto_0
    return-void

    .line 1990
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1993
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 2000
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 2001
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2002
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2006
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2007
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2270
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2274
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2275
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2276
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2280
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2274
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 5167
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5168
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5170
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5166
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1068
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v1, :cond_0

    .line 1069
    return-void

    .line 1073
    :cond_0
    if-eqz p2, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 1074
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_7

    .line 1075
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1080
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1083
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_a

    .line 1084
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1085
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1086
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1087
    if-eqz p2, :cond_8

    .line 1088
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1093
    :cond_3
    :goto_0
    if-eq v0, p2, :cond_4

    .line 1094
    if-eqz p2, :cond_9

    .line 1095
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1100
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 1101
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1102
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1129
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_5
    :goto_2
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_11

    .line 1067
    :cond_6
    :goto_3
    return-void

    .line 1076
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1090
    .restart local v0    # "oldValue":Z
    :cond_8
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 1097
    :cond_9
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_1

    .line 1106
    .end local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    .line 1109
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1110
    :cond_b
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1111
    if-eqz v7, :cond_c

    .line 1112
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1117
    :cond_c
    if-eqz p2, :cond_f

    .line 1118
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1119
    if-eqz v7, :cond_d

    .line 1120
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1122
    :cond_d
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1106
    :cond_e
    const/4 v7, 0x0

    .local v7, "updateIds":Z
    goto :goto_4

    .line 1123
    .end local v7    # "updateIds":Z
    :cond_f
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1124
    :cond_10
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1130
    :cond_11
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 1131
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1132
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_3
.end method

.method setListLayoutMode(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 8055
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v1, :cond_0

    .line 8056
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setListLayoutMode oldLayoutMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8057
    const-string/jumbo v3, ", mLayoutMode="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8058
    const-string/jumbo v3, ", mSpecificTop="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8058
    iget v3, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8059
    const-string/jumbo v3, ", mSyncPosition="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8059
    iget v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8060
    const-string/jumbo v3, ", mSyncRowId="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8060
    iget-wide v4, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 8056
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8061
    const-string/jumbo v3, ", mSyncHeight="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8061
    iget-wide v4, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 8056
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8062
    const-string/jumbo v3, ", mNeedSync="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8062
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8063
    const-string/jumbo v3, ", mSyncMode="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8063
    iget v3, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8064
    const-string/jumbo v3, ", mResurrectToPosition="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8064
    iget v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8065
    const-string/jumbo v3, ", mSelectedTop="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8065
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8066
    const-string/jumbo v3, ", mAdapter="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8066
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8067
    const-string/jumbo v3, ", this="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8068
    const-string/jumbo v3, ", callstack="

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8068
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 8056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8070
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 8071
    .local v0, "ret":Z
    :goto_0
    iput p1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8072
    return v0

    .line 8070
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1270
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1271
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1273
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1269
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 3
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1505
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v0, :cond_0

    .line 1506
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOnScrollListener: OnScrollListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1509
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1504
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 918
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 919
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 920
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 921
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 922
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 928
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 917
    return-void

    .line 925
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 926
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 6722
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-set0(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 6721
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6629
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 6630
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6631
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 6632
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 6631
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6633
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6634
    return-void

    .line 6637
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6639
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6640
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6641
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6626
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 6655
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 6656
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 6652
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1450
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1451
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1449
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 2944
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2945
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 2943
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1647
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1650
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1646
    return-void

    .line 1648
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 7515
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 7516
    return-void

    .line 7519
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7520
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 7521
    if-ltz p1, :cond_1

    .line 7522
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 7528
    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    .line 7529
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7530
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 7532
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_2

    .line 7533
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 7534
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 7537
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 7538
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7540
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7514
    :cond_4
    return-void

    .line 7525
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2872
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2871
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 2876
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2877
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2878
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2880
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2881
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2882
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2883
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2884
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 2885
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 2886
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2887
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2888
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2875
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1484
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1483
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1718
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1719
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1720
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1717
    :cond_0
    return-void
.end method

.method setSyncPosition(I)Z
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 8085
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v0, :cond_0

    .line 8086
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncPosition oldSyncPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8087
    const-string/jumbo v2, ", mSyncPosition="

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8088
    const-string/jumbo v2, ", mSpecificTop="

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8088
    iget v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8089
    const-string/jumbo v2, ", mSyncRowId="

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8089
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 8086
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8090
    const-string/jumbo v2, ", mSyncHeight="

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8090
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 8086
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8091
    const-string/jumbo v2, ", mNeedSync="

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8091
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8092
    const-string/jumbo v2, ", mSyncMode="

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8092
    iget v2, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8093
    const-string/jumbo v2, ", this="

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8094
    const-string/jumbo v2, ", callstack="

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8094
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 8086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8096
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setSyncPosition(I)Z

    move-result v0

    return v0
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 1664
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1663
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 6534
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 6533
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 5180
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 5179
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1442
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1443
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1441
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 6705
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 6706
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 6704
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2830
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3346
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 3347
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3348
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3349
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3350
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3351
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3352
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 3355
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    return v4
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 3360
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3361
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3362
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3363
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3365
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3366
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3369
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    .line 3371
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3370
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3373
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3376
    :cond_1
    return v6

    .line 3378
    .end local v4    # "longPressId":J
    :cond_2
    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 5281
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5280
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 8
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v7, 0x0

    .line 5285
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 5286
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5290
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5291
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5292
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 5293
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 5294
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 5296
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_1

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-nez v5, :cond_4

    .line 5300
    :cond_1
    sget-boolean v5, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v5, :cond_2

    .line 5301
    const-string/jumbo v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smoothScrollBy: mScrollY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5302
    const-string/jumbo v7, ",mItemCount = "

    .line 5301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5302
    iget v7, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5302
    const-string/jumbo v7, ",childCount = "

    .line 5301
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5305
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5306
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    .line 5307
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5284
    :cond_3
    :goto_0
    return-void

    .line 5296
    :cond_4
    if-eqz v1, :cond_1

    .line 5297
    if-nez v2, :cond_5

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_5

    if-ltz p1, :cond_1

    .line 5298
    :cond_5
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v3, v5, :cond_6

    .line 5299
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_6

    if-gtz p1, :cond_1

    .line 5310
    :cond_6
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5311
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    .line 5319
    const/4 v2, -0x1

    .line 5320
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 5321
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 5326
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 5327
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5328
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 5329
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5330
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5332
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 5333
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 5334
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 5335
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 5336
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v10

    if-gez v7, :cond_4

    .line 5339
    add-int/lit8 v2, v2, 0x1

    .line 5346
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    add-int v8, v2, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5318
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 5322
    :cond_3
    if-lez p1, :cond_0

    .line 5323
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 5340
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v10

    if-gez v7, :cond_1

    .line 5343
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 5196
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 5197
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollToPosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5198
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5198
    const-string/jumbo v2, ",this = "

    .line 5197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5200
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    .line 5201
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5203
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 5195
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 5264
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 5265
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollToPosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",boundPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5266
    const-string/jumbo v2, ",mPositionScroller = "

    .line 5265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5266
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5266
    const-string/jumbo v2, ",mScrollY = "

    .line 5265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5267
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5267
    const-string/jumbo v2, ",this = "

    .line 5265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    .line 5270
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5272
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 5263
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 5242
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 5243
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollToPositionFromTop: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5244
    const-string/jumbo v2, ",mPositionScroller = "

    .line 5243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5244
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5244
    const-string/jumbo v2, ",mScrollY = "

    .line 5243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5245
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5245
    const-string/jumbo v2, ",this = "

    .line 5243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5247
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    .line 5248
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5250
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 5241
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 5219
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 5220
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollToPositionFromTop: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5221
    const-string/jumbo v2, ", offset = "

    .line 5220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5221
    const-string/jumbo v2, ", duration = "

    .line 5220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5222
    const-string/jumbo v2, ", mScrollY = "

    .line 5220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5222
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5222
    const-string/jumbo v2, ", this = "

    .line 5220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    .line 5225
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5227
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 5218
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2813
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2818
    const/4 v0, 0x0

    return v0

    .line 2816
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2813
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 33
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 5428
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 5429
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 5430
    const/16 v29, 0x1

    return v29

    .line 5433
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 5434
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 5436
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 5441
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 5442
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 5443
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 5444
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 5445
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 5449
    :cond_1
    sub-int v25, v13, v16

    .line 5450
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 5451
    .local v14, "end":I
    sub-int v26, v22, v14

    .line 5453
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 5454
    .local v19, "height":I
    sget-boolean v29, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v29, :cond_2

    sget-boolean v29, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v29, :cond_2

    .line 5455
    const-string/jumbo v29, "AbsListView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "trackMotionScroll: deltaY = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ",mScrollY = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 5456
    const-string/jumbo v31, ",incrementalDeltaY = "

    .line 5455
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 5456
    const-string/jumbo v31, ",firstTop = "

    .line 5455
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 5457
    const-string/jumbo v31, ",lastBottom = "

    .line 5455
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 5457
    const-string/jumbo v31, ",height = "

    .line 5455
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 5457
    const-string/jumbo v31, ",childCount = "

    .line 5455
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 5458
    const-string/jumbo v31, ",spaceAbove = "

    .line 5455
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 5458
    const-string/jumbo v31, ",this = "

    .line 5455
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5460
    :cond_2
    if-gez p1, :cond_4

    .line 5461
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5466
    :goto_0
    if-gez p2, :cond_5

    .line 5467
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5472
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5475
    .local v15, "firstPosition":I
    if-nez v15, :cond_6

    .line 5476
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5480
    :goto_2
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 5481
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5486
    :goto_3
    if-nez v15, :cond_9

    .line 5487
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_9

    if-ltz p2, :cond_8

    const/4 v5, 0x1

    .line 5488
    .local v5, "cannotScrollDown":Z
    :goto_4
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 5489
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_b

    if-gtz p2, :cond_a

    const/4 v6, 0x1

    .line 5491
    .local v6, "cannotScrollUp":Z
    :goto_5
    if-nez v5, :cond_3

    if-eqz v6, :cond_d

    .line 5492
    :cond_3
    if-eqz p2, :cond_c

    const/16 v29, 0x1

    :goto_6
    return v29

    .line 5463
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_0

    .line 5469
    :cond_5
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_1

    .line 5478
    .restart local v15    # "firstPosition":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_2

    .line 5483
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_3

    .line 5487
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollDown":Z
    goto :goto_4

    .line 5486
    .end local v5    # "cannotScrollDown":Z
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollDown":Z
    goto :goto_4

    .line 5489
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "cannotScrollUp":Z
    goto :goto_5

    .line 5488
    .end local v6    # "cannotScrollUp":Z
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "cannotScrollUp":Z
    goto :goto_5

    .line 5492
    :cond_c
    const/16 v29, 0x0

    goto :goto_6

    .line 5495
    :cond_d
    if-gez p2, :cond_17

    const/4 v11, 0x1

    .line 5497
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v21

    .line 5498
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_e

    .line 5499
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 5502
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 5503
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 5505
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    .line 5506
    .local v27, "start":I
    const/4 v10, 0x0

    .line 5508
    .local v10, "count":I
    if-eqz v11, :cond_1a

    .line 5509
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 5510
    .local v28, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 5511
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 5513
    :cond_f
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_10

    .line 5514
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5515
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_18

    .line 5551
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 5553
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5555
    if-lez v10, :cond_11

    .line 5556
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 5557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 5562
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_12

    .line 5563
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5566
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5568
    if-eqz v11, :cond_13

    .line 5569
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5572
    :cond_13
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5573
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    if-lt v0, v3, :cond_14

    move/from16 v0, v26

    if-ge v0, v3, :cond_15

    .line 5574
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 5577
    :cond_15
    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1d

    .line 5578
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5579
    .local v9, "childIndex":I
    if-ltz v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_16

    .line 5580
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5595
    .end local v9    # "childIndex":I
    :cond_16
    :goto_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5597
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5599
    const/16 v29, 0x0

    return v29

    .line 5495
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_17
    const/4 v11, 0x0

    .restart local v11    # "down":Z
    goto/16 :goto_7

    .line 5518
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 5519
    add-int v24, v15, v20

    .line 5520
    .local v24, "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_19

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_19

    .line 5523
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5513
    :cond_19
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 5529
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 5530
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 5531
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 5533
    :cond_1b
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_10

    .line 5534
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5535
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_10

    .line 5538
    move/from16 v27, v20

    .line 5539
    add-int/lit8 v10, v10, 0x1

    .line 5540
    add-int v24, v15, v20

    .line 5541
    .restart local v24    # "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1c

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1c

    .line 5544
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5533
    :cond_1c
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 5582
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1e

    .line 5583
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5584
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_16

    .line 5585
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 5588
    .end local v9    # "childIndex":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    .line 5589
    sget-boolean v29, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v29, :cond_16

    sget-boolean v29, Landroid/widget/AbsListView;->sDbgSelector:Z

    if-eqz v29, :cond_16

    .line 5590
    const-string/jumbo v29, "AbsListView"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "mSelectorRect.setEmpty in trackMotionScroll this = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 5591
    new-instance v31, Ljava/lang/Throwable;

    const-string/jumbo v32, "trackMotionScroll"

    invoke-direct/range {v31 .. v32}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 5590
    invoke-static/range {v29 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9
.end method

.method updateScrollIndicators()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2309
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2310
    iget-object v3, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2313
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2314
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2308
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2310
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2314
    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 3

    .prologue
    .line 2949
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2950
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgSelector:Z

    if-eqz v0, :cond_0

    .line 2951
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectorState shouldShowSelector="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2952
    const-string/jumbo v2, ", getDrawableState="

    .line 2951
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2952
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v2

    .line 2951
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2953
    const-string/jumbo v2, ", this="

    .line 2951
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2956
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2948
    :cond_1
    :goto_0
    return-void

    .line 2958
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3006
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
