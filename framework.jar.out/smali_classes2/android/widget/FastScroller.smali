.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FastScroller$1;,
        Landroid/widget/FastScroller$2;,
        Landroid/widget/FastScroller$3;,
        Landroid/widget/FastScroller$4;,
        Landroid/widget/FastScroller$5;,
        Landroid/widget/FastScroller$6;
    }
.end annotation


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FastScroller"

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mMinimumTouchTarget:I

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static synthetic -get0(Landroid/widget/FastScroller;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic -set0(Landroid/widget/FastScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/FastScroller;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    .line 1609
    new-instance v0, Landroid/widget/FastScroller$3;

    const-string/jumbo v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    .line 1625
    new-instance v0, Landroid/widget/FastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    .line 1641
    new-instance v0, Landroid/widget/FastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    .line 1657
    new-instance v0, Landroid/widget/FastScroller$6;

    const-string/jumbo v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 107
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 120
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    .line 173
    iput v4, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 176
    iput v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 228
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 237
    new-instance v3, Landroid/widget/FastScroller$1;

    invoke-direct {v3, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v3, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 247
    new-instance v3, Landroid/widget/FastScroller$2;

    invoke-direct {v3, p0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    iput-object v3, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 255
    iput-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 256
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 257
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 259
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 260
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 261
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 263
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 264
    iput v2, p0, Landroid/widget/FastScroller;->mState:I

    .line 266
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 265
    :goto_0
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 268
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 269
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 270
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 271
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 272
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 273
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 275
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 276
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 278
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 279
    const v3, 0x1050087

    .line 278
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    .line 281
    invoke-virtual {p0, p2}, Landroid/widget/FastScroller;->setStyle(I)V

    .line 283
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 284
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v1, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 285
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 286
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 287
    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 288
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 289
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 291
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 292
    iget v2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    iget v3, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 293
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 294
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 254
    return-void

    .line 266
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1602
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1673
    sget-object v4, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1674
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1675
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1676
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1677
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1595
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 607
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 608
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 606
    return-void

    .line 608
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1372
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1374
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 1376
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1377
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1380
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1382
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1385
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 1371
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1349
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    .line 1348
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1350
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1351
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1347
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1360
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1359
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 547
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 549
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 550
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 552
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 553
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 554
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 557
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 559
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1255
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1256
    .local v15, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1257
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 1260
    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    .line 1262
    :cond_2
    const/16 v17, 0x0

    return v17

    .line 1265
    :cond_3
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_4

    const/4 v5, 0x1

    .line 1267
    .local v5, "hasSections":Z
    :goto_0
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1277
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p1, p1, v17

    .line 1278
    if-gez p1, :cond_8

    .line 1279
    const/16 v17, 0x0

    return v17

    .line 1266
    .end local v5    # "hasSections":Z
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "hasSections":Z
    goto :goto_0

    .line 1265
    .end local v5    # "hasSections":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "hasSections":Z
    goto :goto_0

    .line 1268
    :cond_6
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    .line 1270
    const/16 v17, 0x0

    return v17

    .line 1272
    :cond_7
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, p3, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    return v17

    .line 1281
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v17, v0

    sub-int p3, p3, v17

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1286
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_b

    .line 1287
    :cond_9
    const/4 v6, 0x0

    .line 1293
    .local v6, "incrementalPos":F
    :goto_1
    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    .line 1294
    .local v13, "section":I
    invoke-interface {v15, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v16

    .line 1295
    .local v16, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v14, v0

    .line 1297
    .local v14, "sectionCount":I
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    .line 1299
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ge v0, v14, :cond_c

    .line 1300
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1304
    .local v9, "nextSectionPos":I
    :goto_2
    sub-int v11, v9, v16

    .line 1311
    .end local v9    # "nextSectionPos":I
    .local v11, "positionsInSection":I
    :goto_3
    if-nez v11, :cond_e

    .line 1312
    const/4 v10, 0x0

    .line 1318
    .local v10, "posWithinSection":F
    :goto_4
    int-to-float v0, v13

    move/from16 v17, v0

    add-float v17, v17, v10

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 1323
    .local v12, "result":F
    if-lez p1, :cond_a

    add-int v17, p1, p2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_a

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    add-int/lit8 v18, p2, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1325
    .local v7, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v2

    .line 1328
    .local v2, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1329
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1330
    .local v8, "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .line 1335
    .local v4, "currentVisibleSize":I
    :goto_5
    if-lez v4, :cond_a

    if-lez v8, :cond_a

    .line 1336
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v17, v17, v18

    add-float v12, v12, v17

    .line 1340
    .end local v2    # "bottomPadding":I
    .end local v4    # "currentVisibleSize":I
    .end local v7    # "lastChild":Landroid/view/View;
    .end local v8    # "maxSize":I
    :cond_a
    return v12

    .line 1289
    .end local v6    # "incrementalPos":F
    .end local v10    # "posWithinSection":F
    .end local v11    # "positionsInSection":I
    .end local v12    # "result":F
    .end local v13    # "section":I
    .end local v14    # "sectionCount":I
    .end local v16    # "sectionPos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v17

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v17, v18

    .restart local v6    # "incrementalPos":F
    goto/16 :goto_1

    .line 1302
    .restart local v13    # "section":I
    .restart local v14    # "sectionCount":I
    .restart local v16    # "sectionPos":I
    :cond_c
    add-int/lit8 v9, p3, -0x1

    .restart local v9    # "nextSectionPos":I
    goto/16 :goto_2

    .line 1306
    .end local v9    # "nextSectionPos":I
    :cond_d
    sub-int v11, p3, v16

    .restart local v11    # "positionsInSection":I
    goto/16 :goto_3

    .line 1314
    :cond_e
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    .line 1315
    int-to-float v0, v11

    move/from16 v18, v0

    .line 1314
    div-float v10, v17, v18

    .restart local v10    # "posWithinSection":F
    goto/16 :goto_4

    .line 1332
    .restart local v2    # "bottomPadding":I
    .restart local v7    # "lastChild":Landroid/view/View;
    .restart local v12    # "result":F
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v8, v17, v2

    .line 1333
    .restart local v8    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v4, v17, v18

    .restart local v4    # "currentVisibleSize":I
    goto :goto_5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3
    .param p1, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 1238
    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 1239
    return v2

    .line 1242
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    sub-float v0, p1, v0

    iget v1, p0, Landroid/widget/FastScroller;->mThumbRange:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 960
    iput-object v3, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 962
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 963
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 964
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    .line 965
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 968
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 969
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 971
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 972
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 973
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 974
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 959
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    :goto_0
    return-void

    .line 976
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    .line 977
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 978
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 979
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 981
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 982
    iput-object v3, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    const/4 v6, 0x0

    .line 1576
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1577
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1579
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1580
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1581
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1582
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1579
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1584
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1588
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1533
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInsideX(F)Z
    .locals 9
    .param p1, "x"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1537
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    .line 1538
    .local v2, "offset":F
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float v1, v7, v2

    .line 1539
    .local v1, "left":F
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float v3, v7, v2

    .line 1542
    .local v3, "right":F
    iget v7, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v7, v7

    sub-float v8, v3, v1

    sub-float v4, v7, v8

    .line 1543
    .local v4, "targetSizeDiff":F
    const/4 v7, 0x0

    cmpl-float v7, v4, v7

    if-lez v7, :cond_0

    move v0, v4

    .line 1545
    .local v0, "adjust":F
    :goto_0
    iget-boolean v7, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v7, :cond_2

    .line 1546
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v0

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_1

    :goto_1
    return v5

    .line 1543
    .end local v0    # "adjust":F
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "adjust":F
    goto :goto_0

    :cond_1
    move v5, v6

    .line 1546
    goto :goto_1

    .line 1548
    :cond_2
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v0

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_3

    :goto_2
    return v5

    :cond_3
    move v5, v6

    goto :goto_2
.end method

.method private isPointInsideY(F)Z
    .locals 8
    .param p1, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 1553
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    .line 1554
    .local v2, "offset":F
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float v4, v6, v2

    .line 1555
    .local v4, "top":F
    iget-object v6, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v6

    int-to-float v6, v6

    add-float v1, v6, v2

    .line 1558
    .local v1, "bottom":F
    iget v6, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v6, v6

    sub-float v7, v1, v4

    sub-float v3, v6, v7

    .line 1559
    .local v3, "targetSizeDiff":F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v3, v6

    .line 1561
    .local v0, "adjust":F
    :goto_0
    sub-float v6, v4, v0

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_0

    add-float v6, v1, v0

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    .line 1559
    .end local v0    # "adjust":F
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "adjust":F
    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 765
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 766
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 767
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 764
    return-void
.end method

.method private layoutTrack()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 775
    iget-object v10, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 776
    .local v10, "track":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 777
    .local v7, "thumb":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 778
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 779
    .local v5, "maxWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 780
    .local v4, "maxHeight":I
    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 781
    .local v12, "widthMeasureSpec":I
    invoke-static {v4, v14}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 783
    .local v2, "heightMeasureSpec":I
    invoke-virtual {v10, v12, v2}, Landroid/view/View;->measure(II)V

    .line 787
    iget v13, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 788
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 789
    .local v9, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 796
    .local v0, "bottom":I
    :goto_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 797
    .local v11, "trackWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v11

    div-int/lit8 v14, v14, 0x2

    add-int v3, v13, v14

    .line 798
    .local v3, "left":I
    add-int v6, v3, v11

    .line 799
    .local v6, "right":I
    invoke-virtual {v10, v3, v9, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 774
    return-void

    .line 791
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v11    # "trackWidth":I
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    div-int/lit8 v8, v13, 0x2

    .line 792
    .local v8, "thumbHalfHeight":I
    iget v13, v1, Landroid/graphics/Rect;->top:I

    add-int v9, v13, v8

    .line 793
    .restart local v9    # "top":I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v13, v8

    .restart local v0    # "bottom":I
    goto :goto_0
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 699
    if-nez p2, :cond_0

    .line 700
    const/4 v10, 0x0

    .line 701
    .local v10, "marginLeft":I
    const/4 v12, 0x0

    .line 702
    .local v12, "marginTop":I
    const/4 v11, 0x0

    .line 709
    .local v11, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 710
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 711
    .local v7, "containerWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 712
    .local v2, "adjMaxHeight":I
    sub-int v17, v7, v10

    sub-int v17, v17, v11

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 713
    .local v3, "adjMaxWidth":I
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 715
    .local v16, "widthMeasureSpec":I
    const/16 v17, 0x0

    .line 714
    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 716
    .local v8, "heightMeasureSpec":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    .line 719
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 720
    .local v6, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 721
    .local v15, "width":I
    div-int/lit8 v17, v6, 0xa

    add-int v17, v17, v12

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 722
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v4, v14, v17

    .line 723
    .local v4, "bottom":I
    sub-int v17, v7, v15

    div-int/lit8 v17, v17, 0x2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v9, v17, v18

    .line 724
    .local v9, "left":I
    add-int v13, v9, v15

    .line 725
    .local v13, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v14, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 695
    return-void

    .line 704
    .end local v2    # "adjMaxHeight":I
    .end local v3    # "adjMaxWidth":I
    .end local v4    # "bottom":I
    .end local v5    # "container":Landroid/graphics/Rect;
    .end local v6    # "containerHeight":I
    .end local v7    # "containerWidth":I
    .end local v8    # "heightMeasureSpec":I
    .end local v9    # "left":I
    .end local v10    # "marginLeft":I
    .end local v11    # "marginRight":I
    .end local v12    # "marginTop":I
    .end local v13    # "right":I
    .end local v14    # "top":I
    .end local v15    # "width":I
    .end local v16    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 705
    .restart local v10    # "marginLeft":I
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    .line 706
    .restart local v12    # "marginTop":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .restart local v11    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 622
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 623
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 624
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 625
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 627
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 628
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 619
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 649
    if-nez p3, :cond_0

    .line 650
    const/4 v9, 0x0

    .line 651
    .local v9, "marginLeft":I
    const/4 v11, 0x0

    .line 652
    .local v11, "marginTop":I
    const/4 v10, 0x0

    .line 659
    .local v10, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 660
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 662
    .local v6, "containerWidth":I
    if-nez p2, :cond_1

    .line 663
    move v12, v6

    .line 670
    .local v12, "maxWidth":I
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 671
    .local v2, "adjMaxHeight":I
    sub-int v17, v12, v9

    sub-int v17, v17, v10

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 672
    .local v3, "adjMaxWidth":I
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 674
    .local v16, "widthMeasureSpec":I
    const/16 v17, 0x0

    .line 673
    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v7

    .line 675
    .local v7, "heightMeasureSpec":I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Landroid/view/View;->measure(II)V

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 681
    .local v15, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 682
    if-nez p2, :cond_3

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    :goto_2
    sub-int v13, v17, v10

    .line 683
    .local v13, "right":I
    sub-int v8, v13, v15

    .line 690
    .local v8, "left":I
    :goto_3
    move v14, v11

    .line 691
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v4, v14, v17

    .line 692
    .local v4, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v14, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 645
    return-void

    .line 654
    .end local v2    # "adjMaxHeight":I
    .end local v3    # "adjMaxWidth":I
    .end local v4    # "bottom":I
    .end local v5    # "container":Landroid/graphics/Rect;
    .end local v6    # "containerWidth":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "left":I
    .end local v9    # "marginLeft":I
    .end local v10    # "marginRight":I
    .end local v11    # "marginTop":I
    .end local v12    # "maxWidth":I
    .end local v13    # "right":I
    .end local v14    # "top":I
    .end local v15    # "width":I
    .end local v16    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 655
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 656
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .restart local v10    # "marginRight":I
    goto :goto_0

    .line 664
    .restart local v5    # "container":Landroid/graphics/Rect;
    .restart local v6    # "containerWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v12

    .restart local v12    # "maxWidth":I
    goto :goto_1

    .line 667
    .end local v12    # "maxWidth":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v17

    sub-int v12, v6, v17

    .restart local v12    # "maxWidth":I
    goto :goto_1

    .line 682
    .restart local v2    # "adjMaxHeight":I
    .restart local v3    # "adjMaxWidth":I
    .restart local v7    # "heightMeasureSpec":I
    .restart local v15    # "width":I
    .restart local v16    # "widthMeasureSpec":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v17

    goto :goto_2

    .line 685
    :cond_4
    if-nez p2, :cond_5

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    :goto_4
    add-int v8, v17, v9

    .line 686
    .restart local v8    # "left":I
    add-int v13, v8, v15

    .restart local v13    # "right":I
    goto :goto_3

    .line 685
    .end local v8    # "left":I
    .end local v13    # "right":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v17

    goto :goto_4
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 451
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 464
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 450
    return-void

    .line 454
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 455
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    .line 456
    :cond_2
    if-eqz p1, :cond_0

    .line 457
    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 458
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 931
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 932
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 930
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 857
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 858
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 859
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 856
    return-void

    .line 857
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isPressed":Z
    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 25
    .param p1, "position"    # F

    .prologue
    .line 995
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    .line 998
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 999
    .local v18, "sections":[Ljava/lang/Object;
    if-nez v18, :cond_3

    const/16 v16, 0x0

    .line 1001
    .local v16, "sectionCount":I
    :goto_0
    if-eqz v18, :cond_b

    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    .line 1003
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    const/16 v24, 0x0

    .line 1002
    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1004
    .local v5, "exactSection":I
    move/from16 v21, v5

    .line 1005
    .local v21, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    .line 1006
    .local v20, "targetIndex":I
    move/from16 v17, v21

    .line 1014
    .local v17, "sectionIndex":I
    move v9, v4

    .line 1015
    .local v9, "nextIndex":I
    move/from16 v13, v20

    .line 1016
    .local v13, "prevIndex":I
    move/from16 v15, v21

    .line 1017
    .local v15, "prevSection":I
    add-int/lit8 v12, v21, 0x1

    .line 1020
    .local v12, "nextSection":I
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    add-int/lit8 v23, v21, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1025
    :cond_0
    move/from16 v0, v20

    if-ne v9, v0, :cond_2

    .line 1027
    :cond_1
    if-lez v21, :cond_2

    .line 1028
    add-int/lit8 v21, v21, -0x1

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 1030
    move/from16 v0, v20

    if-eq v13, v0, :cond_4

    .line 1031
    move/from16 v15, v21

    .line 1032
    move/from16 v17, v21

    .line 1048
    :cond_2
    :goto_1
    add-int/lit8 v10, v12, 0x1

    .line 1049
    .local v10, "nextNextSection":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v9, :cond_5

    .line 1051
    add-int/lit8 v10, v10, 0x1

    .line 1052
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 999
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v15    # "prevSection":I
    .end local v16    # "sectionCount":I
    .end local v17    # "sectionIndex":I
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    .restart local v16    # "sectionCount":I
    goto/16 :goto_0

    .line 1034
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v15    # "prevSection":I
    .restart local v17    # "sectionIndex":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_4
    if-nez v21, :cond_1

    .line 1037
    const/16 v17, 0x0

    .line 1038
    goto :goto_1

    .line 1059
    .restart local v10    # "nextNextSection":I
    :cond_5
    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 1060
    .local v14, "prevPosition":F
    int-to-float v0, v12

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 1061
    .local v11, "nextPosition":F
    if-nez v4, :cond_7

    const v19, 0x7f7fffff    # Float.MAX_VALUE

    .line 1062
    .local v19, "snapThreshold":F
    :goto_3
    if-ne v15, v5, :cond_8

    sub-float v22, p1, v14

    cmpg-float v22, v22, v19

    if-gez v22, :cond_8

    .line 1063
    move/from16 v20, v13

    .line 1070
    :goto_4
    add-int/lit8 v22, v4, -0x1

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v20

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1073
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1075
    .local v6, "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v20

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    .line 1074
    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    .line 1076
    const/16 v23, 0x0

    .line 1074
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1098
    .end local v5    # "exactSection":I
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 1099
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FastScroller;->mCurrentSection:I

    .line 1101
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v7

    .line 1102
    .local v7, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    if-eqz v7, :cond_e

    .line 1103
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    .line 994
    .end local v7    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .line 1061
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v10    # "nextNextSection":I
    .restart local v11    # "nextPosition":F
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v14    # "prevPosition":F
    .restart local v15    # "prevSection":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_7
    int-to-float v0, v4

    move/from16 v22, v0

    const/high16 v23, 0x3e000000    # 0.125f

    div-float v19, v23, v22

    .restart local v19    # "snapThreshold":F
    goto :goto_3

    .line 1065
    :cond_8
    sub-int v22, v9, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, p1, v14

    mul-float v22, v22, v23

    .line 1066
    sub-float v23, v11, v14

    .line 1065
    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v13, v22

    goto/16 :goto_4

    .line 1077
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_5

    .line 1080
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_5

    .line 1083
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v17    # "sectionIndex":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_b
    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int/lit8 v23, v4, -0x1

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    .line 1085
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 1086
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ExpandableListView;

    .line 1088
    .restart local v6    # "expList":Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v8

    invoke-static/range {v22 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    .line 1087
    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v22

    .line 1088
    const/16 v23, 0x0

    .line 1087
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1095
    .end local v6    # "expList":Landroid/widget/ExpandableListView;
    :goto_7
    const/16 v17, -0x1

    .restart local v17    # "sectionIndex":I
    goto/16 :goto_5

    .line 1089
    .end local v17    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 1092
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_7

    .line 1104
    .end local v8    # "index":I
    .restart local v7    # "hasPreview":Z
    .restart local v17    # "sectionIndex":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    if-nez v7, :cond_6

    .line 1105
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 825
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 827
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 828
    const/4 p1, 0x1

    .line 831
    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 832
    return-void

    .line 835
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 851
    :goto_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 853
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 824
    return-void

    .line 837
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    goto :goto_0

    .line 840
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_0

    .line 843
    :pswitch_2
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 844
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_0

    .line 846
    :cond_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_0

    .line 835
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 14
    .param p1, "position"    # F

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 1202
    iget v11, p0, Landroid/widget/FastScroller;->mThumbRange:F

    mul-float/2addr v11, p1

    iget v12, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    add-float v9, v11, v12

    .line 1203
    .local v9, "thumbMiddle":F
    iget-object v11, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v12, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    sub-float v12, v9, v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1205
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 1206
    .local v5, "previewImage":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v11, v13

    .line 1208
    .local v4, "previewHalfHeight":F
    iget v11, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    packed-switch v11, :pswitch_data_0

    .line 1217
    const/4 v7, 0x0

    .line 1222
    .local v7, "previewPos":F
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1223
    .local v1, "container":Landroid/graphics/Rect;
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 1224
    .local v10, "top":I
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1225
    .local v0, "bottom":I
    int-to-float v11, v10

    add-float v3, v11, v4

    .line 1226
    .local v3, "minP":F
    int-to-float v11, v0

    sub-float v2, v11, v4

    .line 1227
    .local v2, "maxP":F
    invoke-static {v7, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 1228
    .local v6, "previewMiddle":F
    sub-float v8, v6, v4

    .line 1229
    .local v8, "previewTop":F
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1231
    iget-object v11, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1232
    iget-object v11, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1201
    return-void

    .line 1210
    .end local v0    # "bottom":I
    .end local v1    # "container":Landroid/graphics/Rect;
    .end local v2    # "maxP":F
    .end local v3    # "minP":F
    .end local v6    # "previewMiddle":F
    .end local v7    # "previewPos":F
    .end local v8    # "previewTop":F
    .end local v10    # "top":I
    :pswitch_0
    move v7, v9

    .line 1211
    .restart local v7    # "previewPos":F
    goto :goto_0

    .line 1213
    .end local v7    # "previewPos":F
    :pswitch_1
    sub-float v7, v9, v4

    .line 1214
    .restart local v7    # "previewPos":F
    goto :goto_0

    .line 1208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    .line 1367
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1119
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 1120
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1121
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1122
    aget-object v12, v13, p1

    .line 1123
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1124
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1128
    .end local v12    # "section":Ljava/lang/Object;
    .end local v19    # "text":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1129
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    .line 1132
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1133
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1134
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1141
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1143
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1150
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1151
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1152
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1155
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1156
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1157
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1158
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1159
    invoke-static {v7, v4}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1160
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1162
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1164
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1168
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    .line 1169
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    .line 1168
    sub-int v8, v20, v21

    .line 1173
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 1174
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_4

    .line 1175
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1176
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1177
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1183
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1184
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1185
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1186
    .local v10, "scale":F
    invoke-static {v15, v10}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1187
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1190
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1192
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x0

    :goto_2
    return v20

    .line 1136
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1137
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1179
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewWidth":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetWidth":I
    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_1

    .line 1192
    .restart local v16    # "showingWidth":I
    :cond_5
    const/16 v20, 0x1

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 913
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 914
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 918
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 917
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    .line 918
    iget-object v4, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v4, v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    .line 917
    invoke-static {v2, v4, v3}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 921
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 920
    new-array v3, v7, [Landroid/view/View;

    .line 921
    iget-object v4, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v6

    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v4, v3, v5

    const/4 v4, 0x0

    .line 920
    invoke-static {v2, v4, v3}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 923
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 924
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 925
    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 927
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 912
    return-void
.end method

.method private transitionToHidden()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 866
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 867
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 870
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    .line 871
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v9

    iget-object v5, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 870
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 874
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    :goto_0
    int-to-float v1, v3

    .line 876
    .local v1, "offset":F
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 875
    new-array v4, v9, [Landroid/view/View;

    .line 876
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    .line 875
    invoke-static {v3, v1, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 879
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 880
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 881
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 883
    iput-boolean v7, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 865
    return-void

    .line 874
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 890
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 891
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 894
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 895
    const-wide/16 v4, 0x96

    .line 894
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 897
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 896
    new-array v4, v10, [Landroid/view/View;

    .line 897
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    .line 896
    invoke-static {v3, v9, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 898
    const-wide/16 v4, 0x12c

    .line 896
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 900
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 899
    new-array v4, v8, [Landroid/view/View;

    .line 900
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    .line 899
    invoke-static {v3, v9, v4}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 900
    const-wide/16 v4, 0x96

    .line 899
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 902
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 903
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 904
    iget-object v3, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 906
    iput-boolean v6, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    .line 889
    return-void
.end method

.method private updateAppearance()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 298
    const/4 v1, 0x0

    .line 301
    .local v1, "width":I
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 307
    :cond_0
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 309
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 310
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 315
    :cond_1
    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mWidth:I

    .line 317
    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    if-eqz v2, :cond_2

    .line 318
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 319
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 322
    :cond_2
    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    .line 323
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 324
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 327
    :cond_3
    iget v2, p0, Landroid/widget/FastScroller;->mTextSize:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 328
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 329
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    :cond_4
    iget v0, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    .line 333
    .local v0, "padding":I
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 334
    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 335
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 336
    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 338
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    .line 297
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 732
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 733
    .local v1, "list":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 735
    iget-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 736
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 737
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 738
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 739
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 741
    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 742
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    .line 743
    if-nez v2, :cond_1

    .line 744
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 745
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 746
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 747
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 750
    if-ne v2, v6, :cond_1

    .line 751
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    move-result v3

    .line 752
    .local v3, "width":I
    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 753
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 731
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 755
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 535
    if-lez p1, :cond_1

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 536
    .local v0, "longList":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-eq v1, v0, :cond_0

    .line 537
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 539
    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 534
    :cond_0
    return-void

    .line 535
    .end local v0    # "longList":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "longList":Z
    goto :goto_0
.end method

.method private updateOffsetAndRange()V
    .locals 7

    .prologue
    .line 807
    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 808
    .local v4, "trackImage":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 811
    .local v3, "thumbImage":Landroid/view/View;
    iget v5, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 812
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v0, v5, v6

    .line 813
    .local v0, "halfThumbHeight":F
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v5, v0

    .line 814
    .local v2, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v5, v0

    .line 820
    .end local v0    # "halfThumbHeight":F
    .local v1, "max":F
    :goto_0
    iput v2, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    .line 821
    sub-float v5, v1, v2

    iput v5, p0, Landroid/widget/FastScroller;->mThumbRange:F

    .line 806
    return-void

    .line 816
    .end local v1    # "max":F
    .end local v2    # "min":F
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v2, v5

    .line 817
    .restart local v2    # "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v1, v5

    .restart local v1    # "max":F
    goto :goto_0
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1435
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1436
    return v3

    .line 1439
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1440
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 1441
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v1, :cond_2

    .line 1442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    .line 1440
    if-eqz v1, :cond_2

    .line 1443
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 1444
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 1447
    :cond_2
    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 1389
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1390
    return v6

    .line 1393
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1431
    :cond_1
    :goto_0
    return v6

    .line 1395
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1401
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1404
    const/4 v1, 0x1

    return v1

    .line 1407
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 1408
    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1412
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1413
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1414
    :cond_3
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 1415
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1417
    iget v1, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1418
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1422
    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1427
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 520
    iget v2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    .line 521
    :cond_0
    iput p2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    .line 522
    iput p1, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    .line 524
    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 525
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 526
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 527
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 530
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;->updateLongList(II)V

    .line 519
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    .line 524
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "hasMoreItems":Z
    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 5
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 936
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 938
    return-void

    .line 941
    :cond_0
    sub-int v1, p3, p2

    if-lez v1, :cond_3

    const/4 v0, 0x1

    .line 942
    .local v0, "hasMoreItems":Z
    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v1, v4, :cond_1

    .line 943
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 946
    :cond_1
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 948
    iget v1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    if-eq v1, p1, :cond_2

    .line 949
    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    .line 952
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v1, v4, :cond_2

    .line 953
    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->setState(I)V

    .line 954
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 935
    :cond_2
    return-void

    .line 941
    .end local v0    # "hasMoreItems":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "hasMoreItems":Z
    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 986
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 515
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1451
    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1452
    return v4

    .line 1455
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1519
    :cond_1
    :goto_0
    return v4

    .line 1457
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1458
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1459
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1460
    return v5

    .line 1466
    :pswitch_1
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_2

    .line 1468
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1471
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1472
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1477
    .end local v0    # "pos":F
    :cond_2
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v1, v6, :cond_1

    .line 1478
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v1, :cond_3

    .line 1482
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1483
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1486
    :cond_3
    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    .line 1487
    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    .line 1489
    return v5

    .line 1494
    :pswitch_2
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v1, v2, v8

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 1495
    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 1500
    :cond_4
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v1, v6, :cond_1

    .line 1502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1503
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    .line 1506
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_5

    .line 1507
    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 1510
    :cond_5
    return v5

    .line 1515
    .end local v0    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 402
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 400
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 430
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 431
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 429
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 412
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 413
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    .line 415
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    .line 411
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 468
    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 469
    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    .line 471
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 467
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 483
    if-nez p1, :cond_0

    .line 484
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    const/4 p1, 0x1

    .line 488
    :cond_0
    :goto_0
    iget v3, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    if-eq v3, p1, :cond_1

    .line 489
    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    .line 490
    if-eq p1, v4, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    .line 492
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_4

    :goto_2
    aget v0, v3, v4

    .line 493
    .local v0, "previewResId":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 496
    iget v3, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 497
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 496
    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 498
    .local v2, "textMinWidth":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 499
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 501
    iget v3, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 502
    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 501
    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 503
    .local v1, "textMinHeight":I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 504
    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 507
    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 482
    .end local v0    # "previewResId":I
    .end local v1    # "textMinHeight":I
    .end local v2    # "textMinWidth":I
    :cond_1
    return-void

    .line 485
    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    move v3, v5

    .line 490
    goto :goto_1

    :cond_4
    move v4, v5

    .line 492
    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 342
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 344
    .local v1, "context":Landroid/content/Context;
    sget-object v5, Lcom/android/internal/R$styleable;->FastScroll:[I

    .line 343
    const/4 v6, 0x0

    .line 344
    const v7, 0x10103f7

    .line 343
    invoke-virtual {v1, v6, v5, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 345
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 346
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 347
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 348
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 346
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :pswitch_0
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    goto :goto_1

    .line 353
    :pswitch_1
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v8

    goto :goto_1

    .line 356
    :pswitch_2
    iget-object v5, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    goto :goto_1

    .line 359
    :pswitch_3
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 362
    :pswitch_4
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 365
    :pswitch_5
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    goto :goto_1

    .line 368
    :pswitch_6
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 371
    :pswitch_7
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/FastScroller;->mTextSize:F

    goto :goto_1

    .line 374
    :pswitch_8
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 377
    :pswitch_9
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 380
    :pswitch_a
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 383
    :pswitch_b
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    goto :goto_1

    .line 386
    :pswitch_c
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    goto :goto_1

    .line 389
    :pswitch_d
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    goto :goto_1

    .line 394
    .end local v3    # "index":I
    :cond_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateAppearance()V

    .line 341
    return-void

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 478
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 568
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 569
    return-void

    .line 572
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 574
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    .line 576
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    .line 577
    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    .line 579
    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOffsetAndRange()V

    .line 581
    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 582
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 583
    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 584
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 585
    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 587
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 589
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 590
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 591
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 592
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 593
    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 596
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    .line 565
    return-void
.end method
