.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$SavedState;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$1;,
        Lcom/android/internal/widget/ActionBarView$2;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private final mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private final mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private final mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private final mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 138
    const v0, 0x104047d

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 142
    new-instance v0, Lcom/android/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/android/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 167
    sget-object v0, Lcom/android/internal/R$styleable;->ActionBar:[I

    .line 168
    const v1, 0x10102ce

    .line 167
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 170
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 172
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 173
    const/16 v0, 0x9

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 174
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 180
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/16 v0, 0x10

    .line 181
    const v1, 0x1090018

    .line 179
    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 184
    .local v9, "homeResId":I
    const v0, 0x109001b

    .line 183
    invoke-virtual {v10, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 191
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 190
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 196
    .local v11, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 202
    const/16 v0, 0xb

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 203
    const/16 v0, 0xc

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 204
    invoke-virtual {v7, v12, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 206
    const/16 v0, 0xe

    .line 205
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 208
    const/16 v0, 0xf

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 209
    const/16 v0, 0x11

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 211
    const/16 v0, 0x8

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 213
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 214
    .local v8, "customNavId":I
    if-eqz v8, :cond_1

    .line 215
    invoke-virtual {v10, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 216
    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 217
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 220
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 222
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    const v3, 0x102002c

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-virtual {p0, v12}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 161
    :cond_2
    return-void
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 579
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 589
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 590
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 591
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 593
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 594
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 596
    aput-object v3, v5, v6

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    .line 595
    const v6, 0x1040480

    .line 594
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "result":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 582
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 583
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 585
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104047c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 598
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    .line 599
    aput-object v3, v5, v6

    aput-object v0, v5, v7

    .line 598
    const v6, 0x104047f

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1

    .line 603
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 445
    if-eqz p1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 447
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 444
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 818
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    .line 819
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 820
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109001a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 822
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x10202e7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 823
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x10202e8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 825
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 829
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_2

    .line 833
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 835
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 836
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 841
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 842
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 843
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 842
    if-eqz v1, :cond_5

    .line 845
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 817
    :goto_0
    return-void

    .line 847
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .prologue
    .line 544
    if-eqz p2, :cond_0

    .line 545
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 552
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 558
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 543
    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 508
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 509
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    .line 512
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 513
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 514
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    .end local v0    # "visible":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 507
    return-void

    .line 513
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "visible":Z
    goto :goto_0

    .line 511
    .end local v0    # "visible":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_0

    .line 514
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z

    .prologue
    .line 562
    if-nez p1, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 561
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public canSplit()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 464
    :goto_0
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 461
    :cond_0
    return-void

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 796
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1268
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1273
    if-nez p1, :cond_0

    .line 1274
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1276
    :cond_0
    return-object p1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 789
    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 457
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 457
    :cond_0
    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 295
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 296
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 295
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10203ad

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 294
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 287
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10203ae

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 286
    return-void
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 863
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 864
    return v4

    .line 867
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 868
    .local v2, "titleLayout":Landroid/text/Layout;
    if-nez v2, :cond_1

    .line 869
    return v4

    .line 872
    :cond_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 873
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 874
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 875
    const/4 v3, 0x1

    return v3

    .line 873
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 878
    :cond_3
    return v4
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 237
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 240
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 241
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 245
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 249
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v1, :cond_2

    .line 250
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_4

    .line 254
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 255
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3

    .line 256
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 257
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 236
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 272
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 801
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 803
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 804
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 806
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 808
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 809
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 810
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 800
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 39
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1103
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1105
    .local v7, "contentHeight":I
    if-gtz v7, :cond_0

    .line 1107
    return-void

    .line 1110
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->isLayoutRtl()Z

    move-result v8

    .line 1111
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_b

    const/16 v22, 0x1

    .line 1112
    .local v22, "direction":I
    :goto_0
    if-eqz v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v11

    .line 1115
    .local v11, "menuStart":I
    :goto_1
    if-eqz v8, :cond_d

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v5, v3, v4

    .local v5, "x":I
    move/from16 v36, v5

    .line 1116
    .end local v5    # "x":I
    .local v36, "x":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    .line 1118
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    .line 1119
    .local v26, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    .line 1120
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_f

    const/16 v32, 0x1

    .line 1121
    .local v32, "showTitle":Z
    :goto_4
    const/16 v33, 0x0

    .line 1122
    .local v33, "startOffset":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_1

    .line 1123
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_11

    .line 1124
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v33

    .line 1131
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 1132
    move/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    move-object/from16 v3, p0

    .line 1131
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int v5, v36, v3

    .line 1133
    .end local v36    # "x":I
    .restart local v5    # "x":I
    move/from16 v0, v33

    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 1136
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 1158
    :cond_2
    :goto_6
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_3

    .line 1159
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v8, :cond_14

    const/4 v14, 0x0

    :goto_7
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1163
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_4

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    .line 1165
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v8, :cond_15

    const/4 v14, 0x0

    :goto_8
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1169
    :cond_4
    const/16 v20, 0x0

    .line 1170
    .local v20, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_16

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1176
    .end local v20    # "customView":Landroid/view/View;
    :cond_5
    :goto_9
    if-eqz v20, :cond_9

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v27

    .line 1178
    .local v27, "layoutDirection":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 1179
    .local v28, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v28

    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_17

    move-object/from16 v15, v28

    .line 1180
    check-cast v15, Landroid/app/ActionBar$LayoutParams;

    .line 1181
    :goto_a
    if-eqz v15, :cond_18

    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v23, v0

    .line 1182
    .local v23, "gravity":I
    :goto_b
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1184
    .local v29, "navWidth":I
    const/16 v34, 0x0

    .line 1185
    .local v34, "topMargin":I
    const/16 v16, 0x0

    .line 1186
    .local v16, "bottomMargin":I
    if-eqz v15, :cond_6

    .line 1187
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1188
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1189
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v34, v0

    .line 1190
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    .line 1193
    :cond_6
    const v3, 0x800007

    and-int v25, v23, v3

    .line 1195
    .local v25, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_1c

    .line 1196
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v18, v3, 0x2

    .line 1197
    .local v18, "centeredLeft":I
    if-eqz v8, :cond_1a

    .line 1198
    add-int v19, v18, v29

    .line 1199
    .local v19, "centeredStart":I
    move/from16 v17, v18

    .line 1200
    .local v17, "centeredEnd":I
    move/from16 v0, v19

    if-le v0, v5, :cond_19

    .line 1201
    const/16 v25, 0x5

    .line 1218
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_7
    :goto_c
    const/16 v37, 0x0

    .line 1219
    .local v37, "xpos":I
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1231
    :goto_d
    :pswitch_1
    and-int/lit8 v35, v23, 0x70

    .line 1233
    .local v35, "vgravity":I
    if-nez v23, :cond_8

    .line 1234
    const/16 v35, 0x10

    .line 1237
    :cond_8
    const/16 v38, 0x0

    .line 1238
    .local v38, "ypos":I
    sparse-switch v35, :sswitch_data_0

    .line 1252
    :goto_e
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1253
    .local v21, "customWidth":I
    add-int v3, v37, v21

    .line 1254
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v38

    .line 1253
    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1255
    move/from16 v0, v21

    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1258
    .end local v16    # "bottomMargin":I
    .end local v21    # "customWidth":I
    .end local v23    # "gravity":I
    .end local v25    # "hgravity":I
    .end local v27    # "layoutDirection":I
    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v29    # "navWidth":I
    .end local v34    # "topMargin":I
    .end local v35    # "vgravity":I
    .end local v37    # "xpos":I
    .end local v38    # "ypos":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_a

    .line 1259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v24, v3, 0x2

    .line 1261
    .local v24, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v0, v24

    neg-int v9, v0

    .line 1262
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    .line 1261
    move/from16 v0, v24

    invoke-virtual {v3, v4, v9, v10, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 1102
    .end local v24    # "halfProgressHeight":I
    :cond_a
    return-void

    .line 1111
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v11    # "menuStart":I
    .end local v22    # "direction":I
    .end local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v32    # "showTitle":Z
    .end local v33    # "startOffset":I
    :cond_b
    const/16 v22, -0x1

    .restart local v22    # "direction":I
    goto/16 :goto_0

    .line 1112
    :cond_c
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v11, v3, v4

    .restart local v11    # "menuStart":I
    goto/16 :goto_1

    .line 1115
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v5

    .restart local v5    # "x":I
    move/from16 v36, v5

    .end local v5    # "x":I
    .restart local v36    # "x":I
    goto/16 :goto_2

    .line 1118
    .restart local v6    # "y":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    .restart local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    goto/16 :goto_3

    .line 1120
    :cond_f
    const/16 v32, 0x0

    .restart local v32    # "showTitle":Z
    goto/16 :goto_4

    .line 1119
    .end local v32    # "showTitle":Z
    :cond_10
    const/16 v32, 0x0

    .restart local v32    # "showTitle":Z
    goto/16 :goto_4

    .line 1125
    .restart local v33    # "startOffset":I
    :cond_11
    if-eqz v32, :cond_1

    .line 1126
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v33

    goto/16 :goto_5

    .line 1140
    .end local v36    # "x":I
    .restart local v5    # "x":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 1141
    if-eqz v32, :cond_12

    .line 1142
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1144
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1145
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_6

    .line 1149
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_2

    .line 1150
    if-eqz v32, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1151
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1152
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_6

    .line 1159
    :cond_14
    const/4 v14, 0x1

    goto/16 :goto_7

    .line 1165
    :cond_15
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 1172
    .restart local v20    # "customView":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v20, v0

    .local v20, "customView":Landroid/view/View;
    goto/16 :goto_9

    .line 1180
    .end local v20    # "customView":Landroid/view/View;
    .restart local v27    # "layoutDirection":I
    .restart local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    const/4 v15, 0x0

    .local v15, "ablp":Landroid/app/ActionBar$LayoutParams;
    goto/16 :goto_a

    .line 1181
    .end local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_18
    const v23, 0x800013

    .restart local v23    # "gravity":I
    goto/16 :goto_b

    .line 1202
    .restart local v16    # "bottomMargin":I
    .restart local v17    # "centeredEnd":I
    .restart local v18    # "centeredLeft":I
    .restart local v19    # "centeredStart":I
    .restart local v25    # "hgravity":I
    .restart local v29    # "navWidth":I
    .restart local v34    # "topMargin":I
    :cond_19
    move/from16 v0, v17

    if-ge v0, v11, :cond_7

    .line 1203
    const/16 v25, 0x3

    goto/16 :goto_c

    .line 1206
    .end local v17    # "centeredEnd":I
    .end local v19    # "centeredStart":I
    :cond_1a
    move/from16 v19, v18

    .line 1207
    .restart local v19    # "centeredStart":I
    add-int v17, v18, v29

    .line 1208
    .restart local v17    # "centeredEnd":I
    move/from16 v0, v19

    if-ge v0, v5, :cond_1b

    .line 1209
    const/16 v25, 0x3

    goto/16 :goto_c

    .line 1210
    :cond_1b
    move/from16 v0, v17

    if-le v0, v11, :cond_7

    .line 1211
    const/16 v25, 0x5

    goto/16 :goto_c

    .line 1214
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_1c
    if-nez v23, :cond_7

    .line 1215
    const v25, 0x800003

    goto/16 :goto_c

    .line 1221
    .restart local v37    # "xpos":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v37, v3, 0x2

    goto/16 :goto_d

    .line 1224
    :pswitch_5
    if-eqz v8, :cond_1d

    move/from16 v37, v11

    goto/16 :goto_d

    :cond_1d
    move/from16 v37, v5

    goto/16 :goto_d

    .line 1227
    :pswitch_6
    if-eqz v8, :cond_1e

    sub-int v37, v5, v29

    goto/16 :goto_d

    :cond_1e
    sub-int v37, v11, v29

    goto/16 :goto_d

    .line 1240
    .restart local v35    # "vgravity":I
    .restart local v38    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v31

    .line 1241
    .local v31, "paddedTop":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v30, v3, v4

    .line 1242
    .local v30, "paddedBottom":I
    sub-int v3, v30, v31

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v38, v3, 0x2

    goto/16 :goto_e

    .line 1245
    .end local v30    # "paddedBottom":I
    .end local v31    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    add-int v38, v3, v34

    .line 1246
    goto/16 :goto_e

    .line 1248
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v38, v3, v16

    .line 1250
    goto/16 :goto_e

    .line 1136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1219
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1238
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v8

    .line 884
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    move/from16 v45, v0

    if-eqz v45, :cond_5

    .line 885
    const/16 v43, 0x0

    .line 886
    .local v43, "visibleChildren":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v8, :cond_2

    .line 887
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 888
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v45

    if-eqz v45, :cond_1

    .line 890
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-eq v7, v0, :cond_1

    .line 891
    add-int/lit8 v43, v43, 0x1

    .line 886
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 895
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v39

    .line 896
    .local v39, "upChildCount":I
    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 898
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_3

    .line 899
    add-int/lit8 v43, v43, 0x1

    .line 896
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 903
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    if-nez v43, :cond_5

    .line 905
    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 906
    return-void

    .line 910
    .end local v26    # "i":I
    .end local v39    # "upChildCount":I
    .end local v43    # "visibleChildren":I
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v44

    .line 911
    .local v44, "widthMode":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_6

    .line 912
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " can only be used "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 913
    const-string/jumbo v47, "with android:layout_width=\"match_parent\" (or fill_parent)"

    .line 912
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 916
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 917
    .local v18, "heightMode":I
    const/high16 v45, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v45

    if-eq v0, v1, :cond_7

    .line 918
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, " can only be used "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 919
    const-string/jumbo v47, "with android:layout_height=\"wrap_content\""

    .line 918
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 922
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 924
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-ltz v45, :cond_13

    .line 925
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v31, v0

    .line 927
    .local v31, "maxHeight":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v46

    add-int v42, v45, v46

    .line 928
    .local v42, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v34

    .line 929
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v35

    .line 930
    .local v35, "paddingRight":I
    sub-int v17, v31, v42

    .line 931
    .local v17, "height":I
    const/high16 v45, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 932
    .local v9, "childSpecHeight":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 934
    .local v16, "exactHeightSpec":I
    sub-int v45, v10, v34

    sub-int v6, v45, v35

    .line 935
    .local v6, "availableWidth":I
    div-int/lit8 v28, v6, 0x2

    .line 936
    .local v28, "leftOfCenter":I
    move/from16 v36, v28

    .line 938
    .local v36, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_15

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x8

    if-eqz v45, :cond_14

    const/16 v37, 0x1

    .line 941
    .local v37, "showTitle":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 943
    .local v20, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 945
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-gez v45, :cond_17

    .line 946
    const/high16 v45, -0x80000000

    move/from16 v0, v45

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 959
    .local v24, "homeWidthSpec":I
    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 961
    const/16 v23, 0x0

    .line 962
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_18

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_18

    .line 964
    :goto_6
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v23

    .line 965
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v45

    add-int v22, v23, v45

    .line 966
    .local v22, "homeOffsetWidth":I
    sub-int v45, v6, v22

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 967
    sub-int v45, v6, v22

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 970
    .end local v22    # "homeOffsetWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_9

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v16

    move/from16 v3, v46

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v45

    sub-int v45, v36, v45

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 975
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_a

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_a

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    .line 978
    const/16 v46, 0x0

    .line 977
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v45

    sub-int v45, v36, v45

    .line 979
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 983
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-nez v45, :cond_b

    .line 984
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_0

    .line 1014
    :cond_b
    :goto_7
    const/4 v15, 0x0

    .line 1015
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_1b

    .line 1016
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1022
    .end local v15    # "customView":Landroid/view/View;
    :cond_c
    :goto_8
    if-eqz v15, :cond_10

    .line 1023
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1024
    .local v30, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v45, v0

    if-eqz v45, :cond_1c

    move-object/from16 v5, v30

    .line 1025
    check-cast v5, Landroid/app/ActionBar$LayoutParams;

    .line 1027
    :goto_9
    const/16 v25, 0x0

    .line 1028
    .local v25, "horizontalMargin":I
    const/16 v41, 0x0

    .line 1029
    .local v41, "verticalMargin":I
    if-eqz v5, :cond_d

    .line 1030
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v45, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v46, v0

    add-int v25, v45, v46

    .line 1031
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v45, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v41, v45, v46

    .line 1037
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_1d

    .line 1038
    const/high16 v12, -0x80000000

    .line 1044
    .local v12, "customNavHeightMode":I
    :goto_a
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v45, v0

    if-ltz v45, :cond_e

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v45, v0

    move/from16 v0, v45

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .end local v17    # "height":I
    :cond_e
    sub-int v45, v17, v41

    .line 1043
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1046
    .local v11, "customNavHeight":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1f

    .line 1047
    const/high16 v14, 0x40000000    # 2.0f

    .line 1049
    .local v14, "customNavWidthMode":I
    :goto_b
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-ltz v45, :cond_20

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    move/from16 v0, v45

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v45

    :goto_c
    sub-int v45, v45, v25

    .line 1048
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1051
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_21

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v45, v0

    :goto_d
    and-int/lit8 v19, v45, 0x7

    .line 1056
    .local v19, "hgrav":I
    const/16 v45, 0x1

    move/from16 v0, v19

    move/from16 v1, v45

    if-ne v0, v1, :cond_f

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_f

    .line 1057
    move/from16 v0, v28

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v45

    mul-int/lit8 v13, v45, 0x2

    .line 1061
    :cond_f
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    .line 1062
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .line 1060
    move/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1063
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v45

    add-int v45, v45, v25

    sub-int v6, v6, v45

    .line 1070
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    add-int v46, v6, v23

    .line 1071
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    const/16 v48, 0x0

    .line 1070
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_11

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v45

    sub-int v45, v28, v45

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1076
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_25

    .line 1077
    const/16 v32, 0x0

    .line 1078
    .local v32, "measuredHeight":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_22

    .line 1079
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    .line 1080
    .local v40, "v":Landroid/view/View;
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getMeasuredHeight()I

    move-result v45

    add-int v33, v45, v42

    .line 1081
    .local v33, "paddedViewHeight":I
    move/from16 v0, v33

    move/from16 v1, v32

    if-le v0, v1, :cond_12

    .line 1082
    move/from16 v32, v33

    .line 1078
    :cond_12
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 925
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v16    # "exactHeightSpec":I
    .end local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v28    # "leftOfCenter":I
    .end local v31    # "maxHeight":I
    .end local v32    # "measuredHeight":I
    .end local v33    # "paddedViewHeight":I
    .end local v34    # "paddingLeft":I
    .end local v35    # "paddingRight":I
    .end local v36    # "rightOfCenter":I
    .end local v37    # "showTitle":Z
    .end local v40    # "v":Landroid/view/View;
    .end local v42    # "verticalPadding":I
    :cond_13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    .restart local v31    # "maxHeight":I
    goto/16 :goto_2

    .line 939
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v28    # "leftOfCenter":I
    .restart local v34    # "paddingLeft":I
    .restart local v35    # "paddingRight":I
    .restart local v36    # "rightOfCenter":I
    .restart local v42    # "verticalPadding":I
    :cond_14
    const/16 v37, 0x0

    .restart local v37    # "showTitle":Z
    goto/16 :goto_3

    .line 938
    .end local v37    # "showTitle":Z
    :cond_15
    const/16 v37, 0x0

    .restart local v37    # "showTitle":Z
    goto/16 :goto_3

    .line 941
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .restart local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    goto/16 :goto_4

    .line 948
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/high16 v46, 0x40000000    # 2.0f

    invoke-static/range {v45 .. v46}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_5

    .line 962
    .restart local v23    # "homeWidth":I
    :cond_18
    if-eqz v37, :cond_8

    goto/16 :goto_6

    .line 986
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_b

    .line 987
    if-eqz v37, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v45, v0

    mul-int/lit8 v27, v45, 0x2

    .line 988
    .local v27, "itemPaddingSize":I
    :goto_f
    sub-int v45, v6, v27

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 989
    sub-int v45, v28, v27

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    .line 991
    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .line 992
    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    .line 990
    invoke-virtual/range {v45 .. v47}, Landroid/widget/LinearLayout;->measure(II)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v29

    .line 994
    .local v29, "listNavWidth":I
    sub-int v45, v6, v29

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 995
    sub-int v45, v28, v29

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_7

    .line 987
    .end local v27    # "itemPaddingSize":I
    .end local v29    # "listNavWidth":I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    .restart local v27    # "itemPaddingSize":I
    goto :goto_f

    .line 999
    .end local v27    # "itemPaddingSize":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_b

    .line 1000
    if-eqz v37, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v45, v0

    mul-int/lit8 v27, v45, 0x2

    .line 1001
    .restart local v27    # "itemPaddingSize":I
    :goto_10
    sub-int v45, v6, v27

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1002
    sub-int v45, v28, v27

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    .line 1004
    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .line 1005
    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    .line 1003
    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v38

    .line 1007
    .local v38, "tabWidth":I
    sub-int v45, v6, v38

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1008
    sub-int v45, v28, v38

    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_7

    .line 1000
    .end local v27    # "itemPaddingSize":I
    .end local v38    # "tabWidth":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    .restart local v27    # "itemPaddingSize":I
    goto :goto_10

    .line 1017
    .end local v27    # "itemPaddingSize":I
    .restart local v15    # "customView":Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x10

    if-eqz v45, :cond_c

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_c

    .line 1019
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .local v15, "customView":Landroid/view/View;
    goto/16 :goto_8

    .line 1025
    .end local v15    # "customView":Landroid/view/View;
    .restart local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    const/4 v5, 0x0

    .local v5, "ablp":Landroid/app/ActionBar$LayoutParams;
    goto/16 :goto_9

    .line 1040
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v41    # "verticalMargin":I
    :cond_1d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1e

    .line 1041
    const/high16 v12, 0x40000000    # 2.0f

    .restart local v12    # "customNavHeightMode":I
    goto/16 :goto_a

    .end local v12    # "customNavHeightMode":I
    :cond_1e
    const/high16 v12, -0x80000000

    .restart local v12    # "customNavHeightMode":I
    goto/16 :goto_a

    .line 1047
    .end local v17    # "height":I
    .restart local v11    # "customNavHeight":I
    :cond_1f
    const/high16 v14, -0x80000000

    .restart local v14    # "customNavWidthMode":I
    goto/16 :goto_b

    :cond_20
    move/from16 v45, v6

    .line 1049
    goto/16 :goto_c

    .line 1051
    .restart local v13    # "customNavWidth":I
    :cond_21
    const v45, 0x800013

    goto/16 :goto_d

    .line 1085
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    .restart local v26    # "i":I
    .restart local v32    # "measuredHeight":I
    :cond_22
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1090
    .end local v26    # "i":I
    .end local v32    # "measuredHeight":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_23

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1094
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_24

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    .line 1096
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v46, v0

    mul-int/lit8 v46, v46, 0x2

    sub-int v46, v10, v46

    const/high16 v47, 0x40000000    # 2.0f

    .line 1095
    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v47

    const/high16 v48, -0x80000000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    .line 1095
    invoke-virtual/range {v45 .. v47}, Landroid/widget/ProgressBar;->measure(II)V

    .line 882
    :cond_24
    return-void

    .line 1087
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_11

    .line 984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    move-object v1, p1

    .line 1295
    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1297
    .local v1, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1299
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    .line 1300
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1301
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1302
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1303
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1307
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1308
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1294
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1281
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1282
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1284
    .local v0, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1285
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1288
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1290
    return-object v0
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 856
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    .line 855
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 851
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 470
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 471
    .local v0, "showCustom":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 474
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 475
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 469
    :cond_1
    return-void

    .line 470
    .end local v0    # "showCustom":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "showCustom":Z
    goto :goto_0
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 1338
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    if-ne v0, p1, :cond_0

    .line 1339
    return-void

    .line 1341
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 1342
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1337
    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1317
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 607
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    const/4 v0, -0x1

    .line 608
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 610
    and-int/lit8 v7, v0, 0x3f

    if-eqz v7, :cond_11

    .line 612
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_0

    .line 613
    and-int/lit8 v7, p1, 0x4

    if-eqz v7, :cond_7

    const/4 v4, 0x1

    .line 614
    .local v4, "setUp":Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 620
    if-eqz v4, :cond_0

    .line 621
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 625
    .end local v4    # "setUp":Z
    :cond_0
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_1

    .line 626
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_8

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_8

    const/4 v3, 0x1

    .line 627
    .local v3, "logoVis":Z
    :goto_2
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_9

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v8, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 630
    .end local v3    # "logoVis":Z
    :cond_1
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_2

    .line 631
    and-int/lit8 v7, p1, 0x8

    if-eqz v7, :cond_a

    .line 632
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 638
    :cond_2
    :goto_4
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_b

    const/4 v5, 0x1

    .line 639
    .local v5, "showHome":Z
    :goto_5
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_c

    const/4 v1, 0x1

    .line 640
    .local v1, "homeAsUp":Z
    :goto_6
    if-nez v5, :cond_d

    move v6, v1

    .line 641
    :goto_7
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 643
    if-nez v5, :cond_3

    if-eqz v6, :cond_e

    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v7, :cond_e

    .line 644
    const/4 v2, 0x0

    .line 645
    .local v2, "homeVis":I
    :goto_8
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 647
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 648
    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_f

    .line 649
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 655
    :cond_4
    :goto_9
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_5

    .line 656
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 657
    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_10

    .line 658
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 659
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 666
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 672
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    :goto_b
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 606
    return-void

    .line 607
    .end local v0    # "flagsChanged":I
    :cond_6
    iget v7, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v7

    .restart local v0    # "flagsChanged":I
    goto/16 :goto_0

    .line 613
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "setUp":Z
    goto/16 :goto_1

    .line 626
    .end local v4    # "setUp":Z
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "logoVis":Z
    goto :goto_2

    .line 627
    :cond_9
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 634
    .end local v3    # "logoVis":Z
    :cond_a
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 638
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "showHome":Z
    goto :goto_5

    .line 639
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "homeAsUp":Z
    goto :goto_6

    .line 640
    :cond_d
    const/4 v6, 0x0

    .local v6, "titleUp":Z
    goto :goto_7

    .line 644
    .end local v6    # "titleUp":Z
    :cond_e
    const/16 v2, 0x8

    .restart local v2    # "homeVis":I
    goto :goto_8

    .line 651
    :cond_f
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 661
    :cond_10
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 662
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_a

    .line 668
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 756
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 757
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 759
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 754
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 767
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v2, 0x1

    .line 362
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 365
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 366
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 367
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 369
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 370
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 371
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 372
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 361
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 366
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 540
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 539
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 687
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 686
    return-void

    .line 687
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 677
    if-eqz p1, :cond_1

    .line 678
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 675
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 702
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 701
    return-void

    .line 702
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 696
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 694
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 381
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    return-void

    .line 383
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 384
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 385
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 388
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 389
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 390
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_2

    .line 391
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 392
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 393
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 396
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v4, :cond_3

    .line 397
    new-instance v4, Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 398
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 399
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x102004b

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 400
    new-instance v4, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-direct {v4, p0, v6}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 404
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 406
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    .line 407
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 409
    const v6, 0x1120008

    .line 408
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 407
    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 410
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 411
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 412
    .local v2, "menuView":Landroid/widget/ActionMenuView;
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 413
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    .line 414
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 416
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 380
    return-void

    .line 418
    .end local v2    # "menuView":Landroid/widget/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 420
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    .line 420
    invoke-virtual {v4, v5, v6}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 423
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 425
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 426
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 427
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 428
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 429
    .restart local v2    # "menuView":Landroid/widget/ActionMenuView;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 430
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 431
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_6

    .line 432
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 434
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    .line 435
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 438
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "presenterCallback"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1347
    :cond_1
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 376
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1331
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1332
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1333
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1330
    return-void

    .line 1332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1327
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1325
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1321
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1312
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 710
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 711
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_2

    .line 712
    packed-switch v0, :pswitch_data_0

    .line 724
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 749
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 750
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 709
    :cond_2
    return-void

    .line 714
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 719
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 726
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 727
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 728
    const v4, 0x10102d7

    .line 727
    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 729
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v3, 0x102004e

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setId(I)V

    .line 730
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 731
    const v4, 0x10102f4

    .line 730
    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 732
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 733
    const/4 v2, -0x2

    const/4 v3, -0x1

    .line 732
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 734
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 735
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 738
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 740
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 741
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 744
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 745
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 724
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 5
    .param p1, "splitActionBar"    # Z

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_6

    .line 305
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v2, :cond_2

    .line 306
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 307
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 310
    :cond_0
    if-eqz p1, :cond_7

    .line 311
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 319
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->requestLayout()V

    .line 321
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 322
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 325
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v2, :cond_5

    .line 326
    if-nez p1, :cond_9

    .line 328
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 329
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    if-eqz v0, :cond_4

    .line 330
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 332
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 334
    const v4, 0x1120008

    .line 333
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 332
    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 344
    .end local v0    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 303
    :cond_6
    return-void

    .line 316
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 317
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 322
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_8
    const/16 v2, 0x8

    goto :goto_1

    .line 336
    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 338
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    .line 338
    invoke-virtual {v2, v3, v4}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 341
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 527
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 528
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 532
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 533
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 534
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    .end local v0    # "visible":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 526
    return-void

    :cond_1
    move v1, v3

    .line 530
    goto :goto_0

    .line 533
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "visible":Z
    goto :goto_1

    .line 531
    .end local v0    # "visible":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_1

    :cond_4
    move v2, v3

    .line 534
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 492
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 490
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 267
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 503
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 501
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method
