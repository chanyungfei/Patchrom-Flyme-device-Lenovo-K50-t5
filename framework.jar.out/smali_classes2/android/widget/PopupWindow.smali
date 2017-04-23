.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$OnDismissListener;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$1;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DBG:Z

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PopupWindow"


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private final mDrawingLocation:[I

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupHeight:I

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private final mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/PopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/PopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/PopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic -get5(Landroid/widget/PopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic -get6(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0}, Landroid/widget/PopupWindow;->getRelativeAnchorBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "aboveAnchor"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/PopupWindow;->DBG:Z

    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 169
    const v1, 0x10100aa

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 168
    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 275
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 211
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-array v5, v10, [I

    iput-object v5, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 105
    new-array v5, v10, [I

    iput-object v5, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 106
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 125
    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 126
    iput v8, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 127
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 128
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 129
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 130
    iput v9, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 133
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 134
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 136
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 137
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 142
    iput v6, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 145
    iput v6, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 161
    const/16 v5, 0x3e8

    iput v5, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 164
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 166
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 174
    new-instance v5, Landroid/widget/PopupWindow$1;

    invoke-direct {v5, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v5, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 229
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 230
    const-string/jumbo v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 233
    sget-object v5, Lcom/android/internal/R$styleable;->PopupWindow:[I

    .line 232
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 235
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 236
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 241
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 243
    .local v1, "animStyle":I
    const v5, 0x10302ec

    if-ne v1, v5, :cond_0

    .line 244
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 253
    .end local v1    # "animStyle":I
    :goto_0
    const/4 v5, 0x4

    .line 252
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v3

    .line 255
    .local v3, "enterTransition":Landroid/transition/Transition;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    const/4 v5, 0x5

    .line 256
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v4

    .line 262
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 265
    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 266
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    return-void

    .line 246
    .end local v3    # "enterTransition":Landroid/transition/Transition;
    .restart local v1    # "animStyle":I
    :cond_0
    iput v1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 249
    .end local v1    # "animStyle":I
    :cond_1
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 259
    .restart local v3    # "enterTransition":Landroid/transition/Transition;
    :cond_2
    if-nez v3, :cond_3

    const/4 v4, 0x0

    .local v4, "exitTransition":Landroid/transition/Transition;
    goto :goto_1

    .end local v4    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v4

    .local v4, "exitTransition":Landroid/transition/Transition;
    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 105
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 125
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 126
    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 127
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 128
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 129
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 130
    iput v4, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 133
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 134
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 136
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 137
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 142
    iput v3, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 145
    iput v3, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 161
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 164
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 166
    iput v4, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 174
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 337
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 340
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 341
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 342
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 343
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 334
    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1382
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1383
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1384
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    .line 1385
    const v0, 0x10302e4

    .line 1384
    :goto_0
    return v0

    .line 1386
    :cond_0
    const v0, 0x10302e3

    goto :goto_0

    .line 1388
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1390
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1335
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1343
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1344
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1346
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_a

    .line 1347
    or-int/lit8 p1, p1, 0x8

    .line 1348
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1349
    or-int/2addr p1, v2

    .line 1354
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1355
    or-int/lit8 p1, p1, 0x10

    .line 1357
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1358
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1360
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1361
    or-int/lit16 p1, p1, 0x200

    .line 1363
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1364
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1366
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1367
    or-int/lit16 p1, p1, 0x100

    .line 1369
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1370
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1372
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1373
    or-int/lit8 p1, p1, 0x20

    .line 1375
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_9

    .line 1376
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1378
    :cond_9
    return p1

    .line 1351
    :cond_a
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1352
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 1211
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1213
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 1214
    const/4 v1, -0x2

    .line 1219
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1220
    .local v0, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1221
    const/4 v4, -0x1

    .line 1220
    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1222
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1224
    return-object v0

    .line 1216
    .end local v0    # "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    .end local v1    # "height":I
    .end local v3    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1234
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1236
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 1237
    const/4 v1, -0x2

    .line 1242
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1243
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1244
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1245
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1247
    return-object v0

    .line 1239
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "height":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1297
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1303
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1304
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1305
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1306
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1307
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1308
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1310
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1311
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1316
    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_1

    .line 1317
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1322
    :goto_1
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_2

    .line 1323
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1329
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1331
    return-object v0

    .line 1313
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    .line 1319
    :cond_1
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1325
    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1682
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1686
    :cond_0
    if-eqz p2, :cond_1

    .line 1687
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1692
    :cond_1
    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1693
    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1694
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1678
    return-void
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 20
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 1411
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1412
    .local v2, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1413
    .local v3, "anchorWidth":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1414
    sub-int p4, p4, v2

    .line 1417
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    add-int v17, v17, p3

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    add-int v17, v17, v2

    add-int v17, v17, p4

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1421
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v17

    move/from16 v0, p5

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v17

    and-int/lit8 v6, v17, 0x7

    .line 1423
    .local v6, "hgrav":I
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v6, v0, :cond_1

    .line 1426
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v18, v18, v3

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1429
    :cond_1
    const/4 v8, 0x0

    .line 1431
    .local v8, "onTop":Z
    const/16 v17, 0x33

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1434
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1435
    .local v4, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    add-int v17, v17, v2

    add-int v13, v17, p4

    .line 1438
    .local v13, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    .line 1439
    .local v12, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v17, v0

    add-int v17, v17, v13

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    .line 1440
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v18

    sub-int v17, v17, v18

    if-lez v17, :cond_5

    .line 1444
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1445
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v14

    .line 1446
    .local v14, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v15

    .line 1447
    .local v15, "scrollY":I
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v17, v0

    add-int v17, v17, v14

    add-int v17, v17, p3

    .line 1448
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v18, v0

    add-int v18, v18, v15

    add-int v18, v18, v2

    add-int v18, v18, p4

    .line 1447
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1449
    .local v10, "r":Landroid/graphics/Rect;
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1454
    .end local v10    # "r":Landroid/graphics/Rect;
    .end local v14    # "scrollX":I
    .end local v15    # "scrollY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    add-int v17, v17, p3

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    add-int v17, v17, v2

    add-int v17, v17, p4

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1459
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v6, v0, :cond_4

    .line 1460
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v18, v0

    sub-int v18, v18, v3

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1464
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1465
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    sub-int v17, v17, v2

    sub-int v17, v17, p4

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v18, v18, p4

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    .line 1465
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    const/4 v8, 0x1

    .line 1467
    :goto_0
    if-eqz v8, :cond_b

    .line 1468
    const/16 v17, 0x53

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1469
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    add-int v17, v17, p4

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1475
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1477
    const/4 v7, 0x0

    .line 1478
    .local v7, "leftOffset":I
    const/16 v16, 0x0

    .line 1479
    .local v16, "topOffset":I
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1480
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 1481
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1484
    :cond_6
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 1485
    .local v5, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v18, v0

    add-int v11, v17, v18

    .line 1486
    .local v11, "right":I
    if-le v11, v5, :cond_7

    .line 1487
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v0

    sub-int v18, v11, v5

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1490
    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 1491
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1492
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1495
    :cond_8
    if-eqz v8, :cond_c

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    add-int v17, v17, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    sub-int v9, v17, v16

    .line 1497
    .local v9, "popupTop":I
    if-gez v9, :cond_9

    .line 1498
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    add-int v17, v17, v9

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1505
    .end local v5    # "displayFrameWidth":I
    .end local v7    # "leftOffset":I
    .end local v9    # "popupTop":I
    .end local v11    # "right":I
    .end local v16    # "topOffset":I
    :cond_9
    :goto_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v17, v0

    const/high16 v18, 0x10000000

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1507
    return v8

    .line 1465
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1471
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    add-int v17, v17, v2

    add-int v17, v17, p4

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    .line 1501
    .restart local v5    # "displayFrameWidth":I
    .restart local v7    # "leftOffset":I
    .restart local v11    # "right":I
    .restart local v16    # "topOffset":I
    :cond_c
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v18, v16

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private getRelativeAnchorBounds()Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1659
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1660
    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1661
    .local v3, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    .line 1662
    :cond_0
    return-object v6

    .line 1659
    .end local v3    # "decor":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .local v0, "anchor":Landroid/view/View;
    goto :goto_0

    .line 1665
    .end local v0    # "anchor":Landroid/view/View;
    .restart local v3    # "decor":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 1666
    .local v1, "anchorLocation":[I
    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v4

    .line 1669
    .local v4, "popupLocation":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v2, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1670
    .local v2, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    aget v6, v4, v7

    sub-int/2addr v5, v6

    aget v6, v1, v8

    aget v7, v4, v8

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1671
    return-object v2
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 5
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    .line 355
    if-eqz p1, :cond_2

    const/high16 v3, 0x10f0000

    if-eq p1, v3, :cond_2

    .line 356
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 357
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 358
    .local v2, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_2

    .line 359
    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 360
    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 361
    .local v1, "isEmpty":Z
    :goto_0
    if-nez v1, :cond_2

    .line 362
    return-object v2

    .line 360
    .end local v1    # "isEmpty":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isEmpty":Z
    goto :goto_0

    .line 359
    .end local v1    # "isEmpty":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isEmpty":Z
    goto :goto_0

    .line 366
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "isEmpty":Z
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_2
    return-object v4
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1259
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1263
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1264
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1266
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1268
    sget-boolean v1, Landroid/widget/PopupWindow;->DBG:Z

    if-eqz v1, :cond_1

    .line 1269
    const-string/jumbo v1, "PopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invokePopup: mDecorView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1270
    const-string/jumbo v3, ", WindowManager.LayoutParams = "

    .line 1269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1275
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_2

    .line 1276
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1258
    :cond_2
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, 0x1

    .line 1167
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1168
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1167
    :cond_1
    iget-object v2, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 1174
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v2, :cond_2

    .line 1175
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v2}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1180
    :cond_2
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 1181
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1182
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1190
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v3, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setElevation(F)V

    .line 1194
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1195
    .local v0, "surfaceInset":I
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1196
    iput-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1199
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1198
    :goto_1
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1200
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1201
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1166
    return-void

    .line 1184
    .end local v0    # "surfaceInset":I
    :cond_3
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    goto :goto_0

    .line 1199
    .restart local v0    # "surfaceInset":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 1976
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1978
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1980
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1981
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1982
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1985
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1986
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1987
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 1975
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1281
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1283
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1284
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1280
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1965
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1966
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1967
    :goto_0
    if-eqz v0, :cond_0

    .line 1968
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1969
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1972
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1964
    return-void

    .line 1966
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "anchor":Landroid/view/View;
    goto :goto_0
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 19
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1903
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1904
    :cond_0
    return-void

    .line 1907
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    .line 1908
    .local v16, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_8

    :cond_2
    const/4 v15, 0x1

    .line 1909
    .local v15, "needsUpdate":Z
    :goto_0
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_9

    .line 1910
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1917
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    .line 1918
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_b

    .line 1919
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1923
    :goto_2
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_c

    .line 1924
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1931
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1932
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v17, v0

    .line 1933
    .local v17, "x":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v18, v0

    .line 1936
    .local v18, "y":I
    const/4 v14, 0x0

    .line 1937
    .local v14, "forceUpdate":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v4, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1938
    .local v13, "finalWidth":I
    :goto_4
    const/4 v4, -0x1

    move/from16 v0, p6

    if-eq v0, v4, :cond_6

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v4, v13, :cond_6

    .line 1939
    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1940
    const/4 v14, 0x1

    .line 1943
    :cond_6
    if-eqz p2, :cond_e

    .line 1944
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1951
    :goto_5
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v18

    if-eq v0, v4, :cond_f

    :cond_7
    const/4 v12, 0x1

    :goto_6
    move-object/from16 v7, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1901
    return-void

    .line 1908
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "finalWidth":I
    .end local v14    # "forceUpdate":Z
    .end local v15    # "needsUpdate":Z
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_8
    const/4 v15, 0x0

    .restart local v15    # "needsUpdate":Z
    goto/16 :goto_0

    .line 1909
    :cond_9
    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v4, :cond_3

    .line 1911
    :cond_a
    if-eqz v15, :cond_4

    .line 1913
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1914
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto/16 :goto_1

    .line 1921
    :cond_b
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto/16 :goto_2

    .line 1926
    :cond_c
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto/16 :goto_3

    .line 1937
    .restart local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v14    # "forceUpdate":Z
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    :cond_d
    move/from16 v13, p6

    .restart local v13    # "finalWidth":I
    goto :goto_4

    .line 1946
    :cond_e
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1947
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 1946
    invoke-direct/range {v4 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    :cond_f
    move v12, v14

    .line 1951
    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 1124
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 1125
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1127
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1132
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1138
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 9

    .prologue
    .line 1597
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    if-eqz v7, :cond_1

    .line 1598
    :cond_0
    return-void

    .line 1601
    :cond_1
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1602
    .local v3, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1605
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1606
    .local v1, "contentParent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    move-object v0, v1

    .line 1607
    check-cast v0, Landroid/view/ViewGroup;

    .line 1613
    :goto_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1615
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1616
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1618
    iget-object v5, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 1619
    .local v5, "exitTransition":Landroid/transition/Transition;
    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1621
    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1622
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1623
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1627
    iget v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1628
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v8, -0x20001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1631
    :cond_2
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7, v3, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1633
    invoke-direct {p0}, Landroid/widget/PopupWindow;->getRelativeAnchorBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1634
    .local v4, "epicenter":Landroid/graphics/Rect;
    new-instance v7, Landroid/widget/PopupWindow$2;

    invoke-direct {v7, p0, v4}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v7}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1640
    new-instance v7, Landroid/widget/PopupWindow$3;

    invoke-direct {v7, p0, v3, v0, v2}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v3, v5, v7}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V

    .line 1651
    .end local v4    # "epicenter":Landroid/graphics/Rect;
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1653
    iget-object v7, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v7, :cond_3

    .line 1654
    iget-object v7, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v7}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1596
    :cond_3
    return-void

    .line 1609
    .end local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_4
    const/4 v0, 0x0

    .local v0, "contentHolder":Landroid/view/ViewGroup;
    goto :goto_0

    .line 1647
    .end local v0    # "contentHolder":Landroid/view/ViewGroup;
    .restart local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_5
    invoke-direct {p0, v3, v0, v2}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 11
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 1557
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1558
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1560
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1561
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1563
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1565
    .local v1, "bottomEdge":I
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1566
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingByWinToken(Landroid/os/IBinder;)Z

    move-result v8

    .line 1565
    if-eqz v8, :cond_0

    .line 1567
    const-string/jumbo v8, "PopupWindow"

    const-string/jumbo v9, "getMaxAvailableHeight: floating window ignore button decoration!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const/4 p3, 0x0

    .line 1571
    .end local p3    # "ignoreBottomDecorations":Z
    :cond_0
    if-eqz p3, :cond_1

    .line 1572
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1573
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1575
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_1
    aget v8, v0, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v8, v1, v8

    sub-int v3, v8, p2

    .line 1576
    .local v3, "distanceToBottom":I
    aget v8, v0, v10

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int v4, v8, p2

    .line 1579
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1580
    .local v6, "returnedHeight":I
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 1581
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1582
    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v6, v8

    .line 1586
    :cond_2
    if-lez v6, :cond_3

    .end local v6    # "returnedHeight":I
    :goto_0
    return v6

    .restart local v6    # "returnedHeight":I
    :cond_3
    move v6, v7

    goto :goto_0
.end method

.method public getOverlapAnchor()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1156
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 987
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 752
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 753
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 755
    :cond_1
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 741
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 740
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 488
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 487
    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 824
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 823
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 389
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 400
    iget-object v5, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 401
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 404
    .local v4, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v5, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 408
    .local v0, "aboveAnchorStateIndex":I
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 409
    .local v2, "count":I
    const/4 v1, -0x1

    .line 410
    .local v1, "belowAnchorStateIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 411
    if-eq v3, v0, :cond_2

    .line 412
    move v1, v3

    .line 419
    :cond_0
    if-eq v0, v6, :cond_3

    if-eq v1, v6, :cond_3

    .line 420
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 421
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 388
    .end local v0    # "aboveAnchorStateIndex":I
    .end local v1    # "belowAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    :goto_1
    return-void

    .line 410
    .restart local v0    # "aboveAnchorStateIndex":I
    .restart local v1    # "belowAnchorStateIndex":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :cond_3
    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 424
    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 730
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 731
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 729
    return-void

    .line 731
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 720
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 719
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    return-void

    .line 518
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 520
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 524
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 532
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-eqz v0, :cond_4

    .line 513
    :cond_3
    :goto_0
    return-void

    .line 536
    :cond_4
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 537
    const/16 v1, 0x16

    .line 536
    if-lt v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 446
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 445
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 347
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 346
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 351
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 350
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 578
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 577
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 926
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 925
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 469
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 604
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 603
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 795
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 794
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 841
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 840
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1703
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1702
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 691
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 690
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0
    .param p1, "overlapAnchor"    # Z

    .prologue
    .line 966
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 965
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 618
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 617
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 772
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 771
    return-void

    .line 772
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 547
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 546
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 872
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 871
    return-void

    .line 872
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 658
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 657
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 950
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 949
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 901
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 902
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 900
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 854
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 853
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1058
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1057
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 1079
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1078
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 1103
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1104
    :cond_0
    return-void

    .line 1107
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1109
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1111
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1112
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1114
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1115
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1117
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v6

    .line 1118
    .local v6, "aboveAnchor":Z
    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1120
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1102
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1020
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1021
    :cond_0
    return-void

    .line 1024
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1026
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1028
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1029
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1031
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1032
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1035
    if-eqz p2, :cond_2

    .line 1036
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1039
    :cond_2
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1040
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1042
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1019
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1005
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 1004
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    .line 1721
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1722
    :cond_0
    return-void

    .line 1726
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1728
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1730
    .local v3, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1731
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1732
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1733
    const/4 v3, 0x1

    .line 1736
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1737
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1738
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1739
    const/4 v3, 0x1

    .line 1742
    :cond_3
    if-eqz v3, :cond_5

    .line 1743
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1745
    sget-boolean v4, Landroid/widget/PopupWindow;->DBG:Z

    if-eqz v4, :cond_4

    .line 1746
    const-string/jumbo v4, "PopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update1: mDecorView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1747
    const-string/jumbo v6, ", WindowManager.LayoutParams = "

    .line 1746
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_4
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1720
    :cond_5
    return-void
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1765
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1766
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1763
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1782
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1781
    return-void
.end method

.method public update(IIIIZ)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1801
    if-ltz p3, :cond_0

    .line 1802
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1803
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1806
    :cond_0
    if-ltz p4, :cond_1

    .line 1807
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1808
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1811
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1812
    :cond_2
    return-void

    .line 1816
    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v6}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1818
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1820
    .local v5, "update":Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_c

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1821
    .local v1, "finalWidth":I
    :goto_0
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1822
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1823
    const/4 v5, 0x1

    .line 1826
    .end local v5    # "update":Z
    :cond_4
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_d

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1827
    .local v0, "finalHeight":I
    :goto_1
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1828
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1829
    const/4 v5, 0x1

    .line 1832
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1833
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1834
    const/4 v5, 0x1

    .line 1837
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1838
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1839
    const/4 v5, 0x1

    .line 1842
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1843
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1844
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1845
    const/4 v5, 0x1

    .line 1848
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1849
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1850
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1851
    const/4 v5, 0x1

    .line 1854
    :cond_9
    if-eqz v5, :cond_b

    .line 1855
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1857
    sget-boolean v6, Landroid/widget/PopupWindow;->DBG:Z

    if-eqz v6, :cond_a

    .line 1858
    const-string/jumbo v6, "PopupWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update2: mDecorView = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1859
    const-string/jumbo v8, ", WindowManager.LayoutParams = "

    .line 1858
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_a
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1800
    :cond_b
    return-void

    .line 1820
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    .restart local v5    # "update":Z
    :cond_c
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .restart local v1    # "finalWidth":I
    goto :goto_0

    .line 1826
    .end local v5    # "update":Z
    :cond_d
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .restart local v0    # "finalHeight":I
    goto :goto_1
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1877
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1876
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    .line 1897
    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1896
    return-void
.end method
