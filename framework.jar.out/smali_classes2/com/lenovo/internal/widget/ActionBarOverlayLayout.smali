.class public Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/lenovo/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;,
        Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/lenovo/internal/widget/ActionBarOverlayLayout$1;,
        Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;,
        Lcom/lenovo/internal/widget/ActionBarOverlayLayout$3;,
        Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;
    }
.end annotation


# static fields
.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

.field private mActionBarContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

.field private mActionBarHeight:I

.field private mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

.field private mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

.field private mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private final mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/Scroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mViewPager:Llenovo/view/ViewPager;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static synthetic -get0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Lcom/lenovo/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return p1
.end method

.method static synthetic -set1(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    const v0, 0x10102eb

    .line 167
    const v1, 0x1010059

    .line 165
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 89
    const/16 v0, 0x258

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 96
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 111
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    .line 110
    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 125
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 172
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 89
    const/16 v0, 0x258

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 96
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 111
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    .line 110
    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 125
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 177
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 1

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 672
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 670
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 300
    .local v1, "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 302
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 304
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 305
    const/4 v0, 0x1

    .line 306
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 308
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 309
    const/4 v0, 0x1

    .line 310
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 312
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 313
    const/4 v0, 0x1

    .line 314
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 316
    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/lenovo/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 602
    instance-of v0, p1, Lcom/lenovo/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 603
    check-cast p1, Lcom/lenovo/internal/widget/DecorToolbar;

    .end local p1    # "view":Landroid/view/View;
    return-object p1

    .line 604
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Llenovo/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 605
    check-cast p1, Llenovo/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Llenovo/widget/Toolbar;->getWrapper()Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object v0

    return-object v0

    .line 607
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private haltActionBarHideOffsetAnimations()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 646
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 647
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 644
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 183
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 185
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 188
    const/16 v4, 0x13

    .line 187
    if-ge v1, v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 190
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/Scroller;

    .line 180
    return-void

    :cond_0
    move v1, v3

    .line 184
    goto :goto_0

    :cond_1
    move v2, v3

    .line 187
    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 4

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 662
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 4

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 657
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 667
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 665
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 10
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 676
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/Scroller;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 677
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v9

    .line 678
    .local v9, "finalY":I
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 790
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 368
    instance-of v0, p1, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 844
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 842
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 519
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 520
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-eqz v1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 522
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 524
    .local v0, "top":I
    :goto_1
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v2

    .line 525
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 524
    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 526
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 523
    .end local v0    # "top":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "top":I
    goto :goto_1
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 10
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 323
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v9

    .line 324
    .local v9, "vis":I
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 325
    .local v8, "stable":Z
    :goto_0
    move-object v2, p1

    .line 328
    .local v2, "systemInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    .line 329
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 334
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lcom/lenovo/internal/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 335
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    const/4 v7, 0x1

    .line 337
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 340
    .end local v7    # "changed":Z
    :cond_1
    if-eqz v7, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 348
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 324
    .end local v2    # "systemInsets":Landroid/graphics/Rect;
    .end local v8    # "stable":Z
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "stable":Z
    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 353
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 363
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 358
    new-instance v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 696
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 760
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 766
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 814
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 702
    sparse-switch p1, :sswitch_data_0

    .line 700
    :goto_0
    return-void

    .line 704
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->initProgress()V

    goto :goto_0

    .line 707
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    .line 710
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 702
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 802
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 796
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 256
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 259
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 254
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 196
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 194
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v3

    .line 490
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v8

    .line 491
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 493
    .local v9, "parentRight":I
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v10

    .line 494
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    .line 496
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 497
    invoke-virtual {p0, v5}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 498
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 499
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 501
    .local v6, "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 502
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 504
    .local v4, "height":I
    iget v12, v6, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    .line 506
    .local v1, "childLeft":I
    iget-object v12, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-ne v0, v12, :cond_1

    .line 507
    sub-int v12, v7, v4

    iget v13, v6, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v12, v13

    .line 512
    .local v2, "childTop":I
    :goto_1
    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 496
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 509
    .restart local v1    # "childLeft":I
    .restart local v4    # "height":I
    .restart local v6    # "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .restart local v11    # "width":I
    :cond_1
    iget v12, v6, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    .restart local v2    # "childTop":I
    goto :goto_1

    .line 487
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 375
    const/4 v11, 0x0

    .line 376
    .local v11, "maxHeight":I
    const/4 v12, 0x0

    .line 377
    .local v12, "maxWidth":I
    const/4 v9, 0x0

    .line 379
    .local v9, "childState":I
    const/4 v15, 0x0

    .line 380
    .local v15, "topInset":I
    const/4 v8, 0x0

    .line 382
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 385
    .local v10, "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 384
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 386
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    .line 388
    invoke-static {v9, v1}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 396
    .restart local v10    # "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 395
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 397
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    .line 399
    invoke-static {v9, v1}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 403
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/lenovo/internal/widget/ViewUtils;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v16

    .line 404
    .local v16, "vis":I
    move/from16 v0, v16

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    const/4 v13, 0x1

    .line 406
    .local v13, "stable":Z
    :goto_0
    if-eqz v13, :cond_8

    .line 409
    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 410
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v14

    .line 412
    .local v14, "tabs":Landroid/view/View;
    if-eqz v14, :cond_1

    .line 414
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v15, v1

    .line 423
    .end local v14    # "tabs":Landroid/view/View;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/lenovo/internal/widget/DecorToolbar;->isSplit()Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 425
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 426
    if-eqz v13, :cond_9

    .line 427
    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 438
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 440
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_4

    if-eqz v13, :cond_a

    .line 449
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 452
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/lenovo/internal/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    .line 463
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 464
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 466
    .restart local v10    # "lp":Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 465
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 467
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ContentFrameLayout;->getMeasuredState()I

    move-result v1

    .line 469
    invoke-static {v9, v1}, Lcom/lenovo/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 481
    move/from16 v0, p1

    invoke-static {v12, v0, v9}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 483
    shl-int/lit8 v2, v9, 0x10

    .line 482
    move/from16 v0, p2

    invoke-static {v11, v0, v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 480
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 372
    return-void

    .line 404
    .end local v13    # "stable":Z
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "stable":Z
    goto/16 :goto_0

    .line 417
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v15

    goto/16 :goto_1

    .line 429
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v8

    goto/16 :goto_2

    .line 441
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v1}, Llenovo/view/ViewPager;->isUpdateMenuWhenScroller()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mViewPager:Llenovo/view/ViewPager;

    invoke-virtual {v1}, Llenovo/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 445
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v1, 0x1

    .line 577
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 580
    invoke-direct {p0, p2, p3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    .line 585
    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 586
    return v1

    .line 578
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 556
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 557
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 555
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 545
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 546
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 547
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 548
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 544
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    const/4 v1, 0x0

    .line 537
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    :cond_0
    return v1

    .line 540
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 563
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-eqz v0, :cond_2

    .line 570
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 561
    :cond_1
    return-void

    .line 564
    :cond_2
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 565
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    goto :goto_0

    .line 567
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 6
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x0

    .line 263
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 264
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 267
    iget v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v4, p1

    .line 268
    .local v1, "diff":I
    iput p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 269
    and-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_3

    const/4 v0, 0x1

    .line 270
    .local v0, "barVisible":Z
    :goto_0
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 271
    .local v2, "stable":Z
    :goto_1
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v4, :cond_1

    .line 275
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_5

    :goto_2
    invoke-interface {v4, v3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 276
    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    .line 277
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    .line 279
    :cond_1
    :goto_3
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_2

    .line 280
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_2

    .line 282
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 262
    :cond_2
    return-void

    .line 269
    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "barVisible":Z
    goto :goto_0

    .line 270
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "stable":Z
    goto :goto_1

    .line 275
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 276
    :cond_6
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 290
    iput p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 291
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 288
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 591
    const v0, 0x90c0002

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ContentFrameLayout;

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mContent:Lcom/lenovo/internal/widget/ContentFrameLayout;

    .line 592
    const v0, 0x90c0017

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    .line 593
    const v0, 0x90c0016

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/lenovo/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    .line 594
    const v0, 0x90c0003

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    .line 595
    const v0, 0x90c0013

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llenovo/view/ViewPager;

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mViewPager:Llenovo/view/ViewPager;

    .line 596
    const v0, 0x90c000b

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 589
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 838
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 836
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 831
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 832
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 830
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 633
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    .line 634
    .local v2, "topHeight":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 635
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/lenovo/internal/widget/ActionBarContainer;

    neg-int v4, p1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 636
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 638
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 639
    .local v1, "fOffset":F
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/lenovo/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 640
    .local v0, "bOffset":I
    iget-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 631
    .end local v0    # "bOffset":I
    .end local v1    # "fOffset":F
    :cond_0
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 201
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v2, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v1, v2}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 205
    iget v1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 206
    iget v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 207
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 208
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->requestApplyInsets(Landroid/view/View;)V

    .line 199
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasNonEmbeddedTabs"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 229
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    .line 614
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 615
    if-nez p1, :cond_0

    .line 616
    invoke-static {p0}, Lcom/lenovo/internal/widget/ViewUtils;->stopNestedScroll(Landroid/view/View;)V

    .line 617
    invoke-direct {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 772
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(I)V

    .line 770
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 778
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 776
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 784
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setLogo(I)V

    .line 782
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 826
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 824
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 820
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 818
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 3
    .param p1, "overlayMode"    # Z

    .prologue
    const/4 v0, 0x0

    .line 214
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 222
    const/16 v2, 0x13

    .line 221
    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 220
    :cond_0
    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 213
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 233
    return-void
.end method

.method public setUiOptions(I)V
    .locals 6
    .param p1, "uiOptions"    # I

    .prologue
    .line 717
    const/4 v0, 0x0

    .line 719
    .local v0, "splitActionBar":Z
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 720
    .local v2, "splitWhenNarrow":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 724
    const/4 v0, 0x1

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 728
    if-eqz v0, :cond_1

    .line 729
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v4}, Lcom/lenovo/internal/widget/DecorToolbar;->canSplit()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 730
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-interface {v4, v5}, Lcom/lenovo/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 731
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v4, v0}, Lcom/lenovo/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 732
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v4, v2}, Lcom/lenovo/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 741
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_2

    .line 743
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 744
    const v5, 0x90a0005

    .line 743
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 745
    .local v1, "splitActionMode":Z
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/lenovo/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v5}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 746
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 747
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 749
    .end local v1    # "splitActionMode":Z
    :cond_2
    const v4, 0x90c0016

    invoke-virtual {p0, v4}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 750
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/lenovo/internal/widget/ActionBarView;

    if-eqz v4, :cond_3

    .line 751
    check-cast v3, Lcom/lenovo/internal/widget/ActionBarView;

    .end local v3    # "view":Landroid/view/View;
    iput-object v3, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

    .line 752
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v4, v5}, Lcom/lenovo/internal/widget/ActionBarView;->setContextView(Lcom/lenovo/internal/widget/ActionBarContextView;)V

    .line 753
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {v4, v5}, Lcom/lenovo/internal/widget/ActionBarContextView;->setActionBarView(Lcom/lenovo/internal/widget/ActionBarView;)V

    .line 716
    :cond_3
    return-void

    .line 719
    .end local v2    # "splitWhenNarrow":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "splitWhenNarrow":Z
    goto :goto_0

    .line 736
    :cond_5
    if-eqz v0, :cond_1

    .line 737
    const-string/jumbo v4, "ActionBarOverlayLayout"

    const-string/jumbo v5, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/lenovo/internal/app/WindowCallback;

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 684
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setWindowCallback(Lcom/lenovo/internal/app/WindowCallback;)V

    .line 682
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 690
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 688
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 807
    invoke-virtual {p0}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 808
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/lenovo/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/lenovo/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
