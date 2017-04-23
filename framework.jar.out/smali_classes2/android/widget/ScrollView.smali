.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 177
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 109
    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 116
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 133
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 146
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 151
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 152
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 161
    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 162
    iput-object v3, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 186
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 189
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    .line 188
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 293
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 296
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 298
    .end local v1    # "childHeight":I
    :cond_1
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    const/4 v0, 0x0

    .line 1797
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_1

    .line 1813
    :cond_0
    return v0

    .line 1815
    :cond_1
    add-int v0, p1, p0

    if-le v0, p2, :cond_2

    .line 1821
    sub-int v0, p2, p1

    return v0

    .line 1823
    :cond_2
    return p0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1190
    if-eqz p1, :cond_0

    .line 1191
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1192
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1648
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1650
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1652
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1654
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1657
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1659
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1647
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 936
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 937
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 946
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 948
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 949
    .local v0, "count":I
    const/4 v4, 0x0

    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 950
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 951
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 952
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 954
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 960
    if-ge p2, v9, :cond_2

    .line 961
    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 963
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    .line 965
    move-object v1, v5

    .line 966
    .local v1, "focusCandidate":Landroid/view/View;
    move v3, v8

    .line 949
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 961
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    .line 960
    .end local v8    # "viewIsFullyContained":Z
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    .line 969
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-ge v9, v10, :cond_4

    const/4 v7, 0x1

    .line 973
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 974
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 980
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 970
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    const/4 v7, 0x1

    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .line 983
    :cond_6
    if-eqz v8, :cond_7

    .line 985
    move-object v1, v5

    .line 986
    .restart local v1    # "focusCandidate":Landroid/view/View;
    const/4 v3, 0x1

    .restart local v3    # "foundFullyContainedFocusable":Z
    goto :goto_2

    .line 987
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    :cond_7
    if-eqz v7, :cond_0

    .line 992
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 999
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1637
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v1, :cond_0

    if-lez p1, :cond_4

    .line 1638
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1639
    .local v0, "canFling":Z
    :goto_0
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1640
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    .line 1641
    if-eqz v0, :cond_2

    .line 1642
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 1636
    :cond_2
    return-void

    .line 1638
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "canFling":Z
    goto :goto_0

    .line 1637
    .end local v0    # "canFling":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "canFling":Z
    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 907
    const/4 v2, 0x0

    .line 908
    .local v2, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 909
    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 911
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 913
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    .line 914
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 913
    sub-int/2addr v4, v5

    .line 914
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 913
    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 912
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 916
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return v2
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 439
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 440
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    .line 443
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 441
    :cond_0
    return v2

    .line 446
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_1
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 451
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 449
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 241
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 242
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 243
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 245
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 246
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 247
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 248
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 250
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 240
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 459
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 457
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1169
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1605
    if-ne p0, p1, :cond_0

    .line 1606
    const/4 v1, 0x1

    return v1

    .line 1609
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1610
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 1177
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1178
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1180
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1181
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, p3

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1180
    :cond_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 772
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 773
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 777
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 778
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 779
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 780
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 781
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 769
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 777
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 466
    iput-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 463
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1082
    const/4 v3, 0x1

    .line 1084
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1085
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1086
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1087
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1089
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1090
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1091
    move-object v5, p0

    .line 1094
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1095
    const/4 v3, 0x0

    .line 1101
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1103
    :cond_1
    return v3

    .line 1087
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "up":Z
    goto :goto_0

    .line 1097
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1098
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1097
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    .restart local v2    # "delta":I
    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1374
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1377
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1379
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1381
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1373
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1395
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1396
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1397
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1398
    if-eqz p2, :cond_2

    .line 1399
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1404
    :cond_0
    :goto_1
    return v1

    .line 1396
    .end local v1    # "scroll":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "scroll":Z
    goto :goto_0

    .line 1401
    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 254
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 263
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 281
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x0

    .line 1115
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1116
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1118
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1120
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1122
    .local v3, "maxJump":I
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1123
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1124
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1125
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1126
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1127
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1149
    .end local v6    # "scrollDelta":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1150
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    .line 1149
    if-eqz v7, :cond_1

    .line 1156
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1157
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1158
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 1159
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1161
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    return v7

    .line 1130
    :cond_2
    move v6, v3

    .line 1132
    .restart local v6    # "scrollDelta":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1133
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 1143
    :cond_3
    :goto_1
    if-nez v6, :cond_5

    .line 1144
    return v9

    .line 1134
    :cond_4
    if-ne p1, v10, :cond_3

    .line 1135
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1136
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1137
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v5, v7, v8

    .line 1138
    .local v5, "screenBottom":I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 1139
    sub-int v6, v1, v5

    goto :goto_1

    .line 1146
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_5
    if-ne p1, v10, :cond_6

    .end local v6    # "scrollDelta":I
    :goto_2
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    .restart local v6    # "scrollDelta":I
    :cond_6
    neg-int v6, v6

    goto :goto_2
