.class public Landroid/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserView$Callbacks;,
        Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroid/widget/ActivityChooserView$1;,
        Landroid/widget/ActivityChooserView$2;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ActivityChooserView"


# instance fields
.field private final mActivityChooserContent:Landroid/widget/LinearLayout;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field private final mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field private final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field private final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field private mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field private mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroid/widget/ListPopupWindow;

.field private final mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/view/ActionProvider;

.field private mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

.field private mRecentButtonEnabled:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/widget/ActivityChooserView;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    return-object v0
.end method

.method static synthetic -get10(Landroid/widget/ActivityChooserView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/ActivityChooserView;)I
    .locals 1

    iget v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    return v0
.end method

.method static synthetic -get6(Landroid/widget/ActivityChooserView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic -get7(Landroid/widget/ActivityChooserView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return v0
.end method

.method static synthetic -get8(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/ActivityChooserView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;
    .locals 1

    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/ActivityChooserView;I)V
    .locals 0
    .param p1, "maxActivityCount"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/ActivityChooserView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->updateAppearance()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/ActivityChooserView;->DBG:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 217
    const-class v0, Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/media/IRCSePriorityExt;

    iput-object v0, p0, Landroid/widget/ActivityChooserView;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v9, 0x10202ec

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 257
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    iput-object v7, p0, Landroid/widget/ActivityChooserView;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 138
    new-instance v5, Landroid/widget/ActivityChooserView$1;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$1;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    .line 164
    new-instance v5, Landroid/widget/ActivityChooserView$2;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$2;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 198
    iput v6, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 260
    sget-object v5, Lcom/android/internal/R$styleable;->ActivityChooserView:[I

    .line 259
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 263
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    .line 262
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 266
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 269
    .local v1, "expandActivityOverflowButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 272
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090021

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 274
    new-instance v5, Landroid/widget/ActivityChooserView$Callbacks;

    invoke-direct {v5, p0, v7}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$Callbacks;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    .line 276
    const v5, 0x10202ea

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 277
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 279
    const v5, 0x10202ed

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 280
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    if-nez v5, :cond_1

    .line 283
    sget-boolean v5, Landroid/widget/ActivityChooserView;->DBG:Z

    if-eqz v5, :cond_0

    .line 284
    const-string/jumbo v5, "ActivityChooserView"

    const-string/jumbo v6, "Rcse Plugin is null, so register for long click listener"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 288
    :cond_1
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 290
    const v5, 0x10202eb

    invoke-virtual {p0, v5}, Landroid/widget/ActivityChooserView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 291
    .local v2, "expandButton":Landroid/widget/FrameLayout;
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    new-instance v5, Landroid/widget/ActivityChooserView$3;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$3;-><init>(Landroid/widget/ActivityChooserView;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 299
    new-instance v5, Landroid/widget/ActivityChooserView$4;

    invoke-direct {v5, p0, v2}, Landroid/widget/ActivityChooserView$4;-><init>(Landroid/widget/ActivityChooserView;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    iput-object v2, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 320
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 319
    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 321
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    new-instance v5, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-direct {v5, p0, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;)V

    iput-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 324
    iget-object v5, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    new-instance v6, Landroid/widget/ActivityChooserView$5;

    invoke-direct {v6, p0}, Landroid/widget/ActivityChooserView$5;-><init>(Landroid/widget/ActivityChooserView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 333
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    .line 334
    const v6, 0x105000e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 333
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    .line 336
    iput-boolean v8, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    .line 256
    return-void
.end method

.method private getListPopupWindow()Landroid/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    .line 579
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 580
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 581
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 582
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 583
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 585
    :cond_0
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method private showPopupUnchecked(I)V
    .locals 10
    .param p1, "maxActivityCount"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 408
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v6

    if-nez v6, :cond_0

    .line 409
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "No data model. Did you call #setDataModel?"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 412
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 415
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v2, 0x1

    .line 417
    .local v2, "defaultActivityButtonShown":Z
    :goto_0
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v0

    .line 418
    .local v0, "activityCount":I
    if-eqz v2, :cond_4

    const/4 v3, 0x1

    .line 420
    .local v3, "maxActivityCountOffset":I
    :goto_1
    iget-boolean v6, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 421
    .local v5, "selectingDefault":I
    :goto_2
    const v6, 0x7fffffff

    if-eq p1, v6, :cond_6

    .line 422
    add-int v6, v0, v5

    add-int v7, p1, v3

    if-le v6, v7, :cond_6

    .line 423
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v9}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 424
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 430
    :goto_3
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v4

    .line 431
    .local v4, "popupWindow":Landroid/widget/ListPopupWindow;
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v6

    if-nez v6, :cond_2

    .line 432
    iget-boolean v6, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v6, :cond_7

    if-eqz v2, :cond_7

    .line 435
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v8, v8}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 437
    :goto_4
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 438
    .local v1, "contentWidth":I
    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 439
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    .line 440
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    if-eqz v6, :cond_1

    .line 441
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    invoke-virtual {v6, v9}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 443
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    .line 444
    const v8, 0x1040474

    .line 443
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 407
    .end local v1    # "contentWidth":I
    :cond_2
    return-void

    .line 415
    .end local v0    # "activityCount":I
    .end local v2    # "defaultActivityButtonShown":Z
    .end local v3    # "maxActivityCountOffset":I
    .end local v4    # "popupWindow":Landroid/widget/ListPopupWindow;
    .end local v5    # "selectingDefault":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "defaultActivityButtonShown":Z
    goto :goto_0

    .line 418
    .restart local v0    # "activityCount":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "maxActivityCountOffset":I
    goto :goto_1

    .line 420
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "selectingDefault":I
    goto :goto_2

    .line 426
    :cond_6
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v8}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 427
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_3

    .line 433
    .restart local v4    # "popupWindow":Landroid/widget/ListPopupWindow;
    :cond_7
    iget-object v6, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v9, v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_4
.end method

.method private updateAppearance()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 593
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 594
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 599
    :goto_0
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v1

    .line 600
    .local v1, "activityCount":I
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v4

    .line 602
    .local v4, "historySize":I
    const/4 v2, 0x0

    .line 603
    .local v2, "checkCount":Z
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    if-eqz v7, :cond_5

    .line 604
    sget-boolean v7, Landroid/widget/ActivityChooserView;->DBG:Z

    if-eqz v7, :cond_0

    .line 605
    const-string/jumbo v7, "ActivityChooserView"

    const-string/jumbo v8, "RCSe Plugin not null, No need to check previous history"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    if-lt v1, v9, :cond_4

    const/4 v2, 0x1

    .line 613
    :goto_1
    iget-boolean v7, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    if-eqz v7, :cond_9

    if-eqz v2, :cond_9

    .line 614
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 615
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 616
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 617
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    iget v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    if-eqz v7, :cond_1

    .line 619
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 620
    .local v5, "label":Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    .line 621
    iget v8, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 620
    new-array v9, v9, [Ljava/lang/Object;

    .line 621
    aput-object v5, v9, v10

    .line 620
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "contentDescription":Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 633
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v3    # "contentDescription":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_2
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a

    .line 634
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    iget-object v8, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 639
    :goto_3
    sget-boolean v7, Landroid/widget/ActivityChooserView;->DBG:Z

    if-eqz v7, :cond_2

    .line 640
    const-string/jumbo v7, "ActivityChooserView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppearance, mRecentButtonEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 641
    const-string/jumbo v9, ", checkCount = "

    .line 640
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 641
    const-string/jumbo v9, ", backtrace = "

    .line 640
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 641
    const/4 v9, 0x5

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    .line 640
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    return-void

    .line 596
    .end local v1    # "activityCount":I
    .end local v2    # "checkCount":Z
    .end local v4    # "historySize":I
    :cond_3
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/16 :goto_0

    .line 607
    .restart local v1    # "activityCount":I
    .restart local v2    # "checkCount":Z
    .restart local v4    # "historySize":I
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 609
    :cond_5
    if-eq v1, v9, :cond_6

    if-le v1, v9, :cond_8

    .line 610
    if-lez v4, :cond_7

    const/4 v2, 0x1

    goto/16 :goto_1

    .line 609
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 610
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 609
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 625
    :cond_9
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 628
    if-lez v1, :cond_1

    .line 629
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_2

    .line 636
    :cond_a
    iget-object v7, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 456
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 457
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 461
    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getDataModel()Landroid/widget/ActivityChooserModel;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 1

    .prologue
    .line 470
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 475
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 477
    sget-boolean v1, Landroid/widget/ActivityChooserView;->DBG:Z

    if-eqz v1, :cond_0

    .line 478
    const-string/jumbo v1, "ActivityChooserView"

    const-string/jumbo v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 482
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_1

    .line 483
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 485
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 474
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 490
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 492
    sget-boolean v2, Landroid/widget/ActivityChooserView;->DBG:Z

    if-eqz v2, :cond_0

    .line 493
    const-string/jumbo v2, "ActivityChooserView"

    const-string/jumbo v3, "onDetachedFromWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 497
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_1

    .line 498
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 500
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 501
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 502
    iget-object v2, p0, Landroid/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 504
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 507
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 489
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 526
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 527
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 525
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 512
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 516
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 518
    const/high16 v2, 0x40000000    # 2.0f

    .line 517
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 520
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 521
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 511
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 771
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 772
    if-eqz p1, :cond_0

    .line 773
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 770
    :cond_0
    return-void
.end method

.method public setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V
    .locals 1
    .param p1, "dataModel"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 343
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/widget/ActivityChooserModel;)V

    .line 344
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 346
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->showPopup()Z

    .line 342
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 568
    iput p1, p0, Landroid/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 567
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 376
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 375
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 362
    iget-object v0, p0, Landroid/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .prologue
    .line 554
    iput p1, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 553
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 542
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 541
    return-void
.end method

.method public setProvider(Landroid/view/ActionProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .prologue
    .line 385
    iput-object p1, p0, Landroid/widget/ActivityChooserView;->mProvider:Landroid/view/ActionProvider;

    .line 384
    return-void
.end method

.method public setRecentButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 783
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView;->mRecentButtonEnabled:Z

    .line 784
    invoke-direct {p0}, Landroid/widget/ActivityChooserView;->updateAppearance()V

    .line 782
    return-void
.end method

.method public showPopup()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 397
    iput-boolean v1, p0, Landroid/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 398
    iget v0, p0, Landroid/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-direct {p0, v0}, Landroid/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 399
    const/4 v0, 0x1

    return v0

    .line 395
    :cond_0
    return v1
.end method