.end method

.method public canScrollVertically(I)Z
    .locals 2
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1274
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1275
    return v1

    .line 1278
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1315
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1332
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1333
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1334
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1335
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1337
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_1

    .line 1338
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1339
    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v11

    .line 1340
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_3

    .line 1341
    const/4 v0, 0x1

    if-ne v11, v0, :cond_4

    if-lez v6, :cond_4

    const/4 v10, 0x1

    .line 1343
    .local v10, "canOverscroll":Z
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    .line 1344
    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    .line 1343
    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1345
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1347
    if-eqz v10, :cond_1

    .line 1348
    if-gez v13, :cond_5

    if-ltz v4, :cond_5

    .line 1349
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1356
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1358
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1314
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_2
    :goto_2
    return-void

    .line 1340
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_3
    const/4 v10, 0x1

    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    .line 1341
    .end local v10    # "canOverscroll":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "canOverscroll":Z
    goto :goto_0

    .line 1350
    :cond_5
    if-le v13, v6, :cond_1

    if-gt v4, v6, :cond_1

    .line 1351
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1361
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_6
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1363
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 1416
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    return v9

    .line 1418
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 1419
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1420
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 1422
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1425
    .local v2, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1

    .line 1426
    add-int/2addr v5, v2

    .line 1430
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1431
    sub-int/2addr v4, v2

    .line 1434
    :cond_2
    const/4 v6, 0x0

    .line 1436
    .local v6, "scrollYDelta":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_5

    .line 1441
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_4

    .line 1443
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/lit8 v6, v7, 0x0

    .line 1450
    :goto_0
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1451
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 1452
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1470
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_3
    :goto_1
    return v6

    .line 1446
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/lit8 v6, v7, 0x0

    goto :goto_0

    .line 1454
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_3

    .line 1459
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1461
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    rsub-int/lit8 v6, v7, 0x0

    .line 1468
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 1464
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    rsub-int/lit8 v6, v7, 0x0

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1269
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1249
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1250
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1251
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 1252
    return v0

    .line 1255
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1256
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1257
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1258
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    .line 1259
    sub-int/2addr v3, v4

    .line 1264
    :cond_1
    :goto_0
    return v3

    .line 1260
    :cond_2
    if-le v4, v2, :cond_1

    .line 1261
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1739
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1740
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_3

    .line 1741
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1742
    .local v3, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    .line 1743
    .local v0, "clipToPadding":Z
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1744
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1749
    .local v2, "restoreCount":I
    if-eqz v0, :cond_4

    .line 1750
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 1751
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 1752
    .local v1, "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 1753
    .local v4, "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 1760
    .local v5, "translateY":F
    :goto_0
    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1761
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1762
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1763
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1765
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1767
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_1
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1773
    .restart local v2    # "restoreCount":I
    if-eqz v0, :cond_5

    .line 1774
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 1775
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 1776
    .restart local v1    # "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 1777
    .restart local v4    # "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 1784
    .restart local v5    # "translateY":F
    :goto_1
    neg-int v7, v6

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 1785
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v5

    .line 1784
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1786
    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1787
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1788
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1789
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1791
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1738
    .end local v0    # "clipToPadding":Z
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollY":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_3
    return-void

    .line 1755
    .restart local v0    # "clipToPadding":Z
    .restart local v2    # "restoreCount":I
    .restart local v3    # "scrollY":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 1756
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 1757
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 1758
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_0

    .line 1779
    .end local v1    # "height":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 1780
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 1781
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 1782
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1856
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1857
    const-string/jumbo v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1855
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    const/16 v5, 0x82

    .line 396
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 398
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_3

    .line 399
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    .line 400
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 402
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 404
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 405
    if-eq v2, p0, :cond_1

    .line 406
    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    .line 404
    :cond_1
    return v3

    .line 408
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    return v3

    .line 411
    :cond_3
    const/4 v1, 0x0

    .line 412
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 413
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 434
    .end local v1    # "handled":Z
    :cond_4
    :goto_0
    return v1

    .line 415
    .restart local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 416
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 418
    .local v1, "handled":Z
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 422
    .local v1, "handled":Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 423
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 425
    .local v1, "handled":Z
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 429
    .local v1, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_1

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1621
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1622
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 1623
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1625
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1626
    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    .line 1625
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1628
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 1629
    const-string/jumbo v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1632
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1620
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x0

    .line 1051
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1052
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1054
    .local v2, "height":I
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1055
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1057
    if-eqz v1, :cond_0

    .line 1058
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1059
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1060
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1061
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1062
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1066
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1051
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 870
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 218
    const/4 v3, 0x0

    return v3

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 222
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 223
    .local v0, "bottomEdge":I
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 224
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 225
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    return v3

    .line 228
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const/4 v1, 0x0

    return v1

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 208
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 209
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 212
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 1285
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1290
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    .line 1291
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    .line 1290
    add-int/2addr v3, v4

    .line 1291
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1290
    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1294
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 1293
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 1296
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1283
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1302
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1305
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    .line 1306
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1304
    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1308
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 1307
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 1310
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1301
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1538
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1540
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1542
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1544
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1545
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1546
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1537
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 812
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 791
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 792
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 793
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 794
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 795
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 796
    .local v3, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 797
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 798
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    .line 799
    const/4 v1, 0x0

    .line 803
    :cond_1
    :goto_0
    if-eq v1, v2, :cond_0

    .line 804
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 805
    const/4 v5, 0x1

    return v5

    .line 800
    :cond_2
    if-le v1, v3, :cond_1

    .line 801
    move v1, v3

    goto :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 897
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 898
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 899
    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 900
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 901
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 902
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 903
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 896
    return-void

    .line 898
    .end local v0    # "scrollable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "scrollable":Z
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 876
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 877
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 879
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 880
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 881
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 883
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 882
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 884
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 886
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 887
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 888
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 875
    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 493
    .local v7, "action":I
    if-ne v7, v4, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 494
    return v0

    .line 500
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 504
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 597
    :cond_2
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return v0

    .line 501
    :cond_3
    return v3

    .line 515
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 516
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    .line 521
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 522
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_4

    .line 523
    const-string/jumbo v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    const-string/jumbo v2, " in onInterceptTouchEvent"

    .line 523
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_4
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 529
    .local v11, "y":I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 530
    .local v12, "yDiff":I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 531
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 532
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 533
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 534
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 535
    iput v3, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 536
    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_5

    .line 537
    const-string/jumbo v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 539
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 540
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_2

    .line 541
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 548
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 549
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_6

    .line 550
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 551
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 559
    :cond_6
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 560
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 562
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 563
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 569
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 570
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_7

    .line 571
    const-string/jumbo v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 573
    :cond_7
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto/16 :goto_0

    :cond_8
    move v3, v0

    .line 569
    goto :goto_1

    .line 580
    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 581
    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 582
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 583
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 584
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 586
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_0

    .line 589
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1552
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1553
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1555
    iget-object v2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v2, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1556
    iget-object v2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1558
    :cond_0
    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1560
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1561
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v2, :cond_1

    .line 1562
    iget-object v2, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v2, v2, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1563
    iput-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 1566
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1568
    .local v0, "childHeight":I
    :goto_0
    sub-int v2, p5, p3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, v3

    sub-int v2, v0, v2

    .line 1567
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1571
    .local v1, "scrollRange":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v2, v1, :cond_4

    .line 1572
    iput v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1579
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1551
    return-void

    .line 1566
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "childHeight":I
    goto :goto_0

    .line 1573
    .restart local v1    # "scrollRange":I
    :cond_4
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v2, :cond_2

    .line 1574
    iput v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 345
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 347
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v9, :cond_0

    .line 348
    return-void

    .line 351
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 352
    .local v4, "heightMode":I
    if-nez v4, :cond_1

    .line 353
    return-void

    .line 356
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 357
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 359
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_2

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 363
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 364
    .local v7, "targetSdkVersion":I
    const/16 v9, 0x17

    if-lt v7, v9, :cond_3

    .line 365
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 366
    .local v8, "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v5, v9, v10

    .line 373
    .local v5, "heightPadding":I
    :goto_0
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 372
    invoke-static {p1, v8, v9}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 375
    .local v2, "childWidthMeasureSpec":I
    sub-int v9, v3, v5

    const/high16 v10, 0x40000000    # 2.0f

    .line 374
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 376
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 344
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "height":I
    .end local v5    # "heightPadding":I
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "targetSdkVersion":I
    .end local v8    # "widthPadding":I
    :cond_2
    return-void

    .line 368
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "height":I
    .restart local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7    # "targetSdkVersion":I
    :cond_3
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 369
    .restart local v8    # "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int v5, v9, v10

    .restart local v5    # "heightPadding":I
    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 1730
    if-nez p4, :cond_0

    .line 1731
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 1732
    const/4 v0, 0x1

    return v0

    .line 1734
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 1718
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1719
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1720
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v0, v6

    .line 1721
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 1722
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 1717
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 1703
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1704
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 1702
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 819
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 820
    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 821
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 822
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 823
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 824
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 825
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 826
    if-eqz p4, :cond_0

    .line 827
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 833
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 817
    return-void

    .line 830
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1498
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1499
    const/16 p1, 0x82

    .line 1504
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 1505
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1509
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    .line 1510
    return v3

    .line 1500
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1501
    const/16 p1, 0x21

    goto :goto_0

    .line 1506
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "nextFocus":Landroid/view/View;
    goto :goto_1

    .line 1513
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1514
    return v3

    .line 1517
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1828
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    .line 1831
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1832
    return-void

    :cond_0
    move-object v0, p1

    .line 1834
    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 1835
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1836
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 1837
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 1827
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1842
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 1845
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    return-object v2

    .line 1847
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1848
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1849
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 1850
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1584
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1586
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1587
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1588
    :cond_0
    return-void

    .line 1593
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1594
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1595
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1596
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1597
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1583
    .end local v1    # "scrollDelta":I
    :cond_2
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 1698
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 1712
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 1711
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 602
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 604
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v32

    .line 606
    .local v32, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    .line 608
    .local v21, "actionMasked":I
    if-nez v21, :cond_0

    .line 609
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 611
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 613
    packed-switch v21, :pswitch_data_0

    .line 762
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 765
    :cond_2
    invoke-virtual/range {v32 .. v32}, Landroid/view/MotionEvent;->recycle()V

    .line 766
    const/4 v2, 0x1

    return v2

    .line 615
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 616
    const/4 v2, 0x0

    return v2

    .line 618
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 619
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 620
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_4

    .line 621
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 629
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_5

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 633
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 638
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 639
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 640
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 618
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 644
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 645
    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 646
    const-string/jumbo v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " in onTouchEvent MOVE"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 650
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v33, v0

    .line 651
    .local v33, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v4, v2, v33

    .line 652
    .local v4, "deltaY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 655
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 657
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 659
    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_9

    .line 660
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 662
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 663
    if-lez v4, :cond_c

    .line 664
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    .line 669
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v33, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v26, v0

    .line 674
    .local v26, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    .line 675
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v27

    .line 676
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_d

    .line 677
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_e

    if-lez v8, :cond_e

    const/16 v23, 0x1

    .line 681
    .local v23, "canOverscroll":Z
    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 687
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v11, v2, v26

    .line 688
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .line 689
    .local v13, "unconsumedY":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 690
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 691
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 692
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_0

    .line 666
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_2

    .line 676
    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_d
    const/16 v23, 0x1

    .restart local v23    # "canOverscroll":Z
    goto :goto_3

    .line 677
    .end local v23    # "canOverscroll":Z
    :cond_e
    const/16 v23, 0x0

    .restart local v23    # "canOverscroll":Z
    goto :goto_3

    .line 684
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_4

    .line 693
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_10
    if-eqz v23, :cond_1

    .line 694
    add-int v30, v26, v4

    .line 695
    .local v30, "pulledToY":I
    if-gez v30, :cond_13

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 697
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 696
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 708
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 710
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 701
    :cond_13
    move/from16 v0, v30

    if-le v0, v8, :cond_11

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 703
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 702
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_11

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_5

    .line 716
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v30    # "pulledToY":I
    .end local v33    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v31, v0

    .line 718
    .local v31, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 719
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 721
    .local v25, "initialVelocity":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_15

    .line 722
    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 728
    :cond_14
    :goto_6
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 729
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 723
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    .line 724
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    .line 723
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    .line 733
    .end local v25    # "initialVelocity":I
    .end local v31    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 734
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 737
    :cond_16
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 738
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 742
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 743
    .local v24, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 744
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 748
    .end local v24    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 751
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v29

    .line 752
    .local v29, "pointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_17

    .line 753
    const-string/jumbo v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid pointerId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 754
    const-string/jumbo v5, " in onTouchEvent POINTER_UP"

    .line 753
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 758
    :cond_17
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 1015
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1016
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1018
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1019
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1020
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1021
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1022
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1023
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1024
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1033
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1035
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1015
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_0

    .line 1028
    .restart local v2    # "height":I
    :cond_2
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1029
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_0

    .line 1030
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 839
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    return v5

    .line 842
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 843
    return v4

    .line 845
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 865
    return v4

    .line 848
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 849
    .local v1, "viewportHeight":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v2, v1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 850
    .local v0, "targetScrollY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v2, :cond_2

    .line 851
    invoke-virtual {p0, v4, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 852
    return v5

    .line 854
    :cond_2
    return v4

    .line 857
    .end local v0    # "targetScrollY":I
    .end local v1    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 858
    .restart local v1    # "viewportHeight":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 859
    .restart local v0    # "targetScrollY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v2, :cond_3

    .line 860
    invoke-virtual {p0, v4, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 861
    return v5

    .line 863
    :cond_3
    return v4

    .line 845
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1475
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1476
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1481
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1474
    return-void

    .line 1479
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1524
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1525
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1524
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1527
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 472
    if-eqz p1, :cond_0

    .line 473
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 475
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 471
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1532
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1533
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1531
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1671
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1672
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1673
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 1674
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 1675
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1676
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1669
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 323
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 324
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 321
    :cond_0
    return-void
.end method

.method public setFriction(F)V
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 1907
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-nez v0, :cond_0

    .line 1908
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 1910
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 1906
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1683
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1684
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1685
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1686
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1687
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1693
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1682
    return-void

    .line 1690
    :cond_1
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1691
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 339
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1206
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1208
    return-void

    .line 1210
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 1211
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 1212
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v6, v7

    .line 1213
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1214
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1215
    .local v4, "maxY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1216
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1218
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1219
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1230
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 1205
    return-void

    .line 1221
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1222
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1223
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 1224
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1225
    iput-object v11, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1228
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1240
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1239
    return-void
.end method
